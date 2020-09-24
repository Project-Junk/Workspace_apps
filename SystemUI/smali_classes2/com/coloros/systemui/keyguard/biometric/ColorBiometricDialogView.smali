.class public abstract Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;
.super Landroid/widget/LinearLayout;
.source "ColorBiometricDialogView.java"


# static fields
.field private static final ANIMATION_DURATION_AWAY:I = 0x15e

.field private static final ANIMATION_DURATION_SHOW:I = 0xfa

.field public static final DURATION_DELAY_TIME:J = 0x3e8L

.field public static final DURATION_SHAKE_TIME:J = 0x320L

.field private static final KEY_CONFIRM_VISIBILITY:Ljava/lang/String; = "key_confirm_visibility"

.field private static final KEY_STATE:Ljava/lang/String; = "key_state"

.field protected static final MSG_RESET_MESSAGE:I = 0x1

.field protected static final MSG_RESET_TITLE:I = 0x2

.field public static final STATE_AUTHENTICATED:I = 0x4

.field protected static final STATE_AUTHENTICATING:I = 0x1

.field protected static final STATE_ERROR:I = 0x2

.field protected static final STATE_IDLE:I = 0x0

.field public static final STATE_PENDING_CONFIRMATION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ColorBiometricDialogView"

.field public static final USE_DEFAULT_BIOMETRIC:Ljava/lang/String; = "use_default_biometric"


# instance fields
.field private final mAnimationTranslationOffset:F

.field protected final mBiometricIcon:Landroid/widget/ImageView;

.field private mBundle:Landroid/os/Bundle;

.field protected final mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

.field protected final mCancelButton:Landroid/widget/TextView;

.field protected final mConfirmButton:Landroid/widget/TextView;

.field protected final mDescriptionText:Landroid/widget/TextView;

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field protected final mDialog:Landroid/widget/LinearLayout;

.field private final mDialogWidth:F

.field protected mHandler:Landroid/os/Handler;

.field public mIsErrorReceived:Z

.field protected final mLayout:Landroid/view/ViewGroup;

.field private final mLinearOutSlowIn:Landroid/view/animation/Interpolator;

.field protected final mNegativeButton:Landroid/widget/TextView;

.field protected mRequireConfirmation:Z

.field private mRestoredState:Landroid/os/Bundle;

.field private final mShowAnimationRunnable:Ljava/lang/Runnable;

.field private mSkipIntro:Z

.field private mState:I

.field protected final mSubtitleText:Landroid/widget/TextView;

.field public mTitleMessage:Ljava/lang/CharSequence;

.field protected final mTitleText:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricFailedTextView;

.field private mUserId:I

.field private final mUserManager:Landroid/os/UserManager;

.field private mWasForceRemoved:Z

.field private final mWindowManager:Landroid/view/WindowManager;

