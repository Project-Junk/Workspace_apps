.class public Lcom/android/systemui/biometrics/FingerprintDialogView;
.super Lcom/android/systemui/biometrics/BiometricDialogView;
.source "FingerprintDialogView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FingerprintDialogView"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/biometrics/DialogViewCallback;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/BiometricDialogView;-><init>(Landroid/content/Context;Lcom/android/systemui/biometrics/DialogViewCallback;)V

    return-void
.end method


# virtual methods
.method protected getAnimationForTransition(II)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x2

    const v1, 0x7f0807a3

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    if-ne p2, v2, :cond_1

    const v1, 0x7f0807a2

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    if-ne p1, v2, :cond_2

    if-ne p2, v3, :cond_2

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    if-ne p2, v3, :cond_3

    goto :goto_0

    :cond_3
    if-ne p2, v2, :cond_4

    .line 128
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/FingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getAuthenticatedAccessibilityResourceId()I
    .locals 0

    .line 55
    sget p0, Lcom/coloros/common/util/ResourceUtil;->android_string_fingerprint_authenticated:I

    return p0
.end method

.method protected getDelayAfterAuthenticatedDurationMs()I
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
    .locals 2

    const/4 v0, 0x1

    .line 43
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/FingerprintDialogView;->updateState(I)V

    .line 44
    iget-object v0, p0, Lcom/android/systemui/biometrics/FingerprintDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FingerprintDialogView;->getHintStringResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 45
    iget-object v0, p0, Lcom/android/systemui/biometrics/FingerprintDialogView;->mErrorText:Landroid/widget/TextView;

    iget p0, p0, Lcom/android/systemui/biometrics/FingerprintDialogView;->mTextColor:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method protected shouldAnimateForTransition(II)Z
    .locals 3

    const/4 p0, 0x2

    const/4 v0, 0x1

    if-ne p2, p0, :cond_0

    return v0

    :cond_0
    if-ne p1, p0, :cond_1

    if-ne p2, v0, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    if-ne p2, v1, :cond_2

    return v2

    :cond_2
    if-ne p1, p0, :cond_3

    if-ne p2, v1, :cond_3

    return v2

    :cond_3
    if-ne p2, v0, :cond_4

    :cond_4
    return v2
.end method

.method protected shouldGrayAreaDismissDialog()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected updateIcon(II)V
    .locals 3

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/FingerprintDialogView;->getAnimationForTransition(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 67
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Animation not found, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintDialogView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 71
    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 75
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/biometrics/FingerprintDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v1, :cond_2

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/FingerprintDialogView;->shouldAnimateForTransition(II)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 78
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    .line 79
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_2
    return-void
.end method