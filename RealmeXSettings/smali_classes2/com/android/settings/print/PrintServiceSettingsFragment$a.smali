.class final Lcom/android/settings/print/PrintServiceSettingsFragment$a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintServiceSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
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
.field final synthetic a:Lcom/android/settings/print/PrintServiceSettingsFragment;

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
.method private constructor <init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->a:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 420
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->b:Ljava/lang/Object;

    .line 422
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->c:Ljava/util/List;

    .line 424
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->d:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/print/PrintServiceSettingsFragment;B)V
    .locals 0

    .line 417
    invoke-direct {p0, p1}, Lcom/android/settings/print/PrintServiceSettingsFragment$a;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/print/PrintServiceSettingsFragment$a;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->e:Ljava/lang/CharSequence;

    return-object p1
.end method

.method private a(I)Ljava/lang/Object;
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 495
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 496
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/android/settings/print/PrintServiceSettingsFragment$a;)Ljava/lang/Object;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->b:Ljava/lang/Object;

    return-object p0
.end method

.method private synthetic a(ILandroid/view/View;)V
    .locals 6

    .line 579
    invoke-direct {p0, p1}, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrinterInfo;

    .line 581
    invoke-virtual {p1}, Landroid/print/PrinterInfo;->getInfoIntent()Landroid/app/PendingIntent;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 583
    :try_start_0
    iget-object p2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->a:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {p2}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

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

    const-string p2, "PrintServiceSettings"

    const-string v0, "Could not execute info intent: %s"

    .line 586
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/android/settings/print/PrintServiceSettingsFragment$a;)Ljava/util/List;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->c:Ljava/util/List;

    return-object p0
.end method

.method private b(I)Z
    .locals 1

    .line 511
    invoke-direct {p0, p1}, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrinterInfo;

    .line 512
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

.method static synthetic c(Lcom/android/settings/print/PrintServiceSettingsFragment$a;)Ljava/util/List;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->d:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic lambda$ReLhxRk2owoidBmqJAGQu53yGCQ(Lcom/android/settings/print/PrintServiceSettingsFragment$a;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->a(ILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 429
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->a:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public final b()V
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->a:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    .line 434
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final c()I
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 1

    .line 443
    new-instance v0, Lcom/android/settings/print/PrintServiceSettingsFragment$a$1;

    invoke-direct {v0, p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$a$1;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment$a;)V

    return-object v0
.end method

.method public final getItemCount()I
    .locals 2

    .line 488
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 489
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 490
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

    .line 417
    check-cast p1, Lcom/android/settings/print/PrintServiceSettingsFragment$ViewHolder;

    .line 1525
    iget-object v0, p1, Lcom/android/settings/print/PrintServiceSettingsFragment$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->b(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1527
    invoke-direct {p0, p2}, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterInfo;

    .line 1528
    invoke-virtual {v0}, Landroid/print/PrinterInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1529
    invoke-virtual {v0}, Landroid/print/PrinterInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 1530
    iget-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->a:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v3}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/print/PrinterInfo;->loadIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1532
    iget-object v4, p1, Lcom/android/settings/print/PrintServiceSettingsFragment$ViewHolder;->itemView:Landroid/view/View;

    const v5, 0x7f0a06f9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1533
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1535
    iget-object v1, p1, Lcom/android/settings/print/PrintServiceSettingsFragment$ViewHolder;->itemView:Landroid/view/View;

    const v4, 0x7f0a0668

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1536
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-nez v4, :cond_0

    .line 1537
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1538
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1540
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1541
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1544
    :goto_0
    iget-object v1, p1, Lcom/android/settings/print/PrintServiceSettingsFragment$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a0403

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1545
    invoke-virtual {v0}, Landroid/print/PrinterInfo;->getInfoIntent()Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1546
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1547
    new-instance v2, Lcom/android/settings/print/PrintServiceSettingsFragment$a$2;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/print/PrintServiceSettingsFragment$a$2;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment$a;Landroid/print/PrinterInfo;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 1559
    :cond_1
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1562
    :goto_1
    iget-object v0, p1, Lcom/android/settings/print/PrintServiceSettingsFragment$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a030f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    .line 1564
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1565
    invoke-direct {p0, p2}, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->b(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1566
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1568
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1569
    iget-object v2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->a:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v2}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v4, 0x1010033

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1571
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1573
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1575
    :cond_3
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1578
    :goto_2
    iget-object p1, p1, Lcom/android/settings/print/PrintServiceSettingsFragment$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/android/settings/print/-$$Lambda$PrintServiceSettingsFragment$a$ReLhxRk2owoidBmqJAGQu53yGCQ;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/print/-$$Lambda$PrintServiceSettingsFragment$a$ReLhxRk2owoidBmqJAGQu53yGCQ;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment$a;I)V

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

    .line 595
    new-instance p1, Lcom/android/settings/print/PrintServiceSettingsFragment$b;

    iget-object p2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->a:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {p2}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settings/print/PrintServiceSettingsFragment$b;-><init>(Landroid/content/Context;)V

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

    .line 2518
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d028a

    const/4 v1, 0x0

    .line 2519
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2520
    new-instance p2, Lcom/android/settings/print/PrintServiceSettingsFragment$ViewHolder;

    invoke-direct {p2, p1}, Lcom/android/settings/print/PrintServiceSettingsFragment$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 5

    .line 417
    check-cast p2, Ljava/util/List;

    .line 2603
    iget-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->b:Ljava/lang/Object;

    monitor-enter p1

    .line 2604
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2605
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2607
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterInfo;

    .line 2608
    invoke-virtual {v2}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v3

    invoke-virtual {v3}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->a:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {v4}, Lcom/android/settings/print/PrintServiceSettingsFragment;->d(Lcom/android/settings/print/PrintServiceSettingsFragment;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2609
    iget-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2612
    :cond_1
    iget-object p2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 2613
    iget-object p2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->c:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2614
    iget-object p2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->e:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 2615
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->getFilter()Landroid/widget/Filter;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->e:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 2617
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2618
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->notifyDataSetChanged()V

    return-void

    :catchall_0
    move-exception p2

    .line 2617
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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

    .line 623
    iget-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->b:Ljava/lang/Object;

    monitor-enter p1

    .line 624
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 625
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 626
    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->e:Ljava/lang/CharSequence;

    .line 627
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$a;->notifyDataSetChanged()V

    return-void

    :catchall_0
    move-exception v0

    .line 627
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
