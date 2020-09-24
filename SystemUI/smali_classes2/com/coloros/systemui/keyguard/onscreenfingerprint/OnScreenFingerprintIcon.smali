.class public Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;
.super Landroid/widget/ImageView;
.source "OnScreenFingerprintIcon.java"


# static fields
.field private static final ACTION_UPDATE_UI:Ljava/lang/String; = "com.oppo.systemui.osfp.updateui"

.field private static final ICON_RESTORE_RATE:F = 1.0f

.field private static final ICON_SCALE_RATE:F = 0.96f

.field private static final TAG:Ljava/lang/String; = "OnScreenFingerprintIcon"

.field private static final UI_UPDATE_DURATION:I = 0x1d4c0


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mFilter:Landroid/graphics/ColorFilter;

.field private mIconAlpha:I

.field private mOnFingerprintOpticalAnimCtrl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

.field private mOnScreenBrightnessUtils:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;

.field private mPreventionShow:Z

.field private mStartTime:J

.field private mSwitchAnim:Landroid/animation/Animator;

.field private mUIUpdatePendingIntent:Landroid/app/PendingIntent;

.field private final mUIUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 43
    iput p2, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mVisibility:I

    const-wide/16 v0, 0x0

    .line 57
    iput-wide v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mStartTime:J

    .line 59
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p2, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p3, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mFilter:Landroid/graphics/ColorFilter;

    .line 61
    new-instance p2, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon$1;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon$1;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;)V

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mUIUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 86
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mContext:Landroid/content/Context;

    const-string p3, "alarm"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    check-cast p2, Landroid/app/AlarmManager;

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mAlarmManager:Landroid/app/AlarmManager;

    .line 87
    new-instance p2, Landroid/content/Intent;

    const-string p3, "com.oppo.systemui.osfp.updateui"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    iget-object p3, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    new-instance p3, Landroid/content/IntentFilter;

    invoke-direct {p3}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mUIUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    iget-object p3, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const/high16 v1, 0x10000000

    invoke-static {p3, v0, p2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mUIUpdatePendingIntent:Landroid/app/PendingIntent;

    .line 94
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 96
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mOnFingerprintOpticalAnimCtrl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    .line 97
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mOnFingerprintOpticalAnimCtrl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    invoke-virtual {p2, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->setOnScreenFingerprintIcon(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;)V

    .line 100
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mOnScreenBrightnessUtils:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;

    .line 101
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mOnScreenBrightnessUtils:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->setOnScreenFingerprintIcon(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;)V

    .line 102
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mOnScreenBrightnessUtils:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->getScreenBrightness()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->updateFingerprintIconAlpha(I)V

    const/4 p1, 0x0

    .line 104
    invoke-virtual {p0, v0, p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mPreventionShow:Z

    return p0
.end method

.method static synthetic access$002(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mPreventionShow:Z

    return p1
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->startSwitchAnim()V

    return-void
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mVisibility:I

    return p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;)Landroid/app/PendingIntent;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mUIUpdatePendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;)Landroid/app/AlarmManager;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method static synthetic access$501(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;I)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;)Landroid/graphics/ColorFilter;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mFilter:Landroid/graphics/ColorFilter;

    return-object p0
.end method

.method private startSwitchAnim()V
    .locals 9

    .line 163
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->stopSwitchAnim()V

    .line 165
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->getInstanace(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    move-result-object v0

    const/16 v1, 0x9c4

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->requestDraw(I)V

    .line 167
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [F

    iget-boolean v3, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mPreventionShow:Z

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f75c28f    # 0.96f

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    const/4 v6, 0x0

    aput v3, v2, v6

    iget-boolean v3, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mPreventionShow:Z

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    const/4 v7, 0x1

    aput v3, v2, v7

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 171
    sget-object v2, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->SCALE_Y:Landroid/util/Property;

    new-array v3, v1, [F

    iget-boolean v8, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mPreventionShow:Z

    if-eqz v8, :cond_2

    move v8, v4

    goto :goto_2

    :cond_2
    move v8, v5

    :goto_2
    aput v8, v3, v6

    iget-boolean v8, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mPreventionShow:Z

    if-eqz v8, :cond_3

    move v4, v5

    :cond_3
    aput v4, v3, v7

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 175
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 176
    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v0, v1, v6

    aput-object v2, v1, v7

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x320

    .line 177
    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 178
    new-instance v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon$2;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 204
    iput-object v3, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mSwitchAnim:Landroid/animation/Animator;

    .line 205
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mSwitchAnim:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private stopSwitchAnim()V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mSwitchAnim:Landroid/animation/Animator;

    if-eqz p0, :cond_0

    .line 158
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private writeFpToUserDataCollection()V
    .locals 4

    .line 230
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    .line 231
    iput-wide v2, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mStartTime:J

    .line 232
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, v1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFpStatistic;->writeFpScreenOffShowTotalTime(Landroid/content/Context;J)V

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$setVisibility$0$OnScreenFingerprintIcon()V
    .locals 5

    .line 115
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mAlarmManager:Landroid/app/AlarmManager;

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v3, 0x1d4c0

    add-long/2addr v1, v3

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mUIUpdatePendingIntent:Landroid/app/PendingIntent;

    const/4 v3, 0x2

    .line 115
    invoke-virtual {v0, v3, v1, v2, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setIconAlpha(I)V
    .locals 0

    .line 209
    iput p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mIconAlpha:I

    .line 210
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 212
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 133
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    iget p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mIconAlpha:I

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->setIconAlpha(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    .line 109
    iget v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mVisibility:I

    if-eq v0, p1, :cond_3

    .line 110
    iput p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mVisibility:I

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibility "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "VISIBLE"

    goto :goto_0

    :cond_0
    const-string v1, "INVISIBLE"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Keyguard"

    const-string v2, "OnScreenFingerprintIcon"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mUIUpdatePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    if-nez p1, :cond_1

    .line 114
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/-$$Lambda$OnScreenFingerprintIcon$OAMlIeijx87C7BJQ5lGknLvBlrI;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/-$$Lambda$OnScreenFingerprintIcon$OAMlIeijx87C7BJQ5lGknLvBlrI;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 119
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->stopSwitchAnim()V

    .line 121
    :goto_1
    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->access$501(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;I)V

    .line 123
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->getInstanace(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    move-result-object v0

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v0, p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->setPressedIconTouchable(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->updateUserDataCollectionForFp()V

    :cond_3
    return-void
.end method

.method public setVisibilityInAOD(Z)V
    .locals 5

    .line 148
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mUIUpdatePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    if-eqz p1, :cond_0

    .line 150
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v0, 0x2

    .line 151
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v3, 0x1d4c0

    add-long/2addr v1, v3

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mUIUpdatePendingIntent:Landroid/app/PendingIntent;

    .line 150
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public updateColor(I)V
    .locals 2

    .line 236
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mFilter:Landroid/graphics/ColorFilter;

    .line 237
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public updateUserDataCollectionForFp()V
    .locals 5

    .line 217
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mOnFingerprintOpticalAnimCtrl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->getScreenTurnedOff()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 218
    iget-wide v3, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mStartTime:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->writeFpToUserDataCollection()V

    :cond_0
    if-eqz v0, :cond_1

    .line 221
    iget-wide v3, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mStartTime:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mVisibility:I

    if-eqz v3, :cond_1

    .line 222
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->writeFpToUserDataCollection()V

    :cond_1
    if-eqz v0, :cond_2

    .line 224
    iget v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mVisibility:I

    if-nez v0, :cond_2

    iget-wide v3, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mStartTime:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 225
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->mStartTime:J

    :cond_2
    return-void
.end method
