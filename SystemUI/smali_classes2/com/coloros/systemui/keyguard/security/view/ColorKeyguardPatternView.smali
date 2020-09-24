.class public Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;
.super Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;
.source "ColorKeyguardPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView$UnlockPatternListener;
    }
.end annotation


# static fields
.field private static final PATTERN_CLEAR_TIMEOUT_MS:I = 0x4b0

.field private static final TAG:Ljava/lang/String; = "KeyguardPatternView"


# instance fields
.field private final mCancelPatternRunnable:Ljava/lang/Runnable;

.field private mIsDrawingPattern:Z

.field private mLockPatternView:Lcom/color/support/widget/ColorLockPatternView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance p1, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$t31z0YzfTBejtu3-rzxEhBAK4Ec;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$t31z0YzfTBejtu3-rzxEhBAK4Ec;-><init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$102(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->mIsDrawingPattern:Z

    return p1
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;)Ljava/lang/Runnable;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;)Lcom/color/support/widget/ColorLockPatternView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->mLockPatternView:Lcom/color/support/widget/ColorLockPatternView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;)V
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->stopFaceChecking()V

    return-void
.end method

.method static synthetic access$500(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->doWrongAnim()V

    return-void
.end method

.method private doWrongAnim()V
    .locals 3

    const/4 v0, 0x1

    .line 182
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->setInputEnabled(Z)V

    .line 183
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->mLockPatternView:Lcom/color/support/widget/ColorLockPatternView;

    sget-object v1, Lcom/color/support/widget/ColorLockPatternView$DisplayMode;->Wrong:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorLockPatternView;->setDisplayMode(Lcom/color/support/widget/ColorLockPatternView$DisplayMode;)V

    .line 184
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->mLockPatternView:Lcom/color/support/widget/ColorLockPatternView;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, p0, v1, v2}, Lcom/color/support/widget/ColorLockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected clearTexts()V
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->mLockPatternView:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorLockPatternView;->clearPattern()V

    return-void
.end method

.method protected getPasswordMode()Ljava/lang/String;
    .locals 0

    const-string p0, "pattern"

    return-object p0
.end method

.method protected getPasswordQuality()I
    .locals 0

    const/high16 p0, 0x10000

    return p0
.end method

.method protected initKeyguardSecuritySwitcher()V
    .locals 10

    .line 107
    new-instance v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->mMessageArea:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;

    iget-object v5, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->mLockPatternView:Lcom/color/support/widget/ColorLockPatternView;

    iget-object v6, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->mNavigationBar:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    iget-object v7, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->mForgetPwBtn:Landroid/widget/Button;

    iget-object v8, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->mShowPwBtn:Lcom/color/support/widget/ColorButton;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/keyguard/EmergencyButton;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v9, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->mSwitcher:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    return-void
.end method

.method protected isPattern()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 59
    invoke-super {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->onFinishInflate()V

    const v0, 0x7f0a0364

    .line 60
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorLockPatternView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->mLockPatternView:Lcom/color/support/widget/ColorLockPatternView;

    .line 61
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->mLockPatternView:Lcom/color/support/widget/ColorLockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorLockPatternView;->setSaveEnabled(Z)V

    .line 62
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->mLockPatternView:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorLockPatternView;->setFocusable(Z)V

    .line 63
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->mLockPatternView:Lcom/color/support/widget/ColorLockPatternView;

    new-instance v2, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView$UnlockPatternListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView$UnlockPatternListener;-><init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView$1;)V

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorLockPatternView;->setOnPatternListener(Lcom/color/support/widget/ColorLockPatternView$OnPatternListener;)V

    .line 64
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->setDefaultFocusHighlightEnabled(Z)V

    return-void
.end method

.method protected onPendingLockCheckedFailed(II)V
    .locals 0

    .line 205
    invoke-super {p0, p1, p2}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->onPendingLockCheckedFailed(II)V

    .line 206
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->mKeyguardUtils:Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->vibrateLongWhenVerifyFail()V

    if-gtz p2, :cond_0

    .line 208
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->mLockPatternView:Lcom/color/support/widget/ColorLockPatternView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/color/support/widget/ColorLockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 209
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->doWrongAnim()V

    .line 210
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->mLockPatternView:Lcom/color/support/widget/ColorLockPatternView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorLockPatternView;->setTactileFeedbackEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onPendingLockCheckedSuccess(I)V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->mLockPatternView:Lcom/color/support/widget/ColorLockPatternView;

    sget-object v1, Lcom/color/support/widget/ColorLockPatternView$DisplayMode;->Correct:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorLockPatternView;->setDisplayMode(Lcom/color/support/widget/ColorLockPatternView$DisplayMode;)V

    .line 200
    invoke-super {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->onPendingLockCheckedSuccess(I)V

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->mLockPatternView:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/ColorLockPatternView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public onResume(I)V
    .locals 0

    .line 80
    invoke-super {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->onResume(I)V

    .line 83
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->mLockPatternView:Lcom/color/support/widget/ColorLockPatternView;

    if-eqz p1, :cond_0

    .line 84
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/color/support/widget/ColorLockPatternView;->setTactileFeedbackEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setInputEnabled(Z)V
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setInputEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardPatternView"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->mLockPatternView:Lcom/color/support/widget/ColorLockPatternView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorLockPatternView;->setEnabled(Z)V

    .line 94
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->mLockPatternView:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorLockPatternView;->enableInput()V

    goto :goto_0

    .line 96
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->mLockPatternView:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorLockPatternView;->disableInput()V

    :goto_0
    return-void
.end method

.method protected unLockFailedAnimation(I)V
    .locals 2

    .line 157
    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->mIsDrawingPattern:Z

    if-eqz p1, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->mLockPatternView:Lcom/color/support/widget/ColorLockPatternView;

    sget-object v0, Lcom/color/support/widget/ColorLockPatternView$DisplayMode;->FingerprintNoMatch:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorLockPatternView;->setDisplayMode(Lcom/color/support/widget/ColorLockPatternView$DisplayMode;)V

    const/4 p1, 0x2

    .line 159
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    .line 160
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 161
    new-instance v0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView$1;-><init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 178
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
