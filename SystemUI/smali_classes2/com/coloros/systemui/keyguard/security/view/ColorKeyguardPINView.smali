.class public Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;
.super Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;
.source "ColorKeyguardPINView.java"


# static fields
.field protected static final DIGIT:[Ljava/lang/String;


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected mBeforeReportLength:I

.field protected mColorNumericKeyboard:Lcom/color/support/widget/ColorNumericKeyboard;

.field protected mColorSimpleLock:Lcom/color/support/widget/ColorSimpleLock;

.field protected mFailedAnimatorOfCircle:Landroid/animation/Animator;

.field protected mInputPsdNum:I

.field protected mKeyboardClickItemListener:Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;

.field protected mMaxLength:I

.field protected mPwds:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "0"

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    const-string v7, "7"

    const-string v8, "8"

    const-string v9, "9"

    .line 44
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->DIGIT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "KeyguardPINView"

    .line 42
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->TAG:Ljava/lang/String;

    const/4 p1, 0x3

    .line 48
    iput p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mBeforeReportLength:I

    .line 49
    iget p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mBeforeReportLength:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mMaxLength:I

    .line 58
    new-instance p1, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView$1;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView$1;-><init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mKeyboardClickItemListener:Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;)V
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->stopFaceChecking()V

    return-void
.end method

