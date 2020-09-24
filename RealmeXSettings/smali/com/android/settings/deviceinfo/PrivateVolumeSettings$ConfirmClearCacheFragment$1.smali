.class final Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment$1;
.super Ljava/lang/Object;
.source "PrivateVolumeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;Landroid/content/Context;)V
    .locals 0

    .line 876
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment$1;->b:Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .line 879
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment$1;->b:Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    .line 880
    iget-object p2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment$1;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 881
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment$1;->a:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 883
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment$1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 884
    invoke-virtual {p2, v2, v4}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v5

    .line 885
    new-instance v6, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$a;

    .line 886
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, p1, v7}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$a;-><init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;I)V

    .line 887
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 888
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v7, v4, v6}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
