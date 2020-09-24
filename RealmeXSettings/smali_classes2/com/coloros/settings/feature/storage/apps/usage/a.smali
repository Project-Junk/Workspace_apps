.class public final Lcom/coloros/settings/feature/storage/apps/usage/a;
.super Ljava/lang/Object;
.source "AppStorageUsageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/storage/apps/usage/a$a;,
        Lcom/coloros/settings/feature/storage/apps/usage/a$b;,
        Lcom/coloros/settings/feature/storage/apps/usage/a$c;,
        Lcom/coloros/settings/feature/storage/apps/usage/a$e;,
        Lcom/coloros/settings/feature/storage/apps/usage/a$d;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field public a:Ljava/util/concurrent/ExecutorService;

.field public b:Lcom/coloros/settings/feature/storage/apps/usage/a$a;

.field public c:Lcom/coloros/settings/feature/storage/apps/usage/a/a;

.field public volatile d:Z

.field public volatile e:Z

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/coloros/settings/feature/storage/apps/usage/b;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/concurrent/atomic/AtomicInteger;

.field private p:Ljava/lang/Object;

.field private q:Ljava/lang/Object;

.field private r:Landroid/content/pm/PackageManager;

.field private s:Landroid/content/Context;

.field private t:Landroid/os/Handler;

.field private u:I

.field private v:I

.field private w:I

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/storage/apps/usage/a;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->g:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->h:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->i:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->m:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->n:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->p:Ljava/lang/Object;

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->q:Ljava/lang/Object;

    .line 94
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->s:Landroid/content/Context;

    .line 95
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->s:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->r:Landroid/content/pm/PackageManager;

    .line 96
    new-instance v0, Lcom/coloros/settings/feature/storage/apps/usage/a/a;

    invoke-direct {v0, p1}, Lcom/coloros/settings/feature/storage/apps/usage/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->c:Lcom/coloros/settings/feature/storage/apps/usage/a/a;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->k:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->x:Z

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->t:Landroid/os/Handler;

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070323

    .line 102
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->u:I

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070322

    .line 104
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->v:I

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/storage/apps/usage/a;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->w:I

    return p1
.end method

