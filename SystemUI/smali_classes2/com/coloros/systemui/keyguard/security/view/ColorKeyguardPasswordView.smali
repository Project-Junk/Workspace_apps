.class public Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;
.super Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;
.source "ColorKeyguardPasswordView.java"


# static fields
.field private static final DEFAULT_TEXTS:Ljava/lang/String; = "********"

.field private static final MINIMUM_PASSWORD_LENGTH_BEFORE_REPORT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "KeyguardPasswordView"

.field private static final UNLOCK_FAILED_ALPHA_DELAY_TIME:I = 0x96

.field private static final UNLOCK_FAILED_ALPHA_DURATION:I = 0xc8

.field private static final UNLOCK_FAILED_ANIMATION_TIME:I = 0x1c2


# instance fields
.field private mAlphaAnim:Landroid/animation/ObjectAnimator;

.field private mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

.field private mTransAnim:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->fillTexts()V

    return-void
.end method

.method private fillTexts()V
    .locals 1

    .line 180
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mEditText:Lcom/color/support/widget/ColorEditText;

    const-string v0, "********"

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initTransAnim()Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    .line 147
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 148
    new-instance v1, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$ColorKeyguardPasswordView$u4UacQNnbHYFuy8JSK6Fuyt65cs;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$ColorKeyguardPasswordView$u4UacQNnbHYFuy8JSK6Fuyt65cs;-><init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 153
    new-instance v1, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView$2;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView$2;-><init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0x1c2

    .line 165
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3fa66666    # 1.3f
    .end array-data
.end method

.method private translationValueForScale(F)F
    .locals 4

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double p0, v0, v2

    if-gez p0, :cond_0

    const/high16 p0, -0x40000000    # -2.0f

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    mul-float/2addr p0, p1

    mul-float/2addr p0, p1

    add-float/2addr p0, v0

    return p0

    :cond_0
    const-wide v2, 0x3fe999999999999aL    # 0.8

    cmpl-double p0, v0, v2

    if-lez p0, :cond_1

    const p0, 0x3fa66666    # 1.3f

    sub-float p0, p1, p0

    mul-float/2addr p0, p1

    return p0

    :cond_1
    const p0, 0x3f19999a    # 0.6f

    sub-float p0, p1, p0

    const v0, 0x406ccccd    # 3.7f

    sub-float/2addr p1, v0

    mul-float/2addr p0, p1

    const p1, 0x3e3851ec    # 0.18f

    add-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isSystemFbeMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 203
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 204
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "********"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 205
    sget-object p1, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;->GO_DONE:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;

    invoke-virtual {p0, p1, v1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->updateKeyboardOkKey(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;Z)V

    .line 206
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->stopFaceChecking()V

    goto :goto_0

    .line 209
    :cond_1
    sget-object p1, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;->GO_BACK:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;

    invoke-virtual {p0, p1, v1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->updateKeyboardOkKey(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected getDefaultOkKeyState()Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isSystemFbeMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;->GO_DONE:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;->GO_BACK:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;

    :goto_0
    return-object p0
.end method

.method protected getPasswordMode()Ljava/lang/String;
    .locals 0

    const-string p0, "password"

    return-object p0
.end method

.method protected getPasswordQuality()I
    .locals 0

    const/high16 p0, 0x50000

    return p0
.end method

.method protected initKeyguardSecuritySwitcher()V
    .locals 10

    .line 95
    new-instance v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mMessageArea:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mEditContainer:Landroid/view/View;

    iget-object v4, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    iget-object v5, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mColorKeyboardView:Lcom/color/support/widget/ColorKeyboardView;

    iget-object v6, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mNavigationBar:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    iget-object v7, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mForgetPwBtn:Landroid/widget/Button;

    iget-object v8, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mShowPwBtn:Lcom/color/support/widget/ColorButton;

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/keyguard/EmergencyButton;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v9, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mSwitcher:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    return-void
.end method

.method public synthetic lambda$initTransAnim$0$ColorKeyguardPasswordView(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 149
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 150
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->translationValueForScale(F)F

    move-result p1

    .line 151
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mEditTextBg:Landroid/view/View;

    const v0, 0x3f19999a    # 0.6f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 74
    invoke-super {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->onFinishInflate()V

    .line 75
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    const v0, 0x7f0a0442

    .line 76
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    .line 77
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0, p0}, Lcom/android/keyguard/EmergencyButton;->setCallback(Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;)V

    .line 82
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    new-instance v1, Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;-><init>(Lcom/coloros/systemui/keyguard/security/SecurityTouchListener$OnRepeatListener;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/EmergencyButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 83
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->setTextSizeWithoutScale(Landroid/widget/TextView;F)V

    :cond_0
    return-void
.end method

.method protected onPendingLockCheckedFailed(II)V
    .locals 0

    .line 241
    invoke-super {p0, p1, p2}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->onPendingLockCheckedFailed(II)V

    if-gtz p2, :cond_0

    const/4 p1, 0x1

    .line 243
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->unLockFailedAnimation(I)V

    .line 245
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mKeyguardUtils:Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->vibrateLongWhenVerifyFail()V

    return-void
.end method

.method public onResume(I)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->onResume(I)V

    .line 68
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->requestLayout()V

    return-void
.end method

.method public onStateChangeFinish(I)V
    .locals 0

    .line 223
    invoke-super {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->onStateChangeFinish(I)V

    .line 224
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mSwitcher:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->isInNormalState()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 225
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/EmergencyButton;->setNeedUpdateToVisible(Z)V

    :cond_0
    return-void
.end method

.method public onStateChangeStart(I)V
    .locals 0

    .line 215
    invoke-super {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->onStateChangeStart(I)V

    if-eqz p1, :cond_0

    .line 217
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/EmergencyButton;->setNeedUpdateToVisible(Z)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 139
    invoke-super {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->reset()V

    .line 140
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public setInputEnabled(Z)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->setInputEnabled(Z)V

    .line 90
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    return-void
.end method

.method protected unLockFailedAnimation(I)V
    .locals 3

    .line 101
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mTransAnim:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->initTransAnim()Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mTransAnim:Landroid/animation/ValueAnimator;

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mAlphaAnim:Landroid/animation/ObjectAnimator;

    const/4 v0, 0x2

    if-nez p1, :cond_1

    .line 105
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mEditText:Lcom/color/support/widget/ColorEditText;

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mAlphaAnim:Landroid/animation/ObjectAnimator;

    .line 106
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mAlphaAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 107
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mAlphaAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 108
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mAlphaAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView$1;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView$1;-><init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;)V

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 130
    :cond_1
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 131
    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mTransAnim:Landroid/animation/ValueAnimator;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mAlphaAnim:Landroid/animation/ObjectAnimator;

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 132
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-nez p0, :cond_2

    .line 133
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mEditText:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v1, "KeyguardPasswordView"

    if-nez v0, :cond_0

    const-string p0, "verifyPasswordAndUnlock(), getText null, return."

    .line 185
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mEditText:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->clearPendingLockCheck()V

    .line 190
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_1

    const-string p0, "verifyPasswordAndUnlock(), length < 4, return."

    .line 193
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->setHypnusAction()V

    .line 197
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->startPendingLockCheck(Ljava/lang/String;)V

    return-void
.end method
