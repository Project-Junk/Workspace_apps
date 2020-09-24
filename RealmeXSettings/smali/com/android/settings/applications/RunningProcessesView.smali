.class public Lcom/android/settings/applications/RunningProcessesView;
.super Landroid/widget/FrameLayout;
.source "RunningProcessesView.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/settings/applications/y$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/RunningProcessesView$b;,
        Lcom/android/settings/applications/RunningProcessesView$c;,
        Lcom/android/settings/applications/RunningProcessesView$a;
    }
.end annotation


# instance fields
.field final a:I

.field protected b:J

.field final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lcom/android/settings/applications/RunningProcessesView$a;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Landroid/app/ActivityManager;

.field protected e:Lcom/android/settings/applications/y;

.field f:Lcom/android/settings/SettingsPreferenceFragment;

.field g:Ljava/lang/Runnable;

.field h:Ljava/lang/StringBuilder;

.field i:Lcom/android/settings/applications/y$c;

.field protected j:Landroid/widget/ListView;

.field protected k:Landroid/view/View;

.field public l:Lcom/android/settings/applications/RunningProcessesView$b;

.field m:Landroid/widget/ProgressBar;

.field protected n:Landroid/widget/TextView;

.field protected o:Landroid/widget/TextView;

.field protected p:Landroid/widget/TextView;

.field protected q:Landroid/widget/TextView;

.field protected r:Landroid/widget/TextView;

.field protected s:Landroid/widget/TextView;

.field t:J

.field u:J

.field v:J

.field w:J

.field x:Z

.field y:Lcom/android/internal/util/MemInfoReader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 440
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/RunningProcessesView;->c:Ljava/util/HashMap;

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x80

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p1, p0, Lcom/android/settings/applications/RunningProcessesView;->h:Ljava/lang/StringBuilder;

    const-wide/16 p1, -0x1

    .line 89
    iput-wide p1, p0, Lcom/android/settings/applications/RunningProcessesView;->t:J

    .line 90
    iput-wide p1, p0, Lcom/android/settings/applications/RunningProcessesView;->u:J

    .line 91
    iput-wide p1, p0, Lcom/android/settings/applications/RunningProcessesView;->v:J

    .line 92
    iput-wide p1, p0, Lcom/android/settings/applications/RunningProcessesView;->w:J

    const/4 p1, 0x0

    .line 93
    iput-boolean p1, p0, Lcom/android/settings/applications/RunningProcessesView;->x:Z

    .line 97
    new-instance p1, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {p1}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/RunningProcessesView;->y:Lcom/android/internal/util/MemInfoReader;

    .line 441
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/applications/RunningProcessesView;->a:I

    return-void
.end method

