.class public Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
.super Ljava/lang/Object;
.source "KeyguardBouncer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;
    }
.end annotation


# static fields
.field static final ALPHA_EXPANSION_THRESHOLD:F = 0.95f

.field static final BOUNCER_FACE_DELAY:J = 0x320L

.field static final EXPANSION_HIDDEN:F = 1.0f

.field static final EXPANSION_VISIBLE:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "KeyguardBouncer"


# instance fields
.field private mBouncerPromptReason:I

.field protected final mCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field protected final mContainer:Landroid/view/ViewGroup;

.field protected final mContext:Landroid/content/Context;

.field private final mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

.field private mExpansion:F

.field private final mExpansionCallback:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private final mHandler:Landroid/os/Handler;

.field private mIsAnimatingAway:Z

.field private mIsScrimmed:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field protected mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

.field private mLockIconContainer:Landroid/view/ViewGroup;

.field protected final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mRemoveViewRunnable:Ljava/lang/Runnable;

.field private final mResetRunnable:Ljava/lang/Runnable;

.field protected mRoot:Landroid/view/ViewGroup;

.field private final mShowRunnable:Ljava/lang/Runnable;

.field private mShowingSoon:Z

.field private mStatusBarHeight:I

.field private mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V
    .locals 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 87
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$iQsniWdIxLGqyYwRi09kQ-Ah02M;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$iQsniWdIxLGqyYwRi09kQ-Ah02M;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRemoveViewRunnable:Ljava/lang/Runnable;

    .line 89
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardBouncer$Y9Hvfk0n3yPK2FQ39O1Z5j49gj0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardBouncer$Y9Hvfk0n3yPK2FQ39O1Z5j49gj0;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mResetRunnable:Ljava/lang/Runnable;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 96
    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansion:F

    .line 245
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowRunnable:Ljava/lang/Runnable;

    .line 608
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 115
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 117
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 118
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    .line 119
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 120
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 121
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    .line 122
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansionCallback:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;

    .line 123
    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHandler:Landroid/os/Handler;

    .line 124
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 127
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 128
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 129
    const-class p1, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBouncerPromptReason:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;I)I
    .locals 0

    .line 63
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBouncerPromptReason:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mStatusBarHeight:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)F
    .locals 0

    .line 63
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansion:F

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Ljava/lang/Runnable;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRemoveViewRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Landroid/os/Handler;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private callbackBouncerVisibilityChanged(Z)V
    .locals 2

    .line 467
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 468
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 470
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callbackBouncerVisibilityChanged show = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardBouncer"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p0, p1}, Lcom/android/keyguard/ViewMediatorCallback;->onBouncerVisiblityChanged(Z)V

    :cond_0
    return-void
.end method

.method private cancelShowRunnable()V
    .locals 2

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelShowRunnable(), mShowingSoon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardBouncer"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 308
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    return-void
.end method