.method static synthetic a(Lcom/coloros/settings/feature/storage/apps/usage/a;Ljava/io/File;)J
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/apps/usage/a;->a(Ljava/io/File;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/storage/apps/usage/a;Ljava/io/File;Ljava/lang/String;)J
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/storage/apps/usage/a;->a(Ljava/io/File;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method private a(Ljava/io/File;)J
    .locals 6

    .line 440
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    .line 443
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    .line 444
    array-length v2, p1

    if-lez v2, :cond_1

    const/4 v2, 0x0

    .line 445
    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_1

    .line 446
    aget-object v4, p1, v2

    .line 447
    invoke-direct {p0, v4}, Lcom/coloros/settings/feature/storage/apps/usage/a;->a(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method private a(Ljava/io/File;Ljava/lang/String;)J
    .locals 7

    .line 511
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getBigFileFolderSize pkgName = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStorageUsageManager"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_7

    .line 512
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 516
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 517
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    return-wide p1

    .line 522
    :cond_1
    :try_start_0
    iget-boolean v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->d:Z

    if-eqz v2, :cond_2

    return-wide v0

    .line 525
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 526
    array-length v2, p1

    if-lez v2, :cond_5

    .line 527
    array-length v2, p1

    .line 528
    iget-object v3, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->h:Ljava/util/Map;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v3, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    iget-object v3, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->i:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-ge v5, v2, :cond_3

    .line 531
    aget-object v3, p1, v5

    .line 532
    iget-object v4, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/coloros/settings/feature/storage/apps/usage/a$b;

    invoke-direct {v6, p0, v3, p2}, Lcom/coloros/settings/feature/storage/apps/usage/a$b;-><init>(Lcom/coloros/settings/feature/storage/apps/usage/a;Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 534
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->q:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 535
    :try_start_1
    iget-object v3, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->h:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 536
    :catch_0
    :goto_1
    iget-boolean v4, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->d:Z

    if-nez v4, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v4, v2, :cond_4

    .line 538
    :try_start_2
    iget-object v4, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->q:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 543
    :cond_4
    :try_start_3
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 546
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "getFolderSize e="

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "AppStorageUsageManager"

    invoke-static {v2, p1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->i:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_6

    return-wide v0

    .line 550
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_7
    :goto_3
    return-wide v0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/storage/apps/usage/a;)Landroid/content/Context;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->s:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/storage/apps/usage/a;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->m:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/coloros/settings/feature/storage/apps/usage/a;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->j:Ljava/util/HashMap;

    return-object p1
.end method

.method private synthetic a(Lcom/coloros/settings/feature/storage/apps/usage/a$a;)V
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p1, v0}, Lcom/coloros/settings/feature/storage/apps/usage/a$a;->a(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/storage/apps/usage/a;Lcom/coloros/settings/feature/storage/apps/usage/b;)V
    .locals 4

    .line 2455
    iget-object v0, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2456
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "notifyListener appUsage = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStorageUsageManager"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2457
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 2458
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->b:Lcom/coloros/settings/feature/storage/apps/usage/a$a;

    .line 2459
    iget v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->w:I

    if-ne v0, v2, :cond_1

    if-eqz v1, :cond_0

    .line 2461
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->t:Landroid/os/Handler;

    new-instance v3, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$a$zTrgXRkoDL1fIrBuMEOqSk9dkwc;

    invoke-direct {v3, p0, v1}, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$a$zTrgXRkoDL1fIrBuMEOqSk9dkwc;-><init>(Lcom/coloros/settings/feature/storage/apps/usage/a;Lcom/coloros/settings/feature/storage/apps/usage/a$a;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v2, 0x0

    .line 2463
    iput-boolean v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->e:Z

    :cond_1
    if-eqz v1, :cond_2

    .line 2466
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->t:Landroid/os/Handler;

    new-instance v3, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$a$FfOkU4SPc8Rg78T-ngIX8Q3XFk4;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$a$FfOkU4SPc8Rg78T-ngIX8Q3XFk4;-><init>(Lcom/coloros/settings/feature/storage/apps/usage/a;Lcom/coloros/settings/feature/storage/apps/usage/b;Lcom/coloros/settings/feature/storage/apps/usage/a$a;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private synthetic a(Lcom/coloros/settings/feature/storage/apps/usage/b;Lcom/coloros/settings/feature/storage/apps/usage/a$a;I)V
    .locals 4

    .line 467
    iget-wide v0, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->i:J

    iget-wide v2, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->j:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->k:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->m:J

    .line 468
    iget v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->w:I

    invoke-interface {p2, p1, p3, v0}, Lcom/coloros/settings/feature/storage/apps/usage/a$a;->a(Lcom/coloros/settings/feature/storage/apps/usage/b;II)V

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/storage/apps/usage/a;)Lcom/coloros/settings/feature/storage/apps/usage/a/a;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->c:Lcom/coloros/settings/feature/storage/apps/usage/a/a;

    return-object p0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lcom/coloros/settings/feature/storage/apps/usage/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/storage/apps/usage/a;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->n:Ljava/util/ArrayList;

    return-object p1
.end method

.method private synthetic c()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->b:Lcom/coloros/settings/feature/storage/apps/usage/a$a;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->g:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/coloros/settings/feature/storage/apps/usage/a$a;->a(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic c(Lcom/coloros/settings/feature/storage/apps/usage/a;)V
    .locals 2

    const-string v0, "AppStorageUsageManager"

    const-string v1, "showStorageAlert"

    .line 1579
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    iget-boolean v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->x:Z

    if-nez v0, :cond_0

    .line 1583
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1584
    new-instance v1, Lcom/coloros/settings/feature/storage/apps/usage/a$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/storage/apps/usage/a$1;-><init>(Lcom/coloros/settings/feature/storage/apps/usage/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/coloros/settings/feature/storage/apps/usage/a;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->r:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic e(Lcom/coloros/settings/feature/storage/apps/usage/a;)Ljava/util/Map;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->g:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic f(Lcom/coloros/settings/feature/storage/apps/usage/a;)V
    .locals 2

    .line 2229
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->b:Lcom/coloros/settings/feature/storage/apps/usage/a$a;

    if-eqz v0, :cond_0

    .line 2230
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->t:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$a$6VCiBTlT6I7B8s9MlBZCxNJDWyY;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$a$6VCiBTlT6I7B8s9MlBZCxNJDWyY;-><init>(Lcom/coloros/settings/feature/storage/apps/usage/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/coloros/settings/feature/storage/apps/usage/a;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->a:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic h(Lcom/coloros/settings/feature/storage/apps/usage/a;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->d:Z

    return p0
.end method

.method static synthetic i(Lcom/coloros/settings/feature/storage/apps/usage/a;)Ljava/util/HashMap;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->j:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic j(Lcom/coloros/settings/feature/storage/apps/usage/a;)Ljava/util/HashMap;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->k:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic k(Lcom/coloros/settings/feature/storage/apps/usage/a;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic l(Lcom/coloros/settings/feature/storage/apps/usage/a;)Ljava/util/ArrayList;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->n:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic lambda$6VCiBTlT6I7B8s9MlBZCxNJDWyY(Lcom/coloros/settings/feature/storage/apps/usage/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/apps/usage/a;->c()V

    return-void
.end method

.method public static synthetic lambda$FfOkU4SPc8Rg78T-ngIX8Q3XFk4(Lcom/coloros/settings/feature/storage/apps/usage/a;Lcom/coloros/settings/feature/storage/apps/usage/b;Lcom/coloros/settings/feature/storage/apps/usage/a$a;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/feature/storage/apps/usage/a;->a(Lcom/coloros/settings/feature/storage/apps/usage/b;Lcom/coloros/settings/feature/storage/apps/usage/a$a;I)V

    return-void
.end method

.method public static synthetic lambda$zTrgXRkoDL1fIrBuMEOqSk9dkwc(Lcom/coloros/settings/feature/storage/apps/usage/a;Lcom/coloros/settings/feature/storage/apps/usage/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/apps/usage/a;->a(Lcom/coloros/settings/feature/storage/apps/usage/a$a;)V

    return-void
.end method

.method static synthetic m(Lcom/coloros/settings/feature/storage/apps/usage/a;)Ljava/util/ArrayList;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->m:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic n(Lcom/coloros/settings/feature/storage/apps/usage/a;)Ljava/lang/Object;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->p:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic o(Lcom/coloros/settings/feature/storage/apps/usage/a;)Ljava/util/Map;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->i:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic p(Lcom/coloros/settings/feature/storage/apps/usage/a;)Ljava/util/Map;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->h:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic q(Lcom/coloros/settings/feature/storage/apps/usage/a;)Ljava/lang/Object;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->q:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/io/File;Z)J
    .locals 9

    const-string v0, "AppStorageUsageManager"

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_7

    .line 475
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_5

    .line 479
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 480
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    return-wide p1

    .line 485
    :cond_1
    :try_start_0
    iget-boolean v3, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->d:Z

    if-eqz v3, :cond_2

    return-wide v1

    .line 488
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 489
    array-length v3, p1

    if-lez v3, :cond_6

    const/4 v3, 0x0

    .line 490
    array-length v4, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-wide v5, v1

    :goto_0
    if-ge v3, v4, :cond_5

    .line 491
    :try_start_1
    aget-object v7, p1, v3

    .line 492
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_3

    if-nez p2, :cond_3

    .line 493
    invoke-virtual {p0, v7, p2}, Lcom/coloros/settings/feature/storage/apps/usage/a;->a(Ljava/io/File;Z)J

    move-result-wide v7

    :goto_1
    add-long/2addr v5, v7

    goto :goto_2

    .line 494
    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_4

    if-eqz p2, :cond_4

    add-long/2addr v5, v1

    goto :goto_2

    .line 497
    :cond_4
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-wide v1, v5

    goto :goto_3

    :cond_5
    move-wide v1, v5

    goto :goto_4

    :catch_1
    :goto_3
    const-string p1, "getFolderSize exception!"

    .line 502
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_4
    if-eqz p2, :cond_7

    .line 505
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "size "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_5
    return-wide v1
.end method

.method public final a(Landroid/content/pm/PackageInfo;)Lcom/coloros/settings/feature/storage/apps/usage/b;
    .locals 9

    const-string v0, "Error occur, e = "

    const-string v1, "AppStorageUsageManager"

    .line 235
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 236
    new-instance v3, Lcom/coloros/settings/feature/storage/apps/usage/b;

    invoke-direct {v3}, Lcom/coloros/settings/feature/storage/apps/usage/b;-><init>()V

    .line 237
    iput-object v2, v3, Lcom/coloros/settings/feature/storage/apps/usage/b;->b:Ljava/lang/String;

    .line 238
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->r:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 239
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 240
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v6, 0x1

    and-int/2addr p1, v6

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    move p1, v6

    goto :goto_0

    :cond_0
    move p1, v7

    .line 241
    :goto_0
    iput-object v4, v3, Lcom/coloros/settings/feature/storage/apps/usage/b;->d:Ljava/lang/String;

    .line 242
    iput-object v5, v3, Lcom/coloros/settings/feature/storage/apps/usage/b;->e:Ljava/lang/String;

    .line 243
    iput-boolean p1, v3, Lcom/coloros/settings/feature/storage/apps/usage/b;->n:Z

    const/4 p1, 0x0

    .line 246
    :try_start_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-lt v5, v8, :cond_1

    .line 247
    iget-object v5, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->r:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    .line 250
    :cond_1
    invoke-static {}, Lcom/coloros/b/b;->a()Landroid/content/pm/OppoPackageManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/pm/OppoPackageManager;->getApplicationIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 255
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v5

    .line 253
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz p1, :cond_2

    .line 258
    iget v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->v:I

    iget v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->u:I

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v3, Lcom/coloros/settings/feature/storage/apps/usage/b;->g:Landroid/graphics/Bitmap;

    .line 261
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->r:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 263
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 267
    iput-boolean v6, v3, Lcom/coloros/settings/feature/storage/apps/usage/b;->o:Z

    goto :goto_2

    .line 271
    :cond_3
    iput-boolean v7, v3, Lcom/coloros/settings/feature/storage/apps/usage/b;->o:Z

    :goto_2
    return-object v3
.end method

.method public final a()V
    .locals 2

    .line 136
    iget-boolean v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->d:Z

    .line 138
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->q:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->q:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 140
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->e:Z

    .line 143
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 144
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 145
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/a;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 140
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method
