package com.color.darkmode.utils

import android.animation.Animator
import android.animation.AnimatorListenerAdapter
import android.animation.ValueAnimator
import android.app.*
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.database.ContentObserver
import android.database.Cursor
import android.graphics.Color
import android.net.Uri
import android.os.*
import android.provider.Settings
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.view.WindowManager
import android.view.animation.PathInterpolator
import android.widget.RemoteViews
import android.widget.TextView
import androidx.core.app.NotificationCompat
import com.color.darkmode.ColorDarkModeHelper
import com.color.darkmode.IColorDarkModeListener
import com.color.darkmode.entity.Duration
import com.color.darkmode.receiver.NotificationClickReceiver
import com.color.eyeprotect.ColorEyeProtectApp
import com.color.eyeprotect.R
import com.color.view.ColorWindowManager
import com.coloros.anim.EffectiveAnimationView
import kotlinx.coroutines.GlobalScope
import kotlinx.coroutines.launch
import java.text.SimpleDateFormat
import java.util.*

object DarkModeManager {
    private const val ACTION_DARKMODE_CLOSE = "coloros.intent.action.CLOSE_DARKMODE"
    private const val ACTION_DARKMODE_OPEN = "coloros.intent.action.OPEN_DARKMODE"
    private const val OPPO_SAFE_PERMISSION = "oppo.permission.OPPO_COMPONENT_SAFE"
    private const val PACKAGE = "package"
    private const val LOTTIE_NORMAL_TO_DARK = "NormaltoDark.json"
    private const val LOTTIE_DARK_TO_NORMAL = "DarktoNormal.json"
    private const val CHANNEL_ID = "ColorDarkMode"
    private const val NOTIFICATION_ID = 10001

    //#ifdef REALMEUI_EDIT
    //qintao@RM.REALMEUIUI.ColoyEyeProtect Userid#2333614, 2019/11/15, add for realme sunset switch
    private const val ATTEND_CITY_URI = "content://com.coloros.weather.service.provider.data/attent_city"
    private const val WEATHER_INFO_URI = "content://com.coloros.weather.service.provider.data/oppo_weather_info"
    private const val RECEIVER_ACTION_OPEN = 1
    private const val RECEIVER_ACTION_CLOSE = 0
    private const val RECEIVER_ACTION_DEFAULT = -1
    private const val TODAY_SUNSET_AND_SUNRISE = 0
    private const val TOMORROW_SUNSET_AND_SUNRISE = 1
    private const val TAG:String = "DarkModeManager"
    private var mReceiverAction: Int = 0
    private var mIsRealme =false
    //#endif /* REALMEUI_EDIT */

    private val mDuration: Duration = Duration()
    private var mCloseAlarmIntent = Intent(ACTION_DARKMODE_CLOSE)
    private var mOpenAlarmIntent = Intent(ACTION_DARKMODE_OPEN)
    private val mHandler = Handler(Looper.getMainLooper())
    private var mIsLoading = false
    private var mIsScreenOffReceiverRegistered = false
    private var mNotificationChannelCreated = false

    fun updateDurationAndState(context: Context, hourBegin: Int, minBegin: Int, hourEnd: Int, minEnd: Int) {
        mDuration.setDuration(hourBegin, minBegin, hourEnd, minEnd)
        updateDarkModeByTime(context)
    }