.method private onFullyHidden()V
    .locals 2

    .line 235
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    if-nez v0, :cond_1

    .line 236
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->cancelShowRunnable()V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 238
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onBouncerHidden()V

    .line 241
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mResetRunnable:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private onFullyShown()V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onBouncerShown()V

    .line 224
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-nez p0, :cond_0

    const-string p0, "KeyguardBouncer"

    const-string v0, "onFullyShown when view was null"

    .line 225
    invoke-static {p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->onResume()V

    :goto_0
    return-void
.end method

.method private showPrimarySecurityScreen()V
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->showPrimarySecurityScreen()V

    .line 409
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->getCurrentSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a0363

    .line 412
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mLockIconContainer:Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "KeyguardBouncer"

    .line 629
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isShowing(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mStatusBarHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mStatusBarHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mExpansion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansion:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mKeyguardView; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShowingSoon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBouncerPromptReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBouncerPromptReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsAnimatingAway: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsAnimatingAway:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected ensureView()V
    .locals 2

    .line 499
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRemoveViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    .line 500
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    .line 501
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->inflateView()V

    :cond_1
    return-void
.end method

.method public getLockIconContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mLockIconContainer:Landroid/view/ViewGroup;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public getTop()I
    .locals 3

    .line 482
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 486
    :cond_0
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->getTop()I

    move-result v0

    .line 488
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHostView;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v2, :cond_1

    .line 489
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    const v1, 0x7f0a0309

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 490
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public hide(Z)V
    .locals 2

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hide(), destroyView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardBouncer"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3f

    const/4 v1, 0x1

    .line 320
    invoke-static {v0, v1}, Landroid/util/StatsLog;->write(II)I

    .line 322
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->notifyDismissCancelled()V

    :cond_0
    const/4 v0, 0x0

    .line 324
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsScrimmed:Z

    .line 325
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v1}, Lcom/android/systemui/plugins/FalsingManager;->onBouncerHidden()V

    .line 326
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v1, v0}, Lcom/android/keyguard/ViewMediatorCallback;->onBouncerVisiblityChanged(Z)V

    .line 327
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->cancelShowRunnable()V

    .line 328
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v1, :cond_1

    .line 329
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHostView;->cancelDismissAction()V

    .line 330
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHostView;->cleanUp()V

    .line 332
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsAnimatingAway:Z

    .line 333
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    .line 334
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 339
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRemoveViewRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x32

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method protected inflateView()V
    .locals 3

    .line 506
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->removeView()V

    .line 507
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRemoveViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 512
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getNeutralColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120454

    goto :goto_0

    :cond_0
    const v0, 0x7f120453

    .line 515
    :goto_0
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00da

    const/4 v2, 0x0

    .line 516
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    .line 522
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    const v1, 0x7f0a0304

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardHostView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    .line 523
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardHostView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 524
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardHostView;->setViewMediatorCallback(Lcom/android/keyguard/ViewMediatorCallback;)V

    .line 525
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 526
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mStatusBarHeight:I

    .line 528
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHostView;->getAccessibilityTitleForCurrentMode()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 533
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    :cond_1
    return-void
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 597
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    .line 598
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public isAnimatingAway()Z
    .locals 0

    .line 395
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsAnimatingAway:Z

    return p0
.end method

.method public isBouncerShownSoon()Z
    .locals 1

    .line 624
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isFullscreenBouncer()Z
    .locals 3

    .line 572
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 573
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 578
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->LockDead:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    .line 579
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isSystemFbeMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isPartiallyVisible()Z
    .locals 3

    .line 382
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansion:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 383
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isAnimatingAway()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 384
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPartiallyVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mShowingSoon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mExpansion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansion:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",isAnimatingAway="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isAnimatingAway()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "KeyguardBouncer"

    .line 384
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isScrimmed()Z
    .locals 0

    .line 210
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsScrimmed:Z

    return p0
.end method

.method public isSecure()Z
    .locals 1

    .line 589
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p0

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isShowing()Z
    .locals 2

    .line 372
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansion:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 373
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isAnimatingAway()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$new$0$KeyguardBouncer()V
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz p0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->resetSecurityContainer()V

    :cond_0
    return-void
.end method

.method public needsFullscreenBouncer()Z
    .locals 3

    .line 553
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    .line 554
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 555
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 560
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->LockDead:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    .line 561
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isSystemFbeMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public notifyKeyguardAuthenticated(Z)V
    .locals 1

    .line 602
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    .line 603
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardHostView;->finish(ZI)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 0

    .line 545
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->handleBackKey()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 367
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->onPause()V

    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 400
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    if-eqz v0, :cond_1

    .line 402
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showPrimarySecurityScreen()V

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->getBouncerPromptReason()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBouncerPromptReason:I

    return-void
.end method

.method protected removeView()V
    .locals 2

    .line 538
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 540
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 0

    .line 360
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->cancelShowRunnable()V

    .line 361
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->inflateView()V

    .line 362
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onBouncerHidden()V

    return-void
.end method