.method private c()V
    .locals 4

    .line 502
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 503
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 504
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningProcessesView$a;

    .line 505
    iget-object v2, v1, Lcom/android/settings/applications/RunningProcessesView$a;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 507
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 510
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/RunningProcessesView$a;->a(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 445
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->d:Landroid/app/ActivityManager;

    .line 446
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/y;->a(Landroid/content/Context;)Lcom/android/settings/applications/y;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->e:Lcom/android/settings/applications/y;

    .line 447
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d02b0

    .line 449
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v1, 0x102000a

    .line 450
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->j:Landroid/widget/ListView;

    const-string v1, "com.android.internal.R.id.empty"

    .line 451
    invoke-static {v1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 453
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView;->j:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->j:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 456
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->j:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 457
    new-instance v1, Lcom/android/settings/applications/RunningProcessesView$b;

    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView;->e:Lcom/android/settings/applications/y;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/applications/RunningProcessesView$b;-><init>(Lcom/android/settings/applications/RunningProcessesView;Lcom/android/settings/applications/y;)V

    iput-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->l:Lcom/android/settings/applications/RunningProcessesView$b;

    .line 458
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->j:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView;->l:Lcom/android/settings/applications/RunningProcessesView$b;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v1, 0x7f0d02ae

    const/4 v2, 0x0

    .line 459
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->k:Landroid/view/View;

    .line 460
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->k:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 461
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->k:Landroid/view/View;

    const v1, 0x7f0a015c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->m:Landroid/widget/ProgressBar;

    .line 462
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 463
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->m:Landroid/widget/ProgressBar;

    const v2, 0x7f0602ea

    .line 464
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 463
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 465
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->m:Landroid/widget/ProgressBar;

    invoke-static {v0}, Lcom/android/settings/m;->o(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 466
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->m:Landroid/widget/ProgressBar;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setSecondaryProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 467
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->m:Landroid/widget/ProgressBar;

    const v2, 0x7f0602e9

    .line 468
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 467
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 469
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->m:Landroid/widget/ProgressBar;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 470
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->k:Landroid/view/View;

    const v1, 0x7f0a02c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->n:Landroid/widget/TextView;

    .line 471
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->k:Landroid/view/View;

    const v1, 0x7f0a00b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->o:Landroid/widget/TextView;

    .line 472
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->k:Landroid/view/View;

    const v1, 0x7f0a06c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->p:Landroid/widget/TextView;

    .line 473
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->k:Landroid/view/View;

    const v1, 0x7f0a02c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->q:Landroid/widget/TextView;

    .line 474
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->k:Landroid/view/View;

    const v1, 0x7f0a00b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->r:Landroid/widget/TextView;

    .line 475
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->k:Landroid/view/View;

    const v1, 0x7f0a06c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->s:Landroid/widget/TextView;

    .line 477
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 478
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->d:Landroid/app/ActivityManager;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 479
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    iput-wide v0, p0, Lcom/android/settings/applications/RunningProcessesView;->b:J

    return-void
.end method

.method public final a(I)V
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 525
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningProcessesView;->a(Z)V

    .line 526
    invoke-direct {p0}, Lcom/android/settings/applications/RunningProcessesView;->c()V

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 521
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/RunningProcessesView;->a(Z)V

    .line 522
    invoke-direct {p0}, Lcom/android/settings/applications/RunningProcessesView;->c()V

    return-void

    .line 518
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/applications/RunningProcessesView;->c()V

    return-void
.end method

.method protected a(IJJJJ)V
    .locals 0

    .line 534
    iget-object p2, p0, Lcom/android/settings/applications/RunningProcessesView;->m:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 535
    iget-object p2, p0, Lcom/android/settings/applications/RunningProcessesView;->m:Landroid/widget/ProgressBar;

    long-to-float p3, p4

    long-to-float p4, p8

    div-float/2addr p3, p4

    const/high16 p4, 0x42c80000    # 100.0f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    add-int/2addr p1, p3

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    return-void
.end method

.method protected a(Landroid/view/View;II)V
    .locals 0

    return-void
.end method

.method final a(Z)V
    .locals 17

    move-object/from16 v11, p0

    if-eqz p1, :cond_0

    .line 325
    iget-object v0, v11, Lcom/android/settings/applications/RunningProcessesView;->l:Lcom/android/settings/applications/RunningProcessesView$b;

    .line 326
    invoke-virtual {v0}, Lcom/android/settings/applications/RunningProcessesView$b;->a()V

    .line 327
    invoke-virtual {v0}, Lcom/android/settings/applications/RunningProcessesView$b;->notifyDataSetChanged()V

    .line 330
    :cond_0
    iget-object v0, v11, Lcom/android/settings/applications/RunningProcessesView;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 331
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 332
    iput-object v0, v11, Lcom/android/settings/applications/RunningProcessesView;->g:Ljava/lang/Runnable;

    .line 335
    :cond_1
    iget-object v0, v11, Lcom/android/settings/applications/RunningProcessesView;->y:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 347
    iget-object v0, v11, Lcom/android/settings/applications/RunningProcessesView;->e:Lcom/android/settings/applications/y;

    iget-object v12, v0, Lcom/android/settings/applications/y;->w:Ljava/lang/Object;

    monitor-enter v12

    .line 348
    :try_start_0
    iget-boolean v0, v11, Lcom/android/settings/applications/RunningProcessesView;->x:Z

    iget-object v1, v11, Lcom/android/settings/applications/RunningProcessesView;->l:Lcom/android/settings/applications/RunningProcessesView$b;

    iget-boolean v1, v1, Lcom/android/settings/applications/RunningProcessesView$b;->c:Z

    if-eq v0, v1, :cond_3

    .line 349
    iget-object v0, v11, Lcom/android/settings/applications/RunningProcessesView;->l:Lcom/android/settings/applications/RunningProcessesView$b;

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningProcessesView$b;->c:Z

    iput-boolean v0, v11, Lcom/android/settings/applications/RunningProcessesView;->x:Z

    .line 350
    iget-boolean v0, v11, Lcom/android/settings/applications/RunningProcessesView;->x:Z

    if-eqz v0, :cond_2

    .line 351
    iget-object v0, v11, Lcom/android/settings/applications/RunningProcessesView;->p:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1212b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v0, v11, Lcom/android/settings/applications/RunningProcessesView;->o:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1212a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 356
    :cond_2
    iget-object v0, v11, Lcom/android/settings/applications/RunningProcessesView;->p:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1212ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v0, v11, Lcom/android/settings/applications/RunningProcessesView;->o:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1212a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    :cond_3
    :goto_0
    iget-object v0, v11, Lcom/android/settings/applications/RunningProcessesView;->y:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v9

    .line 366
    iget-boolean v0, v11, Lcom/android/settings/applications/RunningProcessesView;->x:Z

    if-eqz v0, :cond_4

    .line 367
    iget-object v0, v11, Lcom/android/settings/applications/RunningProcessesView;->y:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v0

    iget-object v2, v11, Lcom/android/settings/applications/RunningProcessesView;->y:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 368
    iget-object v2, v11, Lcom/android/settings/applications/RunningProcessesView;->e:Lcom/android/settings/applications/y;

    iget-wide v2, v2, Lcom/android/settings/applications/y;->F:J

    :goto_1
    move-wide v7, v0

    move-wide v5, v2

    goto :goto_2

    .line 370
    :cond_4
    iget-object v0, v11, Lcom/android/settings/applications/RunningProcessesView;->y:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v0

    iget-object v2, v11, Lcom/android/settings/applications/RunningProcessesView;->y:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, v11, Lcom/android/settings/applications/RunningProcessesView;->e:Lcom/android/settings/applications/y;

    iget-wide v2, v2, Lcom/android/settings/applications/y;->F:J

    add-long/2addr v0, v2

    .line 372
    iget-object v2, v11, Lcom/android/settings/applications/RunningProcessesView;->e:Lcom/android/settings/applications/y;

    iget-wide v2, v2, Lcom/android/settings/applications/y;->J:J

    goto :goto_1

    :goto_2
    sub-long v0, v9, v5

    sub-long v3, v0, v7

    .line 377
    iget-wide v0, v11, Lcom/android/settings/applications/RunningProcessesView;->t:J

    cmp-long v0, v0, v9

    if-nez v0, :cond_5

    iget-wide v0, v11, Lcom/android/settings/applications/RunningProcessesView;->u:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_5

    iget-wide v0, v11, Lcom/android/settings/applications/RunningProcessesView;->v:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_5

    iget-wide v0, v11, Lcom/android/settings/applications/RunningProcessesView;->w:J

    cmp-long v0, v0, v7

    if-eqz v0, :cond_6

    .line 379
    :cond_5
    iput-wide v9, v11, Lcom/android/settings/applications/RunningProcessesView;->t:J

    .line 380
    iput-wide v3, v11, Lcom/android/settings/applications/RunningProcessesView;->u:J

    .line 381
    iput-wide v5, v11, Lcom/android/settings/applications/RunningProcessesView;->v:J

    .line 382
    iput-wide v7, v11, Lcom/android/settings/applications/RunningProcessesView;->w:J

    .line 383
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7, v8}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 384
    invoke-virtual {v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 386
    iget-object v2, v11, Lcom/android/settings/applications/RunningProcessesView;->q:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v1, v15, v16

    const v1, 0x7f1212ad

    invoke-virtual {v13, v1, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v6}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 388
    invoke-virtual {v0, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 390
    iget-object v13, v11, Lcom/android/settings/applications/RunningProcessesView;->r:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    new-array v1, v14, [Ljava/lang/Object;

    aput-object v2, v1, v16

    const v2, 0x7f1212ad

    invoke-virtual {v15, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v4}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-virtual {v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    iget-object v1, v11, Lcom/android/settings/applications/RunningProcessesView;->s:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v13, v14, [Ljava/lang/Object;

    aput-object v0, v13, v16

    const v0, 0x7f1212ad

    invoke-virtual {v2, v0, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    long-to-float v0, v3

    long-to-float v1, v9

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v2, v0

    move-object/from16 v1, p0

    .line 398
    invoke-virtual/range {v1 .. v10}, Lcom/android/settings/applications/RunningProcessesView;->a(IJJJJ)V

    .line 401
    :cond_6
    monitor-exit v12

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/android/settings/SettingsPreferenceFragment;Ljava/lang/Runnable;)Z
    .locals 0

    .line 489
    iput-object p1, p0, Lcom/android/settings/applications/RunningProcessesView;->f:Lcom/android/settings/SettingsPreferenceFragment;

    .line 490
    iget-object p1, p0, Lcom/android/settings/applications/RunningProcessesView;->e:Lcom/android/settings/applications/y;

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/y;->a(Lcom/android/settings/applications/y$e;)V

    .line 491
    iget-object p1, p0, Lcom/android/settings/applications/RunningProcessesView;->e:Lcom/android/settings/applications/y;

    invoke-virtual {p1}, Lcom/android/settings/applications/y;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 494
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/RunningProcessesView;->a(Z)V

    return p1

    .line 497
    :cond_0
    iput-object p2, p0, Lcom/android/settings/applications/RunningProcessesView;->g:Ljava/lang/Runnable;

    const/4 p1, 0x0

    return p1
.end method

.method public final b()V
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->e:Lcom/android/settings/applications/y;

    invoke-virtual {v0}, Lcom/android/settings/applications/y;->d()V

    const/4 v0, 0x0

    .line 484
    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->g:Ljava/lang/Runnable;

    .line 485
    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->f:Lcom/android/settings/SettingsPreferenceFragment;

    return-void
.end method

.method protected getRunningItemLayoutRedID()I
    .locals 1

    const v0, 0x7f0d02af

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 405
    check-cast p1, Landroid/widget/ListView;

    .line 406
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/y$d;

    .line 407
    iput-object p1, p0, Lcom/android/settings/applications/RunningProcessesView;->i:Lcom/android/settings/applications/y$c;

    .line 1413
    iget-object p2, p0, Lcom/android/settings/applications/RunningProcessesView;->f:Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 1415
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1416
    iget-object p3, p1, Lcom/android/settings/applications/y$d;->n:Lcom/android/settings/applications/y$f;

    if-eqz p3, :cond_0

    .line 1417
    iget-object p3, p1, Lcom/android/settings/applications/y$d;->n:Lcom/android/settings/applications/y$f;

    iget p3, p3, Lcom/android/settings/applications/y$f;->p:I

    const-string/jumbo p4, "uid"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1418
    iget-object p3, p1, Lcom/android/settings/applications/y$d;->n:Lcom/android/settings/applications/y$f;

    iget-object p3, p3, Lcom/android/settings/applications/y$f;->q:Ljava/lang/String;

    const-string p4, "process"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    :cond_0
    iget p3, p1, Lcom/android/settings/applications/y$d;->b:I

    const-string/jumbo p4, "user_id"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1421
    iget-object p3, p0, Lcom/android/settings/applications/RunningProcessesView;->l:Lcom/android/settings/applications/RunningProcessesView$b;

    iget-boolean p3, p3, Lcom/android/settings/applications/RunningProcessesView$b;->c:Z

    const-string p4, "background"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1423
    new-instance p3, Lcom/android/settings/core/f;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class p4, Lcom/android/settings/applications/RunningServiceDetails;

    .line 1424
    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p3

    .line 1425
    invoke-virtual {p3, p2}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p2

    iget-object p1, p1, Lcom/android/settings/applications/y$d;->d:Ljava/lang/CharSequence;

    .line 1428
    invoke-virtual {p2, p1}, Lcom/android/settings/core/f;->a(Ljava/lang/CharSequence;)Lcom/android/settings/core/f;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/applications/RunningProcessesView;->f:Lcom/android/settings/SettingsPreferenceFragment;

    .line 1430
    invoke-virtual {p2}, Lcom/android/settings/SettingsPreferenceFragment;->getMetricsCategory()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 1431
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    :cond_1
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
