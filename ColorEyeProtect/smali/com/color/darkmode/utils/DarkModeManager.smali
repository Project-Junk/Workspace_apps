.class public final Lcom/color/darkmode/utils/DarkModeManager;
.super Ljava/lang/Object;


# static fields
.field private static final ACTION_DARKMODE_CLOSE:Ljava/lang/String; = "coloros.intent.action.CLOSE_DARKMODE"

.field private static final ACTION_DARKMODE_OPEN:Ljava/lang/String; = "coloros.intent.action.OPEN_DARKMODE"

.field private static final ATTEND_CITY_URI:Ljava/lang/String; = "content://com.coloros.weather.service.provider.data/attent_city"

.field private static final CHANNEL_ID:Ljava/lang/String; = "ColorDarkMode"

.field public static final INSTANCE:Lcom/color/darkmode/utils/DarkModeManager;

.field private static final LOTTIE_DARK_TO_NORMAL:Ljava/lang/String; = "DarktoNormal.json"

.field private static final LOTTIE_NORMAL_TO_DARK:Ljava/lang/String; = "NormaltoDark.json"

.field private static final NOTIFICATION_ID:I = 0x2711

.field private static final OPPO_SAFE_PERMISSION:Ljava/lang/String; = "oppo.permission.OPPO_COMPONENT_SAFE"

.field private static final PACKAGE:Ljava/lang/String; = "package"

.field private static final RECEIVER_ACTION_CLOSE:I = 0x0

.field private static final RECEIVER_ACTION_DEFAULT:I = -0x1

.field private static final RECEIVER_ACTION_OPEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DarkModeManager"

.field private static final TODAY_SUNSET_AND_SUNRISE:I = 0x0

.field private static final TOMORROW_SUNSET_AND_SUNRISE:I = 0x1

.field private static final WEATHER_INFO_URI:Ljava/lang/String; = "content://com.coloros.weather.service.provider.data/oppo_weather_info"

.field private static final mAlarmReceiver:Lcom/color/darkmode/utils/DarkModeManager$mAlarmReceiver$1;

.field private static mCloseAlarmIntent:Landroid/content/Intent;

.field private static final mDuration:Lcom/color/darkmode/entity/Duration;

.field private static final mHandler:Landroid/os/Handler;

.field private static final mIntentTimeReceiver:Lcom/color/darkmode/utils/DarkModeManager$mIntentTimeReceiver$1;

.field private static mIsLoading:Z

.field private static mIsRealme:Z

.field private static mIsScreenOffReceiverRegistered:Z

.field private static mNotificationChannelCreated:Z

.field private static mOpenAlarmIntent:Landroid/content/Intent;

.field private static mReceiverAction:I

.field private static final mScreenOffReceiver:Lcom/color/darkmode/utils/DarkModeManager$mScreenOffReceiver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/color/darkmode/utils/DarkModeManager;

    invoke-direct {v0}, Lcom/color/darkmode/utils/DarkModeManager;-><init>()V

    sput-object v0, Lcom/color/darkmode/utils/DarkModeManager;->INSTANCE:Lcom/color/darkmode/utils/DarkModeManager;

    new-instance v0, Lcom/color/darkmode/entity/Duration;

    invoke-direct {v0}, Lcom/color/darkmode/entity/Duration;-><init>()V

    sput-object v0, Lcom/color/darkmode/utils/DarkModeManager;->mDuration:Lcom/color/darkmode/entity/Duration;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "coloros.intent.action.CLOSE_DARKMODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/color/darkmode/utils/DarkModeManager;->mCloseAlarmIntent:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "coloros.intent.action.OPEN_DARKMODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/color/darkmode/utils/DarkModeManager;->mOpenAlarmIntent:Landroid/content/Intent;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/color/darkmode/utils/DarkModeManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/color/darkmode/utils/DarkModeManager$mScreenOffReceiver$1;

    invoke-direct {v0}, Lcom/color/darkmode/utils/DarkModeManager$mScreenOffReceiver$1;-><init>()V

    sput-object v0, Lcom/color/darkmode/utils/DarkModeManager;->mScreenOffReceiver:Lcom/color/darkmode/utils/DarkModeManager$mScreenOffReceiver$1;

    new-instance v0, Lcom/color/darkmode/utils/DarkModeManager$mIntentTimeReceiver$1;

    invoke-direct {v0}, Lcom/color/darkmode/utils/DarkModeManager$mIntentTimeReceiver$1;-><init>()V

    sput-object v0, Lcom/color/darkmode/utils/DarkModeManager;->mIntentTimeReceiver:Lcom/color/darkmode/utils/DarkModeManager$mIntentTimeReceiver$1;

    new-instance v0, Lcom/color/darkmode/utils/DarkModeManager$mAlarmReceiver$1;

    invoke-direct {v0}, Lcom/color/darkmode/utils/DarkModeManager$mAlarmReceiver$1;-><init>()V

    sput-object v0, Lcom/color/darkmode/utils/DarkModeManager;->mAlarmReceiver:Lcom/color/darkmode/utils/DarkModeManager$mAlarmReceiver$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getLoadingBackgroundColor(Lcom/color/darkmode/utils/DarkModeManager;Landroid/content/Context;Z)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/color/darkmode/utils/DarkModeManager;->getLoadingBackgroundColor(Landroid/content/Context;Z)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getLoadingTextColor(Lcom/color/darkmode/utils/DarkModeManager;Landroid/content/Context;Z)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/color/darkmode/utils/DarkModeManager;->getLoadingTextColor(Landroid/content/Context;Z)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getMIsLoading$p(Lcom/color/darkmode/utils/DarkModeManager;)Z
    .locals 0

    sget-boolean p0, Lcom/color/darkmode/utils/DarkModeManager;->mIsLoading:Z

    return p0
.end method

.method public static final synthetic access$getMIsScreenOffReceiverRegistered$p(Lcom/color/darkmode/utils/DarkModeManager;)Z
    .locals 0

    sget-boolean p0, Lcom/color/darkmode/utils/DarkModeManager;->mIsScreenOffReceiverRegistered:Z

    return p0
.end method

.method public static final synthetic access$getMReceiverAction$p(Lcom/color/darkmode/utils/DarkModeManager;)I
    .locals 0

    sget p0, Lcom/color/darkmode/utils/DarkModeManager;->mReceiverAction:I

    return p0
