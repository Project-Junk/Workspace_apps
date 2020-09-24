.class public Lcom/coloros/settings/backuprestore/SettingsConstants;
.super Ljava/lang/Object;
.source "SettingsConstants.java"


# static fields
.field private static final ALLOW_RESIZE_SCREEN:Ljava/lang/String; = "allow_resizeable_screen"

.field public static final AOD_BETTERY_SETTING:Ljava/lang/String; = "key_realme_aod_battery"

.field private static final AOD_CLOCK_MODE:Ljava/lang/String; = "Setting_AodClockMode"

.field private static final AOD_ENABLE_BATTERY:Ljava/lang/String; = "Setting_AodEnableBattery"

.field private static final AOD_ENABLE_CLOCK_ONLY:Ljava/lang/String; = "Setting_AodEnableClockOnly"

.field private static final AOD_ENABLE_DATE_MODE:Ljava/lang/String; = "Setting_AodEnableDateMode"

.field private static final AOD_ENABLE_IMMEDIATE:Ljava/lang/String; = "Setting_AodEnableImmediate"

.field private static final AOD_ENABLE_STEP:Ljava/lang/String; = "Setting_AodEnableStep"

.field public static final AOD_REALME_ALIGN_TYPE_INDEX:Ljava/lang/String; = "realme_aod_signature_aligntype_index"

.field public static final AOD_REALME_CLOCK_SETTING:Ljava/lang/String; = "key_realme_aod_clock_mode"

.field public static final AOD_REALME_COLOR_INDEX:Ljava/lang/String; = "realme_aod_signature_color_index"

.field public static final AOD_REALME_DATE_SELECT_SETTING:Ljava/lang/String; = "key_aod_clock_date_select"

.field public static final AOD_REALME_DATE_SETTING:Ljava/lang/String; = "key_aod_clock_date"

.field public static final AOD_REALME_FONT_SZIE_INDEX:Ljava/lang/String; = "realme_aod_signature_fontsize_index"

.field public static final AOD_REALME_NOTIFICATION_PACKAGE_SETTING:Ljava/lang/String; = "realme_aod_notification_black_pkg"

.field public static final AOD_REALME_NOTIFICATION_SETTING:Ljava/lang/String; = "key_realme_aod_notification_icon"

.field public static final AOD_REALME_SIGNATURE_SETTING:Ljava/lang/String; = "key_realme_aod_signature"

.field public static final AOD_REALME_SIGNATURE_TEXT:Ljava/lang/String; = "realme_aod_signature_text"

.field public static final AOD_REALME_TYPE_FACE_INDEX:Ljava/lang/String; = "realme_aod_signature_face_type_index"

.field private static final AOD_SET_TIME_BEGIN_HOUR:Ljava/lang/String; = "Setting_AodSetTimeBeginHour"

.field private static final AOD_SET_TIME_BEGIN_MIN:Ljava/lang/String; = "Setting_AodSetTimeBeginMin"

.field private static final AOD_SET_TIME_END_HOUR:Ljava/lang/String; = "Setting_AodSetTimeEndHour"

.field private static final AOD_SET_TIME_END_MIN:Ljava/lang/String; = "Setting_AodSetTimeEndMin"

.field private static final AOD_USER_SET_TIME:Ljava/lang/String; = "Setting_AodUserSetTime"

.field private static final CARRIER_INFO_SETTING:Ljava/lang/String; = "oppo_plmn_display_type"

.field public static final COLOR_VERSION_OS_5_2:I = 0xb

.field public static final COLOR_VERSION_UNKNOWN:I = 0x0

.field public static final CURVED_DISPLAY_CALL_SWITCH:Ljava/lang/String; = "oppo_aod_curved_display_call_switch"

.field public static final CURVED_DISPLAY_INCOMING_CALL_COLOR:Ljava/lang/String; = "oppo_comm_incallui_curved_display_call_color"

.field public static final CURVED_DISPLAY_INCOMING_CALL_NOTIFY_OPTION:Ljava/lang/String; = "oppo_comm_incallui_side_notification_incomming_type"

.field public static final CURVED_DISPLAY_NOTIFICATION_COLOR:Ljava/lang/String; = "oppo_comm_incallui_curved_display_notification_color"

.field public static final CURVED_DISPLAY_NOTIFICATION_SWITCH:Ljava/lang/String; = "oppo_aod_curved_display_notification_switch"

.field private static final DEFAULT_FULL_SCREEN_BANNER_SWITCH:Ljava/lang/String; = "simple_banner_switch_state"

.field private static final DEFAULT_SLIDE_TYPE:Ljava/lang/String; = "default_slide_notification"

.field private static final DLNA_SWITCH:Ljava/lang/String; = "dlna_switch"

.field private static final DOUBLE_FINGER_SPLIT_SCREEN_ENABLE:Ljava/lang/String; = "double_finger_split_screen_enable"

.field private static final INTERNAL_MEDIA_FILE_URI_PREFIX:Ljava/lang/String; = "content://media/internal/"

.field private static final KEYBOARD_POSITION:Ljava/lang/String; = "keyboard_position"

.field private static final KEYGUARD_NOTICE_WAKELOCK_STATE:Ljava/lang/String; = "keyguard_notice_wakelock_state"

.field private static final KEY_LOCAL_APP_LIST_CUTOUT_HIDE:Ljava/lang/String; = "cutout_hide_app_list"

.field private static final KEY_LOCAL_COMPAT_APPS:Ljava/lang/String; = "key_display_compat_local_apps_v1"

.field private static final KEY_LOCAL_FULLSCREEN_APPS:Ljava/lang/String; = "key_display_fullscreen_local_apps_v1"

.field private static final KEY_LOCAL_IMMERSIVE_APPS:Ljava/lang/String; = "key_display_immersive_local_apps"

.field private static final KEY_LOCAL_NONIMMERSIVE_APPS:Ljava/lang/String; = "key_display_nonimmersive_local_apps"

.field private static final NETWORK_SPEED:Ljava/lang/String; = "show_network_speed"

.field private static final SCREEN_BRIGHTNESS_MAX:I = 0xff

.field private static final SCREEN_BRIGHTNESS_NONE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SettingsConstants"

.field private static final TAO_PASSWORD_FIELD:Ljava/lang/String; = "tao_password_field"