.method public setExpansion(F)V
    .locals 5

    .line 422
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansion:F

    .line 423
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansion:F

    .line 424
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsAnimatingAway:Z

    if-nez v1, :cond_0

    const v1, 0x3f733333    # 0.95f

    .line 425
    invoke-static {v1, v2, v2, v3, p1}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v1

    .line 426
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v1, v3, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    invoke-virtual {v4, v1}, Lcom/android/keyguard/KeyguardHostView;->setAlpha(F)V

    .line 427
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHostView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardHostView;->setTranslationY(F)V

    .line 432
    :cond_0
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 433
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/LockIconHelper;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->setExpansion(FF)V

    .line 434
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityStatistic;->sendOnMoveToNormalView(Landroid/content/Context;FF)V

    :cond_1
    cmpl-float v1, p1, v3

    if-nez v1, :cond_2

    cmpl-float v4, v0, v3

    if-eqz v4, :cond_2

    .line 439
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->onFullyShown()V

    .line 440
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansionCallback:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;->onFullyShown()V

    const/4 p1, 0x1

    .line 443
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->callbackBouncerVisibilityChanged(Z)V

    goto :goto_0

    :cond_2
    cmpl-float p1, p1, v2

    if-nez p1, :cond_3

    cmpl-float p1, v0, v2

    if-eqz p1, :cond_3

    .line 446
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->onFullyHidden()V

    .line 447
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansionCallback:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;->onFullyHidden()V

    const/4 p1, 0x0

    .line 450
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->callbackBouncerVisibilityChanged(Z)V

    .line 455
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz p0, :cond_4

    .line 456
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->onSecurityContainerFullyHidden()V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    cmpl-float p1, v0, v3

    if-nez p1, :cond_4

    .line 460
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansionCallback:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;->onStartingToHide()V

    :cond_4
    :goto_0
    return-void
.end method

.method public shouldDismissOnMenuPressed()Z
    .locals 0

    .line 593
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->shouldEnableMenuKey()Z

    move-result p0

    return p0
.end method

.method public show(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 134
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(ZZ)V

    return-void
.end method

.method public show(ZZ)V
    .locals 4

    .line 145
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    .line 151
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsScrimmed:Z

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    .line 159
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setExpansion(F)V

    :cond_1
    if-eqz p1, :cond_2

    .line 165
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showPrimarySecurityScreen()V

    .line 168
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    if-eqz v1, :cond_3

    goto/16 :goto_2

    .line 171
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show(), resetSecuritySelection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isScrimmed="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyguardBouncer"

    invoke-static {p2, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    .line 176
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    if-nez p1, :cond_4

    move v1, v3

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    if-nez v1, :cond_5

    if-ne p1, v0, :cond_5

    move v2, v3

    :cond_5
    if-eqz v2, :cond_6

    .line 181
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardHostView;->dismiss(I)Z

    move-result v1

    if-eqz v1, :cond_6

    return-void

    :cond_6
    if-nez v2, :cond_7

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User can\'t dismiss keyguard: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " != "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_7
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    .line 193
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mResetRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/android/systemui/DejankUtils;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 198
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p1

    if-nez p1, :cond_8

    .line 200
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x320

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 202
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 205
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p1, v3}, Lcom/android/keyguard/ViewMediatorCallback;->onBouncerVisiblityChanged(Z)V

    .line 206
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansionCallback:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;->onStartingToShow()V

    :cond_9
    :goto_2
    return-void
.end method

.method public showMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 297
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz p0, :cond_0

    .line 298
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardHostView;->showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    const-string p0, "KeyguardBouncer"

    const-string p1, "Trying to show message on empty bouncer"

    .line 300
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public showPromptReason(I)V
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz p0, :cond_0

    .line 290
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->showPromptReason(I)V

    goto :goto_0

    :cond_0
    const-string p0, "KeyguardBouncer"

    const-string p1, "Trying to show prompt reason on empty bouncer"

    .line 292
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public showWithDismissAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;)V
    .locals 1

    .line 312
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 314
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(Z)V

    return-void
.end method

.method public startPreHideAnimation(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    .line 348
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsAnimatingAway:Z

    .line 349
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz p0, :cond_0

    .line 350
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->startDisappearAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 352
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public willDismissWithAction()Z
    .locals 0

    .line 478
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->hasDismissActions()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