.method private changeFocusToPre()V
    .locals 5

    .line 144
    iget v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mInputPsdNum:I

    iget v1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mMaxLength:I

    if-ne v0, v1, :cond_0

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeFocusToPre(), before index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mInputPsdNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mInputPsdNum:I

    iget v1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mMaxLength:I

    if-gt v0, v1, :cond_2

    if-lez v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mColorSimpleLock:Lcom/color/support/widget/ColorSimpleLock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSimpleLock;->setDeleteLast(Z)V

    .line 150
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mPwds:[Ljava/lang/String;

    iget v2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mInputPsdNum:I

    add-int/lit8 v3, v2, -0x1

    const-string v4, ""

    aput-object v4, v0, v3

    sub-int/2addr v2, v1

    .line 152
    iput v2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mInputPsdNum:I

    .line 153
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeFocusToPre(), after index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mInputPsdNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mInputPsdNum:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 155
    iput v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mInputPsdNum:I

    .line 157
    :cond_1
    iget v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mInputPsdNum:I

    if-nez v0, :cond_2

    .line 158
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->updateNavStateToBack()V

    :cond_2
    return-void
.end method

.method private updateNavStateToBack()V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isSystemFbeMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mNavigationBar:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    sget-object v0, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;->NAV_BACK_KEY_SHOW_NORMAL_KEYGUARD:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->forceUpdateNavState(Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;I)V

    goto :goto_0

    .line 255
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mNavigationBar:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    sget-object v0, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;->NAV_BACK_KEY_SHOW_NORMAL_KEYGUARD:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->updateNavState(Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected clearTexts()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mColorSimpleLock:Lcom/color/support/widget/ColorSimpleLock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSimpleLock;->setClearAll(Z)V

    .line 166
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->resetPwdArray()V

    const/4 v0, 0x0

    .line 167
    iput v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mInputPsdNum:I

    .line 168
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->updateNavStateToBack()V

    return-void
.end method

.method protected clearTextsNoAnimator()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mColorSimpleLock:Lcom/color/support/widget/ColorSimpleLock;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorSimpleLock;->reset()V

    .line 174
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->resetPwdArray()V

    const/4 v0, 0x0

    .line 175
    iput v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mInputPsdNum:I

    .line 176
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->updateNavStateToBack()V

    return-void
.end method

.method protected getPasswordMode()Ljava/lang/String;
    .locals 0

    const-string p0, "pin"

    return-object p0
.end method

.method protected getPasswordQuality()I
    .locals 0

    const/high16 p0, 0x20000

    return p0
.end method

.method protected getPwdsArray()Ljava/lang/String;
    .locals 3

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mPwds:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mPwds:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mPwds:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mPwds:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initKeyguardSecuritySwitcher()V
    .locals 10

    .line 247
    new-instance v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mMessageArea:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mColorSimpleLock:Lcom/color/support/widget/ColorSimpleLock;

    iget-object v5, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mColorNumericKeyboard:Lcom/color/support/widget/ColorNumericKeyboard;

    iget-object v6, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mNavigationBar:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    iget-object v7, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mForgetPwBtn:Landroid/widget/Button;

    iget-object v8, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mShowPwBtn:Lcom/color/support/widget/ColorButton;

    const/4 v4, 0x0

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/keyguard/EmergencyButton;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v9, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mSwitcher:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    return-void
.end method

.method public onDeleteActionLongClickRepeated()V
    .locals 0

    .line 140
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->changeFocusToPre()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 122
    invoke-super {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->onFinishInflate()V

    const v0, 0x7f0a01b1

    .line 123
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorSimpleLock;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mColorSimpleLock:Lcom/color/support/widget/ColorSimpleLock;

    const v0, 0x7f0a01a9

    .line 124
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorNumericKeyboard;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mColorNumericKeyboard:Lcom/color/support/widget/ColorNumericKeyboard;

    .line 125
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->resetPwdArray()V

    .line 126
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mColorNumericKeyboard:Lcom/color/support/widget/ColorNumericKeyboard;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mKeyboardClickItemListener:Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumericKeyboard;->setOnClickItemListener(Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;)V

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->setDefaultFocusHighlightEnabled(Z)V

    return-void
.end method

.method protected onPendingLockCheckedFailed(II)V
    .locals 0

    .line 271
    invoke-super {p0, p1, p2}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->onPendingLockCheckedFailed(II)V

    .line 272
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mKeyguardUtils:Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->vibrateLongWhenVerifyFail()V

    if-gtz p2, :cond_0

    const/4 p1, 0x2

    .line 274
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->unLockFailedAnimation(I)V

    goto :goto_0

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->resetCurAnimations()V

    :goto_0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mColorNumericKeyboard:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/ColorNumericKeyboard;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public onResume(I)V
    .locals 2

    .line 236
    invoke-super {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->onResume(I)V

    .line 239
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mColorNumericKeyboard:Lcom/color/support/widget/ColorNumericKeyboard;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumericKeyboard;->setTactileFeedbackEnabled(Z)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->updateNavStateToBack()V

    :cond_0
    return-void
.end method

.method protected resetCurAnimations()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mFailedAnimatorOfCircle:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mFailedAnimatorOfCircle:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method protected resetPwdArray()V
    .locals 1

    .line 104
    iget v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mMaxLength:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mPwds:[Ljava/lang/String;

    return-void
.end method

.method protected setInputEnabled(Z)V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setInputEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mColorNumericKeyboard:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->setEnabled(Z)V

    return-void
.end method

.method protected unLockFailedAnimation(I)V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mFailedAnimatorOfCircle:Landroid/animation/Animator;

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mColorSimpleLock:Lcom/color/support/widget/ColorSimpleLock;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorSimpleLock;->getFailedAnimator()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mFailedAnimatorOfCircle:Landroid/animation/Animator;

    .line 204
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mFailedAnimatorOfCircle:Landroid/animation/Animator;

    new-instance v1, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView$2;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView$2;-><init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unLockFailedAnimation, mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mColorSimpleLock:Lcom/color/support/widget/ColorSimpleLock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSimpleLock;->setFingerprintRecognition(Z)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->resetCurAnimations()V

    .line 220
    iget p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mInputPsdNum:I

    iget v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mMaxLength:I

    if-ne p1, v0, :cond_2

    .line 221
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mFailedAnimatorOfCircle:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 223
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mColorSimpleLock:Lcom/color/support/widget/ColorSimpleLock;

    invoke-virtual {p1, v1}, Lcom/color/support/widget/ColorSimpleLock;->setAllCode(Z)V

    .line 224
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mColorSimpleLock:Lcom/color/support/widget/ColorSimpleLock;

    invoke-virtual {p1, v1}, Lcom/color/support/widget/ColorSimpleLock;->setFailed(Z)V

    goto :goto_0

    .line 215
    :cond_3
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->resetCurAnimations()V

    .line 216
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mFailedAnimatorOfCircle:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :goto_0
    const/4 p1, 0x0

    .line 230
    iput p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mInputPsdNum:I

    .line 231
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->updateNavStateToBack()V

    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 4

    .line 180
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->getPwdsArray()Ljava/lang/String;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyPasswordAndUnlock, entry = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mMaxLength:I

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    .line 183
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->TAG:Ljava/lang/String;

    const-string v1, "Attention:the PIN password is illegal!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->clearTexts()V

    .line 185
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->setInputEnabled(Z)V

    return-void

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->clearPendingLockCheck()V

    .line 189
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mBeforeReportLength:I

    if-gt v1, v2, :cond_1

    .line 192
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->clearTexts()V

    .line 193
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->setInputEnabled(Z)V

    return-void

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->setHypnusAction()V

    .line 197
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->startPendingLockCheck(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->resetPwdArray()V

    return-void
.end method
