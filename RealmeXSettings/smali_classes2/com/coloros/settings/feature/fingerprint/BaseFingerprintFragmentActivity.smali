.class public abstract Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;
.super Lcom/android/settings/SubSettings;
.source "BaseFingerprintFragmentActivity.java"


# static fields
.field private static final REQUEST_PERMISSIONS_CODE:I = 0x1


# instance fields
.field protected mCheckPermissionSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/android/settings/SubSettings;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->mCheckPermissionSuccess:Z

    return-void
.end method


# virtual methods
.method protected checkRuntimePermission()V
    .locals 2

    .line 41
    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->mCheckPermissionSuccess:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->checkAppPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    invoke-static {}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->getPermissions()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 42
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->mCheckPermissionSuccess:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 19
    invoke-super {p0, p1}, Lcom/android/settings/SubSettings;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 22
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 24
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    or-int/lit8 p1, p1, 0x10

    .line 24
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->checkRuntimePermission()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const/4 p2, 0x1

    if-ne p2, p1, :cond_1

    .line 52
    iput-boolean p2, p0, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->mCheckPermissionSuccess:Z

    .line 53
    array-length p1, p3

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge v0, p1, :cond_1

    aget v1, p3, v0

    if-eqz v1, :cond_0

    .line 55
    iput-boolean p2, p0, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->mCheckPermissionSuccess:Z

    .line 56
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->finish()V

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

    .line 32
    invoke-virtual {p0, v0, v1}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected zoomFadeTransition()V
    .locals 2

    const v0, 0x7f010073

    const v1, 0x7f010069

    .line 36
    invoke-virtual {p0, v0, v1}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;->overridePendingTransition(II)V

    return-void
.end method
