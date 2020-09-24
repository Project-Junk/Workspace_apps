.class public Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;
.super Ljava/lang/Object;
.source "KeyguardSecuritySwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$StateAnimatorListener;,
        Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$OnStateChangedListener;
    }
.end annotation


# static fields
.field public static final STATE_BIOMETRIC:I = 0x1

.field private static final STATE_LOCKOUT:I = 0x2

.field public static final STATE_NORMAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "KeyguardSecuritySwitcher"


# instance fields
.field private mAppearSet:Landroid/animation/Animator;

.field private mContainerView:Landroid/view/View;

.field private mCurrentState:I

.field private mDisappearFinishRunnable:Ljava/lang/Runnable;

.field private mDisappearSet:Landroid/animation/Animator;

.field private mEditView:Landroid/view/View;

.field private mEmergencyView:Lcom/android/keyguard/EmergencyButton;

.field private mEnterBiometricSet:Landroid/animation/Animator;

.field private mEnterLockoutSet:Landroid/animation/Animator;

.field private mExitBiometricSet:Landroid/animation/Animator;

.field private mExitLockoutSet:Landroid/animation/Animator;

.field private mForgetPasswordView:Landroid/view/View;

.field private mIsAnimRunning:Z

.field private mKeyboardView:Landroid/view/View;

.field private mListener:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$OnStateChangedListener;

.field private mMessageView:Landroid/view/View;

.field private mNavigationView:Landroid/view/View;

.field private mShowPasswordView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/keyguard/EmergencyButton;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/android/keyguard/EmergencyButton;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mContainerView:Landroid/view/View;

    .line 54
    iput-object p2, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mMessageView:Landroid/view/View;

    .line 55
    iput-object p3, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mEditView:Landroid/view/View;

    .line 56
    iput-object p4, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mEmergencyView:Lcom/android/keyguard/EmergencyButton;

    .line 57
    iput-object p5, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mKeyboardView:Landroid/view/View;

    .line 58
    iput-object p6, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mNavigationView:Landroid/view/View;

    .line 59
    iput-object p7, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mForgetPasswordView:Landroid/view/View;

    .line 60
    iput-object p8, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mShowPasswordView:Landroid/view/View;

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mCurrentState:I

    return-void
.end method

.method static synthetic access$002(Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mIsAnimRunning:Z

    return p1
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;)Ljava/lang/Runnable;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mDisappearFinishRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$102(Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mDisappearFinishRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;)Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$OnStateChangedListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mListener:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$OnStateChangedListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;)I
    .locals 0

    .line 15
    iget p0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mCurrentState:I

    return p0
.end method

.method static synthetic access$302(Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;I)I
    .locals 0

    .line 15
    iput p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mCurrentState:I

    return p1
.end method

