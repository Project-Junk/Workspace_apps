.class final Lcom/android/settings/print/PrintSettingsFragment$b;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "PrintSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/AsyncTaskLoader<",
        "Ljava/util/List<",
        "Landroid/print/PrintJobInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/print/PrintManager;

.field private c:Landroid/print/PrintManager$PrintJobStateChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 412
    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$b;->a:Ljava/util/List;

    const-string v0, "print"

    .line 413
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    .line 415
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    .line 414
    invoke-virtual {v0, p1}, Landroid/print/PrintManager;->getGlobalPrintManagerForUser(I)Landroid/print/PrintManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$b;->b:Landroid/print/PrintManager;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/print/PrintSettingsFragment$b;)V
    .locals 0

    .line 399
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment$b;->onForceLoad()V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;)V"
        }
    .end annotation

    .line 420
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment$b;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    invoke-super {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .line 399
    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/settings/print/PrintSettingsFragment$b;->a(Ljava/util/List;)V

    return-void
.end method

.method public final synthetic loadInBackground()Ljava/lang/Object;
    .locals 6

    .line 1480
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$b;->b:Landroid/print/PrintManager;

    invoke-virtual {v0}, Landroid/print/PrintManager;->getPrintJobs()Ljava/util/List;

    move-result-object v0

    .line 1481
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 1483
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrintJob;

    invoke-virtual {v4}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v4

    .line 1484
    invoke-static {v4}, Lcom/android/settings/print/PrintSettingPreferenceController;->shouldShowToUser(Landroid/print/PrintJobInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v2, :cond_0

    .line 1486
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1488
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public final onReset()V
    .locals 2

    .line 466
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment$b;->onStopLoading()V

    .line 468
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 470
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$b;->c:Landroid/print/PrintManager$PrintJobStateChangeListener;

    if-eqz v0, :cond_0

    .line 471
    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$b;->b:Landroid/print/PrintManager;

    invoke-virtual {v1, v0}, Landroid/print/PrintManager;->removePrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    const/4 v0, 0x0

    .line 473
    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$b;->c:Landroid/print/PrintManager$PrintJobStateChangeListener;

    :cond_0
    return-void
.end method

.method public final onStartLoading()V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$b;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/android/settings/print/PrintSettingsFragment$b;->a(Ljava/util/List;)V

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$b;->c:Landroid/print/PrintManager$PrintJobStateChangeListener;

    if-nez v0, :cond_1

    .line 436
    new-instance v0, Lcom/android/settings/print/PrintSettingsFragment$b$1;

    invoke-direct {v0, p0}, Lcom/android/settings/print/PrintSettingsFragment$b$1;-><init>(Lcom/android/settings/print/PrintSettingsFragment$b;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$b;->c:Landroid/print/PrintManager$PrintJobStateChangeListener;

    .line 442
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$b;->b:Landroid/print/PrintManager;

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$b;->c:Landroid/print/PrintManager$PrintJobStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->addPrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 447
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment$b;->onForceLoad()V

    :cond_2
    return-void
.end method

.method public final onStopLoading()V
    .locals 0

    .line 457
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment$b;->onCancelLoad()Z

    return-void
.end method
