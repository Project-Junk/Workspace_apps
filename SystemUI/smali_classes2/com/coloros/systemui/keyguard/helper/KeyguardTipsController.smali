.class public Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;
.super Ljava/lang/Object;
.source "KeyguardTipsController.java"


# static fields
.field public static final FINGERPRINT_KEYGUARD_TIPS_MOVING_TOO_FAST:I = 0x0

.field public static final FINGERPRINT_KEYGUARD_TIPS_PARTIAL_SHIFT:I = 0x1

.field private static final KEYGUARD_TIPS_HIDE_DELAY:I = 0xbb8

.field public static final KEYGUARD_TIPS_NONE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "KeyguardTipsController"

.field private static final TEXT_AREA_MAX_WIDTH_SCALE:F = 0.8333333f

.field private static volatile sInstance:Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHideTipsRun:Ljava/lang/Runnable;

.field private mNeverShow:Z

.field private mTipsView:Lcom/coloros/systemui/keyguard/view/KeyguardTipsView;

.field private mUpdate:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/coloros/systemui/keyguard/helper/-$$Lambda$KeyguardTipsController$ri-zaruqOM-IyQBgRT5fuZyWENQ;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/helper/-$$Lambda$KeyguardTipsController$ri-zaruqOM-IyQBgRT5fuZyWENQ;-><init>(Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->mHideTipsRun:Ljava/lang/Runnable;

    .line 61
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->mContext:Landroid/content/Context;

    .line 62
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;
    .locals 2

    .line 50
    sget-object v0, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->sInstance:Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;

    if-nez v0, :cond_1

    .line 51
    const-class v0, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->sInstance:Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->sInstance:Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;

    .line 55
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 57
    :cond_1
    :goto_0
    sget-object p0, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->sInstance:Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;

    return-object p0
.end method

.method private setTipsMessage(Ljava/lang/String;)V
    .locals 2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTipsMessage msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardTipsController"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->mHideTipsRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 128
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->mUpdate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 129
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 130
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->update(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_0
    new-instance v0, Lcom/coloros/systemui/keyguard/helper/-$$Lambda$KeyguardTipsController$OHvUl8FcjSQHl2sDB5gYOtRkYp4;

    invoke-direct {v0, p0, p1}, Lcom/coloros/systemui/keyguard/helper/-$$Lambda$KeyguardTipsController$OHvUl8FcjSQHl2sDB5gYOtRkYp4;-><init>(Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->mUpdate:Ljava/lang/Runnable;

    .line 133
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->mUpdate:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private update(Ljava/lang/String;)V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->mTipsView:Lcom/coloros/systemui/keyguard/view/KeyguardTipsView;

    if-nez v0, :cond_0

    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBouncer()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 143
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowFpWhenBouncer()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    :cond_1
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isMagazineShown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 145
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 147
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBiometricAuthenticationSucceeded()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 148
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->mTipsView:Lcom/coloros/systemui/keyguard/view/KeyguardTipsView;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/keyguard/view/KeyguardTipsView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->mTipsView:Lcom/coloros/systemui/keyguard/view/KeyguardTipsView;

    invoke-virtual {p1, v2}, Lcom/coloros/systemui/keyguard/view/KeyguardTipsView;->setVisibility(I)V

    .line 151
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->mHideTipsRun:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 153
    :cond_3
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->mTipsView:Lcom/coloros/systemui/keyguard/view/KeyguardTipsView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/view/KeyguardTipsView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private updateViewPosition()V
    .locals 6

    const-string v0, "KeyguardTipsController"

    .line 71
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->mTipsView:Lcom/coloros/systemui/keyguard/view/KeyguardTipsView;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "persist.vendor.fingerprint.optical.iconlocation"

    .line 76
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get iconlocation exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    :goto_0
    :try_start_1
    const-string v3, "persist.vendor.fingerprint.optical.iconsize"

    .line 83
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get iconsize exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_1
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 91
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->updateDisplayConfiguration(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070409

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 93
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    add-int/2addr v1, v2

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->mNeverShow:Z

    .line 97
    :goto_2
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->mTipsView:Lcom/coloros/systemui/keyguard/view/KeyguardTipsView;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/view/KeyguardTipsView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 98
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 99
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->mTipsView:Lcom/coloros/systemui/keyguard/view/KeyguardTipsView;

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/keyguard/view/KeyguardTipsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->mTipsView:Lcom/coloros/systemui/keyguard/view/KeyguardTipsView;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->getBaseDisplayWidth()I

    move-result p0

    int-to-float p0, p0

    const v1, 0x3f555555

    mul-float/2addr p0, v1

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/view/KeyguardTipsView;->setMaxWidth(I)V

    return-void
.end method


# virtual methods
.method public displayKeyguardTips(I)V
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->mNeverShow:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 119
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->mContext:Landroid/content/Context;

    const v0, 0x7f110415

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->setTipsMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->mContext:Landroid/content/Context;

    const v0, 0x7f110414

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->setTipsMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, ""

    .line 111
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->setTipsMessage(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$new$0$KeyguardTipsController()V
    .locals 1

    const-string v0, ""

    .line 46
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->setTipsMessage(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setTipsMessage$1$KeyguardTipsController(Ljava/lang/String;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->update(Ljava/lang/String;)V

    return-void
.end method

.method public setTipsView(Lcom/coloros/systemui/keyguard/view/KeyguardTipsView;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->mTipsView:Lcom/coloros/systemui/keyguard/view/KeyguardTipsView;

    .line 67
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->updateViewPosition()V

    return-void
.end method
