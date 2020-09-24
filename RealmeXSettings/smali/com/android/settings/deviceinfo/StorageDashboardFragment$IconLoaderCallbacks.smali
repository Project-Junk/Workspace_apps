.class public final Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;
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
    name = "IconLoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Landroid/util/SparseArray<",
        "Landroid/graphics/drawable/Drawable;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/deviceinfo/StorageDashboardFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;->a:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a()Landroid/util/SparseArray;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;->a:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/deviceinfo/storage/UserIconLoader;->a(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic a(Landroid/util/SparseArray;Lcom/android/settingslib/core/a;)V
    .locals 0

    .line 362
    check-cast p1, Lcom/android/settings/deviceinfo/storage/UserIconLoader$b;

    .line 363
    invoke-interface {p1, p0}, Lcom/android/settings/deviceinfo/storage/UserIconLoader$b;->b(Landroid/util/SparseArray;)V

    return-void
.end method

.method private static synthetic a(Lcom/android/settingslib/core/a;)Z
    .locals 0

    .line 359
    instance-of p0, p0, Lcom/android/settings/deviceinfo/storage/UserIconLoader$b;

    return p0
.end method

.method public static synthetic lambda$-9hdS_mI5YB3U1eUcMlLK7aB4sw(Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;)Landroid/util/SparseArray;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;->a()Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$UrZb_BdzRYR4H366_sNRNPFabbw(Lcom/android/settingslib/core/a;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;->a(Lcom/android/settingslib/core/a;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$bSHd3_TN7jijcKsqkephtQ06j0E(Landroid/util/SparseArray;Lcom/android/settingslib/core/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;->a(Landroid/util/SparseArray;Lcom/android/settingslib/core/a;)V

    return-void
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation

    .line 349
    new-instance p1, Lcom/android/settings/deviceinfo/storage/UserIconLoader;

    iget-object p2, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;->a:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    .line 350
    invoke-virtual {p2}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/android/settings/deviceinfo/-$$Lambda$StorageDashboardFragment$IconLoaderCallbacks$-9hdS_mI5YB3U1eUcMlLK7aB4sw;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/-$$Lambda$StorageDashboardFragment$IconLoaderCallbacks$-9hdS_mI5YB3U1eUcMlLK7aB4sw;-><init>(Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;)V

    invoke-direct {p1, p2, v0}, Lcom/android/settings/deviceinfo/storage/UserIconLoader;-><init>(Landroid/content/Context;Lcom/android/settings/deviceinfo/storage/UserIconLoader$a;)V

    return-object p1
.end method

.method public final synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 1

    .line 345
    check-cast p2, Landroid/util/SparseArray;

    .line 1357
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;->a:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->a(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)Ljava/util/List;

    move-result-object p1

    .line 1358
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/settings/deviceinfo/-$$Lambda$StorageDashboardFragment$IconLoaderCallbacks$UrZb_BdzRYR4H366_sNRNPFabbw;->INSTANCE:Lcom/android/settings/deviceinfo/-$$Lambda$StorageDashboardFragment$IconLoaderCallbacks$UrZb_BdzRYR4H366_sNRNPFabbw;

    .line 1359
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/settings/deviceinfo/-$$Lambda$StorageDashboardFragment$IconLoaderCallbacks$bSHd3_TN7jijcKsqkephtQ06j0E;

    invoke-direct {v0, p2}, Lcom/android/settings/deviceinfo/-$$Lambda$StorageDashboardFragment$IconLoaderCallbacks$bSHd3_TN7jijcKsqkephtQ06j0E;-><init>(Landroid/util/SparseArray;)V

    .line 1360
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method
