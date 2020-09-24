.class public Lcom/coloros/systemui/keyguard/biometric/ColorFingerprintDialogView;
.super Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;
.source "ColorFingerprintDialogView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ColorFingerprintDialogView"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/biometrics/DialogViewCallback;)V
    .locals 2

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;-><init>(Landroid/content/Context;Lcom/android/systemui/biometrics/DialogViewCallback;)V

    .line 38
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorFingerprintDialogView;->isNightMode()Z

    move-result p1

    const p2, 0x7f0805e4

    if-eqz p1, :cond_0

    .line 39
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorFingerprintDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080597

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 40
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFingerprintDialogView;->mTitleText:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricFailedTextView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricFailedTextView;->setTextColor(I)V

    .line 41
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFingerprintDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    .line 42
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorFingerprintDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/color/support/util/ColorTintUtil;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 41
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFingerprintDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorFingerprintDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getAuthenticatedAccessibilityResourceId()I
    .locals 0

    .line 60
    sget p0, Lcom/coloros/common/util/ResourceUtil;->android_string_fingerprint_authenticated:I

    return p0
.end method

.method public getDelayAfterAuthenticatedDurationMs()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getHintStringResourceId()I
    .locals 0

    const p0, 0x7f110345

    return p0
.end method

.method protected getIconDescriptionResourceId()I
    .locals 0

    const p0, 0x7f110071

    return p0
.end method

.method protected handleResetMessage()V
    .locals 1

    const/4 v0, 0x1

    .line 50
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/biometric/ColorFingerprintDialogView;->updateState(I)V

    return-void
.end method

.method protected shouldGrayAreaDismissDialog()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected updateIcon(II)V
    .locals 0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getKeyguardUtils(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isClosedSuperFirewall()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFingerprintDialogView;->mIsErrorReceived:Z

    if-nez p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorFingerprintDialogView;->mTitleText:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricFailedTextView;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorFingerprintDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f110229

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricFailedTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
