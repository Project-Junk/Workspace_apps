.class public abstract Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "FingerFaceBaseActivity.java"


# static fields
.field private static final REQUEST_PERMISSIONS_CODE:I = 0x1


# instance fields
.field protected mCheckPermissionSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->mCheckPermissionSuccess:Z

    return-void
.end method


# virtual methods
.method protected checkRuntimePermission()V
    .locals 2

    .line 61
    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->mCheckPermissionSuccess:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->checkAppPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->getPermissions()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 62
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->mCheckPermissionSuccess:Z

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 35
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 38
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 40
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 41
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    or-int/lit8 p1, p1, 0x10

    .line 40
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->checkRuntimePermission()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const/4 p2, 0x1

    if-ne p2, p1, :cond_1

    .line 72
    iput-boolean p2, p0, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->mCheckPermissionSuccess:Z

    .line 73
    array-length p1, p3

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge v0, p1, :cond_1

    aget v1, p3, v0

    if-eqz v1, :cond_0

    .line 75
    iput-boolean p2, p0, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->mCheckPermissionSuccess:Z

    .line 76
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->finish()V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public pushUpTransition()V
    .locals 2

    const v0, 0x7f01006b

    const v1, 0x7f010074

    .line 48
    invoke-virtual {p0, v0, v1}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected zoomFadeTransition()V
    .locals 2

    const v0, 0x7f010073

    const v1, 0x7f010069

    .line 52
    invoke-virtual {p0, v0, v1}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->overridePendingTransition(II)V

    return-void
.end method
