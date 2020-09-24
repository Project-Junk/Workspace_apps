.class final Lcom/android/settings/datausage/DataUsageList$5;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageList;
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
        "Lcom/android/settingslib/net/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/datausage/DataUsageList;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList$5;->a:Lcom/android/settings/datausage/DataUsageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/c;",
            ">;>;"
        }
    .end annotation

    .line 502
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList$5;->a:Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {p1}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->a(Landroid/content/Context;)Lcom/android/settingslib/net/NetworkCycleChartDataLoader$a;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/datausage/DataUsageList$5;->a:Lcom/android/settings/datausage/DataUsageList;

    iget-object p2, p2, Lcom/android/settings/datausage/DataUsageList;->a:Landroid/net/NetworkTemplate;

    .line 1187
    iput-object p2, p1, Lcom/android/settingslib/net/NetworkCycleDataLoader$a;->d:Landroid/net/NetworkTemplate;

    .line 504
    invoke-virtual {p1}, Lcom/android/settingslib/net/NetworkCycleDataLoader$a;->a()Lcom/android/settingslib/net/NetworkCycleDataLoader;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 1

    .line 499
    check-cast p2, Ljava/util/List;

    .line 1510
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList$5;->a:Lcom/android/settings/datausage/DataUsageList;

    iget-object p1, p1, Lcom/android/settings/datausage/DataUsageList;->f:Lcom/android/settings/widget/d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/d;->a(Z)V

    .line 1511
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList$5;->a:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {p1, p2}, Lcom/android/settings/datausage/DataUsageList;->a(Lcom/android/settings/datausage/DataUsageList;Ljava/util/List;)Ljava/util/List;

    .line 1513
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList$5;->a:Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {p1}, Lcom/android/settings/datausage/DataUsageList;->c()V

    .line 1514
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList$5;->a:Lcom/android/settings/datausage/DataUsageList;

    iget-object p1, p1, Lcom/android/settings/datausage/DataUsageList;->d:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    return-void
.end method

.method public final onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/c;",
            ">;>;)V"
        }
    .end annotation

    .line 519
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList$5;->a:Lcom/android/settings/datausage/DataUsageList;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/datausage/DataUsageList;->a(Lcom/android/settings/datausage/DataUsageList;Ljava/util/List;)Ljava/util/List;

    return-void
.end method