.end method

.method public static final synthetic access$handleAlarmCall(Lcom/color/darkmode/utils/DarkModeManager;Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/color/darkmode/utils/DarkModeManager;->handleAlarmCall(Landroid/content/Context;Z)V

    return-void
.end method

.method public static final synthetic access$removeLoadingView(Lcom/color/darkmode/utils/DarkModeManager;Landroid/view/View;Landroid/view/WindowManager;Lcom/color/darkmode/IColorDarkModeListener;J)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/color/darkmode/utils/DarkModeManager;->removeLoadingView(Landroid/view/View;Landroid/view/WindowManager;Lcom/color/darkmode/IColorDarkModeListener;J)V

    return-void
.end method

.method public static final synthetic access$setMIsLoading$p(Lcom/color/darkmode/utils/DarkModeManager;Z)V
    .locals 0

    sput-boolean p1, Lcom/color/darkmode/utils/DarkModeManager;->mIsLoading:Z

    return-void
.end method

.method public static final synthetic access$setMIsScreenOffReceiverRegistered$p(Lcom/color/darkmode/utils/DarkModeManager;Z)V
    .locals 0

    sput-boolean p1, Lcom/color/darkmode/utils/DarkModeManager;->mIsScreenOffReceiverRegistered:Z

    return-void
.end method

.method public static final synthetic access$setMReceiverAction$p(Lcom/color/darkmode/utils/DarkModeManager;I)V
    .locals 0

    sput p1, Lcom/color/darkmode/utils/DarkModeManager;->mReceiverAction:I

    return-void
.end method

.method public static final synthetic access$updateDarkModeAlarm(Lcom/color/darkmode/utils/DarkModeManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/color/darkmode/utils/DarkModeManager;->updateDarkModeAlarm()V

    return-void
.end method

.method private final changeDarkMode(Landroid/content/Context;ZZ)V
    .locals 16

    move-object/from16 v9, p1

    move/from16 v0, p2

    const/4 v10, -0x1

    if-eqz p3, :cond_3

    sget-object v1, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {v1, v9}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->isSystemDarkModeOpen(Landroid/content/Context;)Z

    move-result v1

    if-eq v0, v1, :cond_3

    :try_start_0
    sget-boolean v1, Lcom/color/darkmode/utils/DarkModeManager;->mIsLoading:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/color/darkmode/utils/DarkModeManager;->mIsLoading:Z

    const-string v2, "window"

    invoke-virtual {v9, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object v7, v2

    check-cast v7, Landroid/view/WindowManager;

    invoke-static {}, Lcom/color/eyeprotect/ColorEyeProtectApp;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b008f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v2, 0x7f080173

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    const v2, 0x7f080097

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/coloros/anim/EffectiveAnimationView;

    invoke-direct/range {p0 .. p2}, Lcom/color/darkmode/utils/DarkModeManager;->getLoadingBackgroundColor(Landroid/content/Context;Z)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-direct/range {p0 .. p2}, Lcom/color/darkmode/utils/DarkModeManager;->getLoadingTextColor(Landroid/content/Context;Z)I

    move-result v3

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v3, "textView"

    invoke-static {v11, v3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p2}, Lcom/color/darkmode/utils/DarkModeManager;->getLoadingText(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p2}, Lcom/color/darkmode/utils/DarkModeManager;->getLottieRes(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/coloros/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3, v10, v10}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    const/16 v4, 0x90b

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const v4, 0xe000600

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_1

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_1
    const v1, 0x7f1000c6

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    new-instance v8, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$listener$1;

    invoke-direct {v8, v6, v7}, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$listener$1;-><init>(Landroid/view/View;Landroid/view/WindowManager;)V

    move-object v1, v8

    check-cast v1, Lcom/color/darkmode/IColorDarkModeListener;

    invoke-static {v1}, Lcom/color/darkmode/ColorDarkModeHelper;->registerOnUiModeConfigurationChangeFinishListener(Lcom/color/darkmode/IColorDarkModeListener;)V

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-interface {v7, v6, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0601a7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    invoke-virtual {v11}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v1, v13}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3dcccccd    # 0.1f

    const v14, 0x3e99999a    # 0.3f

    invoke-direct {v3, v14, v12, v4, v13}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    check-cast v3, Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v4, 0x75

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v15, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;

    move-object v1, v15

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v0, v5

    move-object v5, v11

    invoke-direct/range {v1 .. v8}, Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$1;-><init>(Lcom/coloros/anim/EffectiveAnimationView;Landroid/content/Context;ZLandroid/widget/TextView;Landroid/view/View;Landroid/view/WindowManager;Lcom/color/darkmode/utils/DarkModeManager$changeDarkMode$listener$1;)V

    move-object v1, v15

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {v11}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e4ccccd    # 0.2f

    const v3, 0x3ea8f5c3    # 0.33f

    invoke-direct {v1, v2, v3, v14, v13}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_2
    new-instance v0, La/o;

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-direct {v0, v1}, La/o;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {v1, v9, v0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setSystemDarkModeOpen(Landroid/content/Context;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/color/darkmode/utils/DarkModeManager;->updateDarkModeAlarm()V

    :goto_0
    sget-object v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "context.contentResolver"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v10}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setDarkModeLoadingSetting(Landroid/content/ContentResolver;I)Z

    sget-object v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "context.contentResolver"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v10}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setWaitSwitchDarkMode(Landroid/content/ContentResolver;I)Z

    const-string v0, "notification"

    invoke-virtual {v9, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void

    :cond_4
    new-instance v0, La/o;

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {v0, v1}, La/o;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getAlarmTime(Z)J
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/color/darkmode/utils/DarkModeManager;->mDuration:Lcom/color/darkmode/entity/Duration;

    invoke-virtual {v1}, Lcom/color/darkmode/entity/Duration;->getMHourBegin()I

    move-result v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/color/darkmode/utils/DarkModeManager;->mDuration:Lcom/color/darkmode/entity/Duration;

    invoke-virtual {v1}, Lcom/color/darkmode/entity/Duration;->getMHourEnd()I

    move-result v1

    :goto_0
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    if-eqz p1, :cond_1

    sget-object p1, Lcom/color/darkmode/utils/DarkModeManager;->mDuration:Lcom/color/darkmode/entity/Duration;

    invoke-virtual {p1}, Lcom/color/darkmode/entity/Duration;->getMMinBegin()I

    move-result p1

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/color/darkmode/utils/DarkModeManager;->mDuration:Lcom/color/darkmode/entity/Duration;

    invoke-virtual {p1}, Lcom/color/darkmode/entity/Duration;->getMMinEnd()I

    move-result p1

    :goto_1
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    const-string p1, "alarmCalendar"

    invoke-static {v0, p1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-string p1, "calendar"

    invoke-static {p0, p1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    cmp-long p0, v1, p0

    if-gtz p0, :cond_2

    const/4 p0, 0x5

    const/4 p1, 0x1

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->add(II)V

    :cond_2
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method private final getLoadingBackgroundColor(Landroid/content/Context;Z)I
    .locals 0

    if-eqz p2, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/high16 p0, -0x1000000

    :goto_0
    return p0
.end method

.method private final getLoadingText(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    const p0, 0x7f0f001f

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "context.getString(R.stri\u2026ge_darkmode_loading_hint)"

    :goto_0
    invoke-static {p0, p1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const p0, 0x7f0f0020

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "context.getString(R.stri\u2026_normalmode_loading_hint)"

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method private final getLoadingTextColor(Landroid/content/Context;Z)I
    .locals 0

    if-eqz p2, :cond_0

    const p0, 0x7f0500a7

    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private final getLottieRes(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    const-string p0, "NormaltoDark.json"

    goto :goto_0

    :cond_0
    const-string p0, "DarktoNormal.json"

    :goto_0
    return-object p0
.end method

.method private final getSunriseSunsetTime(Landroid/content/Context;IZ)V
    .locals 19

    const-string v0, "content://com.coloros.weather.service.provider.data/attent_city"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x0

    move-object v7, v0

    check-cast v7, Landroid/database/Cursor;

    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v3, 0x0

    const-string v4, "location=1"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v10

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_0

    :try_start_1
    const-string v0, "DarkModeManager"

    const-string v2, "weatherCursor is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v7

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move-object v2, v7

    :goto_0
    move-object v7, v1

    goto/16 :goto_6

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v2, "content://com.coloros.weather.service.provider.data/oppo_weather_info"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "city_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " AND weather_index="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    :try_start_2
    const-string v0, "DarkModeManager"

    const-string v3, "weatherCursor is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_1
    move-exception v0

    goto/16 :goto_8

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v3, "sunrise_time"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sunset_time"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "HH:mm"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-direct {v6, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/util/Date;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-direct {v6, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "sunriseString"

    invoke-static {v3, v5}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    const-string v5, ":"

    new-instance v6, La/h/e;

    invoke-direct {v6, v5}, La/h/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v9}, La/h/e;->a(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_3

    move v6, v8

    goto :goto_1

    :cond_3
    move v6, v9

    :goto_1
    if-nez v6, :cond_2

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/util/ListIterator;->nextIndex()I

    move-result v5

    add-int/2addr v5, v8

    invoke-static {v3, v5}, La/a/g;->b(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v3

    goto :goto_2

    :cond_4
    invoke-static {}, La/a/g;->a()Ljava/util/List;

    move-result-object v3

    :goto_2
    check-cast v3, Ljava/util/Collection;

    if-eqz v3, :cond_b

    new-array v5, v9, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_a

    move-object v15, v3

    check-cast v15, [Ljava/lang/String;

    const-string v3, "sunsetString"

    invoke-static {v4, v3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    const-string v3, ":"

    new-instance v5, La/h/e;

    invoke-direct {v5, v3}, La/h/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4, v9}, La/h/e;->a(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_6

    move v5, v8

    goto :goto_3

    :cond_6
    move v5, v9

    :goto_3
    if-nez v5, :cond_5

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/util/ListIterator;->nextIndex()I

    move-result v4

    add-int/2addr v4, v8

    invoke-static {v3, v4}, La/a/g;->b(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v3

    goto :goto_4

    :cond_7
    invoke-static {}, La/a/g;->a()Ljava/util/List;

    move-result-object v3

    :goto_4
    check-cast v3, Ljava/util/Collection;

    if-eqz v3, :cond_9

    new-array v4, v9, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    move-object/from16 v16, v3

    check-cast v16, [Ljava/lang/String;

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move/from16 v17, p2

    move/from16 v18, p3

    invoke-direct/range {v13 .. v18}, Lcom/color/darkmode/utils/DarkModeManager;->setSunriseAndSunsetTime(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;IZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_7

    :cond_8
    :try_start_4
    new-instance v0, La/o;

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v3}, La/o;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, La/o;

    const-string v3, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v0, v3}, La/o;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, La/o;

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v3}, La/o;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, La/o;

    const-string v3, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v0, v3}, La/o;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_2
    move-exception v0

    move-object v1, v7

    move-object v2, v1

    goto/16 :goto_8

    :catch_2
    move-exception v0

    move-object v2, v7

    :goto_6
    :try_start_5
    sget-object v1, Lcom/color/darkmode/utils/RealmeUtils;->INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSunriseAndSunsetTime,error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/color/darkmode/utils/RealmeUtils;->logE(Ljava/lang/String;)V

    sget-object v0, Lcom/color/darkmode/utils/RealmeUtils;->INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "context.contentResolver"

    invoke-static {v1, v3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/color/darkmode/utils/RealmeUtils;->getDarkModeSunsetTime(Landroid/content/ContentResolver;)[I

    move-result-object v0

    sget-object v1, Lcom/color/darkmode/utils/RealmeUtils;->INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "context.contentResolver"

    invoke-static {v3, v4}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/color/darkmode/utils/RealmeUtils;->getDarkModeSunriseTime(Landroid/content/ContentResolver;)[I

    move-result-object v1

    sget-object v3, Lcom/color/darkmode/utils/DarkModeManager;->mDuration:Lcom/color/darkmode/entity/Duration;

    aget v4, v0, v9

    aget v0, v0, v8

    aget v5, v1, v9

    aget v1, v1, v8

    invoke-virtual {v3, v4, v0, v5, v1}, Lcom/color/darkmode/entity/Duration;->setDuration(IIII)V

    sget-object v0, Lcom/color/darkmode/utils/RealmeUtils;->INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "final: mDuration:sunRise: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/color/darkmode/utils/DarkModeManager;->mDuration:Lcom/color/darkmode/entity/Duration;

    invoke-virtual {v3}, Lcom/color/darkmode/entity/Duration;->getMHourEnd()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/color/darkmode/utils/DarkModeManager;->mDuration:Lcom/color/darkmode/entity/Duration;

    invoke-virtual {v3}, Lcom/color/darkmode/entity/Duration;->getMMinEnd()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",Sunset:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/color/darkmode/utils/DarkModeManager;->mDuration:Lcom/color/darkmode/entity/Duration;

    invoke-virtual {v3}, Lcom/color/darkmode/entity/Duration;->getMHourBegin()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/color/darkmode/utils/DarkModeManager;->mDuration:Lcom/color/darkmode/entity/Duration;

    invoke-virtual {v3}, Lcom/color/darkmode/entity/Duration;->getMMinBegin()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/darkmode/utils/RealmeUtils;->logD(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v7, :cond_c

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_c
    if-eqz v2, :cond_d

    goto/16 :goto_5

    :cond_d
    :goto_7
    return-void

    :catchall_3
    move-exception v0

    move-object v1, v7

    :goto_8
    if-eqz v1, :cond_e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_e
    if-eqz v2, :cond_f

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v0
.end method

.method static synthetic getSunriseSunsetTime$default(Lcom/color/darkmode/utils/DarkModeManager;Landroid/content/Context;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/color/darkmode/utils/DarkModeManager;->getSunriseSunsetTime(Landroid/content/Context;IZ)V

    return-void
.end method

.method private final handleAlarmCall(Landroid/content/Context;Z)V
    .locals 9

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p2, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const-string v0, "handleAlarmCall-->not Interactive-->change"

    invoke-virtual {p2, v0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->logD(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/color/darkmode/utils/DarkModeManager;->updateDarkModeByTime$default(Lcom/color/darkmode/utils/DarkModeManager;Landroid/content/Context;ZZILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    sget-object p0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const-string v1, "handleAlarmCall-->waiting screen off"

    invoke-virtual {p0, v1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->logD(Ljava/lang/String;)V

    const-string p0, "notification"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    check-cast p0, Landroid/app/NotificationManager;

    sget-boolean v1, Lcom/color/darkmode/utils/DarkModeManager;->mNotificationChannelCreated:Z

    const v2, 0x7f0f0043

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v1, :cond_1

    new-instance v1, Landroid/app/NotificationChannel;

    const-string v6, "ColorDarkMode"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-direct {v1, v6, v7, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const v6, 0x7f0f0045

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/app/NotificationChannel;->setImportance(I)V

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/app/NotificationChannel;->enableLights(Z)V

    invoke-virtual {v1, v6}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    invoke-virtual {v1, v3, v3}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    invoke-virtual {v1, v6}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    invoke-virtual {p0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    sput-boolean v5, Lcom/color/darkmode/utils/DarkModeManager;->mNotificationChannelCreated:Z

    :cond_1
    const/16 v1, 0x2711

    invoke-virtual {p0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    sget-object v6, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {v6, p1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->isSystemDarkModeOpen(Landroid/content/Context;)Z

    move-result v6

    const/4 v7, -0x1

    if-eq p2, v6, :cond_3

    sget-object v6, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const-string v8, "contentResolver"

    invoke-static {v0, v8}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v0, p2}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setWaitSwitchDarkMode(Landroid/content/ContentResolver;I)Z

    new-instance v0, Landroidx/core/app/g$b;

    const-string v6, "ColorDarkMode"

    invoke-direct {v0, p1, v6}, Landroidx/core/app/g$b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v6, 0x7f070211

    invoke-virtual {v0, v6}, Landroidx/core/app/g$b;->a(I)Landroidx/core/app/g$b;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroidx/core/app/g$b;->b(Z)Landroidx/core/app/g$b;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroidx/core/app/g$b;->a(Z)Landroidx/core/app/g$b;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroidx/core/app/g$b;->b(I)Landroidx/core/app/g$b;

    move-result-object v0

    if-eqz p2, :cond_2

    const v6, 0x7f0f0048

    :goto_0
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Landroidx/core/app/g$b;->a(Ljava/lang/CharSequence;)Landroidx/core/app/g$b;

    goto :goto_1

    :cond_2
    const v6, 0x7f0f0049

    goto :goto_0

    :goto_1
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "android.substName"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroidx/core/app/g$b;->a(Landroid/os/Bundle;)Landroidx/core/app/g$b;

    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/color/darkmode/receiver/NotificationClickReceiver;

    invoke-direct {v2, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "extra_open_state"

    invoke-virtual {v2, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p2, 0x8000000

    invoke-static {p1, v5, v2, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/core/app/g$b;->a(Landroid/app/PendingIntent;)Landroidx/core/app/g$b;

    invoke-virtual {v0}, Landroidx/core/app/g$b;->b()Landroid/app/Notification;

    move-result-object p2

    iput v4, p2, Landroid/app/Notification;->flags:I

    invoke-virtual {p0, v1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    sget-boolean p0, Lcom/color/darkmode/utils/DarkModeManager;->mIsScreenOffReceiverRegistered:Z

    if-nez p0, :cond_4

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object p2, Lcom/color/darkmode/utils/DarkModeManager;->mScreenOffReceiver:Lcom/color/darkmode/utils/DarkModeManager$mScreenOffReceiver$1;

    check-cast p2, Landroid/content/BroadcastReceiver;

    const-string v0, "oppo.permission.OPPO_COMPONENT_SAFE"

    invoke-virtual {p1, p2, p0, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    sput-boolean v5, Lcom/color/darkmode/utils/DarkModeManager;->mIsScreenOffReceiverRegistered:Z

    goto :goto_2

    :cond_3
    sget-object p0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const-string p1, "contentResolver"

    invoke-static {v0, p1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v7}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setWaitSwitchDarkMode(Landroid/content/ContentResolver;I)Z

    :cond_4
    :goto_2
    return-void

    :cond_5
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type android.os.PowerManager"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final isCurrentInDuration()Z
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    sget-object v1, Lcom/color/darkmode/utils/DarkModeManager;->mDuration:Lcom/color/darkmode/entity/Duration;

    invoke-virtual {v1, v0, p0}, Lcom/color/darkmode/entity/Duration;->isInDuration(II)Z

    move-result p0

    return p0
.end method

.method private final removeLoadingView(Landroid/view/View;Landroid/view/WindowManager;Lcom/color/darkmode/IColorDarkModeListener;J)V
    .locals 1

    sget-object p0, Lcom/color/darkmode/utils/DarkModeManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/color/darkmode/utils/DarkModeManager$removeLoadingView$1;

    invoke-direct {v0, p2, p1, p3}, Lcom/color/darkmode/utils/DarkModeManager$removeLoadingView$1;-><init>(Landroid/view/WindowManager;Landroid/view/View;Lcom/color/darkmode/IColorDarkModeListener;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final resetSunsetAndSunriseStatus()V
    .locals 0

    sget-boolean p0, Lcom/color/darkmode/utils/DarkModeManager;->mIsRealme:Z

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    sput p0, Lcom/color/darkmode/utils/DarkModeManager;->mReceiverAction:I

    :cond_0
    return-void
.end method

.method private final setSunriseAndSunsetTime(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;IZ)V
    .locals 24

    move/from16 v2, p4

    move/from16 v3, p5

    sget-object v4, Lcom/color/darkmode/utils/RealmeUtils;->INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSunriseAndSunsetTime,day: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",isSunrise: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/color/darkmode/utils/RealmeUtils;->logD(Ljava/lang/String;)V

    sget-object v4, Lcom/color/darkmode/utils/RealmeUtils;->INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "context.contentResolver"

    invoke-static {v5, v6}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/color/darkmode/utils/RealmeUtils;->getDarkModeSunsetTime(Landroid/content/ContentResolver;)[I

    move-result-object v4

    sget-object v5, Lcom/color/darkmode/utils/RealmeUtils;->INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "context.contentResolver"

    invoke-static {v6, v7}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/color/darkmode/utils/RealmeUtils;->getDarkModeSunriseTime(Landroid/content/ContentResolver;)[I

    move-result-object v5

    sget-object v6, Lcom/color/darkmode/utils/RealmeUtils;->INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSunriseAndSunsetTime1: todaySunrise:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    aget v9, v5, v8

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    aget v10, v5, v9

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",todaySunset:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v4, v8

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v4, v9

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/color/darkmode/utils/RealmeUtils;->logD(Ljava/lang/String;)V

    sget-object v6, Lcom/color/darkmode/utils/RealmeUtils;->INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setSunriseAndSunsetTime1: getSunrise:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, p2, v8

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, p2, v9

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",getSunset:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, p3, v8

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, p3, v9

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/color/darkmode/utils/RealmeUtils;->logD(Ljava/lang/String;)V

    if-nez v2, :cond_0

    sget-object v10, Lcom/color/darkmode/utils/RealmeUtils;->INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v6, "context.contentResolver"

    invoke-static {v11, v6}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    aget-object v6, p3, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    aget-object v6, p3, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x0

    const/16 v15, 0x8

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lcom/color/darkmode/utils/RealmeUtils;->setDarkModeSunsetTime$default(Lcom/color/darkmode/utils/RealmeUtils;Landroid/content/ContentResolver;IIZILjava/lang/Object;)Z

    sget-object v17, Lcom/color/darkmode/utils/RealmeUtils;->INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "context.contentResolver"

    invoke-static {v6, v7}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    aget-object v7, p2, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    aget-object v7, p2, v9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x8

    const/16 v23, 0x0

    move-object/from16 v18, v6

    invoke-static/range {v17 .. v23}, Lcom/color/darkmode/utils/RealmeUtils;->setDarkModeSunriseTime$default(Lcom/color/darkmode/utils/RealmeUtils;Landroid/content/ContentResolver;IIZILjava/lang/Object;)Z

    sget-object v6, Lcom/color/darkmode/utils/DarkModeManager;->mDuration:Lcom/color/darkmode/entity/Duration;

    aget-object v7, p3, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v10, p3, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aget-object v11, p2, v8

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aget-object v12, p2, v9

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v6, v7, v10, v11, v12}, Lcom/color/darkmode/entity/Duration;->setDuration(IIII)V

    :cond_0
    if-ne v2, v9, :cond_2

    if-eqz v3, :cond_1

    sget-object v1, Lcom/color/darkmode/utils/DarkModeManager;->mDuration:Lcom/color/darkmode/entity/Duration;

    aget v2, v4, v8

    aget v3, v4, v9

    aget-object v4, p2, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v0, p2, v9

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/color/darkmode/entity/Duration;->setDuration(IIII)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/color/darkmode/utils/DarkModeManager;->mDuration:Lcom/color/darkmode/entity/Duration;

    aget-object v2, p3, v8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, p3, v9

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget v3, v5, v8

    aget v4, v5, v9

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/color/darkmode/entity/Duration;->setDuration(IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final updateDarkModeAlarm()V
    .locals 12

    invoke-static {}, Lcom/color/eyeprotect/ColorEyeProtectApp;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_c

    check-cast v1, Landroid/app/AlarmManager;

    sget-object v2, Lcom/color/darkmode/utils/DarkModeManager;->mCloseAlarmIntent:Landroid/content/Intent;

    const/high16 v3, 0x20000000

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    sget-object v2, Lcom/color/darkmode/utils/DarkModeManager;->mOpenAlarmIntent:Landroid/content/Intent;

    invoke-static {v0, v4, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_1
    invoke-direct {p0, v0}, Lcom/color/darkmode/utils/DarkModeManager;->updateSunsetSunriseTime(Landroid/content/Context;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    sget-object v5, Lcom/color/darkmode/utils/DarkModeManager;->mDuration:Lcom/color/darkmode/entity/Duration;

    invoke-virtual {v5}, Lcom/color/darkmode/entity/Duration;->getMHourBegin()I

    move-result v5

    const/16 v6, 0xb

    invoke-virtual {v3, v6, v5}, Ljava/util/Calendar;->set(II)V

    sget-object v5, Lcom/color/darkmode/utils/DarkModeManager;->mDuration:Lcom/color/darkmode/entity/Duration;

    invoke-virtual {v5}, Lcom/color/darkmode/entity/Duration;->getMMinBegin()I

    move-result v5

    const/16 v7, 0xc

    invoke-virtual {v3, v7, v5}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    sget-object v8, Lcom/color/darkmode/utils/DarkModeManager;->mDuration:Lcom/color/darkmode/entity/Duration;

    invoke-virtual {v8}, Lcom/color/darkmode/entity/Duration;->getMHourEnd()I

    move-result v8

    invoke-virtual {v5, v6, v8}, Ljava/util/Calendar;->set(II)V

    sget-object v6, Lcom/color/darkmode/utils/DarkModeManager;->mDuration:Lcom/color/darkmode/entity/Duration;

    invoke-virtual {v6}, Lcom/color/darkmode/entity/Duration;->getMMinEnd()I

    move-result v6

    invoke-virtual {v5, v7, v6}, Ljava/util/Calendar;->set(II)V

    const-string v6, "endCalendar"

    invoke-static {v5, v6}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    const-string v8, "beginCalendar"

    invoke-static {v3, v8}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    cmp-long v6, v6, v8

    const/4 v7, 0x1

    if-gez v6, :cond_2

    const/4 v6, 0x5

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->add(II)V

    :cond_2
    sget-boolean v6, Lcom/color/darkmode/utils/DarkModeManager;->mIsRealme:Z

    if-eqz v6, :cond_4

    sget-object v6, Lcom/color/darkmode/utils/RealmeUtils;->INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

    if-nez v0, :cond_3

    invoke-static {}, La/d/b/g;->a()V

    :cond_3
    invoke-virtual {v6, v0}, Lcom/color/darkmode/utils/RealmeUtils;->isDarkSunsetToSunriseSwitch(Landroid/content/Context;)Z

    move-result v6

    goto :goto_0

    :cond_4
    move v6, v4

    :goto_0
    sget-object v8, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "context.contentResolver"

    invoke-static {v9, v10}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->isDarkModeTimeSwitchOpen(Landroid/content/ContentResolver;)Z

    move-result v8

    if-nez v8, :cond_5

    if-eqz v6, :cond_b

    :cond_5
    const-string v6, "calendar"

    invoke-static {v2, v6}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v3, v8, v10

    const/high16 v6, 0x8000000

    if-ltz v3, :cond_6

    sget-boolean v3, Lcom/color/darkmode/utils/DarkModeManager;->mIsRealme:Z

    if-eqz v3, :cond_7

    :cond_6
    sget-object v3, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {v3, v0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->isSystemDarkModeOpen(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lcom/color/darkmode/utils/DarkModeManager;->mOpenAlarmIntent:Landroid/content/Intent;

    invoke-static {v0, v4, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {p0, v7}, Lcom/color/darkmode/utils/DarkModeManager;->getAlarmTime(Z)J

    move-result-wide v8

    invoke-virtual {v1, v4, v8, v9, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    sget-object v3, Lcom/color/darkmode/utils/RealmeUtils;->INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "opentime:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ",time:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/color/darkmode/utils/RealmeUtils;->INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

    invoke-virtual {v11, v8, v9}, Lcom/color/darkmode/utils/RealmeUtils;->timeStampChangeString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/color/darkmode/utils/RealmeUtils;->logD(Ljava/lang/String;)V

    sget-boolean v3, Lcom/color/darkmode/utils/DarkModeManager;->mIsRealme:Z

    xor-int/2addr v3, v7

    sget-object v7, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "alarm DarkMode Open Intent time:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->logD(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move v3, v4

    :goto_1
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    cmp-long v2, v7, v9

    if-ltz v2, :cond_8

    sget-boolean v2, Lcom/color/darkmode/utils/DarkModeManager;->mIsRealme:Z

    if-eqz v2, :cond_a

    :cond_8
    if-nez v3, :cond_9

    sget-object v2, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {v2, v0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->isSystemDarkModeOpen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    sget-object v2, Lcom/color/darkmode/utils/DarkModeManager;->mCloseAlarmIntent:Landroid/content/Intent;

    invoke-static {v0, v4, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-direct {p0, v4}, Lcom/color/darkmode/utils/DarkModeManager;->getAlarmTime(Z)J

    move-result-wide v2

    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    sget-object v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alarm DarkMode Close Intent time:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->logD(Ljava/lang/String;)V

    sget-object v0, Lcom/color/darkmode/utils/RealmeUtils;->INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closeTime:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ",time:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/color/darkmode/utils/RealmeUtils;->INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

    invoke-virtual {v4, v2, v3}, Lcom/color/darkmode/utils/RealmeUtils;->timeStampChangeString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/darkmode/utils/RealmeUtils;->logD(Ljava/lang/String;)V

    :cond_a
    invoke-direct {p0}, Lcom/color/darkmode/utils/DarkModeManager;->resetSunsetAndSunriseStatus()V

    :cond_b
    return-void

    :cond_c
    new-instance p0, La/o;

    const-string v0, "null cannot be cast to non-null type android.app.AlarmManager"

    invoke-direct {p0, v0}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    return-void
.end method

.method public static synthetic updateDarkModeBySunsetToSunriseTime$default(Lcom/color/darkmode/utils/DarkModeManager;Landroid/content/Context;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/color/darkmode/utils/DarkModeManager;->updateDarkModeBySunsetToSunriseTime(Landroid/content/Context;Z)V

    return-void
.end method

.method public static synthetic updateDarkModeByTime$default(Lcom/color/darkmode/utils/DarkModeManager;Landroid/content/Context;ZZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x1

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/color/darkmode/utils/DarkModeManager;->updateDarkModeByTime(Landroid/content/Context;ZZ)V

    return-void
.end method

.method private final updateSunsetSunriseTime(Landroid/content/Context;)V
    .locals 14

    sget-boolean v0, Lcom/color/darkmode/utils/DarkModeManager;->mIsRealme:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/color/darkmode/utils/RealmeUtils;->INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

    invoke-virtual {v0, p1}, Lcom/color/darkmode/utils/RealmeUtils;->isDarkSunsetToSunriseSwitch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    const-string v3, "calendar"

    invoke-static {v0, v3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "currentTimeData"

    invoke-static {v0, v1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, ":"

    new-instance v3, La/h/e;

    invoke-direct {v3, v2}, La/h/e;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, La/h/e;->a(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_2

    move v5, v4

    goto :goto_0

    :cond_2
    move v5, v2

    :goto_0
    if-nez v5, :cond_1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/util/ListIterator;->nextIndex()I

    move-result v3

    add-int/2addr v3, v4

    invoke-static {v1, v3}, La/a/g;->b(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-static {}, La/a/g;->a()Ljava/util/List;

    move-result-object v1

    :goto_1
    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_8

    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    check-cast v1, [Ljava/lang/String;

    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v3, v1

    sget-object v1, Lcom/color/darkmode/utils/RealmeUtils;->INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "context.contentResolver"

    invoke-static {v5, v6}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/color/darkmode/utils/RealmeUtils;->getDarkModeSunsetTime(Landroid/content/ContentResolver;)[I

    move-result-object v1

    sget-object v5, Lcom/color/darkmode/utils/RealmeUtils;->INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "context.contentResolver"

    invoke-static {v6, v7}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/color/darkmode/utils/RealmeUtils;->getDarkModeSunriseTime(Landroid/content/ContentResolver;)[I

    move-result-object v5

    aget v6, v1, v2

    mul-int/lit8 v6, v6, 0x3c

    aget v7, v1, v4

    add-int/2addr v6, v7

    aget v7, v5, v2

    mul-int/lit8 v7, v7, 0x3c

    aget v8, v5, v4

    add-int/2addr v7, v8

    sget-object v8, Lcom/color/darkmode/utils/RealmeUtils;->INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentTimeData: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",sunsetData: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v1, v2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v1, v4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",sunriseData:"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v5, v2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v5, v4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/color/darkmode/utils/RealmeUtils;->logD(Ljava/lang/String;)V

    sget v0, Lcom/color/darkmode/utils/DarkModeManager;->mReceiverAction:I

    if-ne v0, v4, :cond_4

    :goto_2
    const/4 v10, 0x1

    :goto_3
    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    move-object v8, p0

    move-object v9, p1

    invoke-static/range {v8 .. v13}, Lcom/color/darkmode/utils/DarkModeManager;->getSunriseSunsetTime$default(Lcom/color/darkmode/utils/DarkModeManager;Landroid/content/Context;IZILjava/lang/Object;)V

    goto :goto_4

    :cond_4
    sget v0, Lcom/color/darkmode/utils/DarkModeManager;->mReceiverAction:I

    if-nez v0, :cond_5

    const/4 v10, 0x0

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {v0, p1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->isSystemDarkModeOpen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-lt v3, v7, :cond_9

    goto :goto_2

    :cond_6
    if-lt v3, v6, :cond_9

    invoke-direct {p0, p1, v4, v2}, Lcom/color/darkmode/utils/DarkModeManager;->getSunriseSunsetTime(Landroid/content/Context;IZ)V

    goto :goto_4

    :cond_7
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_4
    return-void
.end method


# virtual methods
.method public final changeDarkModeByNotification(Landroid/content/Context;Z)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeDarkModeByNotification-->open:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->logD(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/color/darkmode/utils/DarkModeManager;->changeDarkMode(Landroid/content/Context;ZZ)V

    sget-boolean p0, Lcom/color/darkmode/utils/DarkModeManager;->mIsScreenOffReceiverRegistered:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/color/darkmode/utils/DarkModeManager;->mScreenOffReceiver:Lcom/color/darkmode/utils/DarkModeManager$mScreenOffReceiver$1;

    check-cast p0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/color/darkmode/utils/DarkModeManager;->mIsScreenOffReceiverRegistered:Z

    :cond_0
    return-void
.end method

.method public final immediatelyUpdateDarkModeSwitch(Landroid/content/Context;ZZ)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/color/darkmode/utils/DarkModeManager;->changeDarkMode(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public final init(Landroid/content/Context;)V
    .locals 13

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/color/darkmode/utils/RealmeUtils;->INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

    invoke-virtual {v0}, Lcom/color/darkmode/utils/RealmeUtils;->isRealmePhone()Z

    move-result v0

    sput-boolean v0, Lcom/color/darkmode/utils/DarkModeManager;->mIsRealme:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "coloros.intent.action.CLOSE_DARKMODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "coloros.intent.action.OPEN_DARKMODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/color/darkmode/utils/DarkModeManager;->mAlarmReceiver:Lcom/color/darkmode/utils/DarkModeManager$mAlarmReceiver$1;

    check-cast v1, Landroid/content/BroadcastReceiver;

    const-string v2, "oppo.permission.OPPO_COMPONENT_SAFE"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean v1, Lcom/color/darkmode/utils/DarkModeManager;->mIsRealme:Z

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lcom/color/darkmode/utils/DarkModeManager;->mIntentTimeReceiver:Lcom/color/darkmode/utils/DarkModeManager$mIntentTimeReceiver$1;

    check-cast v1, Landroid/content/BroadcastReceiver;

    const-string v2, "oppo.permission.OPPO_COMPONENT_SAFE"

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    sget-object v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "context.contentResolver"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getDarkModeBeginTime(Landroid/content/ContentResolver;)[I

    move-result-object v0

    sget-object v1, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "context.contentResolver"

    invoke-static {v2, v3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getDarkModeEndTime(Landroid/content/ContentResolver;)[I

    move-result-object v1

    sget-boolean v2, Lcom/color/darkmode/utils/DarkModeManager;->mIsRealme:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    sget-object v2, Lcom/color/darkmode/utils/RealmeUtils;->INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

    invoke-virtual {v2, p1}, Lcom/color/darkmode/utils/RealmeUtils;->isDarkSunsetToSunriseSwitch(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/color/darkmode/utils/RealmeUtils;->INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "context.contentResolver"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/color/darkmode/utils/RealmeUtils;->getDarkModeSunsetTime(Landroid/content/ContentResolver;)[I

    move-result-object v0

    sget-object v1, Lcom/color/darkmode/utils/RealmeUtils;->INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "context.contentResolver"

    invoke-static {v2, v5}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/color/darkmode/utils/RealmeUtils;->getDarkModeSunriseTime(Landroid/content/ContentResolver;)[I

    move-result-object v1

    sget-object v2, Lcom/color/darkmode/utils/DarkModeManager;->mDuration:Lcom/color/darkmode/entity/Duration;

    aget v5, v0, v4

    aget v0, v0, v3

    aget v6, v1, v4

    aget v1, v1, v3

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/color/darkmode/utils/DarkModeManager;->mDuration:Lcom/color/darkmode/entity/Duration;

    aget v5, v0, v4

    aget v0, v0, v3

    aget v6, v1, v4

    aget v1, v1, v3

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/color/darkmode/utils/DarkModeManager;->mDuration:Lcom/color/darkmode/entity/Duration;

    aget v5, v0, v4

    aget v0, v0, v3

    aget v6, v1, v4

    aget v1, v1, v3

    :goto_0
    invoke-virtual {v2, v5, v0, v6, v1}, Lcom/color/darkmode/entity/Duration;->setDuration(IIII)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object v7, p0

    move-object v8, p1

    invoke-static/range {v7 .. v12}, Lcom/color/darkmode/utils/DarkModeManager;->updateDarkModeByTime$default(Lcom/color/darkmode/utils/DarkModeManager;Landroid/content/Context;ZZILjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ColorDarkMode_change_night_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/color/darkmode/utils/DarkModeManager$init$1;

    sget-object v3, Lcom/color/darkmode/utils/DarkModeManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, p1, v3}, Lcom/color/darkmode/utils/DarkModeManager$init$1;-><init>(Lcom/color/darkmode/utils/DarkModeManager;Landroid/content/Context;Landroid/os/Handler;)V

    check-cast v2, Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final updateDarkModeBySunsetToSunriseTime(Landroid/content/Context;Z)V
    .locals 13

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/color/darkmode/utils/RealmeUtils;->INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

    invoke-virtual {v0, p1}, Lcom/color/darkmode/utils/RealmeUtils;->isDarkSunsetToSunriseSwitch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/color/darkmode/utils/DarkModeManager;->getSunriseSunsetTime$default(Lcom/color/darkmode/utils/DarkModeManager;Landroid/content/Context;IZILjava/lang/Object;)V

    :cond_0
    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object v7, p0

    move-object v8, p1

    move v9, p2

    invoke-static/range {v7 .. v12}, Lcom/color/darkmode/utils/DarkModeManager;->updateDarkModeByTime$default(Lcom/color/darkmode/utils/DarkModeManager;Landroid/content/Context;ZZILjava/lang/Object;)V

    return-void
.end method

.method public final updateDarkModeByTime(Landroid/content/Context;ZZ)V
    .locals 12

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {v1, p1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->isSystemDarkModeOpen(Landroid/content/Context;)Z

    move-result v1

    sget-object v2, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const-string v3, "contentResolver"

    invoke-static {v0, v3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->isDarkModeTimeSwitchOpen(Landroid/content/ContentResolver;)Z

    move-result v2

    sget-object v3, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {v3, v0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getDarkModeBeginTime(Landroid/content/ContentResolver;)[I

    move-result-object v3

    sget-object v4, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {v4, v0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getDarkModeEndTime(Landroid/content/ContentResolver;)[I

    move-result-object v0

    sget-boolean v4, Lcom/color/darkmode/utils/DarkModeManager;->mIsRealme:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    sget-object v4, Lcom/color/darkmode/utils/RealmeUtils;->INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

    invoke-virtual {v4, p1}, Lcom/color/darkmode/utils/RealmeUtils;->isDarkSunsetToSunriseSwitch(Landroid/content/Context;)Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    sget-object v0, Lcom/color/darkmode/utils/RealmeUtils;->INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "context.contentResolver"

    invoke-static {v3, v7}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/color/darkmode/utils/RealmeUtils;->getDarkModeSunsetTime(Landroid/content/ContentResolver;)[I

    move-result-object v0

    sget-object v3, Lcom/color/darkmode/utils/RealmeUtils;->INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "context.contentResolver"

    invoke-static {v7, v8}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/color/darkmode/utils/RealmeUtils;->getDarkModeSunriseTime(Landroid/content/ContentResolver;)[I

    move-result-object v3

    sget-object v7, Lcom/color/darkmode/utils/DarkModeManager;->mDuration:Lcom/color/darkmode/entity/Duration;

    aget v8, v0, v5

    aget v9, v0, v6

    aget v10, v3, v5

    aget v11, v3, v6

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/color/darkmode/entity/Duration;->setDuration(IIII)V

    sget-object v7, Lcom/color/darkmode/utils/RealmeUtils;->INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateDarkModeByTime: sunRise:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v3, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v3, v6

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",Sunset:"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v5

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/color/darkmode/utils/RealmeUtils;->logD(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v7, Lcom/color/darkmode/utils/DarkModeManager;->mDuration:Lcom/color/darkmode/entity/Duration;

    aget v8, v3, v5

    aget v3, v3, v6

    aget v5, v0, v5

    aget v0, v0, v6

    invoke-virtual {v7, v8, v3, v5, v0}, Lcom/color/darkmode/entity/Duration;->setDuration(IIII)V

    :goto_0
    sget-object v0, Lcom/color/darkmode/utils/RealmeUtils;->INSTANCE:Lcom/color/darkmode/utils/RealmeUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDarkModeSwitchOpen: + "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",isSetTimeSwitchOpen: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isSunsetToSunriseSwitchOpen: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/color/darkmode/utils/RealmeUtils;->logD(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    if-nez v2, :cond_2

    if-eqz v4, :cond_3

    :cond_2
    if-eqz p3, :cond_3

    invoke-direct {p0}, Lcom/color/darkmode/utils/DarkModeManager;->isCurrentInDuration()Z

    move-result v1

    :cond_3
    invoke-direct {p0, p1, v1, p2}, Lcom/color/darkmode/utils/DarkModeManager;->changeDarkMode(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public final updateDurationAndState(Landroid/content/Context;IIII)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/color/darkmode/utils/DarkModeManager;->mDuration:Lcom/color/darkmode/entity/Duration;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/color/darkmode/entity/Duration;->setDuration(IIII)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/color/darkmode/utils/DarkModeManager;->updateDarkModeByTime$default(Lcom/color/darkmode/utils/DarkModeManager;Landroid/content/Context;ZZILjava/lang/Object;)V

    return-void
.end method
