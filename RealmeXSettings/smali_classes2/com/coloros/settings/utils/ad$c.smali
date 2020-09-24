.class final Lcom/coloros/settings/utils/ad$c;
.super Ljava/lang/Object;
.source "OppoDeviceInfoUtils.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/utils/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
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
.field private a:Landroid/os/Bundle;

.field private b:Landroid/content/Context;

.field private c:Lcom/coloros/settings/utils/ad$b;


# direct methods
.method private constructor <init>(Landroid/os/Bundle;Landroid/content/Context;Lcom/coloros/settings/utils/ad$b;)V
    .locals 0

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    iput-object p1, p0, Lcom/coloros/settings/utils/ad$c;->a:Landroid/os/Bundle;

    .line 490
    iput-object p2, p0, Lcom/coloros/settings/utils/ad$c;->b:Landroid/content/Context;

    .line 491
    iput-object p3, p0, Lcom/coloros/settings/utils/ad$c;->c:Lcom/coloros/settings/utils/ad$b;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Landroid/content/Context;Lcom/coloros/settings/utils/ad$b;B)V
    .locals 0

    .line 475
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/utils/ad$c;-><init>(Landroid/os/Bundle;Landroid/content/Context;Lcom/coloros/settings/utils/ad$b;)V

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

    .line 496
    iget-object p1, p0, Lcom/coloros/settings/utils/ad$c;->b:Landroid/content/Context;

    const-class p2, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    .line 497
    new-instance p2, Lcom/android/settingslib/deviceinfo/c;

    invoke-direct {p2, p1}, Lcom/android/settingslib/deviceinfo/c;-><init>(Landroid/os/storage/StorageManager;)V

    .line 499
    iget-object v0, p0, Lcom/coloros/settings/utils/ad$c;->b:Landroid/content/Context;

    const-class v1, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/StorageStatsManager;

    if-eqz p1, :cond_0

    .line 502
    iget-object v1, p0, Lcom/coloros/settings/utils/ad$c;->a:Landroid/os/Bundle;

    invoke-static {p1, v1}, Lcom/android/settings/m;->a(Landroid/os/storage/StorageManager;Landroid/os/Bundle;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 504
    :goto_0
    new-instance v1, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;

    iget-object v2, p0, Lcom/coloros/settings/utils/ad$c;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p2, v0, p1}, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;-><init>(Landroid/content/Context;Lcom/android/settingslib/deviceinfo/e;Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)V

    return-object v1
.end method

.method public final synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 475
    check-cast p2, Lcom/android/settingslib/deviceinfo/b;

    .line 1514
    iget-object p1, p0, Lcom/coloros/settings/utils/ad$c;->c:Lcom/coloros/settings/utils/ad$b;

    if-eqz p1, :cond_0

    .line 1515
    invoke-interface {p1, p2}, Lcom/coloros/settings/utils/ad$b;->onReceivedStorageInfo(Lcom/android/settingslib/deviceinfo/b;)V

    :cond_0
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
