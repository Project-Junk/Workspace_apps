.class public Lcom/coloros/settings/feature/fingerprint/utils/FileEncryptUtils;
.super Ljava/lang/Object;
.source "FileEncryptUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileEncryptUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFileEncryptEnable(Landroid/content/Context;)Z
    .locals 1

    .line 20
    new-instance v0, Lcom/coloros/settings/privacy/a/g;

    invoke-direct {v0, p0}, Lcom/coloros/settings/privacy/a/g;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {v0}, Lcom/coloros/settings/privacy/a/g;->a()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/settings/privacy/a/g$d;->a()Z

    move-result p0

    return p0
.end method

.method public static launchFileManagerIntent(Landroid/app/Activity;IZ)V
    .locals 2

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.coloros.filemanager.FILE_SAFE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const-string v1, "CONFIRM_PASSWORD"

    .line 51
    invoke-virtual {v0, v1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    :cond_0
    invoke-static {v0}, Lcom/coloros/settings/utils/az;->a(Landroid/content/Intent;)V

    .line 55
    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    if-eqz p2, :cond_1

    const p1, 0x7f01006b

    const p2, 0x7f010074

    .line 57
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    const-string p0, "FileEncryptUtils"

    const-string p1, "launchFileManagerIntent ActivityNotFound"

    .line 61
    invoke-static {p0, p1}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static launchFileManagerIntent(Landroidx/fragment/app/Fragment;IZ)V
    .locals 4

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "FileEncryptUtils"

    if-nez v0, :cond_0

    const-string p0, "launchFileManagerIntent activity=null"

    .line 28
    invoke-static {v1, p0}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 31
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.coloros.filemanager.FILE_SAFE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, -0x1

    if-eq p1, v3, :cond_1

    const-string v3, "CONFIRM_PASSWORD"

    .line 33
    invoke-virtual {v2, v3, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    :cond_1
    invoke-static {v2}, Lcom/coloros/settings/utils/az;->a(Landroid/content/Intent;)V

    .line 37
    :try_start_0
    invoke-virtual {p0, v2, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    if-eqz p2, :cond_2

    const p0, 0x7f01006b

    const p1, 0x7f010074

    .line 39
    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    const-string p0, "launchFileManagerIntent ActivityNotFound"

    .line 43
    invoke-static {v1, p0}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