    fun updateDarkModeByTime(context: Context, showLoading: Boolean = true, forceTimeChange: Boolean = true) {
        val contentResolver = context.contentResolver
        val isDarkModeSwitchOpen = DarkModeSettingUtils.isSystemDarkModeOpen(context)
        val isSetTimeSwitchOpen = DarkModeSettingUtils.isDarkModeTimeSwitchOpen(contentResolver)
        val darkModeBeginTime = DarkModeSettingUtils.getDarkModeBeginTime(contentResolver)
        val darkModeEndTime = DarkModeSettingUtils.getDarkModeEndTime(contentResolver)
        var isSunsetToSunriseSwitchOpen = false
        if(mIsRealme){
            isSunsetToSunriseSwitchOpen = RealmeUtils.isDarkSunsetToSunriseSwitch(context!!)
            if (isSunsetToSunriseSwitchOpen){
                val darkModeSunsetTime = RealmeUtils.getDarkModeSunsetTime(context.contentResolver)
                val darkModeSunriseTime = RealmeUtils.getDarkModeSunriseTime(context.contentResolver)
                mDuration.setDuration(darkModeSunsetTime[0], darkModeSunsetTime[1], darkModeSunriseTime[0], darkModeSunriseTime[1])
                RealmeUtils.logD("updateDarkModeByTime: sunRise:" + darkModeSunriseTime[0]+":"+darkModeSunriseTime[1]+",Sunset:" +darkModeSunsetTime[0]+":"+darkModeSunsetTime[1])
            }else{
                mDuration.setDuration (darkModeBeginTime[0], darkModeBeginTime[1], darkModeEndTime[0], darkModeEndTime[1])
            }
            RealmeUtils.logD( "isDarkModeSwitchOpen: + $isDarkModeSwitchOpen,isSetTimeSwitchOpen: $isSetTimeSwitchOpen, isSunsetToSunriseSwitchOpen: $isSunsetToSunriseSwitchOpen")
        }
        val shouldOpen = if (isSetTimeSwitchOpen||isSunsetToSunriseSwitchOpen) {
            if (forceTimeChange) {
                isCurrentInDuration()
            } else {
                isDarkModeSwitchOpen
            }
        } else {
            isDarkModeSwitchOpen
        }
        changeDarkMode(context, shouldOpen, showLoading)
    }

    fun updateDarkModeBySunsetToSunriseTime(context: Context, showLoading: Boolean = true) {
        if (RealmeUtils.isDarkSunsetToSunriseSwitch(context)) {
            getSunriseSunsetTime(context, TODAY_SUNSET_AND_SUNRISE)
        }
        updateDarkModeByTime(context, showLoading)
    }

    fun immediatelyUpdateDarkModeSwitch(context: Context, open: Boolean, showLoading: Boolean) {
        changeDarkMode(context, open, showLoading)
    }

    private fun isCurrentInDuration(): Boolean {
        val calendar = Calendar.getInstance()
        var hour = 0
        var min = 0
        if (null != calendar) {
            hour = calendar.get(Calendar.HOUR_OF_DAY)
            min = calendar.get(Calendar.MINUTE)
        }
        return mDuration.isInDuration(hour, min)
    }

    fun init(context: Context) {
        mIsRealme = RealmeUtils.isRealmePhone()
        val filterAlarm = IntentFilter()
        filterAlarm.addAction(ACTION_DARKMODE_CLOSE)
        filterAlarm.addAction(ACTION_DARKMODE_OPEN)
        context.registerReceiver(mAlarmReceiver, filterAlarm, OPPO_SAFE_PERMISSION, null)
        val filterTimeReveiver = IntentFilter()
        filterTimeReveiver.addAction(Intent.ACTION_TIME_CHANGED)
        filterTimeReveiver.addAction(Intent.ACTION_TIMEZONE_CHANGED)
        filterTimeReveiver.addAction(Intent.ACTION_LOCALE_CHANGED)
        if (!mIsRealme) {
            filterTimeReveiver.addAction(Intent.ACTION_DATE_CHANGED)
        }
        context.registerReceiver(mIntentTimeReceiver, filterTimeReveiver, OPPO_SAFE_PERMISSION, null)
        val beginTime = DarkModeSettingUtils.getDarkModeBeginTime(context.contentResolver)
        val endTime = DarkModeSettingUtils.getDarkModeEndTime(context.contentResolver)
        if (mIsRealme){
            if (RealmeUtils.isDarkSunsetToSunriseSwitch(context)){
                val darkModeSunsetTime = RealmeUtils.getDarkModeSunsetTime(context.contentResolver)
                val darkModeSunriseTime = RealmeUtils.getDarkModeSunriseTime(context.contentResolver)
                mDuration.setDuration(darkModeSunsetTime[0], darkModeSunsetTime[1], darkModeSunriseTime[0], darkModeSunriseTime[1])
            }else{
                mDuration.setDuration(beginTime[0], beginTime[1], endTime[0], endTime[1])
            }
        }else{
            mDuration.setDuration(beginTime[0], beginTime[1], endTime[0], endTime[1])
        }
        updateDarkModeByTime(context, showLoading = false)
        context.contentResolver.registerContentObserver(Settings.System.getUriFor(DarkModeSettingUtils.CHANGE_NIGHT_MODE), false, object: ContentObserver(mHandler){
            override fun onChange(selfChange: Boolean) {
                super.onChange(selfChange)
                val result = Settings.System.getIntForUser(context.contentResolver,DarkModeSettingUtils.CHANGE_NIGHT_MODE, -1, UserHandle.USER_CURRENT)
                DarkModeSettingUtils.logD("CHANGE_NIGHT_MODE result=$result")
                when(result) {
                    DarkModeSettingUtils.SWITCH_ON -> immediatelyUpdateDarkModeSwitch(context, open = true, showLoading = true)
                    DarkModeSettingUtils.SWITCH_OFF -> immediatelyUpdateDarkModeSwitch(context, open = false, showLoading = true)
                }
            }
        })
    }

