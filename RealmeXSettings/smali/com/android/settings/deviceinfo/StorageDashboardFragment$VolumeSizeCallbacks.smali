.class public final Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;
.super Ljava/lang/Object;
.source "StorageDashboardFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VolumeSizeCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Lcom/android/settingslib/deviceinfo/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/deviceinfo/StorageDashboardFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;->a:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Lcom/android/settingslib/deviceinfo/b;",
            ">;"
        }
    .end annotation

    .line 375
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;->a:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 376
    const-class p2, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/storage/StorageManager;

    .line 377
    new-instance v0, Lcom/android/settingslib/deviceinfo/c;

    invoke-direct {v0, p2}, Lcom/android/settingslib/deviceinfo/c;-><init>(Landroid/os/storage/StorageManager;)V

    .line 378
    const-class p2, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/usage/StorageStatsManager;

    .line 379
    new-instance v1, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;->a:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->b(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    invoke-direct {v1, p1, v0, p2, v2}, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;-><init>(Landroid/content/Context;Lcom/android/settingslib/deviceinfo/e;Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)V

    return-object v1
.end method

.method public final synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 371
    check-cast p2, Lcom/android/settingslib/deviceinfo/b;

    if-nez p2, :cond_0

    .line 1390
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;->a:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void

    .line 1394
    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;->a:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-static {p1, p2}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->a(Lcom/android/settings/deviceinfo/StorageDashboardFragment;Lcom/android/settingslib/deviceinfo/b;)Lcom/android/settingslib/deviceinfo/b;

    .line 1395
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;->a:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->c(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)V

    .line 1396
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;->a:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->d(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)V

    return-void
.end method

.method public final onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Lcom/android/settingslib/deviceinfo/b;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
