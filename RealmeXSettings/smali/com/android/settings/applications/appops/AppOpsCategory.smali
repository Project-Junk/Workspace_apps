.class public Lcom/android/settings/applications/appops/AppOpsCategory;
.super Landroidx/fragment/app/ListFragment;
.source "AppOpsCategory.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/appops/AppOpsCategory$a;,
        Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;,
        Lcom/android/settings/applications/appops/AppOpsCategory$c;,
        Lcom/android/settings/applications/appops/AppOpsCategory$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/ListFragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/android/settings/applications/appops/a$b;",
        ">;>;"
    }
.end annotation


# instance fields
.field a:Lcom/android/settings/applications/appops/a;

.field b:Lcom/android/settings/applications/appops/AppOpsCategory$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/applications/appops/a$c;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;-><init>()V

    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "template"

    .line 60
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appops/AppOpsCategory;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 311
    invoke-super {p0, p1}, Landroidx/fragment/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string p1, "No applications"

    .line 315
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appops/AppOpsCategory;->setEmptyText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 318
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appops/AppOpsCategory;->setHasOptionsMenu(Z)V

    .line 321
    new-instance p1, Lcom/android/settings/applications/appops/AppOpsCategory$a;

    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appops/AppOpsCategory;->a:Lcom/android/settings/applications/appops/a;

    invoke-direct {p1, v0, v1}, Lcom/android/settings/applications/appops/AppOpsCategory$a;-><init>(Landroid/content/Context;Lcom/android/settings/applications/appops/a;)V

    iput-object p1, p0, Lcom/android/settings/applications/appops/AppOpsCategory;->b:Lcom/android/settings/applications/appops/AppOpsCategory$a;

    .line 322
    iget-object p1, p0, Lcom/android/settings/applications/appops/AppOpsCategory;->b:Lcom/android/settings/applications/appops/AppOpsCategory$a;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appops/AppOpsCategory;->setListAdapter(Landroid/widget/ListAdapter;)V

    const/4 p1, 0x0

    .line 325
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appops/AppOpsCategory;->setListShown(Z)V

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 306
    invoke-super {p0, p1}, Landroidx/fragment/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 307
    new-instance p1, Lcom/android/settings/applications/appops/a;

    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/applications/appops/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/applications/appops/AppOpsCategory;->a:Lcom/android/settings/applications/appops/a;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/a$b;",
            ">;>;"
        }
    .end annotation

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string/jumbo p2, "template"

    .line 352
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/appops/a$c;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 354
    :goto_0
    new-instance p2, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;

    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appops/AppOpsCategory;->a:Lcom/android/settings/applications/appops/a;

    invoke-direct {p2, v0, v1, p1}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;-><init>(Landroid/content/Context;Lcom/android/settings/applications/appops/a;Lcom/android/settings/applications/appops/a$c;)V

    return-object p2
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1

    .line 332
    iget-object p1, p0, Lcom/android/settings/applications/appops/AppOpsCategory;->b:Lcom/android/settings/applications/appops/AppOpsCategory$a;

    invoke-virtual {p1, p3}, Lcom/android/settings/applications/appops/AppOpsCategory$a;->a(I)Lcom/android/settings/applications/appops/a$b;

    move-result-object p1

    if-eqz p1, :cond_1

    const p3, 0x7f0a0481

    .line 335
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CompoundButton;

    .line 336
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p3

    const/4 p4, 0x1

    xor-int/2addr p3, p4

    .line 337
    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1369
    iget-object p2, p1, Lcom/android/settings/applications/appops/a$b;->a:Ljava/util/ArrayList;

    const/4 p5, 0x0

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager$OpEntry;

    if-eqz p3, :cond_0

    move p4, p5

    .line 340
    :cond_0
    iget-object p3, p0, Lcom/android/settings/applications/appops/AppOpsCategory;->a:Lcom/android/settings/applications/appops/a;

    .line 1496
    iget-object p3, p3, Lcom/android/settings/applications/appops/a;->b:Landroid/app/AppOpsManager;

    .line 340
    invoke-virtual {p2}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result p2

    .line 2353
    iget-object p5, p1, Lcom/android/settings/applications/appops/a$b;->b:Lcom/android/settings/applications/appops/a$a;

    .line 3254
    iget-object p5, p5, Lcom/android/settings/applications/appops/a$a;->b:Landroid/content/pm/ApplicationInfo;

    .line 341
    iget p5, p5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3353
    iget-object v0, p1, Lcom/android/settings/applications/appops/a$b;->b:Lcom/android/settings/applications/appops/a$a;

    .line 4254
    iget-object v0, v0, Lcom/android/settings/applications/appops/a$a;->b:Landroid/content/pm/ApplicationInfo;

    .line 342
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 340
    invoke-virtual {p3, p2, p5, v0, p4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 4377
    iput p4, p1, Lcom/android/settings/applications/appops/a$b;->d:I

    :cond_1
    return-void
.end method

.method public synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p2, Ljava/util/List;

    .line 5359
    iget-object p1, p0, Lcom/android/settings/applications/appops/AppOpsCategory;->b:Lcom/android/settings/applications/appops/AppOpsCategory$a;

    invoke-virtual {p1, p2}, Lcom/android/settings/applications/appops/AppOpsCategory$a;->a(Ljava/util/List;)V

    .line 5362
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory;->isResumed()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 5363
    invoke-virtual {p0, p2}, Lcom/android/settings/applications/appops/AppOpsCategory;->setListShown(Z)V

    return-void

    .line 5365
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/settings/applications/appops/AppOpsCategory;->setListShownNoAnimation(Z)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/a$b;",
            ">;>;)V"
        }
    .end annotation

    .line 371
    iget-object p1, p0, Lcom/android/settings/applications/appops/AppOpsCategory;->b:Lcom/android/settings/applications/appops/AppOpsCategory$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/appops/AppOpsCategory$a;->a(Ljava/util/List;)V

    return-void
.end method
