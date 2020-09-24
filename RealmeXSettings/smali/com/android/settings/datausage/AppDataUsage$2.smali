.class final Lcom/android/settings/datausage/AppDataUsage$2;
.super Ljava/lang/Object;
.source "AppDataUsage.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/AppDataUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/android/settingslib/net/e;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/datausage/AppDataUsage;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/AppDataUsage;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$2;->a:Lcom/android/settings/datausage/AppDataUsage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/e;",
            ">;>;"
        }
    .end annotation

    .line 394
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$2;->a:Lcom/android/settings/datausage/AppDataUsage;

    .line 395
    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsage;->a(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->a(Landroid/content/Context;)Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$a;

    move-result-object p1

    const/4 p2, 0x1

    .line 1123
    iput-boolean p2, p1, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$a;->b:Z

    .line 396
    iget-object p2, p0, Lcom/android/settings/datausage/AppDataUsage$2;->a:Lcom/android/settings/datausage/AppDataUsage;

    iget-object p2, p2, Lcom/android/settings/datausage/AppDataUsage;->c:Landroid/net/NetworkTemplate;

    .line 1187
    iput-object p2, p1, Lcom/android/settingslib/net/NetworkCycleDataLoader$a;->d:Landroid/net/NetworkTemplate;

    .line 398
    iget-object p2, p0, Lcom/android/settings/datausage/AppDataUsage$2;->a:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p2}, Lcom/android/settings/datausage/AppDataUsage;->b(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/a;

    move-result-object p2

    iget p2, p2, Lcom/android/settingslib/a;->c:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 399
    :goto_0
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$2;->a:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v0}, Lcom/android/settings/datausage/AppDataUsage;->b(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/a;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settingslib/a;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$2;->a:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v0}, Lcom/android/settings/datausage/AppDataUsage;->b(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/a;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settingslib/a;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$a;->a(I)Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$a;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 403
    :cond_0
    iget-object p2, p0, Lcom/android/settings/datausage/AppDataUsage$2;->a:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p2}, Lcom/android/settings/datausage/AppDataUsage;->b(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/a;

    move-result-object p2

    iget p2, p2, Lcom/android/settingslib/a;->a:I

    invoke-virtual {p1, p2}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$a;->a(I)Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$a;

    .line 405
    :cond_1
    iget-object p2, p0, Lcom/android/settings/datausage/AppDataUsage$2;->a:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p2}, Lcom/android/settings/datausage/AppDataUsage;->c(Lcom/android/settings/datausage/AppDataUsage;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 406
    iget-object p2, p0, Lcom/android/settings/datausage/AppDataUsage$2;->a:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p2}, Lcom/android/settings/datausage/AppDataUsage;->c(Lcom/android/settings/datausage/AppDataUsage;)Ljava/util/ArrayList;

    move-result-object p2

    .line 1197
    iput-object p2, p1, Lcom/android/settingslib/net/NetworkCycleDataLoader$a;->e:Ljava/util/ArrayList;

    .line 408
    :cond_2
    invoke-virtual {p1}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$a;->a()Lcom/android/settingslib/net/NetworkCycleDataLoader;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 6

    .line 391
    check-cast p2, Ljava/util/List;

    .line 1414
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$2;->a:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p1, p2}, Lcom/android/settings/datausage/AppDataUsage;->a(Lcom/android/settings/datausage/AppDataUsage;Ljava/util/List;)Ljava/util/List;

    .line 1415
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$2;->a:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsage;->d(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/settings/datausage/b;->a(Ljava/util/List;)Z

    .line 1416
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$2;->a:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsage;->e(Lcom/android/settings/datausage/AppDataUsage;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const/4 v0, 0x0

    if-lez p1, :cond_3

    .line 1417
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 1420
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/net/e;

    .line 2036
    iget-wide v2, v2, Lcom/android/settingslib/net/d;->d:J

    .line 1421
    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage$2;->a:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v4}, Lcom/android/settings/datausage/AppDataUsage;->e(Lcom/android/settings/datausage/AppDataUsage;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lez v0, :cond_2

    .line 1427
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$2;->a:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsage;->f(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/SpinnerPreference;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/settings/datausage/SpinnerPreference;->a(I)V

    .line 1429
    :cond_2
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$2;->a:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {p1, v0}, Lcom/android/settings/datausage/AppDataUsage;->a(I)V

    return-void

    .line 1431
    :cond_3
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$2;->a:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {p1, v0}, Lcom/android/settings/datausage/AppDataUsage;->a(I)V

    return-void
.end method

.method public final onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/e;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method