.field private final mWindowToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/biometrics/DialogViewCallback;)V
    .locals 1

    .line 151
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mWindowToken:Landroid/os/IBinder;

    const/4 p1, 0x0

    .line 98
    iput p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mState:I

    .line 114
    new-instance v0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView$1;-><init>(Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mShowAnimationRunnable:Ljava/lang/Runnable;

    .line 133
    new-instance v0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView$2;-><init>(Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mHandler:Landroid/os/Handler;

    .line 152
    iput-object p2, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    .line 153
    sget-object p2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 154
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mContext:Landroid/content/Context;

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mWindowManager:Landroid/view/WindowManager;

    .line 155
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mUserManager:Landroid/os/UserManager;

    .line 156
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 157
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070108

    .line 158
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mAnimationTranslationOffset:F

    .line 160
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 161
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 162
    iget v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mDialogWidth:F

    .line 165
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d005e

    .line 166
    invoke-virtual {p2, v0, p0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    .line 167
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->addView(Landroid/view/View;)V

    .line 169
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    new-instance p2, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView$3;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView$3;-><init>(Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 188
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    const p2, 0x7f0a0202

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    .line 189
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    const p2, 0x7f0a05a1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricFailedTextView;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mTitleText:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricFailedTextView;

    .line 190
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    const p2, 0x7f0a0568

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mSubtitleText:Landroid/widget/TextView;

    .line 191
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    const p2, 0x7f0a01ec

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mDescriptionText:Landroid/widget/TextView;

    .line 192
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    const p2, 0x7f0a0102

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    .line 193
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    const p2, 0x7f0a017d

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mCancelButton:Landroid/widget/TextView;

    .line 194
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    const p2, 0x7f0a017f

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mNegativeButton:Landroid/widget/TextView;

    .line 195
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    const p2, 0x7f0a017e

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mConfirmButton:Landroid/widget/TextView;

    .line 197
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->isNightMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 198
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mTitleText:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricFailedTextView;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricFailedTextView;->setTextColor(I)V

    .line 199
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mSubtitleText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    .line 204
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->getIconDescriptionResourceId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 203
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 206
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mCancelButton:Landroid/widget/TextView;

    new-instance p2, Lcom/coloros/systemui/keyguard/biometric/-$$Lambda$ColorBiometricDialogView$EeCZwJeskANc3wFYz4TBK5WJdIs;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/keyguard/biometric/-$$Lambda$ColorBiometricDialogView$EeCZwJeskANc3wFYz4TBK5WJdIs;-><init>(Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mNegativeButton:Landroid/widget/TextView;

    new-instance p2, Lcom/coloros/systemui/keyguard/biometric/-$$Lambda$ColorBiometricDialogView$F7x8_Z3cFTdPW_gjUmNuhRy4Nac;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/keyguard/biometric/-$$Lambda$ColorBiometricDialogView$F7x8_Z3cFTdPW_gjUmNuhRy4Nac;-><init>(Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mConfirmButton:Landroid/widget/TextView;

    new-instance p2, Lcom/coloros/systemui/keyguard/biometric/-$$Lambda$ColorBiometricDialogView$E604FMXYmRrK7bYVPDwK3vXOKeE;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/keyguard/biometric/-$$Lambda$ColorBiometricDialogView$E604FMXYmRrK7bYVPDwK3vXOKeE;-><init>(Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 222
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestFocus()Z

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->handleResetTitle()V

    return-void
.end method

.method private handleResetTitle()V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mTitleText:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricFailedTextView;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mTitleMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricFailedTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public forceRemove()V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 352
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 353
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 354
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mWasForceRemoved:Z

    return-void
.end method

.method public abstract getAuthenticatedAccessibilityResourceId()I
.end method

.method public abstract getDelayAfterAuthenticatedDurationMs()I
.end method

.method protected abstract getHintStringResourceId()I
.end method

.method protected abstract getIconDescriptionResourceId()I
.end method

.method public getLayout()Landroid/view/ViewGroup;
    .locals 0

    .line 385
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 465
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7de

    const/high16 v4, 0x1000000

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 471
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v0, "ColorBiometricDialogView"

    .line 472
    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 473
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mWindowToken:Landroid/os/IBinder;

    iput-object p0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    return-object v6
.end method

.method protected getState()I
    .locals 0

    .line 449
    iget p0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mState:I

    return p0
.end method

.method protected abstract handleResetMessage()V
.end method

.method protected isNightMode()Z
    .locals 1

    .line 458
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 459
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUseDefaultNegative()Z
    .locals 2

    .line 365
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "use_default_biometric"

    invoke-static {p0, v1, v0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public synthetic lambda$new$0$ColorBiometricDialogView(Landroid/view/View;)V
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onUserCanceled()V

    return-void
.end method

.method public synthetic lambda$new$1$ColorBiometricDialogView(Landroid/view/View;)V
    .locals 1

    .line 211
    iget p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mState:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onNegativePressed()V

    goto :goto_1

    .line 212
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onUserCanceled()V

    :goto_1
    return-void
.end method

.method public synthetic lambda$new$2$ColorBiometricDialogView(Landroid/view/View;)V
    .locals 4

    .line 218
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/coloros/systemui/keyguard/biometric/-$$Lambda$6wDwzm9XU83RSAD0NlooVi69G2o;

    invoke-direct {v1, v0}, Lcom/coloros/systemui/keyguard/biometric/-$$Lambda$6wDwzm9XU83RSAD0NlooVi69G2o;-><init>(Lcom/android/systemui/biometrics/DialogViewCallback;)V

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->getDelayAfterAuthenticatedDurationMs()I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic lambda$startDismiss$3$ColorBiometricDialogView()V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 316
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->handleResetMessage()V

    const/4 v0, 0x0

    .line 317
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->updateState(I)V

    return-void
.end method

.method public synthetic lambda$startDismiss$4$ColorBiometricDialogView(Ljava/lang/Runnable;)V
    .locals 4

    .line 325
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 326
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x15e

    .line 327
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 328
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 331
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v3, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mAnimationTranslationOffset:F

    .line 332
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 333
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 334
    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 335
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 336
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 337
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 232
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 234
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a00da

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 236
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f081234

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mContext:Landroid/content/Context;

    .line 238
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 237
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 239
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget v3, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getOrganizationColorForUser(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 241
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 243
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 247
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mDialogWidth:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mRestoredState:Landroid/os/Bundle;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 252
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->updateState(I)V

    goto :goto_1

    .line 254
    :cond_2
    iget v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mState:I

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->updateState(I)V

    .line 257
    :goto_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mBundle:Landroid/os/Bundle;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mTitleMessage:Ljava/lang/CharSequence;

    .line 259
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mTitleText:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricFailedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricFailedTextView;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mTitleText:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricFailedTextView;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mTitleMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricFailedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mBundle:Landroid/os/Bundle;

    const-string v2, "subtitle"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 263
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_3

    .line 264
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mSubtitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 266
    :cond_3
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mSubtitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mSubtitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    :goto_2
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mBundle:Landroid/os/Bundle;

    const-string v2, "description"

    .line 271
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 272
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 273
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 275
    :cond_4
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    :goto_3
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mBundle:Landroid/os/Bundle;

    const-string v2, "negative_text"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 280
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 281
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mNegativeButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 283
    :cond_5
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mNegativeButton:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :goto_4
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->isUseDefaultNegative()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 286
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mNegativeButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11022a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 289
    :cond_6
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mNegativeButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    :goto_5
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mWasForceRemoved:Z

    const/4 v2, 0x0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mSkipIntro:Z

    if-eqz v0, :cond_7

    goto :goto_6

    .line 302
    :cond_7
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mAnimationTranslationOffset:F

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 303
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 304
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mShowAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_7

    .line 295
    :cond_8
    :goto_6
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 296
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 297
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 298
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 299
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 306
    :goto_7
    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mWasForceRemoved:Z

    .line 307
    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mSkipIntro:Z

    return-void
.end method

.method public onAuthenticationFailed(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 396
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mIsErrorReceived:Z

    const/4 v0, 0x2

    .line 397
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->updateState(I)V

    .line 398
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mTitleText:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricFailedTextView;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricFailedTextView;->startShake()V

    .line 399
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 400
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 401
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->showTemporaryMessage(Ljava/lang/String;)V

    return-void
.end method

.method public onDialogAnimatedIn()V
    .locals 0

    return-void
.end method

.method public onErrorReceived(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 416
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mIsErrorReceived:Z

    const/4 v0, 0x2

    .line 417
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->updateState(I)V

    .line 418
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->showTemporaryMessage(Ljava/lang/String;)V

    .line 419
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onErrorShown()V

    return-void
.end method

.method public onHelpReceived(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSaveState(Landroid/os/Bundle;)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mNegativeButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const-string v1, "key_confirm_visibility"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 227
    iget p0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mState:I

    const-string v0, "key_state"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public requiresConfirmation()Z
    .locals 0

    .line 377
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mRequireConfirmation:Z

    return p0
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 2

    .line 443
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mRestoredState:Landroid/os/Bundle;

    .line 444
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mNegativeButton:Landroid/widget/TextView;

    const-string v1, "key_confirm_visibility"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "key_state"

    .line 445
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mState:I

    return-void
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public setRequireConfirmation(Z)V
    .locals 0

    .line 373
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mRequireConfirmation:Z

    return-void
.end method

.method public setSkipIntro(Z)V
    .locals 0

    .line 361
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mSkipIntro:Z

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 381
    iput p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mUserId:I

    return-void
.end method

.method protected abstract shouldGrayAreaDismissDialog()Z
.end method

.method protected showTemporaryMessage(Ljava/lang/String;)V
    .locals 2

    .line 390
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 391
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public startDismiss()V
    .locals 2

    .line 313
    new-instance v0, Lcom/coloros/systemui/keyguard/biometric/-$$Lambda$ColorBiometricDialogView$ryog5WpE2phfP3SZsCFVdYBVqS4;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/biometric/-$$Lambda$ColorBiometricDialogView$ryog5WpE2phfP3SZsCFVdYBVqS4;-><init>(Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;)V

    .line 321
    :try_start_0
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 322
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 324
    :cond_0
    new-instance v1, Lcom/coloros/systemui/keyguard/biometric/-$$Lambda$ColorBiometricDialogView$K8CVD0w2ZZlLufn7QiZ3-tZCy3o;

    invoke-direct {v1, p0, v0}, Lcom/coloros/systemui/keyguard/biometric/-$$Lambda$ColorBiometricDialogView$K8CVD0w2ZZlLufn7QiZ3-tZCy3o;-><init>(Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->postOnAnimation(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ColorBiometricDialogView"

    const-string v1, "RemoteException when hiding dialog"

    .line 341
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected abstract updateIcon(II)V
.end method

.method public updateState(I)V
    .locals 5

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 424
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 425
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mNegativeButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->isUseDefaultNegative()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mConfirmButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mConfirmButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 429
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->isUseDefaultNegative()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 430
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 431
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mNegativeButton:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 433
    :cond_2
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mConfirmButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 435
    :cond_3
    :goto_1
    iget v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mState:I

    invoke-virtual {p0, v0, p1}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->updateIcon(II)V

    .line 436
    iput p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mState:I

    return-void
.end method
