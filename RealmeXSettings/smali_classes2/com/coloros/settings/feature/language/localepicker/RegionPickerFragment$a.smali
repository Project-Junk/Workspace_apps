.class final Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment$a;
.super Landroid/os/AsyncTask;
.source "RegionPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/util/List<",
        "Lcom/coloros/settings/feature/language/region/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;


# direct methods
.method private constructor <init>(Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment$a;->a:Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;B)V
    .locals 0

    .line 402
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment$a;-><init>(Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2407
    iget-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment$a;->a:Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->a(Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2408
    iget-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment$a;->a:Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;

    iget-object v0, p1, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->e:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->b(Landroid/content/Context;)V

    .line 2409
    iget-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment$a;->a:Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;

    iget-object p1, p1, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/utils/bd;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2410
    iget-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment$a;->a:Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->b(Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;)Z

    .line 2413
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment$a;->a:Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;

    iget-object p1, p1, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/feature/language/region/e;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 2414
    invoke-static {p1}, Lcom/coloros/settings/feature/language/region/e;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .line 402
    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1420
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1421
    invoke-static {}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->f()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1422
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->a(Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 1424
    :cond_0
    invoke-static {}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1425
    invoke-static {}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    const-string v1, "persist.sys.oppo.region"

    const-string v2, "CN"

    .line 1427
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1428
    iget-object v2, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment$a;->a:Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;

    invoke-static {v2}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->c(Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    move v2, v0

    .line 1429
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1430
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/settings/feature/language/region/d;

    if-eqz v3, :cond_2

    .line 2051
    iget-object v4, v3, Lcom/coloros/settings/feature/language/region/d;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1433
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2126
    :cond_1
    iget-boolean v4, v3, Lcom/coloros/settings/feature/language/region/d;->g:Z

    if-eqz v4, :cond_2

    .line 1437
    iget-object v4, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment$a;->a:Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;

    invoke-static {v4}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->c(Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const-string v1, "RegionPickerFragment"

    const-string v2, "region list is empty."

    .line 1442
    invoke-static {v1, v2}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    :cond_4
    iget-object v1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment$a;->a:Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;

    invoke-static {v1}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->d(Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment$a;->a:Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;

    invoke-static {v1}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->c(Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1445
    iget-object v1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment$a;->a:Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;

    invoke-static {v1}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->d(Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f120e6c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1447
    :cond_5
    iget-object v1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment$a;->a:Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->e()Lcom/coloros/settings/feature/language/localepicker/a;

    move-result-object v2

    iput-object v2, v1, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->b:Lcom/coloros/settings/feature/language/localepicker/a;

    .line 1448
    iget-object v1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment$a;->a:Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;

    iget-object v2, v1, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->b:Lcom/coloros/settings/feature/language/localepicker/a;

    invoke-virtual {v1, v2}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1450
    iget-object v1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment$a;->a:Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;

    invoke-static {v1}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->a(Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1451
    iget-object v1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment$a;->a:Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 1452
    instance-of v1, v1, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;

    if-eqz v1, :cond_6

    .line 1453
    iget-object v1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment$a;->a:Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/settings/utils/x;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1454
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "other"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1455
    iget-object v1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment$a;->a:Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;

    invoke-virtual {v1, v0}, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;->a(Z)V

    .line 1459
    :cond_6
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
