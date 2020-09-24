.class public abstract Lcom/coloros/settings/feature/fingerprint/FingerprintEnrollBase;
.super Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;
.source "FingerprintEnrollBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final RESULT_FINISHED:I = 0x1

.field static final RESULT_SKIP:I = 0x2

.field static final RESULT_TIMEOUT:I = 0x3


# instance fields
.field protected mToken:[B

.field protected mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getEnrollingIntent()Landroid/content/Intent;
    .locals 3

    .line 123
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 125
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintEnrollBase;->mToken:[B

    const-string v2, "hw_auth_token"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 126
    iget v1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintEnrollBase;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    const-string v2, "android.intent.extra.USER_ID"

    .line 127
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method protected initViews()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 43
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintEnrollBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintEnrollBase;->mToken:[B

    if-eqz p1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintEnrollBase;->mToken:[B

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintEnrollBase;->mToken:[B

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintEnrollBase;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintEnrollBase;->mUserId:I

    return-void
.end method

.method protected onNextButtonClick()V
    .locals 0

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintEnrollBase;->initViews()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 55
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 56
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintEnrollBase;->mToken:[B

    const-string v1, "hw_auth_token"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method protected setHeaderText(I)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, p1, v0}, Lcom/coloros/settings/feature/fingerprint/FingerprintEnrollBase;->setHeaderText(IZ)V

    return-void
.end method

.method protected setHeaderText(IZ)V
    .locals 0

    .line 101
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintEnrollBase;->setTitle(I)V

    return-void
.end method
