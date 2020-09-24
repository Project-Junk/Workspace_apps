.class public Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;
.super Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;
.source "ColorKeyguardNumericView.java"


# static fields
.field private static final ANIM_SCALE_X_FACTOR:F = 0.6f

.field private static final ANIM_TRANS_SCALE_A:F = 0.5f

.field private static final ANIM_TRANS_SCALE_B:F = 0.8f

.field private static final ANIM_TRANS_SCALE_C:F = -2.0f

.field private static final ANIM_TRANS_SCALE_D:F = 0.6f

.field private static final ANIM_TRANS_SCALE_E:F = 3.7f

.field private static final ANIM_TRANS_SCALE_F:F = 0.18f

.field private static final ANIM_TRANS_TO:F = 1.3f

.field private static final ANIM_VALUE_ONE:F = 1.0f

.field private static final ANIM_VALUE_ZERO:F = 0.0f

.field private static final DIGIT:[Ljava/lang/String;

.field private static final DIGIT_CODE:[I

.field protected static final MINIMUM_PASSWORD_LENGTH:I = 0x4

.field private static final PIN_PASSWORD_LENGTH:I = 0x10

.field private static final TAG:Ljava/lang/String; = "KeyguardNumericView"

.field private static final UNLOCK_FAILED_ALPHA_DELAY_TIME:I = 0x96

.field private static final UNLOCK_FAILED_ALPHA_DURATION:I = 0xc8

.field private static final UNLOCK_FAILED_ANIMATION_TIME:I = 0x1c2


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mColorNumericKeyboard:Lcom/color/support/widget/ColorNumericKeyboard;

.field private mEditContainer:Landroid/view/View;

.field private mEntryBg:Landroid/view/View;

.field private mInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mInputPsdNum:I

.field private mKeyboardClickItemListener:Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;

.field private mNumericEntry:Lcom/color/support/widget/ColorEditText;

.field private mPwds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUnlockFailedAnimSet:Landroid/animation/AnimatorSet;


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

    .line 73
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->DIGIT:[Ljava/lang/String;

    const/16 v0, 0xa

    .line 74
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->DIGIT_CODE:[I

    return-void

    :array_0
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 167
    new-instance p1, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView$1;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView$1;-><init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mKeyboardClickItemListener:Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;

    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .line 48
    sget-object v0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->DIGIT_CODE:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mInputPsdNum:I

    return p0
.end method

.method static synthetic access$108(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;)I
    .locals 2

    .line 48
    iget v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mInputPsdNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mInputPsdNum:I

    return v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->DIGIT:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;)Ljava/util/ArrayList;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mPwds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->updateNumericKeyboard()V

    return-void
.end method

.method static synthetic access$500(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;)V
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->stopFaceChecking()V

    return-void
.end method

.method static synthetic access$600(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;)Landroid/view/View;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mEntryBg:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->fillTexts()V

    return-void
.end method

.method static synthetic access$800(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;)Lcom/color/support/widget/ColorEditText;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mNumericEntry:Lcom/color/support/widget/ColorEditText;

    return-object p0
.end method

.method private changeFocusToPre()V
    .locals 2

    .line 208
    iget v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mInputPsdNum:I

    const/16 v1, 0x10

    if-gt v0, v1, :cond_3

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mNumericEntry:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->getSelectionStart()I

    move-result v0

    if-lez v0, :cond_3

    .line 209
    iget v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mInputPsdNum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mInputPsdNum:I

    .line 210
    iget v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mInputPsdNum:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 211
    iput v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mInputPsdNum:I

    .line 213
    :cond_0
    iget v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mInputPsdNum:I

    if-nez v0, :cond_1

    .line 214
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->updateNavStateToBack()V

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mPwds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 218
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mPwds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    const/16 v0, 0x43

    .line 220
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->sendDownUpKeyEvents(I)V

    .line 221
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->updateNumericKeyboard()V

    :cond_3
    return-void
.end method

.method private fillTexts()V
    .locals 1

    .line 258
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mNumericEntry:Lcom/color/support/widget/ColorEditText;

    const-string v0, "******"

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initUnlockFailedAnimSet()V
    .locals 5

    const/4 v0, 0x2

    .line 318
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 319
    new-instance v2, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$ColorKeyguardNumericView$XdWYlS2sbM8k6I2bMZLvTbx_G2U;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$ColorKeyguardNumericView$XdWYlS2sbM8k6I2bMZLvTbx_G2U;-><init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 324
    new-instance v2, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView$2;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView$2;-><init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v2, 0x1c2

    .line 336
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 338
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mNumericEntry:Lcom/color/support/widget/ColorEditText;

    new-array v3, v0, [F

    fill-array-data v3, :array_1

    const-string v4, "alpha"

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0xc8

    .line 339
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0x96

    .line 340
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 341
    new-instance v3, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView$3;

    invoke-direct {v3, p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView$3;-><init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 361
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mUnlockFailedAnimSet:Landroid/animation/AnimatorSet;

    .line 362
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mUnlockFailedAnimSet:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3fa66666    # 1.3f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private updateNavStateToBack()V
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isSystemFbeMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mNavigationBar:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    sget-object v0, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;->NAV_BACK_KEY_SHOW_NORMAL_KEYGUARD:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->forceUpdateNavState(Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;I)V

    goto :goto_0

    .line 388
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mNavigationBar:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    sget-object v0, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;->NAV_BACK_KEY_SHOW_NORMAL_KEYGUARD:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->updateNavState(Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;)V

    :goto_0
    return-void
.end method

.method private updateNumericKeyboard()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mPwds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 236
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->updateKeyboardFinishButton(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 238
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->updateKeyboardFinishButton(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected clearTexts()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mNumericEntry:Lcom/color/support/widget/ColorEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorEditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->updateKeyboardFinishButton(Z)V

    .line 246
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mPwds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 247
    iput v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mInputPsdNum:I

    .line 248
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->updateNavStateToBack()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 377
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    const-string v0, "KeyguardNumericView"

    const-string v1, "verifyPasswordAndUnlock, when KEYCODE_ENTER."

    .line 378
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->verifyPasswordAndUnlock()V

    .line 381
    :cond_0
    invoke-super {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected getPasswordMode()Ljava/lang/String;
    .locals 0

    const-string p0, "numeric"

    return-object p0
.end method

.method protected getPasswordQuality()I
    .locals 0

    const/high16 p0, 0x30000

    return p0
.end method

.method protected initKeyguardSecuritySwitcher()V
    .locals 10

    .line 253
    new-instance v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mMessageArea:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mEditContainer:Landroid/view/View;

    iget-object v5, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mColorNumericKeyboard:Lcom/color/support/widget/ColorNumericKeyboard;

    iget-object v6, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mNavigationBar:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    iget-object v7, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mForgetPwBtn:Landroid/widget/Button;

    iget-object v8, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mShowPwBtn:Lcom/color/support/widget/ColorButton;

    const/4 v4, 0x0

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/keyguard/EmergencyButton;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v9, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mSwitcher:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    return-void
.end method

.method public synthetic lambda$initUnlockFailedAnimSet$4$ColorKeyguardNumericView(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 320
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 321
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->translationValueForScale(F)F

    move-result p1

    .line 322
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mEntryBg:Landroid/view/View;

    const v0, 0x3f19999a    # 0.6f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$1$ColorKeyguardNumericView(Landroid/view/View;)V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$2$ColorKeyguardNumericView(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_1

    if-eqz p2, :cond_0

    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    :cond_0
    move p2, p1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    if-eqz p3, :cond_2

    .line 137
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-nez p3, :cond_2

    move p3, p1

    goto :goto_1

    :cond_2
    move p3, v0

    :goto_1
    if-nez p2, :cond_4

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    return v0

    .line 139
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->verifyPasswordAndUnlock()V

    return p1
.end method

.method public synthetic lambda$onFinishInflate$3$ColorKeyguardNumericView(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mNumericEntry:Lcom/color/support/widget/ColorEditText;

    if-eqz p2, :cond_0

    const/16 p1, 0x91

    goto :goto_0

    :cond_0
    const/16 p1, 0x81

    :goto_0
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorEditText;->setInputType(I)V

    return-void
.end method

.method public synthetic lambda$setInputEnabled$0$ColorKeyguardNumericView()V
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mNumericEntry:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mNumericEntry:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public onDeleteActionLongClickRepeated()V
    .locals 0

    .line 204
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->changeFocusToPre()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 119
    invoke-super {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->onFinishInflate()V

    const v0, 0x7f0a01a2

    .line 120
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mEditContainer:Landroid/view/View;

    const v0, 0x7f0a01a3

    .line 121
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorEditText;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mNumericEntry:Lcom/color/support/widget/ColorEditText;

    .line 122
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mNumericEntry:Lcom/color/support/widget/ColorEditText;

    new-instance v1, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v1}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorEditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 124
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mNumericEntry:Lcom/color/support/widget/ColorEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorEditText;->setSelected(Z)V

    .line 126
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mNumericEntry:Lcom/color/support/widget/ColorEditText;

    new-instance v2, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$ColorKeyguardNumericView$mh55MBkQXsEYsDsBqG95suWctW8;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$ColorKeyguardNumericView$mh55MBkQXsEYsDsBqG95suWctW8;-><init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;)V

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mNumericEntry:Lcom/color/support/widget/ColorEditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorEditText;->setFilters([Landroid/text/InputFilter;)V

    const v0, 0x7f0a01a4

    .line 128
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mEntryBg:Landroid/view/View;

    .line 129
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mIsClosedSuperFirewall:Z

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mNumericEntry:Lcom/color/support/widget/ColorEditText;

    new-instance v1, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$ColorKeyguardNumericView$pvttMybm8xv6-jdD0kMvFcgDHE4;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$ColorKeyguardNumericView$pvttMybm8xv6-jdD0kMvFcgDHE4;-><init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;)V

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_0
    const v0, 0x7f0a01a9

    .line 145
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorNumericKeyboard;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mColorNumericKeyboard:Lcom/color/support/widget/ColorNumericKeyboard;

    .line 146
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mColorNumericKeyboard:Lcom/color/support/widget/ColorNumericKeyboard;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mKeyboardClickItemListener:Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumericKeyboard;->setOnClickItemListener(Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;)V

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mPwds:Ljava/util/ArrayList;

    const v0, 0x7f0a01a5

    .line 148
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mCheckBox:Landroid/widget/CheckBox;

    .line 149
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$ColorKeyguardNumericView$au6YSARq95qPPSN3wS4VTA79KN8;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$ColorKeyguardNumericView$au6YSARq95qPPSN3wS4VTA79KN8;-><init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method protected onPendingLockCheckedFailed(II)V
    .locals 0

    .line 404
    invoke-super {p0, p1, p2}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->onPendingLockCheckedFailed(II)V

    .line 405
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mKeyguardUtils:Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->vibrateLongWhenVerifyFail()V

    if-gtz p2, :cond_0

    const/4 p1, 0x1

    .line 407
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->unLockFailedAnimation(I)V

    :cond_0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mColorNumericKeyboard:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/ColorNumericKeyboard;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public onResume(I)V
    .locals 2

    .line 289
    invoke-super {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->onResume(I)V

    .line 292
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mColorNumericKeyboard:Lcom/color/support/widget/ColorNumericKeyboard;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumericKeyboard;->setTactileFeedbackEnabled(Z)V

    .line 293
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->requestLayout()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 295
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->updateNavStateToBack()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 301
    invoke-super {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->reset()V

    .line 302
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public sendDownUpKeyEvents(I)V
    .locals 2

    .line 199
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {p0, v0}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method

.method protected setInputEnabled(Z)V
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setInputEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardNumericView"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mColorNumericKeyboard:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->setEnabled(Z)V

    .line 98
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mNumericEntry:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorEditText;->setEnabled(Z)V

    .line 99
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mNumericEntry:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorEditText;->setFocusable(Z)V

    .line 100
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mNumericEntry:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorEditText;->setFocusableInTouchMode(Z)V

    if-eqz p1, :cond_0

    .line 104
    new-instance v0, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$ColorKeyguardNumericView$scvm_FcNB4PTrg_imTqnBYw39MY;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$ColorKeyguardNumericView$scvm_FcNB4PTrg_imTqnBYw39MY;-><init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;)V

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mNumericEntry:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->clearFocus()V

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mNumericEntry:Lcom/color/support/widget/ColorEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorEditText;->setShowSoftInputOnFocus(Z)V

    .line 114
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    .line 163
    invoke-super {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 164
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mColorNumericKeyboard:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->setTactileFeedbackEnabled(Z)V

    return-void
.end method

.method public translationValueForScale(F)F
    .locals 1

    const/high16 p0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, p0

    if-gez v0, :cond_0

    const/high16 v0, -0x40000000    # -2.0f

    sub-float/2addr p1, p0

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, p0

    return v0

    :cond_0
    const p0, 0x3f4ccccd    # 0.8f

    cmpl-float p0, p1, p0

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

.method protected unLockFailedAnimation(I)V
    .locals 0

    const/4 p1, 0x0

    .line 307
    iput p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mInputPsdNum:I

    .line 308
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->updateNavStateToBack()V

    .line 309
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mUnlockFailedAnimSet:Landroid/animation/AnimatorSet;

    if-nez p1, :cond_0

    .line 310
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->initUnlockFailedAnimSet()V

    .line 312
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mUnlockFailedAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-nez p1, :cond_1

    .line 313
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mUnlockFailedAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    return-void
.end method

.method public updateKeyboardFinishButton(Z)V
    .locals 2

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateKeyboardFinishButton, show = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardNumericView"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 228
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mColorNumericKeyboard:Lcom/color/support/widget/ColorNumericKeyboard;

    iget-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->mFinishStyle:Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->setRightStyle(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)V

    goto :goto_0

    .line 230
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mColorNumericKeyboard:Lcom/color/support/widget/ColorNumericKeyboard;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->setRightStyle(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)V

    :goto_0
    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 4

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mPwds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    move v1, v2

    .line 264
    :goto_0
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mPwds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 265
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mPwds:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mNumericEntry:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 270
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->setInputEnabled(Z)V

    .line 272
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->clearPendingLockCheck()V

    .line 273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    const-string v0, "KeyguardNumericView"

    const-string v1, "verifyPasswordAndUnlock(), length < 4, return."

    .line 276
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 277
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->setInputEnabled(Z)V

    .line 278
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mPwds:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    .line 281
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->setHypnusAction()V

    .line 282
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->startPendingLockCheck(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mPwds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 284
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->updateNumericKeyboard()V

    return-void
.end method
