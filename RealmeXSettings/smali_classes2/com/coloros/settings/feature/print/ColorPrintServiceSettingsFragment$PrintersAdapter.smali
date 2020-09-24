.class public final Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ColorPrintServiceSettingsFragment.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PrintersAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/print/PrintServiceSettingsFragment$ViewHolder;",
        ">;",
        "Landroid/widget/Filterable;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Landroid/print/PrinterInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 295
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->b:Ljava/lang/Object;

    .line 297
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->c:Ljava/util/List;

    .line 299
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->d:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->e:Ljava/lang/CharSequence;

    return-object p1
.end method

.method private a(I)Ljava/lang/Object;
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 374
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 375
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;)Ljava/lang/Object;
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->b:Ljava/lang/Object;

    return-object p0
.end method

.method private synthetic a(ILandroid/view/View;)V
    .locals 6

    .line 458
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrinterInfo;

    .line 460
    invoke-virtual {p1}, Landroid/print/PrinterInfo;->getInfoIntent()Landroid/app/PendingIntent;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 462
    :try_start_0
    iget-object p2, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;

    invoke-virtual {p2}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Landroid/print/PrinterInfo;->getInfoIntent()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/FragmentActivity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "ColorPrintServiceSettingsFragment"

    const-string v0, "Could not execute info intent: %s"

    .line 465
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;)Ljava/util/List;
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->c:Ljava/util/List;

    return-object p0
.end method

.method private b(I)Z
    .locals 1

    .line 390
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrinterInfo;

    .line 391
    invoke-virtual {p1}, Landroid/print/PrinterInfo;->getStatus()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic c(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;)Ljava/util/List;
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->d:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic lambda$G6AIHm2-ME1sFEGkTQWSoi1ZgIc(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->a(ILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    .line 316
    iget-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 317
    iget-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->a(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;)Lcom/coloros/settings/feature/print/ProgressCategory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/feature/print/ProgressCategory;->removeAll()V

    return-void
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 1

    .line 322
    new-instance v0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter$1;-><init>(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;)V

    return-object v0
.end method

.method public final getItemCount()I
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 369
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 292
    check-cast p1, Lcom/android/settings/print/PrintServiceSettingsFragment$ViewHolder;

    .line 1404
    iget-object v0, p1, Lcom/android/settings/print/PrintServiceSettingsFragment$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->b(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1406
    invoke-direct {p0, p2}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterInfo;

    .line 1407
    invoke-virtual {v0}, Landroid/print/PrinterInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1408
    invoke-virtual {v0}, Landroid/print/PrinterInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 1409
    iget-object v3, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;

    invoke-virtual {v3}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/print/PrinterInfo;->loadIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1411
    iget-object v4, p1, Lcom/android/settings/print/PrintServiceSettingsFragment$ViewHolder;->itemView:Landroid/view/View;

    const v5, 0x7f0a06f9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1412
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1414
    iget-object v1, p1, Lcom/android/settings/print/PrintServiceSettingsFragment$ViewHolder;->itemView:Landroid/view/View;

    const v4, 0x7f0a0668

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1415
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-nez v4, :cond_0

    .line 1416
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1417
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1419
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1420
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1423
    :goto_0
    iget-object v1, p1, Lcom/android/settings/print/PrintServiceSettingsFragment$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a0403

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1424
    invoke-virtual {v0}, Landroid/print/PrinterInfo;->getInfoIntent()Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1425
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1426
    new-instance v2, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter$2;

    invoke-direct {v2, p0, v0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter$2;-><init>(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;Landroid/print/PrinterInfo;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 1438
    :cond_1
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1441
    :goto_1
    iget-object v0, p1, Lcom/android/settings/print/PrintServiceSettingsFragment$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a030f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    .line 1443
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1444
    invoke-direct {p0, p2}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->b(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1445
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1447
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1448
    iget-object v2, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;

    invoke-virtual {v2}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v4, 0x1010033

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1450
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1452
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1454
    :cond_3
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1457
    :goto_2
    iget-object p1, p1, Lcom/android/settings/print/PrintServiceSettingsFragment$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/coloros/settings/feature/print/-$$Lambda$ColorPrintServiceSettingsFragment$PrintersAdapter$G6AIHm2-ME1sFEGkTQWSoi1ZgIc;

    invoke-direct {v0, p0, p2}, Lcom/coloros/settings/feature/print/-$$Lambda$ColorPrintServiceSettingsFragment$PrintersAdapter$G6AIHm2-ME1sFEGkTQWSoi1ZgIc;-><init>(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Landroid/print/PrinterInfo;",
            ">;>;"
        }
    .end annotation

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 474
    new-instance p1, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$a;

    iget-object p2, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;

    invoke-virtual {p2}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$a;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2397
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d028a

    const/4 v1, 0x0

    .line 2398
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2399
    new-instance p2, Lcom/android/settings/print/PrintServiceSettingsFragment$ViewHolder;

    invoke-direct {p2, p1}, Lcom/android/settings/print/PrintServiceSettingsFragment$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 6

    .line 292
    check-cast p2, Ljava/util/List;

    .line 2482
    iget-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->b:Ljava/lang/Object;

    monitor-enter p1

    .line 2483
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2484
    iget-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->a(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;)Lcom/coloros/settings/feature/print/ProgressCategory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/feature/print/ProgressCategory;->removeAll()V

    .line 2485
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2487
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterInfo;

    .line 2488
    invoke-virtual {v2}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v3

    invoke-virtual {v3}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;

    invoke-static {v4}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->b(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2489
    iget-object v3, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2490
    new-instance v3, Lcom/coloros/settings/feature/print/PrinterInfoPreference;

    iget-object v4, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;

    invoke-virtual {v4}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/coloros/settings/feature/print/PrinterInfoPreference;-><init>(Landroid/content/Context;Landroid/print/PrinterInfo;)V

    .line 2491
    invoke-static {v2}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->a(Landroid/print/PrinterInfo;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/coloros/settings/feature/print/PrinterInfoPreference;->setEnabled(Z)V

    .line 2492
    iget-object v4, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;

    invoke-static {v4}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->a(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;)Lcom/coloros/settings/feature/print/ProgressCategory;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/coloros/settings/feature/print/ProgressCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 2493
    iget-object v4, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;

    invoke-static {v4}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->c(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;)I

    move-result v4

    const/16 v5, 0x2ee0

    if-le v4, v5, :cond_0

    .line 2494
    iget-object v4, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;

    invoke-static {v4}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->d(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;)V

    .line 2496
    :cond_0
    new-instance v4, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter$3;

    invoke-direct {v4, p0, v2}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter$3;-><init>(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;Landroid/print/PrinterInfo;)V

    invoke-virtual {v3, v4}, Lcom/coloros/settings/feature/print/PrinterInfoPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2510
    :cond_2
    iget-object p2, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;

    invoke-virtual {p2}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 2511
    iget-object p2, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 2512
    iget-object p2, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->c:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2513
    iget-object p2, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->e:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 2514
    invoke-virtual {p0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p2

    iget-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->e:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 2516
    :cond_3
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Landroid/print/PrinterInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 521
    iget-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->b:Ljava/lang/Object;

    monitor-enter p1

    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 523
    iget-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 524
    iput-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->e:Ljava/lang/CharSequence;

    .line 525
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    invoke-virtual {p0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->notifyDataSetChanged()V

    return-void

    :catchall_0
    move-exception v0

    .line 525
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