.method private enterImmediately(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 215
    :goto_0
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mListener:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$OnStateChangedListener;

    invoke-interface {v3, p1}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$OnStateChangedListener;->onStateChangeStart(I)V

    .line 216
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mContainerView:Landroid/view/View;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 217
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mMessageView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 218
    new-array v3, v1, [Landroid/view/View;

    iget-object v4, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mEditView:Landroid/view/View;

    aput-object v4, v3, v0

    invoke-direct {p0, v2, v0, v3}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->showOrHideImmediately(ZZ[Landroid/view/View;)V

    .line 219
    new-array v3, v1, [Landroid/view/View;

    iget-object v4, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mKeyboardView:Landroid/view/View;

    aput-object v4, v3, v0

    invoke-direct {p0, v2, v0, v3}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->showOrHideImmediately(ZZ[Landroid/view/View;)V

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    .line 221
    new-array v4, v3, [Landroid/view/View;

    iget-object v5, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mShowPasswordView:Landroid/view/View;

    aput-object v5, v4, v0

    iget-object v5, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mForgetPasswordView:Landroid/view/View;

    aput-object v5, v4, v1

    invoke-direct {p0, v0, v1, v4}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->showOrHideImmediately(ZZ[Landroid/view/View;)V

    goto :goto_1

    :cond_1
    if-ne p1, v1, :cond_2

    .line 223
    new-array v4, v1, [Landroid/view/View;

    iget-object v5, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mShowPasswordView:Landroid/view/View;

    aput-object v5, v4, v0

    invoke-direct {p0, v1, v1, v4}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->showOrHideImmediately(ZZ[Landroid/view/View;)V

    goto :goto_1

    .line 225
    :cond_2
    new-array v4, v1, [Landroid/view/View;

    iget-object v5, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mForgetPasswordView:Landroid/view/View;

    aput-object v5, v4, v0

    invoke-direct {p0, v1, v1, v4}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->showOrHideImmediately(ZZ[Landroid/view/View;)V

    .line 227
    :goto_1
    new-array v4, v1, [Landroid/view/View;

    iget-object v5, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mEmergencyView:Lcom/android/keyguard/EmergencyButton;

    aput-object v5, v4, v0

    invoke-direct {p0, v2, v1, v4}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->showOrHideImmediately(ZZ[Landroid/view/View;)V

    .line 228
    iget-object v4, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mEmergencyView:Lcom/android/keyguard/EmergencyButton;

    if-nez v4, :cond_3

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mEmergencyView:Lcom/android/keyguard/EmergencyButton;

    if-eqz v2, :cond_5

    .line 229
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->isInNormalState()Z

    move-result v2

    if-eqz v2, :cond_5

    if-ne p1, v3, :cond_5

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    move v2, v0

    .line 230
    :goto_2
    new-array v4, v1, [Landroid/view/View;

    iget-object v5, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mNavigationView:Landroid/view/View;

    aput-object v5, v4, v0

    invoke-direct {p0, v2, v0, v4}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->showOrHideImmediately(ZZ[Landroid/view/View;)V

    const/16 v2, 0x8

    .line 231
    new-array v2, v2, [Landroid/view/View;

    iget-object v4, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mContainerView:Landroid/view/View;

    aput-object v4, v2, v0

    iget-object v4, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mMessageView:Landroid/view/View;

    aput-object v4, v2, v1

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mEditView:Landroid/view/View;

    aput-object v1, v2, v3

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mEmergencyView:Lcom/android/keyguard/EmergencyButton;

    aput-object v3, v2, v1

    const/4 v1, 0x4

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mKeyboardView:Landroid/view/View;

    aput-object v3, v2, v1

    const/4 v1, 0x5

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mNavigationView:Landroid/view/View;

    aput-object v3, v2, v1

    const/4 v1, 0x6

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mForgetPasswordView:Landroid/view/View;

    aput-object v3, v2, v1

    const/4 v1, 0x7

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mShowPasswordView:Landroid/view/View;

    aput-object v3, v2, v1

    invoke-direct {p0, v2}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->resetViewTranslationY([Landroid/view/View;)V

    .line 233
    iget v1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mCurrentState:I

    .line 234
    iput p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mCurrentState:I

    .line 235
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mListener:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$OnStateChangedListener;

    invoke-interface {p1, v1}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$OnStateChangedListener;->onStateChangeFinish(I)V

    .line 236
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mIsAnimRunning:Z

    return-void
.end method

.method private initAppearAnimator()V
    .locals 10

    .line 89
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mAppearSet:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mDisappearSet:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    return-void

    .line 90
    :cond_0
    new-instance v0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mContainerView:Landroid/view/View;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mMessageView:Landroid/view/View;

    iget-object v4, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mEditView:Landroid/view/View;

    iget-object v5, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mEmergencyView:Lcom/android/keyguard/EmergencyButton;

    iget-object v6, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mKeyboardView:Landroid/view/View;

    iget-object v7, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mNavigationView:Landroid/view/View;

    iget-object v8, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mForgetPasswordView:Landroid/view/View;

    iget-object v9, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mShowPasswordView:Landroid/view/View;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/keyguard/EmergencyButton;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 92
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;->getAppearAnimator()Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mAppearSet:Landroid/animation/Animator;

    .line 93
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;->getDisappearAnimator()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mDisappearSet:Landroid/animation/Animator;

    .line 94
    new-instance v0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$1;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;)V

    .line 110
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mAppearSet:Landroid/animation/Animator;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 111
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mDisappearSet:Landroid/animation/Animator;

    invoke-virtual {p0, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private initBiometricAnimator()V
    .locals 10

    .line 115
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mEnterBiometricSet:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mExitBiometricSet:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    return-void

    .line 116
    :cond_0
    new-instance v0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mContainerView:Landroid/view/View;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mMessageView:Landroid/view/View;

    iget-object v4, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mEditView:Landroid/view/View;

    iget-object v5, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mEmergencyView:Lcom/android/keyguard/EmergencyButton;

    iget-object v6, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mKeyboardView:Landroid/view/View;

    iget-object v7, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mNavigationView:Landroid/view/View;

    iget-object v8, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mForgetPasswordView:Landroid/view/View;

    iget-object v9, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mShowPasswordView:Landroid/view/View;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/keyguard/EmergencyButton;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 118
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;->getAppearAnimator()Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mEnterBiometricSet:Landroid/animation/Animator;

    .line 119
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mEnterBiometricSet:Landroid/animation/Animator;

    new-instance v2, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$StateAnimatorListener;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$StateAnimatorListener;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;I)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 120
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;->getDisappearAnimator()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mExitBiometricSet:Landroid/animation/Animator;

    .line 121
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mExitBiometricSet:Landroid/animation/Animator;

    new-instance v1, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$StateAnimatorListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$StateAnimatorListener;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;I)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private initLockoutAnimator()V
    .locals 10

    .line 125
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mEnterLockoutSet:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mExitLockoutSet:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    return-void

    .line 126
    :cond_0
    new-instance v0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mContainerView:Landroid/view/View;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mMessageView:Landroid/view/View;

    iget-object v4, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mEditView:Landroid/view/View;

    iget-object v5, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mEmergencyView:Lcom/android/keyguard/EmergencyButton;

    iget-object v6, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mKeyboardView:Landroid/view/View;

    iget-object v7, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mNavigationView:Landroid/view/View;

    iget-object v8, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mForgetPasswordView:Landroid/view/View;

    iget-object v9, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mShowPasswordView:Landroid/view/View;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/keyguard/EmergencyButton;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 128
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;->getAppearAnimator()Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mEnterLockoutSet:Landroid/animation/Animator;

    .line 129
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mEnterLockoutSet:Landroid/animation/Animator;

    new-instance v2, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$StateAnimatorListener;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$StateAnimatorListener;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;I)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 130
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;->getDisappearAnimator()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mExitLockoutSet:Landroid/animation/Animator;

    .line 131
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mExitLockoutSet:Landroid/animation/Animator;

    new-instance v1, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$StateAnimatorListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$StateAnimatorListener;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;I)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private varargs resetViewTranslationY([Landroid/view/View;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 267
    array-length p0, p1

    if-gtz p0, :cond_0

    goto :goto_2

    .line 268
    :cond_0
    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_3

    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    .line 269
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    goto :goto_1

    .line 270
    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private varargs showOrHideImmediately(ZZ[Landroid/view/View;)V
    .locals 4

    if-eqz p3, :cond_5

    .line 254
    array-length p0, p3

    if-gtz p0, :cond_0

    goto :goto_4

    .line 255
    :cond_0
    array-length p0, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_5

    aget-object v2, p3, v1

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    if-eqz p1, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 257
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    if-eqz p2, :cond_4

    if-eqz p1, :cond_3

    move v3, v0

    goto :goto_2

    :cond_3
    const/16 v3, 0x8

    .line 259
    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 261
    :cond_4
    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_4
    return-void
.end method


# virtual methods
.method public enterBiometric(Z)V
    .locals 2

    .line 198
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->isInBiometricState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->enterNormal()V

    return-void

    .line 202
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mIsAnimRunning:Z

    if-eqz v0, :cond_1

    return-void

    .line 203
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enterBiometric(), mCurrentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mCurrentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isImmediately="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecuritySwitcher"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 204
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mIsAnimRunning:Z

    if-eqz p1, :cond_2

    .line 206
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->enterImmediately(I)V

    return-void

    .line 209
    :cond_2
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->initBiometricAnimator()V

    .line 210
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mEnterBiometricSet:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public enterLockout()V
    .locals 2

    .line 190
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->isInLockoutState()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mIsAnimRunning:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enterLockout(), mCurrentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mCurrentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecuritySwitcher"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mIsAnimRunning:Z

    .line 193
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->initLockoutAnimator()V

    .line 194
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mEnterLockoutSet:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public enterNormal()V
    .locals 2

    .line 177
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->isInNormalState()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mIsAnimRunning:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enterNormal(), mCurrentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mCurrentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecuritySwitcher"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mIsAnimRunning:Z

    .line 180
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->isInBiometricState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->initBiometricAnimator()V

    .line 182
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mExitBiometricSet:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 184
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->initLockoutAnimator()V

    .line 185
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mExitLockoutSet:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method public getCurrentState()I
    .locals 0

    .line 161
    iget p0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mCurrentState:I

    return p0
.end method

.method public isInBiometricState()Z
    .locals 1

    .line 169
    iget p0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mCurrentState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInLockoutState()Z
    .locals 1

    .line 173
    iget p0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mCurrentState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInNormalState()Z
    .locals 0

    .line 165
    iget p0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mCurrentState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reset(J)V
    .locals 5

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset(), mCurrentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mCurrentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deadline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecuritySwitcher"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->isInNormalState()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->isInLockoutState()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-eqz p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 p1, 0x1

    .line 242
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mIsAnimRunning:Z

    const/4 p2, 0x4

    .line 243
    new-array p2, p2, [Landroid/animation/Animator;

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mEnterBiometricSet:Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v0, p2, v2

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mExitBiometricSet:Landroid/animation/Animator;

    aput-object v0, p2, p1

    const/4 p1, 0x2

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mEnterLockoutSet:Landroid/animation/Animator;

    aput-object v0, p2, p1

    const/4 p1, 0x3

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mExitLockoutSet:Landroid/animation/Animator;

    aput-object v0, p2, p1

    move p1, v2

    .line 244
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_3

    .line 245
    aget-object v0, p2, p1

    if-eqz v0, :cond_2

    .line 246
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 247
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset(), cancel animSet, index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 250
    :cond_3
    invoke-direct {p0, v2}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->enterImmediately(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public setOnStateChangedListener(Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$OnStateChangedListener;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mListener:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$OnStateChangedListener;

    return-void
.end method

.method public startAppearAnimation()V
    .locals 3

    .line 65
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mIsAnimRunning:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mCurrentState:I

    if-nez v0, :cond_1

    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "KeyguardSecuritySwitcher"

    const-string v1, "startAppearAnimation()"

    .line 67
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mIsAnimRunning:Z

    const-wide/16 v0, 0x8

    const-string v2, "KeyguardSecuritySwitcher#startAppearAnimation"

    .line 69
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 70
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->initAppearAnimator()V

    .line 71
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mAppearSet:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 72
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 3

    .line 76
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mIsAnimRunning:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mCurrentState:I

    if-nez v0, :cond_1

    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "KeyguardSecuritySwitcher"

    const-string v1, "startDisappearAnimation()"

    .line 78
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mDisappearFinishRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x1

    .line 80
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mIsAnimRunning:Z

    const-wide/16 v0, 0x8

    const-string v2, "KeyguardSecuritySwitcher#startDisappearAnimation"

    .line 81
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 82
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->initAppearAnimator()V

    .line 83
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->mDisappearSet:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 84
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