    private fun changeDarkMode(context: Context, isOpen:Boolean, showLoading:Boolean) {
        if ((showLoading) && (isOpen != DarkModeSettingUtils.isSystemDarkModeOpen(context))) {
            try {
                if (mIsLoading) {
                    return
                }
                mIsLoading = true
                val windowManager = context.getSystemService(Context.WINDOW_SERVICE) as WindowManager
                val parentLayout = LayoutInflater.from(ColorEyeProtectApp.getsApplicationContext()).inflate(R.layout.view_change_loading, null)
                val textView = parentLayout.findViewById<TextView>(R.id.tv_text)
                val lottieView = parentLayout.findViewById<EffectiveAnimationView>(R.id.eav_icon)
                parentLayout.setBackgroundColor(getLoadingBackgroundColor(context, isOpen))
                textView.setTextColor(getLoadingTextColor(context, isOpen))
                textView.text = getLoadingText(context, isOpen)
                lottieView.setAnimation(getLottieRes(context, isOpen))
                val params = WindowManager.LayoutParams(WindowManager.LayoutParams.MATCH_PARENT, WindowManager.LayoutParams.MATCH_PARENT)
                params.type = ColorWindowManager.LayoutParams.TYPE_SYSTEM_ONSCREEN_FINGERPRINT
                params.flags = WindowManager.LayoutParams.FLAG_FULLSCREEN or
                        WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS or
                        WindowManager.LayoutParams.FLAG_TRANSLUCENT_NAVIGATION or
                        WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS or
                        WindowManager.LayoutParams.FLAG_LAYOUT_IN_OVERSCAN

                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
                    params.layoutInDisplayCutoutMode = WindowManager.LayoutParams.LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES
                }
                params.windowAnimations = R.style.ChangeLoadingAnimation
                val listener = object : IColorDarkModeListener.Stub() {
                    @Throws(RemoteException::class)
                    override fun onUiModeConfigurationChangeFinish() {
                        DarkModeSettingUtils.logD("onUiModeConfigurationChangeFinish")
                        removeLoadingView(parentLayout, windowManager, this, 0L)
                    }
                }
                ColorDarkModeHelper.registerOnUiModeConfigurationChangeFinishListener(listener)
                windowManager.addView(parentLayout, params)
                textView.alpha = 0f
                textView.translationY = (context.resources.getDimension(R.dimen.loading_text_translate_offset_y))
                textView.animate().
                        alpha(1f).
                        setInterpolator(PathInterpolator(.3f, 0f, .1f, 1f)).
                        setDuration(300L).
                        setStartDelay(117).
                        setListener(object : AnimatorListenerAdapter() {
                            override fun onAnimationEnd(animation: Animator?) {
                                super.onAnimationEnd(animation)
                                lottieView.playAnimation()
                                val animator = ValueAnimator.ofArgb(getLoadingTextColor(context, isOpen), getLoadingTextColor(context, !isOpen))
                                animator.duration = 500L
                                animator.interpolator = PathInterpolator(.3f, 0f, .1f, 1f)
                                animator.addUpdateListener {
                                    textView.setTextColor(it.animatedValue as Int)
                                }
                                animator.start()
                                val backgroundAnimator = ValueAnimator.ofArgb(getLoadingBackgroundColor(context, isOpen), getLoadingBackgroundColor(context, !isOpen))
                                backgroundAnimator.duration = 500L
                                backgroundAnimator.interpolator = PathInterpolator(.3f, 0f, .1f, 1f)
                                backgroundAnimator.addUpdateListener {
                                    parentLayout.setBackgroundColor(it.animatedValue as Int)
                                }
                                backgroundAnimator.addListener(object : AnimatorListenerAdapter() {
                                    override fun onAnimationEnd(animation: Animator?) {
                                        super.onAnimationEnd(animation)
                                        DarkModeSettingUtils.setSystemDarkModeOpen(context, isOpen)
                                        updateDarkModeAlarm()
                                        //timeout
                                        removeLoadingView(parentLayout, windowManager, listener, 3000L)
                                    }
                                })
                                backgroundAnimator.start()
                            }
                        }).
                        start()
                textView.animate().
                        translationY(0f).
                        setInterpolator(PathInterpolator(.2f, .33f, .3f, 1f)).
                        setDuration(300L).
                        start()
            } catch (ex:Exception) {
                ex.printStackTrace()
            }
        } else {
            DarkModeSettingUtils.setSystemDarkModeOpen(context, isOpen)
            updateDarkModeAlarm()
        }
        DarkModeSettingUtils.setDarkModeLoadingSetting(context.contentResolver, DarkModeSettingUtils.INVALID)
        DarkModeSettingUtils.setWaitSwitchDarkMode(context.contentResolver, DarkModeSettingUtils.INVALID)
        val notificationManager = context.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        notificationManager.cancel(NOTIFICATION_ID)
    }

    private fun removeLoadingView(view: View, windowManager: WindowManager, listener: IColorDarkModeListener, delayTime:Long) {
        mHandler.postDelayed({
            try {
                mIsLoading = false
                windowManager.removeView(view)
            } catch (ex: Exception) {

            } finally {
                ColorDarkModeHelper.unregisterOnUiModeConfigurationChangeFinishListener(listener)
            }
        }, delayTime)
    }

    private fun getLoadingBackgroundColor(context: Context, isOpen:Boolean): Int = if(isOpen) Color.WHITE else Color.BLACK

    private fun getLoadingTextColor(context: Context, isOpen:Boolean): Int = if(isOpen) context.getColor(R.color.color_loading_normal_text) else Color.WHITE

    private fun getLoadingText(context: Context, isOpen:Boolean): String = if(isOpen) context.getString(R.string.change_darkmode_loading_hint) else context.getString(R.string.change_normalmode_loading_hint)

    private fun getLottieRes(context: Context, isOpen:Boolean): String = if(isOpen) LOTTIE_NORMAL_TO_DARK else LOTTIE_DARK_TO_NORMAL

    private fun handleAlarmCall(context: Context, open: Boolean) {
        val contentResolver = context.contentResolver
        val powerManager = context.getSystemService(Context.POWER_SERVICE) as PowerManager
        if (!powerManager.isInteractive) {
            DarkModeSettingUtils.logD("handleAlarmCall-->not Interactive-->change")
            updateDarkModeByTime(context, false)
        } else {
            DarkModeSettingUtils.logD("handleAlarmCall-->waiting screen off")
            val notificationManager = context.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
            if (!mNotificationChannelCreated) {
                val notificationChannel = NotificationChannel(CHANNEL_ID, context.getString(R.string.dark_mode), NotificationManager.IMPORTANCE_LOW)
                notificationChannel.description = context.getString(R.string.darkmode_notification_channel_description)
                notificationChannel.importance = NotificationManager.IMPORTANCE_LOW
                notificationChannel.enableLights(false)
                notificationChannel.enableVibration(false)
                notificationChannel.setSound(null, null)
                notificationChannel.setShowBadge(false)
                notificationManager.createNotificationChannel(notificationChannel)
                mNotificationChannelCreated = true
            }
            notificationManager.cancel(NOTIFICATION_ID)
            if (open != DarkModeSettingUtils.isSystemDarkModeOpen(context)) {
                DarkModeSettingUtils.setWaitSwitchDarkMode(contentResolver, if (open) DarkModeSettingUtils.SWITCH_ON else DarkModeSettingUtils.SWITCH_OFF)

                val builder = NotificationCompat.Builder(context, CHANNEL_ID)
                        .setSmallIcon(R.drawable.notification_darkmode)
                        .setAutoCancel(true)
                        .setShowWhen(true)
                        .setPriority(NotificationCompat.PRIORITY_LOW)
                if (open) {
                    builder.setContentText(context.getString(R.string.darkmode_wait_switch_notification_dark_content))
                } else {
                    builder.setContentText(context.getString(R.string.darkmode_wait_switch_notification_light_content))
                }
                val bundle = Bundle()
                bundle.putString(Notification.EXTRA_SUBSTITUTE_APP_NAME, context.getString(R.string.dark_mode))
                builder.addExtras(bundle)
                val intent = Intent(context, NotificationClickReceiver::class.java)
                intent.putExtra(NotificationClickReceiver.EXTRA_OPEN_STATE, open)
                builder.setContentIntent(PendingIntent.getBroadcast(context, 1, intent, PendingIntent.FLAG_UPDATE_CURRENT))
                val notification = builder.build()
                notification.flags = Notification.FLAG_ONGOING_EVENT
                notificationManager.notify(NOTIFICATION_ID, notification)
                if (!mIsScreenOffReceiverRegistered) {
                    val filter = IntentFilter()
                    filter.addAction(Intent.ACTION_SCREEN_OFF)
                    context.registerReceiver(mScreenOffReceiver, filter, OPPO_SAFE_PERMISSION, null)
                    mIsScreenOffReceiverRegistered = true
                }
            } else {
                DarkModeSettingUtils.setWaitSwitchDarkMode(contentResolver, DarkModeSettingUtils.INVALID)
            }
        }
    }

    fun changeDarkModeByNotification(context: Context, open: Boolean) {
        DarkModeSettingUtils.logD("changeDarkModeByNotification-->open:$open")
        changeDarkMode(context, open, true)
        if (mIsScreenOffReceiverRegistered) {
            context.unregisterReceiver(mScreenOffReceiver)
            mIsScreenOffReceiverRegistered = false
        }
    }

    private val mScreenOffReceiver = object : BroadcastReceiver() {
        override fun onReceive(context: Context?, intent: Intent?) {
            if (context != null) {
                DarkModeSettingUtils.logD("mScreenOffReceiver-->updateDarkModeByTime")
                updateDarkModeByTime(context, false)
                if (mIsScreenOffReceiverRegistered) {
                    context.unregisterReceiver(this)
                    mIsScreenOffReceiverRegistered = false
                }
            }
        }
    }

    private val mIntentTimeReceiver = object : BroadcastReceiver() {
        override fun onReceive(context: Context, intent: Intent) {
            val action = intent.action
            if (Intent.ACTION_TIME_CHANGED == action
                    || Intent.ACTION_DATE_CHANGED == action
                    || Intent.ACTION_TIMEZONE_CHANGED == action) {
                DarkModeSettingUtils.logD("SET_TIME action=$action")
                updateDarkModeByTime(context, forceTimeChange = false)
            }
        }

    }

    private val mAlarmReceiver = object : BroadcastReceiver() {
        override fun onReceive(context: Context, intent: Intent) {
            val action = intent.action
            when(action) {
                ACTION_DARKMODE_CLOSE -> {
                    mReceiverAction = RECEIVER_ACTION_CLOSE
                    DarkModeSettingUtils.logD("receiver alarm $action time:${System.currentTimeMillis()}")
                    handleAlarmCall(context, false)
                }
                ACTION_DARKMODE_OPEN -> {
                    mReceiverAction = RECEIVER_ACTION_OPEN
                    DarkModeSettingUtils.logD("receiver alarm $action time:${System.currentTimeMillis()}")
                    handleAlarmCall(context, true)
                }
            }
        }
    }

    private fun updateDarkModeAlarm() {
        val context = ColorEyeProtectApp.getsApplicationContext() ?: return
        val alarmManager = context.getSystemService(Context.ALARM_SERVICE) as AlarmManager
        val cancelClosePI = PendingIntent.getBroadcast(context, 0, mCloseAlarmIntent,
                PendingIntent.FLAG_NO_CREATE)
        if (cancelClosePI != null) {
            alarmManager.cancel(cancelClosePI)
        }
        val cancelOpenPI = PendingIntent.getBroadcast(context, 0, mOpenAlarmIntent,
                PendingIntent.FLAG_NO_CREATE)
        if (cancelOpenPI != null) {
            alarmManager.cancel(cancelOpenPI)
        }

        // RealmeFeatrue update SunsetAndSunriseTime
        updateSunsetSunriseTime(context)

        val calendar = Calendar.getInstance()
        val beginCalendar = Calendar.getInstance()
        beginCalendar.set(Calendar.HOUR_OF_DAY, mDuration.mHourBegin)
        beginCalendar.set(Calendar.MINUTE, mDuration.mMinBegin)
        val endCalendar = Calendar.getInstance()
        endCalendar.set(Calendar.HOUR_OF_DAY, mDuration.mHourEnd)
        endCalendar.set(Calendar.MINUTE, mDuration.mMinEnd)
        if (endCalendar.timeInMillis < beginCalendar.timeInMillis) {
            endCalendar.add(Calendar.DATE, 1)
        }
        var isSunsetToSunriseSwitchOpen = false
        if (mIsRealme) {
            isSunsetToSunriseSwitchOpen = RealmeUtils.isDarkSunsetToSunriseSwitch(context!!)
        }
        if (DarkModeSettingUtils.isDarkModeTimeSwitchOpen(context.contentResolver) || isSunsetToSunriseSwitchOpen) {
            var shouldAlarmOpenIntent = false
            if (calendar.timeInMillis < beginCalendar.timeInMillis || mIsRealme) {
                if (!DarkModeSettingUtils.isSystemDarkModeOpen(context)) {
                    val alarmPendingIntent = PendingIntent.getBroadcast(context, 0, mOpenAlarmIntent, PendingIntent.FLAG_UPDATE_CURRENT)
                    val openTime = getAlarmTime(true)
                    alarmManager.setExact(AlarmManager.RTC_WAKEUP, openTime, alarmPendingIntent)
                    RealmeUtils.logD("opentime:$openTime,time:"+RealmeUtils.timeStampChangeString(openTime))
                    shouldAlarmOpenIntent = true
                    if (mIsRealme) {
                        shouldAlarmOpenIntent = false
                    }
                    DarkModeSettingUtils.logD("alarm DarkMode Open Intent time:$openTime")
                }
            }
            if (calendar.timeInMillis < endCalendar.timeInMillis || mIsRealme) {
                if (shouldAlarmOpenIntent || DarkModeSettingUtils.isSystemDarkModeOpen(context)) {
                    val alarmPendingIntent = PendingIntent.getBroadcast(context, 0, mCloseAlarmIntent, PendingIntent.FLAG_UPDATE_CURRENT)
                    val closeTime = getAlarmTime(false)
                    alarmManager.setExact(AlarmManager.RTC_WAKEUP, closeTime, alarmPendingIntent)
                    DarkModeSettingUtils.logD("alarm DarkMode Close Intent time:$closeTime")
                    RealmeUtils.logD("closeTime:$closeTime,time:"+RealmeUtils.timeStampChangeString(closeTime))
                }
            }
            resetSunsetAndSunriseStatus()
        }
    }

    private fun resetSunsetAndSunriseStatus() {
        if (mIsRealme) {
            mReceiverAction = RECEIVER_ACTION_DEFAULT
        }
    }

    private fun getAlarmTime(isBegin: Boolean) : Long {
        val calendar = Calendar.getInstance()
        val alarmCalendar = Calendar.getInstance()
        alarmCalendar.set(Calendar.HOUR_OF_DAY, if (isBegin) mDuration.mHourBegin else mDuration.mHourEnd)
        alarmCalendar.set(Calendar.MINUTE, if (isBegin) mDuration.mMinBegin else mDuration.mMinEnd)
        alarmCalendar.set(Calendar.SECOND, 0)
        alarmCalendar.set(Calendar.MILLISECOND, 0)
        if (alarmCalendar.timeInMillis <= calendar.timeInMillis) {
            alarmCalendar.add(Calendar.DATE, 1)
        }
        return alarmCalendar.timeInMillis
    }

    private fun updateSunsetSunriseTime(context: Context) {
        if (!mIsRealme) {
            return
        }
        if (RealmeUtils.isDarkSunsetToSunriseSwitch(context)) {
            val calendar = Calendar.getInstance()
            val simpleDateFormat = SimpleDateFormat("HH:mm")
            val currentTimeData = simpleDateFormat.format(Date(calendar.timeInMillis))
            val currentTime = currentTimeData.split(":".toRegex()).dropLastWhile { it.isEmpty() }.toTypedArray()
            val allCurrentMinutes = Integer.parseInt(currentTime[0]) * 60 + Integer.parseInt(currentTime[1])
            val sunsetTime = RealmeUtils.getDarkModeSunsetTime(context.contentResolver)
            val sunriseTime = RealmeUtils.getDarkModeSunriseTime(context.contentResolver)
            val allSunsetMinutes = sunsetTime[0] * 60 + sunsetTime[1]
            val allSunriseMinutes = sunriseTime[0] * 60 + sunriseTime[1]
            RealmeUtils.logD("currentTimeData: " + currentTimeData + ",sunsetData: " + sunsetTime[0] + ":" + sunsetTime[1] + ",sunriseData:" + sunriseTime[0] + ":" + sunriseTime[1])
            if (mReceiverAction == RECEIVER_ACTION_OPEN) {
                getSunriseSunsetTime(context, TOMORROW_SUNSET_AND_SUNRISE)
            } else if (mReceiverAction == RECEIVER_ACTION_CLOSE) {
                getSunriseSunsetTime(context, TODAY_SUNSET_AND_SUNRISE)
            } else {
                if (DarkModeSettingUtils.isSystemDarkModeOpen(context)) {
                    if (allCurrentMinutes >= allSunriseMinutes) {
                        getSunriseSunsetTime(context, TOMORROW_SUNSET_AND_SUNRISE)
                    }
                } else {
                    if (allCurrentMinutes >= allSunsetMinutes) {
                        getSunriseSunsetTime(context, TOMORROW_SUNSET_AND_SUNRISE, false)
                    }
                }
            }
        }
    }

    private fun getSunriseSunsetTime(context: Context, day: Int, isSunrise: Boolean = true) {
        val uri = Uri.parse(ATTEND_CITY_URI)
        var cityCursor: Cursor? = null
        var weatherCursor: Cursor? = null
        try {
            val contentResolver = context.contentResolver
            // get current location city Id
            cityCursor = contentResolver.query(uri, null, "location=" + 1, null, null)
            if (cityCursor == null) {
                Log.e(TAG, "weatherCursor is null")
                return
            }
            cityCursor.moveToFirst()
            val id = cityCursor.getInt(cityCursor.getColumnIndex("_id"))
            val sunriseUri = Uri.parse(WEATHER_INFO_URI)
            // get current location city weather
            weatherCursor = contentResolver.query(sunriseUri, null,
                    "city_id=$id AND weather_index=$day", null, null)
            if (weatherCursor == null) {
                Log.e(TAG, "weatherCursor is null")
                return
            }
            weatherCursor.moveToFirst()
            val sunrise = weatherCursor.getString(weatherCursor.getColumnIndex("sunrise_time"))
            val sunset = weatherCursor.getString(weatherCursor.getColumnIndex("sunset_time"))
            val simpleDateFormat = SimpleDateFormat("HH:mm")
            val sunriseString = simpleDateFormat.format(Date(java.lang.Long.parseLong(sunrise)))
            val sunsetString = simpleDateFormat.format(Date(java.lang.Long.parseLong(sunset)))
            val sunriseTime = sunriseString.split(":".toRegex()).dropLastWhile { it.isEmpty() }.toTypedArray()
            val sunsetTime = sunsetString.split(":".toRegex()).dropLastWhile { it.isEmpty() }.toTypedArray()
            setSunriseAndSunsetTime(context, sunriseTime, sunsetTime, day, isSunrise)
        } catch (e: Exception) {
            RealmeUtils.logE( "getSunriseAndSunsetTime,error: " + e.message)
            val darkModeSunsetTime = RealmeUtils.getDarkModeSunsetTime(context.contentResolver)
            val darkModeSunriseTime = RealmeUtils.getDarkModeSunriseTime(context.contentResolver)
            mDuration.setDuration(darkModeSunsetTime[0], darkModeSunsetTime[1], darkModeSunriseTime[0], darkModeSunriseTime[1])
            RealmeUtils.logD("final: mDuration:sunRise: " + mDuration.mHourEnd + ":" + mDuration.mMinEnd + ",Sunset:" + mDuration.mHourBegin + ":" + mDuration.mMinBegin)
        } finally {
            cityCursor?.close()
            weatherCursor?.close()
        }
    }

    private fun setSunriseAndSunsetTime(context: Context, sunriseTime: Array<String>, sunsetTime: Array<String>, day: Int, isSunrise: Boolean) {
        RealmeUtils.logD("setSunriseAndSunsetTime,day: $day,isSunrise: $isSunrise")
        val darkModeSunsetTime = RealmeUtils.getDarkModeSunsetTime(context.contentResolver)
        val darkModeSunriseTime = RealmeUtils.getDarkModeSunriseTime(context.contentResolver)
        RealmeUtils.logD("setSunriseAndSunsetTime1: todaySunrise:" + darkModeSunriseTime[0]+":"+darkModeSunriseTime[1]+",todaySunset:" +darkModeSunsetTime[0]+":"+darkModeSunsetTime[1])
        RealmeUtils.logD("setSunriseAndSunsetTime1: getSunrise:" + sunriseTime[0]+":"+sunriseTime[1]+",getSunset:" +sunsetTime[0]+":"+sunsetTime[1])
        if (day == TODAY_SUNSET_AND_SUNRISE) {
            RealmeUtils.setDarkModeSunsetTime(context.contentResolver, Integer.parseInt(sunsetTime[0]), Integer.parseInt(sunsetTime[1]))
            RealmeUtils.setDarkModeSunriseTime(context.contentResolver, Integer.parseInt(sunriseTime[0]), Integer.parseInt(sunriseTime[1]))
            mDuration.setDuration(Integer.parseInt(sunsetTime[0]), Integer.parseInt(sunsetTime[1]), Integer.parseInt(sunriseTime[0]), Integer.parseInt(sunriseTime[1]))
        }
        if (day == TOMORROW_SUNSET_AND_SUNRISE) {
            if (isSunrise) {
                mDuration.setDuration(darkModeSunsetTime[0],darkModeSunsetTime[1],Integer.parseInt(sunriseTime[0]), Integer.parseInt(sunriseTime[1]))
            } else {
                mDuration.setDuration(Integer.parseInt(sunsetTime[0]), Integer.parseInt(sunsetTime[1]),darkModeSunriseTime[0], darkModeSunriseTime[1])
            }
        }
    }
}