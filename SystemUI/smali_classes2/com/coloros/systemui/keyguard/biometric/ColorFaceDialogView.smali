.class public Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;
.super Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;
.source "ColorFaceDialogView.java"


# static fields
.field private static final HIDE_DIALOG_DELAY:I = 0x0

.field private static final KEY_DIALOG_ANIMATED_IN:Ljava/lang/String; = "key_dialog_animated_in"

.field private static final KEY_DIALOG_SIZE:Ljava/lang/String; = "key_dialog_size"

.field private static final SIZE_SMALL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ColorFaceDialogView"


# instance fields
.field private mDialogAnimatedIn:Z

.field private mIconOriginalY:F

.field private mIsNightMode:Z

.field private mNeedSetListener:Z

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/biometrics/DialogViewCallback;)V
    .locals 2

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;-><init>(Landroid/content/Context;Lcom/android/systemui/biometrics/DialogViewCallback;)V

    .line 54
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->isNightMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->mIsNightMode:Z

    .line 55
    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->mIsNightMode:Z

    const p2, 0x7f080719

    if-eqz p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080597

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 57
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->mTitleText:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricFailedTextView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricFailedTextView;->setTextColor(I)V

    .line 58
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    .line 59
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/color/support/util/ColorTintUtil;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 58
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 63
    :goto_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    new-instance p2, Lcom/coloros/systemui/keyguard/biometric/-$$Lambda$ColorFaceDialogView$qKzj9irH5BtH36D150skqCbUFy4;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/keyguard/biometric/-$$Lambda$ColorFaceDialogView$qKzj9irH5BtH36D150skqCbUFy4;-><init>(Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private dpToPixels(F)F
    .locals 1

    .line 185
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p0, v0

    mul-float/2addr p1, p0

    return p1
.end method

.method private pixelsToDp(F)F
    .locals 1

    .line 190
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p0, v0

    div-float/2addr p1, p0

    return p1
.end method


# virtual methods
.method public getAuthenticatedAccessibilityResourceId()I
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->mRequireConfirmation:Z

    if-eqz p0, :cond_0

    .line 128
    sget p0, Lcom/coloros/common/util/ResourceUtil;->android_string_face_authenticated_confirmation_required:I

    return p0

    .line 130
    :cond_0
    sget p0, Lcom/coloros/common/util/ResourceUtil;->android_string_face_authenticated_no_confirmation_required:I

    return p0
.end method

.method public getDelayAfterAuthenticatedDurationMs()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getHintStringResourceId()I
    .locals 0

    const p0, 0x7f110342

    return p0
.end method

.method protected getIconDescriptionResourceId()I
    .locals 0

    const p0, 0x7f110070

    return p0
.end method

.method protected handleResetMessage()V
    .locals 0

    return-void
.end method

.method public synthetic lambda$new$0$ColorFaceDialogView(Landroid/view/View;)V
    .locals 0

    .line 64
    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->mNeedSetListener:Z

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->handleResetMessage()V

    const/4 p1, 0x1

    .line 66
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->updateState(I)V

    .line 67
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p1}, Lcom/android/systemui/biometrics/DialogViewCallback;->onTryAgainPressed()V

    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->mNeedSetListener:Z

    :cond_0
    return-void
.end method

.method public onAuthenticationFailed(Ljava/lang/String;)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->onAuthenticationFailed(Ljava/lang/String;)V

    return-void
.end method

.method public onDialogAnimatedIn()V
    .locals 1

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->mDialogAnimatedIn:Z

    return-void
.end method

.method public onErrorReceived(Ljava/lang/String;)V
    .locals 0

    .line 112
    invoke-super {p0, p1}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->onErrorReceived(Ljava/lang/String;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 103
    invoke-super/range {p0 .. p5}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->onLayout(ZIIII)V

    .line 105
    iget p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->mIconOriginalY:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getY()F

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->mIconOriginalY:F

    :cond_0
    return-void
.end method

.method public onSaveState(Landroid/os/Bundle;)V
    .locals 2

    .line 75
    invoke-super {p0, p1}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->onSaveState(Landroid/os/Bundle;)V

    .line 76
    iget v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->mSize:I

    const-string v1, "key_dialog_size"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->mDialogAnimatedIn:Z

    const-string v0, "key_dialog_animated_in"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 1

    .line 87
    invoke-super {p0, p1}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->restoreState(Landroid/os/Bundle;)V

    const-string v0, "key_dialog_size"

    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->mSize:I

    const-string v0, "key_dialog_animated_in"

    .line 90
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->mDialogAnimatedIn:Z

    return-void
.end method

.method protected shouldGrayAreaDismissDialog()Z
    .locals 1

    .line 178
    iget p0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->mSize:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method protected updateIcon(II)V
    .locals 2

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 144
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->mIsNightMode:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0805e3

    goto :goto_0

    :cond_0
    const v0, 0x7f08059a

    :goto_0
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 146
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p0, :cond_7

    .line 148
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_4

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 151
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->mIsNightMode:Z

    if-eqz v1, :cond_2

    const v1, 0x7f080599

    goto :goto_1

    :cond_2
    const v1, 0x7f080598

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 153
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->mNeedSetListener:Z

    .line 154
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getKeyguardUtils(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isClosedSuperFirewall()Z

    move-result p1

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->mIsErrorReceived:Z

    if-nez p1, :cond_7

    .line 155
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->mTitleText:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricFailedTextView;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f110228

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricFailedTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_3
    const/4 p1, 0x4

    const v0, 0x7f0805bf

    const v1, 0x7f08059b

    if-ne p2, p1, :cond_5

    .line 158
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->mIsNightMode:Z

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_5
    const/4 p1, 0x3

    if-ne p2, p1, :cond_7

    .line 161
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;->mIsNightMode:Z

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    move v0, v1

    :goto_3
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    :goto_4
    return-void
.end method