.field private static final VIBRATE_WHEN_SILENT:Ljava/lang/String; = "vibrate_when_silent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAudioPathFromUri(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 974
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string p1, "title"

    const-string v1, "_data"

    .line 975
    filled-new-array {p1, v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 978
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 979
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 985
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object p0, v0

    goto :goto_4

    :catch_1
    move-exception p1

    move-object p0, v0

    :goto_2
    :try_start_2
    const-string v1, "SettingsConstants"

    .line 982
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error occur, e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    :goto_3
    return-object v0

    :catchall_1
    move-exception p1

    :goto_4
    if-eqz p0, :cond_2

    .line 985
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 987
    :cond_2
    throw p1
.end method

.method static getCommonRecord(Landroid/content/Context;)Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;
    .locals 10

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 146
    new-instance v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;

    invoke-direct {v1}, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;-><init>()V

    const-string v2, "notification_light_pulse"

    .line 147
    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSystemState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mBreathlightNotify:I

    const-string v2, "display_power_percent"

    .line 148
    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSystemState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mPowerPercent:I

    const-string v2, "show_network_speed"

    .line 149
    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSystemState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mNetworkSpeed:I

    const-string v2, "oppo_plmn_display_type"

    .line 150
    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSystemState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCarrierInfo:I

    const-string v2, "oppo_disaplay_calculate_data_traffic"

    .line 151
    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSystemState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mOppoDisplayDataTraffic:I

    const-string v2, "oppo_status_bar_enable_when_lock"

    .line 153
    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSystemState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mOppoStatusbarEnbaleWhenLock:I

    const-string v2, "keyguard_notice_wakelock_state"

    .line 155
    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSystemState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mNoticeWakelockState:I

    const-string v2, "accelerometer_rotation"

    .line 156
    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSystemState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAccelerometer:I

    .line 157
    invoke-static {}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getFontScale()F

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mFontScale:F

    const-string v2, "vibrate_when_ringing"

    .line 158
    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSystemState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mVibrateRinging:I

    const-string v2, "vibrate_when_silent"

    .line 159
    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSystemState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mVibrateSilent:I

    const-string v2, "ringtone"

    .line 161
    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSystemString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCallUriStr:Ljava/lang/String;

    .line 162
    iget-object v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCallUriStr:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getRingtoneFilePath(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCallUriStrPath:Ljava/lang/String;

    const-string v2, "ringtone_sim2"

    .line 163
    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSystemString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCallUriStr2:Ljava/lang/String;

    .line 164
    iget-object v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCallUriStr2:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getRingtoneFilePath(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCallUriStrPath2:Ljava/lang/String;

    const-string v2, "oppo_sms_notification_sound"

    .line 165
    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSystemString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mMessageUriStr:Ljava/lang/String;

    .line 166
    iget-object v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mMessageUriStr:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getRingtoneFilePath(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mMessageUriStrPath:Ljava/lang/String;

    const-string v2, "notification_sim2"

    .line 167
    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSystemString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mMessageUriStr2:Ljava/lang/String;

    .line 168
    iget-object v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mMessageUriStr2:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getRingtoneFilePath(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mMessageUriStrPath2:Ljava/lang/String;

    const-string v2, "calendar_sound"

    .line 169
    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSystemString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCalendarUriStr:Ljava/lang/String;

    .line 170
    iget-object v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCalendarUriStr:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getRingtoneFilePath(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCalendarUriStrPath:Ljava/lang/String;

    const-string v2, "notification_sound"

    .line 171
    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSystemString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mNotificationUriStr:Ljava/lang/String;

    .line 172
    iget-object v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mNotificationUriStr:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getRingtoneFilePath(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mNotificationUriStrPath:Ljava/lang/String;

    const-string v2, "dtmf_tone"

    .line 174
    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSystemState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDialTone:I

    const-string v2, "sound_effects_enabled"

    .line 175
    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSystemState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mSoundEffectsEnabled:I

    const-string v2, "lockscreen_sounds_enabled"

    .line 176
    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSystemState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mLockTone:I

    const-string v2, "haptic_feedback_enabled"

    .line 177
    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSystemState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mVibrateTouch:I

    const-string v2, "disable_screen_capture_sound"

    .line 178
    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSecureState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDisableScreenCaputure:I

    const-string v2, "screen_off_timeout"

    .line 179
    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSystemState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mScreenOffTimeout:I

    .line 180
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    iput-boolean v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAutoSync:Z

    .line 181
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mTime1224:Z

    const-string v2, "null"

    .line 182
    iput-object v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDateFormat:Ljava/lang/String;

    .line 183
    sget-boolean v2, Lcom/coloros/settings/a;->a:Z

    if-nez v2, :cond_0

    const-string v2, "dlna_switch"

    .line 184
    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSystemState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDlnaSwith:I

    .line 186
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/othersettings/timepower/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mTimePowerConfig:Ljava/lang/String;

    .line 187
    invoke-static {p0}, Lcom/coloros/settings/romupdate/c;->a(Landroid/content/Context;)Lcom/coloros/settings/romupdate/c;

    move-result-object v2

    .line 188
    invoke-virtual {v2, p0}, Lcom/coloros/settings/romupdate/c;->b(Landroid/content/Context;)V

    .line 189
    sget-boolean v3, Lcom/coloros/settings/a;->a:Z

    if-nez v3, :cond_1

    .line 1048
    iget-boolean v2, v2, Lcom/coloros/settings/romupdate/c;->a:Z

    if-eqz v2, :cond_1

    const-string v2, "tao_password_field"

    .line 190
    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSystemState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mTaoPasswordField:I

    :cond_1
    const-string v2, "allow_resizeable_screen"

    .line 192
    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSecureState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mResizeScreen:I

    const-string v2, "double_finger_split_screen_enable"

    .line 193
    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSecureState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDoubleFingerSplitScreen:I

    .line 194
    sget-boolean v2, Lcom/coloros/settings/a;->a:Z

    const/4 v3, 0x1

    if-nez v2, :cond_2

    const-string v2, "settings_install_authentication"

    .line 195
    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSecureState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mInstallApplication:I

    const-string v2, "settings_install_authentication_frequency"

    .line 197
    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSecureState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mInstallApplicationFrequency:I

    const-string v2, "oppo_apk_prescan_switch"

    .line 199
    invoke-static {v0, v2, v3}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getGlobalState(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mApkPrescan:I

    :cond_2
    const-string v2, "disable_assistant_screen"

    .line 201
    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSecureState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDisableAssistantScreen:I

    const/4 v2, -0x1

    const-string v4, "default_volume_type_coloros_six"

    .line 202
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDefaultVolumeType:I

    const-string v4, "simple_banner_switch_state"

    .line 203
    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDefaultFullBanner:I

    const-string v4, "default_slide_notification"

    .line 204
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDefaultSlideType:I

    .line 206
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->F(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "Setting_AodClockMode"

    .line 207
    invoke-static {v0, v4}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSecureState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodClockMode:I

    const-string v4, "Setting_AodEnableDateMode"

    .line 208
    invoke-static {v0, v4}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSecureState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodDateMode:I

    const-string v4, "Setting_AodEnableImmediate"

    .line 209
    invoke-static {v0, v4}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSecureState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodImmediateSwitch:I

    const-string v4, "Setting_AodEnableBattery"

    .line 210
    invoke-static {v0, v4}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSecureState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodBatterySwitch:I

    const-string v4, "Setting_AodEnableStep"

    .line 211
    invoke-static {v0, v4}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSecureState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodStepSwitch:I

    const-string v4, "Setting_AodEnableClockOnly"

    .line 212
    invoke-static {v0, v4}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSecureState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodClockOnly:I

    const-string v4, "Setting_AodUserSetTime"

    .line 213
    invoke-static {v0, v4}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSecureState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodTimeSwitch:I

    const-string v4, "Setting_AodSetTimeBeginHour"

    .line 214
    invoke-static {v0, v4}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSecureState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodBeginHour:I

    const-string v4, "Setting_AodSetTimeBeginMin"

    .line 215
    invoke-static {v0, v4}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSecureState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodBeginMin:I

    const-string v4, "Setting_AodSetTimeEndHour"

    .line 216
    invoke-static {v0, v4}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSecureState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodEndHour:I

    const-string v4, "Setting_AodSetTimeEndMin"

    .line 217
    invoke-static {v0, v4}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSecureState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodEndMin:I

    .line 221
    :cond_3
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->F(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "key_realme_aod_clock_mode"

    .line 222
    invoke-static {v0, v4}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSecureState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeClocKSetting:I

    const-string v4, "key_aod_clock_date"

    .line 223
    invoke-static {v0, v4}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSecureState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeDateSetting:I

    const-string v4, "key_aod_clock_date_select"

    .line 224
    invoke-static {v0, v4}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSecureState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAODRealmeDateSelectSetting:I

    const-string v4, "key_realme_aod_notification_icon"

    .line 225
    invoke-static {v0, v4}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSecureState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeNotificationSetting:I

    const-string v4, "key_realme_aod_battery"

    .line 226
    invoke-static {v0, v4}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSecureState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodBetterySetting:I

    const-string v4, "key_realme_aod_signature"

    .line 227
    invoke-static {v0, v4}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSecureState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeSignatureSetting:I

    const-string v4, "realme_aod_notification_black_pkg"

    .line 228
    invoke-static {v0, v4}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSecureStringState(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeNotificationPackageSetting:Ljava/lang/String;

    const-string v4, "realme_aod_signature_text"

    .line 229
    invoke-static {v0, v4}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSecureStringState(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/coloros/settings/backuprestore/SettingsConstants;->multilineToSingleLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeSignatureText:Ljava/lang/String;

    const-string v4, "realme_aod_signature_color_index"

    .line 230
    invoke-static {v0, v4}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSecureState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeColorIndex:I

    const-string v4, "realme_aod_signature_aligntype_index"

    .line 231
    invoke-static {v0, v4}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSecureState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeAlignTypeIndex:I

    const-string v4, "realme_aod_signature_fontsize_index"

    .line 232
    invoke-static {v0, v4}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSecureState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeFontSizeIndex:I

    const-string v4, "realme_aod_signature_face_type_index"

    .line 233
    invoke-static {v0, v4}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSecureState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeTypeFaceIndex:I

    :cond_4
    const-string v4, "key_display_fullscreen_local_apps_v1"

    .line 238
    invoke-static {v0, v4}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getGlobalString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDisplayCompatFullScreenList:Ljava/lang/String;

    const-string v4, "key_display_compat_local_apps_v1"

    .line 239
    invoke-static {v0, v4}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getGlobalString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDisplayCompatCompatList:Ljava/lang/String;

    const-string v4, "key_display_immersive_local_apps"

    .line 240
    invoke-static {v0, v4}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getGlobalString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDisplayCompatImmersiveList:Ljava/lang/String;

    const-string v4, "key_display_nonimmersive_local_apps"

    .line 241
    invoke-static {v0, v4}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getGlobalString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDisplayCompatNoImmersiveList:Ljava/lang/String;

    const-string v4, "cutout_hide_app_list"

    .line 242
    invoke-static {v0, v4}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getGlobalString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCutoutHideModeList:Ljava/lang/String;

    .line 244
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->J(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_5

    const-string v4, "oppo_aod_curved_display_call_switch"

    .line 247
    invoke-static {v0, v4, v3}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getGlobalState(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCurvedDisplayIncallSwitch:I

    const-string v4, "oppo_comm_incallui_side_notification_incomming_type"

    .line 248
    invoke-static {v0, v4, v5}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getGlobalState(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCurvedDisplayIncallType:I

    const-string v4, "oppo_comm_incallui_curved_display_call_color"

    .line 249
    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCurvedDisplayIncallColor:Ljava/lang/String;

    const-string v4, "oppo_aod_curved_display_notification_switch"

    .line 250
    invoke-static {v0, v4, v3}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getGlobalState(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCurvedDisplayNotificationSwitch:I

    const-string v4, "oppo_comm_incallui_curved_display_notification_color"

    .line 251
    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCurvedDisplayNotificationColor:Ljava/lang/String;

    .line 254
    :cond_5
    invoke-static {}, Lcom/coloros/settings/utils/bh;->i()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 255
    invoke-static {p0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCameraColor:Ljava/lang/String;

    .line 256
    invoke-static {p0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->b(Landroid/content/Context;)Z

    move-result v4

    iput v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCameraColorSwitch:I

    .line 257
    invoke-static {p0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->c(Landroid/content/Context;)Z

    move-result v4

    iput v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCameraRandomColorSwitch:I

    .line 259
    invoke-static {p0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCameraSoundPath:Ljava/lang/String;

    .line 260
    invoke-static {p0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->e(Landroid/content/Context;)Z

    move-result v4

    iput v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCameraSoundSwitch:I

    goto :goto_0

    .line 261
    :cond_6
    invoke-static {}, Lcom/coloros/settings/utils/bh;->h()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 262
    invoke-static {p0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCameraSoundPath:Ljava/lang/String;

    .line 1184
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "camera_3d_lifting_descending_sound_path_backup"

    invoke-static {v4, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 263
    iput-object v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCameraSoundPathBackup:Ljava/lang/String;

    .line 267
    :cond_7
    :goto_0
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->aa(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "keyboard_position"

    .line 268
    invoke-static {v0, v4}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSecureState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mKeyboardPosition:I

    .line 271
    :cond_8
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "disable_google_asssist_power_wakeup"

    .line 272
    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDisableGoogleAsssiant:I

    .line 276
    :cond_9
    invoke-static {p0}, Lcom/coloros/settings/utils/aw;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "disable_front_finger_sound"

    .line 277
    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDisableFrontFingerSound:I

    .line 280
    :cond_a
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->ae(Landroid/content/Context;)Z

    move-result v4

    const-string v6, "SettingsConstants"

    if-nez v4, :cond_b

    .line 281
    invoke-static {p0}, Lcom/coloros/settings/feature/weather/module/city/d;->d(Landroid/content/Context;)Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;

    move-result-object v4

    .line 282
    invoke-static {p0}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/a;->b(Landroid/content/Context;)I

    move-result v7

    .line 283
    invoke-static {p0}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/a;->c(Landroid/content/Context;)I

    move-result v8

    .line 284
    invoke-static {p0}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/a;->d(Landroid/content/Context;)I

    move-result v9

    .line 285
    invoke-virtual {v4, v7}, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->setDualClockSwitch(I)V

    .line 286
    invoke-virtual {v4, v8}, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->setDualClockScreenSwitch(I)V

    .line 287
    invoke-virtual {v4, v9}, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->setDualClockWidgetSwitch(I)V

    .line 289
    :try_start_0
    new-instance v7, Lcom/google/b/f;

    invoke-direct {v7}, Lcom/google/b/f;-><init>()V

    .line 290
    const-class v8, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;

    invoke-virtual {v7, v4, v8}, Lcom/google/b/f;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "gson dualClockData = "

    .line 291
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iput-object v4, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDualClockData:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 294
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "gson error = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_b
    :goto_1
    invoke-static {}, Lcom/coloros/settings/utils/al;->l()Z

    .line 298
    sget-boolean v4, Lcom/coloros/settings/a;->a:Z

    const/4 v4, 0x0

    const-string v7, "notification_prompt_mode"

    invoke-static {v0, v7, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mNotificationPromptMode:I

    .line 303
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->t(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "system_dolby"

    .line 304
    invoke-static {v0, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDolbyEffectSwitch:I

    const-string v7, "system_dolby_category"

    .line 306
    invoke-static {v0, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDolbyEffectMode:I

    const-string v7, "system_dolby_music_ieq"

    .line 308
    invoke-static {v0, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDolbyMusicIeq:I

    const-string v7, "system_dolby_music_geq"

    .line 310
    invoke-static {v0, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDolbyMusicGeq:Ljava/lang/String;

    const-string v7, "system_dolby_geq_state"

    .line 312
    invoke-static {v0, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDolbyGeqState:I

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "getCommonRecord mDolbyEffectSwitch: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDolbyEffectSwitch:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mDolbyEffectMode:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDolbyEffectMode:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mDolbyMusicIeq:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDolbyMusicIeq:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mDolbyMusicGeq:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDolbyMusicGeq:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", mDolbyGeqState:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDolbyGeqState:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_c
    invoke-static {}, Lcom/coloros/settings/utils/al;->u()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "oppo_color_mode"

    .line 324
    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSecureState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mColorMode:I

    .line 327
    :cond_d
    invoke-static {}, Lcom/coloros/settings/utils/bh;->H()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {p0}, Lcom/coloros/settings/utils/al;->s(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {p0}, Lcom/coloros/settings/utils/al;->u(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "global_dirac"

    .line 328
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDiracEffectSwitch:I

    .line 330
    sget-object v2, Lcom/oppo/a/a/a/b$a;->e:Lcom/oppo/a/a/a/b$a;

    .line 331
    invoke-virtual {v2}, Lcom/oppo/a/a/a/b$a;->ordinal()I

    move-result v2

    const-string v7, "global_dirac_scene"

    .line 330
    invoke-static {v0, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDiracScene:I

    const/16 v2, 0xb

    const-string v7, "global_dirac_effect_mode"

    .line 332
    invoke-static {v0, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDiracEffectMode:I

    const-string v2, "global_dirac_eq"

    .line 334
    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDiracEqBands:Ljava/lang/String;

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "getCommonRecord, mDiracEffectSwitch = "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDiracEffectSwitch:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "; mDiracScene = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDiracScene:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "; mDiracEffectMode = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDiracEffectMode:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "; mDiracEqBands = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDiracEqBands:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_e
    invoke-static {}, Lcom/coloros/settings/utils/al;->n()Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "non_sensing_certification_enable"

    .line 344
    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSecureState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mNoneSensingCertification:I

    .line 348
    :cond_f
    invoke-static {}, Lcom/coloros/settings/utils/bh;->m()Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "display_dc_settings_switch"

    .line 349
    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSecureState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDCBacklightMode:I

    .line 352
    :cond_10
    invoke-static {p0}, Lcom/coloros/settings/utils/bh;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "button_light_mode"

    .line 353
    invoke-static {v0, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mPressKeyBacklightMode:I

    const/16 v2, 0x1770

    const-string v6, "button_light_timeout"

    .line 355
    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mPressKeyBacklightTime:I

    .line 359
    :cond_11
    invoke-static {p0}, Lcom/coloros/settings/utils/bh;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "coloros_sound_input_channel"

    .line 360
    invoke-static {v0, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getSecureState(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mSoundInputDevice:I

    :cond_12
    const-string v2, "global_delete_sound"

    .line 362
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mGlobalDeleteSound:I

    .line 364
    invoke-static {}, Lcom/coloros/settings/utils/bh;->p()Z

    move-result v2

    const-string v6, "coloros_screen_refresh_rate"

    if-eqz v2, :cond_13

    .line 365
    invoke-static {v0, v6, v4, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mScreenRefreshRate:I

    goto :goto_2

    .line 367
    :cond_13
    invoke-static {}, Lcom/coloros/settings/utils/bh;->q()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 368
    invoke-static {v0, v6, v5, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mScreenRefreshRate:I

    goto :goto_2

    .line 370
    :cond_14
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->aw(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 371
    invoke-static {v0, v6, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mScreenRefreshRate:I

    .line 375
    :cond_15
    :goto_2
    invoke-static {}, Lcom/coloros/settings/utils/bh;->n()Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "setting_enable_color_temperature_regulation"

    .line 376
    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mTemperatureAdjustment:I

    .line 380
    :cond_16
    invoke-static {}, Lcom/coloros/settings/utils/ap;->a()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 381
    invoke-static {}, Lcom/coloros/settings/utils/ap;->b()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "1"

    goto :goto_3

    :cond_17
    const-string v0, "0"

    :goto_3
    iput-object v0, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mOSIESwitch:Ljava/lang/String;

    .line 383
    :cond_18
    invoke-static {p0}, Lcom/coloros/settings/utils/v;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 384
    invoke-static {p0}, Lcom/coloros/settings/utils/v;->b(Landroid/content/Context;)Z

    move-result v0

    iput v0, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mIris5Switch:I

    .line 385
    invoke-static {p0}, Lcom/coloros/settings/utils/v;->c(Landroid/content/Context;)Z

    move-result v0

    iput v0, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mIris5VideoDisplay:I

    .line 386
    invoke-static {p0}, Lcom/coloros/settings/utils/v;->d(Landroid/content/Context;)Z

    move-result v0

    iput v0, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mIris5MotionFluency:I

    .line 387
    invoke-static {p0}, Lcom/coloros/settings/utils/v;->e(Landroid/content/Context;)I

    move-result v0

    iput v0, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mIris5MotionValue:I

    .line 390
    :cond_19
    invoke-static {}, Lcom/coloros/settings/utils/bh;->y()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 391
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->aA(Landroid/content/Context;)Z

    move-result v0

    iput v0, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mRingPowerSwitch:I

    .line 394
    :cond_1a
    invoke-static {}, Lcom/coloros/settings/romupdate/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 395
    invoke-static {p0}, Lcom/coloros/settings/romupdate/e;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mVideoBeautyData:Ljava/lang/String;

    :cond_1b
    return-object v1
.end method

.method private static getFontScale()F
    .locals 3

    .line 751
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 753
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "SettingsConstants"

    const-string v2, "Unable to retrieve font size"

    .line 755
    invoke-static {v1, v2}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    :goto_0
    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    return v0
.end method

.method private static getGlobalState(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 0

    .line 824
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getGlobalString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 775
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getRingtoneFilePath(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "content://media/internal/"

    .line 961
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 963
    invoke-static {p0, p1}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getAudioPathFromUri(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 966
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getInternalRingtoneFilePath uriStr"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " filePath="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SettingsConstants"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static getSecureState(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 0

    .line 812
    :try_start_0
    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static getSecureStringState(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x2

    .line 819
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private static getSystemState(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 0

    .line 804
    :try_start_0
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static getSystemString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 771
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isValidRingToneUri(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 926
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SettingsConstants"

    if-eqz v0, :cond_0

    const-string p0, "isValidRingToneUri isEmpty ,return false"

    .line 927
    invoke-static {v2, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 930
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 932
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 936
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 937
    throw p0

    .line 936
    :catch_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 938
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "isValidRingToneUri result ="

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static multilineToSingleLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "+"

    .line 996
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/+"

    .line 997
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v1, "\n"

    .line 999
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1000
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static restoreCameraEffect(Landroid/content/Context;Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;)V
    .locals 8

    .line 633
    invoke-static {}, Lcom/coloros/settings/utils/bh;->i()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 636
    iget-object v4, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCameraColor:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 637
    iget-object v4, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCameraColor:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 639
    :cond_0
    iget v4, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCameraColorSwitch:I

    if-eq v4, v1, :cond_2

    .line 640
    iget v4, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCameraColorSwitch:I

    if-ne v4, v3, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-static {p0, v4}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->a(Landroid/content/Context;Z)V

    .line 642
    :cond_2
    iget v4, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCameraRandomColorSwitch:I

    if-eq v4, v1, :cond_4

    .line 643
    iget v4, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCameraRandomColorSwitch:I

    if-ne v4, v3, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v2

    :goto_1
    invoke-static {p0, v4}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->b(Landroid/content/Context;Z)V

    .line 647
    :cond_4
    invoke-static {}, Lcom/coloros/settings/utils/bh;->h()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 648
    iget-object v4, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCameraSoundPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, ":"

    const-string v6, ""

    if-nez v4, :cond_b

    .line 649
    iget-object v4, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCameraSoundPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 650
    array-length v7, v4

    if-le v7, v3, :cond_b

    .line 651
    new-instance v5, Ljava/io/File;

    aget-object v7, v4, v2

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 652
    new-instance v7, Ljava/io/File;

    aget-object v4, v4, v3

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 653
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz v0, :cond_7

    .line 655
    iget v0, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCameraSoundSwitch:I

    if-eq v0, v1, :cond_5

    iget v0, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCameraSoundSwitch:I

    if-ne v0, v3, :cond_6

    :cond_5
    move v2, v3

    :cond_6
    invoke-static {p0, v2}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->c(Landroid/content/Context;Z)V

    .line 657
    iget-object p1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCameraSoundPath:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 659
    :cond_7
    iget v0, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCameraSoundSwitch:I

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    iget-object v6, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCameraSoundPath:Ljava/lang/String;

    :goto_2
    invoke-static {p0, v6}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 661
    iget-object p1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCameraSoundPath:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 665
    :cond_9
    invoke-static {p0, v6}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 666
    invoke-static {p0, v2}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->c(Landroid/content/Context;Z)V

    if-nez v0, :cond_a

    .line 668
    invoke-static {p0, v6}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_a
    return-void

    .line 675
    :cond_b
    invoke-static {p0, v2}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->c(Landroid/content/Context;Z)V

    .line 676
    iget-object v1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCameraSoundPathBackup:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCameraSoundPathBackup:Ljava/lang/String;

    const-string v4, "null"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_4

    .line 684
    :cond_c
    iget-object v1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCameraSoundPathBackup:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 685
    array-length v4, v1

    if-gt v4, v3, :cond_e

    .line 686
    invoke-static {p0, v6}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    if-nez v0, :cond_d

    .line 688
    invoke-static {p0, v6}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_d
    return-void

    .line 693
    :cond_e
    new-instance v4, Ljava/io/File;

    aget-object v2, v1, v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 694
    new-instance v2, Ljava/io/File;

    aget-object v1, v1, v3

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 695
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_3

    :cond_f
    if-eqz v0, :cond_10

    .line 704
    iget-object p1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCameraSoundPathBackup:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 706
    :cond_10
    invoke-static {p0, v6}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 707
    iget-object p1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCameraSoundPathBackup:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    .line 696
    :cond_11
    :goto_3
    invoke-static {p0, v6}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    if-nez v0, :cond_12

    .line 698
    invoke-static {p0, v6}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_12
    return-void

    .line 677
    :cond_13
    :goto_4
    invoke-static {p0, v6}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    if-nez v0, :cond_14

    .line 679
    invoke-static {p0, v6}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_14
    :goto_5
    return-void
.end method

.method private static restoreRingtone(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 943
    invoke-static {p0, p3}, Lcom/coloros/settings/backuprestore/SettingsConstants;->isValidRingToneUri(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 946
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSystemString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "ringtone"

    .line 947
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "ringtone_sim2"

    .line 948
    invoke-static {p1, p0, p3}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSystemString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p0, "oppo_sms_notification_sound"

    .line 950
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "notification_sim2"

    .line 951
    invoke-static {p1, p0, p3}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSystemString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "restoreRingtone key ="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "uri ="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingsConstants"

    invoke-static {p1, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static setCommonSettings(Landroid/content/Context;Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;I)Z
    .locals 4

    .line 402
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 403
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->r(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    iget v1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mBreathlightNotify:I

    const-string v2, "notification_light_pulse"

    invoke-static {v0, v2, v1}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSystemState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 407
    :cond_0
    iget v1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mPowerPercent:I

    invoke-static {p0, v0, v1}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setPowerPercent(Landroid/content/Context;Landroid/content/ContentResolver;I)V

    .line 408
    iget v1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mNetworkSpeed:I

    const-string v2, "show_network_speed"

    invoke-static {v0, v2, v1}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSystemState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 409
    iget v1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCarrierInfo:I

    const-string v2, "oppo_plmn_display_type"

    invoke-static {v0, v2, v1}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSystemState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 410
    iget v1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mOppoDisplayDataTraffic:I

    const-string v2, "oppo_disaplay_calculate_data_traffic"

    invoke-static {v0, v2, v1}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSystemState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 413
    iget v1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mOppoStatusbarEnbaleWhenLock:I

    const-string v2, "oppo_status_bar_enable_when_lock"

    invoke-static {v0, v2, v1}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSystemState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 415
    iget v1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mNoticeWakelockState:I

    const-string v2, "keyguard_notice_wakelock_state"

    invoke-static {v0, v2, v1}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSystemState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 416
    iget v1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAccelerometer:I

    const-string v2, "accelerometer_rotation"

    invoke-static {v0, v2, v1}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSystemState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 417
    iget v1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mFontScale:F

    invoke-static {v1}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setFontScale(F)V

    .line 418
    iget v1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mVibrateRinging:I

    const-string v2, "vibrate_when_ringing"

    invoke-static {v0, v2, v1}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSystemState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 419
    iget v1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mVibrateSilent:I

    invoke-static {p0, v1}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setVibrateWhenSilent(Landroid/content/Context;I)V

    .line 420
    iget v1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mVibrateSilent:I

    const-string v2, "vibrate_when_silent"

    invoke-static {v0, v2, v1}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSystemState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 422
    iget-object v1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCallUriStr:Ljava/lang/String;

    iget-object v2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCallUriStrPath:Ljava/lang/String;

    const-string v3, "ringtone"

    invoke-static {p0, v3, v1, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setRingTone(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCallUriStr2:Ljava/lang/String;

    iget-object v2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCallUriStrPath2:Ljava/lang/String;

    const-string v3, "ringtone_sim2"

    invoke-static {p0, v3, v1, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setRingTone(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mMessageUriStr:Ljava/lang/String;

    iget-object v2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mMessageUriStrPath:Ljava/lang/String;

    const-string v3, "oppo_sms_notification_sound"

    invoke-static {p0, v3, v1, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setRingTone(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mMessageUriStr2:Ljava/lang/String;

    iget-object v2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mMessageUriStrPath2:Ljava/lang/String;

    const-string v3, "notification_sim2"

    invoke-static {p0, v3, v1, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setRingTone(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCalendarUriStr:Ljava/lang/String;

    iget-object v2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCalendarUriStrPath:Ljava/lang/String;

    const-string v3, "calendar_sound"

    invoke-static {p0, v3, v1, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setRingTone(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mNotificationUriStr:Ljava/lang/String;

    iget-object v2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mNotificationUriStrPath:Ljava/lang/String;

    const-string v3, "notification_sound"

    invoke-static {p0, v3, v1, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setRingTone(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget v1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDialTone:I

    const-string v2, "dtmf_tone"

    invoke-static {v0, v2, v1}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSystemState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 430
    iget v1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mSoundEffectsEnabled:I

    const-string v2, "sound_effects_enabled"

    invoke-static {v0, v2, v1}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSystemState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 431
    iget v1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mLockTone:I

    const-string v2, "lockscreen_sounds_enabled"

    invoke-static {v0, v2, v1}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSystemState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 432
    iget v1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mVibrateTouch:I

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v0, v2, v1}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSystemState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 433
    iget v1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDisableScreenCaputure:I

    const-string v2, "disable_screen_capture_sound"

    invoke-static {v0, v2, v1}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 434
    iget v1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mGlobalDeleteSound:I

    const-string v2, "global_delete_sound"

    invoke-static {v0, v2, v1}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 435
    iget v1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mScreenOffTimeout:I

    const-string v2, "screen_off_timeout"

    invoke-static {v0, v2, v1}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSystemState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 436
    iget-boolean v1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAutoSync:Z

    invoke-static {v1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 437
    sget-boolean v1, Lcom/coloros/settings/a;->a:Z

    if-nez v1, :cond_1

    .line 438
    iget v1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDlnaSwith:I

    const-string v2, "dlna_switch"

    invoke-static {v0, v2, v1}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSystemState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 440
    :cond_1
    iget-object v1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mTimePowerConfig:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/coloros/settings/backuprestore/SettingsConstants;->updateTimePowerConfig(Landroid/content/Context;Ljava/lang/String;)V

    .line 441
    iget v1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mTaoPasswordField:I

    const-string v2, "tao_password_field"

    invoke-static {v0, v2, v1}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSystemState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    const-string v1, "double_finger_split_screen_enable"

    const-string v2, "allow_resizeable_screen"

    if-eqz p2, :cond_3

    const/16 v3, 0xb

    if-ge p2, v3, :cond_3

    .line 443
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mResizeScreen:I

    if-lez p2, :cond_2

    .line 444
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mResizeScreen:I

    invoke-static {v0, v2, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 446
    :cond_2
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDoubleFingerSplitScreen:I

    if-lez p2, :cond_4

    .line 447
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDoubleFingerSplitScreen:I

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    goto :goto_0

    .line 450
    :cond_3
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mResizeScreen:I

    invoke-static {v0, v2, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 451
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDoubleFingerSplitScreen:I

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 453
    :cond_4
    :goto_0
    sget-boolean p2, Lcom/coloros/settings/a;->a:Z

    if-nez p2, :cond_5

    .line 454
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mInstallApplication:I

    const-string v1, "settings_install_authentication"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 456
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mInstallApplicationFrequency:I

    const-string v1, "settings_install_authentication_frequency"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 459
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mApkPrescan:I

    const-string v1, "oppo_apk_prescan_switch"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setGlobalState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 461
    :cond_5
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDisableAssistantScreen:I

    const-string v1, "disable_assistant_screen"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 462
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDefaultVolumeType:I

    const-string v1, "default_volume_type_coloros_six"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 463
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDefaultFullBanner:I

    const-string v1, "simple_banner_switch_state"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSystemState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 464
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDefaultSlideType:I

    const-string v1, "default_slide_notification"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 466
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->F(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {p0}, Lcom/coloros/settings/utils/al;->K(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 467
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodClockMode:I

    const-string v1, "Setting_AodClockMode"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 468
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodDateMode:I

    const-string v1, "Setting_AodEnableDateMode"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 469
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodImmediateSwitch:I

    const-string v1, "Setting_AodEnableImmediate"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 470
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodStepSwitch:I

    const-string v1, "Setting_AodEnableStep"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 471
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodBatterySwitch:I

    const-string v1, "Setting_AodEnableBattery"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 472
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodClockOnly:I

    const-string v1, "Setting_AodEnableClockOnly"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 473
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodTimeSwitch:I

    const-string v1, "Setting_AodUserSetTime"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 474
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodBeginHour:I

    const-string v1, "Setting_AodSetTimeBeginHour"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 475
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodBeginMin:I

    const-string v1, "Setting_AodSetTimeBeginMin"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 476
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodEndHour:I

    const-string v1, "Setting_AodSetTimeEndHour"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 477
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodEndMin:I

    const-string v1, "Setting_AodSetTimeEndMin"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 481
    :cond_6
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->F(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 482
    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 483
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->K(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 484
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeClocKSetting:I

    const-string v1, "key_realme_aod_clock_mode"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 485
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeDateSetting:I

    const-string v1, "key_aod_clock_date"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 486
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAODRealmeDateSelectSetting:I

    const-string v1, "key_aod_clock_date_select"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 487
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodBetterySetting:I

    const-string v1, "key_realme_aod_battery"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 488
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeNotificationSetting:I

    const-string v1, "key_realme_aod_notification_icon"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 489
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeSignatureSetting:I

    const-string v1, "key_realme_aod_signature"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 490
    iget-object p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeNotificationPackageSetting:Ljava/lang/String;

    const-string v1, "realme_aod_notification_black_pkg"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureStringState(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeSignatureText:Ljava/lang/String;

    invoke-static {p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->singleLineToMultiline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "realme_aod_signature_text"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureStringState(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeColorIndex:I

    const-string v1, "realme_aod_signature_color_index"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 493
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeAlignTypeIndex:I

    const-string v1, "realme_aod_signature_aligntype_index"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 494
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeFontSizeIndex:I

    const-string v1, "realme_aod_signature_fontsize_index"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 495
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeTypeFaceIndex:I

    const-string v1, "realme_aod_signature_face_type_index"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 501
    :cond_7
    iget-object p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDisplayCompatFullScreenList:Ljava/lang/String;

    const-string v1, "key_display_fullscreen_local_apps_v1"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setGlobalString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDisplayCompatCompatList:Ljava/lang/String;

    const-string v1, "key_display_compat_local_apps_v1"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setGlobalString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDisplayCompatImmersiveList:Ljava/lang/String;

    const-string v1, "key_display_immersive_local_apps"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setGlobalString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDisplayCompatNoImmersiveList:Ljava/lang/String;

    const-string v1, "key_display_nonimmersive_local_apps"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setGlobalString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCutoutHideModeList:Ljava/lang/String;

    const-string v1, "cutout_hide_app_list"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setGlobalString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->J(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 508
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCurvedDisplayIncallSwitch:I

    const-string v1, "oppo_aod_curved_display_call_switch"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setGlobalState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 509
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCurvedDisplayIncallType:I

    const-string v1, "oppo_comm_incallui_side_notification_incomming_type"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setGlobalState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 510
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCurvedDisplayNotificationSwitch:I

    const-string v1, "oppo_aod_curved_display_notification_switch"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setGlobalState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 511
    iget-object p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCurvedDisplayIncallColor:Ljava/lang/String;

    if-eqz p2, :cond_8

    .line 512
    iget-object p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCurvedDisplayIncallColor:Ljava/lang/String;

    const-string v1, "oppo_comm_incallui_curved_display_call_color"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 514
    :cond_8
    iget-object p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCurvedDisplayNotificationColor:Ljava/lang/String;

    if-eqz p2, :cond_9

    .line 515
    iget-object p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCurvedDisplayNotificationColor:Ljava/lang/String;

    const-string v1, "oppo_comm_incallui_curved_display_notification_color"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 519
    :cond_9
    invoke-static {p0, p1}, Lcom/coloros/settings/backuprestore/SettingsConstants;->restoreCameraEffect(Landroid/content/Context;Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;)V

    .line 522
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->aa(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 523
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mKeyboardPosition:I

    const-string v1, "keyboard_position"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 526
    :cond_a
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 527
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDisableGoogleAsssiant:I

    const-string v1, "disable_google_asssist_power_wakeup"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 529
    :cond_b
    invoke-static {p0}, Lcom/coloros/settings/utils/aw;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 530
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDisableFrontFingerSound:I

    const-string v1, "disable_front_finger_sound"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 532
    :cond_c
    invoke-static {}, Lcom/coloros/settings/utils/ap;->a()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 533
    iget-object p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mOSIESwitch:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p0, p2}, Lcom/coloros/settings/utils/ap;->a(Landroid/content/Context;Z)V

    .line 536
    :cond_d
    invoke-static {p0}, Lcom/coloros/settings/utils/v;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 537
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mIris5Switch:I

    const-string v1, "osie_iris5_switch"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 538
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mIris5VideoDisplay:I

    const-string v1, "osie_video_display_switch"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 539
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mIris5MotionFluency:I

    const-string v1, "osie_motion_fluency_switch"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 540
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mIris5MotionValue:I

    const-string v1, "osie_motion_value"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 542
    :cond_e
    invoke-static {}, Lcom/coloros/settings/utils/bh;->y()Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_10

    .line 543
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mRingPowerSwitch:I

    if-ne v1, p2, :cond_f

    move p2, v1

    goto :goto_1

    :cond_f
    const/4 p2, 0x0

    :goto_1
    invoke-static {p0, p2}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Z)Z

    .line 546
    :cond_10
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->ae(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_11

    .line 547
    iget-object p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDualClockData:Ljava/lang/String;

    .line 548
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 549
    invoke-static {p0, v0, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setDualClockData(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 553
    :cond_11
    invoke-static {}, Lcom/coloros/settings/utils/al;->l()Z

    .line 554
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mNotificationPromptMode:I

    const-string v2, "notification_prompt_mode"

    invoke-static {v0, v2, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 558
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->t(Landroid/content/Context;)Z

    move-result p2

    const-string v2, "SettingsConstants"

    if-eqz p2, :cond_12

    .line 559
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDolbyEffectSwitch:I

    const-string v3, "system_dolby"

    invoke-static {v0, v3, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSystemState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 561
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDolbyEffectMode:I

    const-string v3, "system_dolby_category"

    invoke-static {v0, v3, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSystemState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 563
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDolbyMusicIeq:I

    const-string v3, "system_dolby_music_ieq"

    invoke-static {v0, v3, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSystemState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 565
    iget-object p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDolbyMusicGeq:Ljava/lang/String;

    const-string v3, "system_dolby_music_geq"

    invoke-static {v0, v3, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSystemString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDolbyGeqState:I

    const-string v3, "system_dolby_geq_state"

    invoke-static {v0, v3, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSystemState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 569
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "setCommonSettings mDolbyEffectSwitch: "

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDolbyEffectSwitch:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mDolbyEffectMode:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDolbyEffectMode:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mDolbyMusicIeq:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDolbyMusicIeq:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mDolbyMusicGeq:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDolbyMusicGeq:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mDolbyGeqState:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDolbyGeqState:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    :cond_12
    invoke-static {}, Lcom/coloros/settings/utils/al;->u()Z

    move-result p2

    if-eqz p2, :cond_13

    .line 579
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mColorMode:I

    const-string v3, "oppo_color_mode"

    invoke-static {v0, v3, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 582
    :cond_13
    invoke-static {}, Lcom/coloros/settings/utils/bh;->H()Z

    move-result p2

    if-eqz p2, :cond_14

    invoke-static {p0}, Lcom/coloros/settings/utils/al;->s(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_14

    invoke-static {p0}, Lcom/coloros/settings/utils/al;->u(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_14

    .line 583
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDiracEffectSwitch:I

    const-string v3, "global_dirac"

    invoke-static {v0, v3, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSystemState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 584
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDiracScene:I

    const-string v3, "global_dirac_scene"

    invoke-static {v0, v3, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSystemState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 585
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDiracEffectMode:I

    const-string v3, "global_dirac_effect_mode"

    invoke-static {v0, v3, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSystemState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 586
    iget-object p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDiracEqBands:Ljava/lang/String;

    const-string v3, "global_dirac_eq"

    invoke-static {v0, v3, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSystemString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "setCommonSettings, mDiracEffectSwitch = "

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDiracEffectSwitch:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; mDiracScene = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDiracScene:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; mDiracEffectMode = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDiracEffectMode:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; mDiracEqBands = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDiracEqBands:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    :cond_14
    invoke-static {}, Lcom/coloros/settings/utils/al;->n()Z

    move-result p2

    if-eqz p2, :cond_15

    .line 595
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mNoneSensingCertification:I

    const-string v2, "non_sensing_certification_enable"

    invoke-static {v0, v2, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 599
    :cond_15
    invoke-static {}, Lcom/coloros/settings/utils/bh;->m()Z

    move-result p2

    if-eqz p2, :cond_16

    .line 600
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDCBacklightMode:I

    const-string v2, "display_dc_settings_switch"

    invoke-static {v0, v2, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 603
    :cond_16
    invoke-static {p0}, Lcom/coloros/settings/utils/bh;->c(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_17

    .line 604
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mPressKeyBacklightMode:I

    const-string v2, "button_light_mode"

    invoke-static {v0, v2, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSystemState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 605
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mPressKeyBacklightTime:I

    const-string v2, "button_light_timeout"

    invoke-static {v0, v2, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSystemState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 607
    :cond_17
    invoke-static {p0}, Lcom/coloros/settings/utils/bh;->b(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 608
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mSoundInputDevice:I

    const-string v2, "coloros_sound_input_channel"

    invoke-static {v0, v2, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 611
    :cond_18
    invoke-static {}, Lcom/coloros/settings/utils/bh;->q()Z

    move-result p2

    const/4 v2, 0x3

    const-string v3, "coloros_screen_refresh_rate"

    if-eqz p2, :cond_19

    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mScreenRefreshRate:I

    if-ne p2, v1, :cond_19

    .line 613
    invoke-static {v0, v3, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureStateForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    goto :goto_2

    .line 614
    :cond_19
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->aw(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1a

    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mScreenRefreshRate:I

    if-ne p2, v2, :cond_1a

    .line 616
    invoke-static {v0, v3, v1}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureStateForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    goto :goto_2

    .line 617
    :cond_1a
    invoke-static {}, Lcom/coloros/settings/utils/bh;->q()Z

    move-result p2

    if-nez p2, :cond_1b

    invoke-static {p0}, Lcom/coloros/settings/utils/al;->aw(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 618
    :cond_1b
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mScreenRefreshRate:I

    invoke-static {v0, v3, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureStateForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 621
    :cond_1c
    :goto_2
    invoke-static {}, Lcom/coloros/settings/utils/bh;->n()Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 622
    iget p2, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mTemperatureAdjustment:I

    const-string v2, "setting_enable_color_temperature_regulation"

    invoke-static {v0, v2, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSystemState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 625
    :cond_1d
    invoke-static {}, Lcom/coloros/settings/romupdate/e;->b()Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 626
    iget-object p1, p1, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mVideoBeautyData:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/coloros/settings/romupdate/e;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1e
    return v1
.end method

.method private static setDualClockData(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 5

    const-string v0, "SettingsConstants"

    .line 714
    :try_start_0
    new-instance v1, Lcom/google/b/f;

    invoke-direct {v1}, Lcom/google/b/f;-><init>()V

    .line 715
    const-class v2, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;

    invoke-virtual {v1, p2, v2}, Lcom/google/b/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;

    .line 716
    invoke-virtual {p2}, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->getDualClockSwitch()I

    move-result v1

    .line 717
    invoke-virtual {p2}, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->getDualClockScreenSwitch()I

    move-result v2

    .line 718
    invoke-virtual {p2}, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->getDualClockWidgetSwitch()I

    move-result v3

    const-string v4, "enable_dual_clock_switch"

    .line 719
    invoke-static {p1, v4, v1}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    const-string v1, "enable_dual_clock_screen_clock_switch"

    .line 720
    invoke-static {p1, v1, v2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    const-string v1, "enable_dual_clock_clock_widget_switch"

    .line 721
    invoke-static {p1, v1, v3}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 722
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "cityInfoLocal = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    invoke-static {p0, p2}, Lcom/coloros/settings/feature/weather/module/city/d;->a(Landroid/content/Context;Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 725
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "set dual clock error = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static setFontScale(F)V
    .locals 1

    .line 762
    :try_start_0
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 763
    iput p0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 764
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "SettingsConstants"

    const-string v0, "Unable to save font size"

    .line 766
    invoke-static {p0, v0}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static setGlobalState(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return-void

    .line 859
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private static setGlobalString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_1

    const-string v0, "null"

    .line 787
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 790
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static setPowerPercent(Landroid/content/Context;Landroid/content/ContentResolver;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    const-string v0, "display_power_percent"

    .line 797
    invoke-static {p1, v0, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSystemState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 798
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.settings.power_percent_display"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 799
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static setRingTone(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 863
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "SettingsConstants"

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    if-eqz p3, :cond_8

    const-string v1, "content://media/internal/"

    .line 868
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 871
    invoke-static {v6, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getAudioPathFromUri(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 872
    invoke-static {v1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v8, p2

    goto :goto_0

    :cond_0
    move-object v8, v0

    :goto_0
    if-nez v8, :cond_5

    .line 878
    invoke-static {p3}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const-string v0, "_id"

    .line 879
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p3, v4, v10

    const/4 v5, 0x0

    const-string v3, "_data = ?"

    move-object v0, v6

    move-object v1, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 883
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 884
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 885
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    .line 889
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 891
    :cond_1
    throw p0

    :cond_2
    move v2, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 889
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eq v2, v1, :cond_4

    .line 894
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 896
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "query form audio audioUri = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; audioId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; localRingtoneUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-nez v8, :cond_6

    .line 901
    new-instance v0, Lcom/coloros/settings/backuprestore/MediaScanner;

    invoke-direct {v0, p0}, Lcom/coloros/settings/backuprestore/MediaScanner;-><init>(Landroid/content/Context;)V

    .line 902
    invoke-virtual {v0, p3}, Lcom/coloros/settings/backuprestore/MediaScanner;->scanFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 904
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, v8

    :goto_2
    if-eqz v0, :cond_9

    .line 909
    invoke-static {p0, v6, p1, v0}, Lcom/coloros/settings/backuprestore/SettingsConstants;->restoreRingtone(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 912
    :cond_7
    invoke-static {p0, v6, p1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->restoreRingtone(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "setRingtoneUri key ="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "uri ="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 917
    :cond_8
    invoke-static {p0, v6, p1, p2}, Lcom/coloros/settings/backuprestore/SettingsConstants;->restoreRingtone(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    :cond_9
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "setRingTone key="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ringtoneUri="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " filePath="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " localRingtoneUri="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static setSecureState(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return-void

    .line 838
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private static setSecureStateForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 845
    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private static setSecureStringState(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x2

    .line 852
    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method private static setSystemState(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return-void

    .line 831
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private static setSystemString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_1

    const-string v0, "null"

    .line 780
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 783
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static setVibrateWhenSilent(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 740
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vibrate_when_silent"

    invoke-static {v0, v1, p1}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setSystemState(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    const-string v0, "audio"

    .line 741
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 742
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-ne p1, v1, :cond_1

    .line 744
    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    return-void

    :cond_1
    if-ne v0, v1, :cond_2

    if-eq p1, v1, :cond_2

    const/4 p1, 0x0

    .line 746
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    :cond_2
    return-void
.end method

.method private static singleLineToMultiline(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1008
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 1009
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1011
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 1013
    aget-char v3, p0, v2

    const/16 v4, 0x2f

    const/16 v5, 0x2b

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget-char v4, p0, v3

    if-ne v4, v5, :cond_0

    const-string v2, "+"

    .line 1014
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v3

    goto :goto_1

    .line 1016
    :cond_0
    aget-char v3, p0, v2

    if-ne v3, v5, :cond_1

    const-string v3, "\n"

    .line 1017
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1019
    :cond_1
    aget-char v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1022
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static updateTimePowerConfig(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 730
    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "timepower_config"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p1, 0x0

    .line 732
    invoke-static {p0, p1}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method
