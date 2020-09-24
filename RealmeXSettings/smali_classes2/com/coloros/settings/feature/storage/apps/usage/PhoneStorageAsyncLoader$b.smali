.class final Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;
.super Ljava/lang/Object;
.source "PhoneStorageAsyncLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;

.field private c:Ljava/util/concurrent/ForkJoinPool;

.field private d:Ljava/util/concurrent/ForkJoinPool;

.field private e:Lcom/coloros/settings/feature/storage/apps/usage/a/a;

.field private f:Landroid/content/pm/PackageManager;

.field private g:Landroid/content/Context;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 339
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    new-instance v0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;-><init>(B)V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;

    .line 353
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->g:Landroid/content/Context;

    .line 354
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->f:Landroid/content/pm/PackageManager;

    .line 355
    new-instance v0, Lcom/coloros/settings/feature/storage/apps/usage/a/a;

    invoke-direct {v0, p1}, Lcom/coloros/settings/feature/storage/apps/usage/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->e:Lcom/coloros/settings/feature/storage/apps/usage/a/a;

    .line 356
    new-instance p1, Ljava/util/concurrent/ForkJoinPool;

    sget v0, Lcom/coloros/settings/utils/bk;->a:I

    invoke-direct {p1, v0}, Ljava/util/concurrent/ForkJoinPool;-><init>(I)V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->c:Ljava/util/concurrent/ForkJoinPool;

    .line 357
    new-instance p1, Ljava/util/concurrent/ForkJoinPool;

    sget v0, Lcom/coloros/settings/utils/bk;->a:I

    invoke-direct {p1, v0}, Ljava/util/concurrent/ForkJoinPool;-><init>(I)V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->d:Ljava/util/concurrent/ForkJoinPool;

    return-void
.end method

.method private static synthetic a(Ljava/util/concurrent/CompletableFuture;)J
    .locals 2

    .line 493
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 495
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "scan file cause exception:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EmulatedStorageScanner"

    invoke-static {v0, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;)Landroid/content/Context;
    .locals 0

    .line 336
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->g:Landroid/content/Context;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;
    .locals 7

    .line 381
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 383
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;

    return-object p1

    .line 386
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 387
    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_2

    .line 391
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 392
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    const-string v3, "EmulatedStorageScanner"

    if-ge v2, v1, :cond_2

    aget-object v4, p1, v2

    .line 394
    :try_start_0
    new-instance v5, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$b$kgqesry_X7vTm33mcFR1opFrVVs;

    invoke-direct {v5, p0, v4}, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$b$kgqesry_X7vTm33mcFR1opFrVVs;-><init>(Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;Ljava/io/File;)V

    iget-object v4, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->c:Ljava/util/concurrent/ForkJoinPool;

    invoke-static {v5, v4}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 400
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "scan path cause exception:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 404
    :cond_2
    new-instance p1, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$b$hdIBiHRaqw6QJTn0HgEVcwxeENM;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$b$hdIBiHRaqw6QJTn0HgEVcwxeENM;-><init>(Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;)V

    invoke-interface {v0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 413
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "scan emulated end : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;

    return-object p1

    .line 388
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;

    return-object p1
.end method

.method private synthetic a(Landroid/content/pm/PackageInfo;)V
    .locals 3

    .line 370
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 5660
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->e:Lcom/coloros/settings/feature/storage/apps/usage/a/a;

    invoke-virtual {v1, v0}, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 371
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->f:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 372
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 373
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->j:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 375
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->i:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private a(Lcom/coloros/settings/feature/storage/a/a;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;

    monitor-enter v0

    .line 507
    :try_start_0
    iget-object v1, p1, Lcom/coloros/settings/feature/storage/a/a;->c:Ljava/lang/String;

    .line 509
    iget-wide v2, p1, Lcom/coloros/settings/feature/storage/a/a;->b:J

    .line 511
    iget-object v4, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;

    iget-wide v5, v4, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->e:J

    add-long/2addr v5, v2

    iput-wide v5, v4, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->e:J

    .line 513
    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->b(Ljava/lang/String;)Z

    move-result v4

    .line 3634
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_2

    .line 3635
    iget-object v5, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3636
    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v7

    .line 4597
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 4598
    iget-object v8, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->j:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 4599
    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_1

    :cond_4
    move v6, v7

    .line 516
    :goto_1
    invoke-static {v1}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v4, :cond_5

    .line 519
    iget-object v7, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;

    iget-wide v8, v7, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->b:J

    add-long/2addr v8, v2

    iput-wide v8, v7, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->b:J

    goto :goto_2

    :cond_5
    if-eqz v5, :cond_6

    .line 521
    iget-object v7, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;

    iget-wide v8, v7, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->c:J

    add-long/2addr v8, v2

    iput-wide v8, v7, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->c:J

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    .line 523
    iget-object v7, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;

    iget-wide v8, v7, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->a:J

    add-long/2addr v8, v2

    iput-wide v8, v7, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->a:J

    :cond_7
    :goto_2
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-lez v7, :cond_a

    .line 527
    iget v7, p1, Lcom/coloros/settings/feature/storage/a/a;->a:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_9

    if-nez v6, :cond_8

    if-nez v4, :cond_a

    :cond_8
    if-nez v5, :cond_a

    .line 529
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;

    invoke-virtual {v1, p1}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->a(Lcom/coloros/settings/feature/storage/a/a;)V

    .line 530
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;

    iget-wide v4, p1, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->d:J

    add-long/2addr v4, v2

    iput-wide v4, p1, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->d:J

    goto :goto_3

    :cond_9
    if-nez v1, :cond_a

    .line 533
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;

    invoke-virtual {v1, p1}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->a(Lcom/coloros/settings/feature/storage/a/a;)V

    .line 534
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;

    iget-wide v4, p1, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->d:J

    add-long/2addr v4, v2

    iput-wide v4, p1, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->d:J

    .line 537
    :cond_a
    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private synthetic a(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->e:Lcom/coloros/settings/feature/storage/apps/usage/a/a;

    invoke-virtual {v0, p2}, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 650
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private static synthetic a(Ljava/util/List;Landroid/content/pm/PackageInfo;)V
    .locals 2

    const/4 v0, 0x1

    .line 562
    new-array v0, v0, [Ljava/lang/Object;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "\'%s\'"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Ljava/io/File;)Z
    .locals 1

    if-eqz p1, :cond_2

    .line 436
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 440
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->b(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 442
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->a(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private b(Ljava/io/File;)J
    .locals 4

    const-wide/16 v0, 0x0

    .line 449
    :try_start_0
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->a(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "scan file cause exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "EmulatedStorageScanner"

    invoke-static {v2, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-wide v0
.end method

.method private synthetic b()V
    .locals 2

    .line 574
    new-instance v0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b$1;-><init>(Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;)V

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/apps/usage/c;->a(Lcom/coloros/settings/feature/storage/apps/usage/c$a;)V

    .line 590
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->g:Landroid/content/Context;

    sget v1, Lcom/coloros/settings/feature/storage/apps/usage/c$c;->a:I

    sget v1, Lcom/coloros/settings/feature/storage/apps/usage/c$b;->b:I

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/storage/apps/usage/c;->a(Landroid/content/Context;I)V

    return-void
.end method

.method private synthetic b(Ljava/util/concurrent/CompletableFuture;)V
    .locals 2

    .line 406
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/storage/a/a;

    .line 407
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->a(Lcom/coloros/settings/feature/storage/a/a;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 409
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "scan path cause exception:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmulatedStorageScanner"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4

    .line 610
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 611
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private c(Ljava/io/File;)J
    .locals 7

    .line 458
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->a(Ljava/io/File;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    .line 461
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 462
    array-length v3, v0

    if-nez v3, :cond_1

    goto :goto_1

    .line 465
    :cond_1
    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 466
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 469
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 470
    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    if-eqz v4, :cond_2

    .line 471
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 474
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 475
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 476
    array-length v6, v5

    if-lez v6, :cond_2

    .line 477
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 478
    new-instance v5, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$b$HeVbmx6rXVXb9sEUaNqxTagPVng;

    invoke-direct {v5, p0, v4}, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$b$HeVbmx6rXVXb9sEUaNqxTagPVng;-><init>(Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;Ljava/io/File;)V

    iget-object v4, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->d:Ljava/util/concurrent/ForkJoinPool;

    invoke-static {v5, v4}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 483
    :cond_3
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 487
    :cond_4
    invoke-direct {p0, v4}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->b(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v1, v4

    goto :goto_0

    .line 491
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$b$R_DLQ_w0YsqZKS8Idu5Sl8MDX20;->INSTANCE:Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$b$R_DLQ_w0YsqZKS8Idu5Sl8MDX20;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object p1

    .line 498
    invoke-interface {p1}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide v3

    add-long/2addr v1, v3

    :cond_6
    :goto_1
    return-wide v1
.end method

.method private c(Ljava/lang/String;)Z
    .locals 4

    .line 622
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 623
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 624
    sget-object v2, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic d(Ljava/io/File;)Ljava/lang/Long;
    .locals 2

    .line 479
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->c(Ljava/io/File;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private synthetic e(Ljava/io/File;)Lcom/coloros/settings/feature/storage/a/a;
    .locals 6

    .line 5418
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 5419
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 5420
    new-instance v2, Lcom/coloros/settings/feature/storage/a/a;

    invoke-direct {v2}, Lcom/coloros/settings/feature/storage/a/a;-><init>()V

    .line 5421
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5422
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    .line 5423
    new-instance v3, Lcom/coloros/settings/feature/storage/a/a;

    invoke-direct {v3}, Lcom/coloros/settings/feature/storage/a/a;-><init>()V

    .line 5424
    iput-object v0, v3, Lcom/coloros/settings/feature/storage/a/a;->c:Ljava/lang/String;

    .line 5425
    iput-object v1, v3, Lcom/coloros/settings/feature/storage/a/a;->e:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5426
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->c(Ljava/io/File;)J

    move-result-wide v4

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->b(Ljava/io/File;)J

    move-result-wide v4

    :goto_0
    iput-wide v4, v3, Lcom/coloros/settings/feature/storage/a/a;->b:J

    if-eqz v2, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    .line 5427
    :cond_1
    invoke-static {v0}, Lcom/coloros/settings/feature/storage/d;->a(Ljava/lang/String;)I

    move-result v0

    :goto_1
    iput v0, v3, Lcom/coloros/settings/feature/storage/a/a;->a:I

    move-object v2, v3

    .line 396
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "scan path size ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v2, Lcom/coloros/settings/feature/storage/a/a;->b:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EmulatedStorageScanner"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static synthetic lambda$-y3xFRqkpvddTgBuw4aJFZMxn8U(Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->b()V

    return-void
.end method

.method public static synthetic lambda$AOrgQyp1sDz2iHPFh289uzxi4qo(Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;Landroid/content/pm/PackageInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->a(Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method public static synthetic lambda$HeVbmx6rXVXb9sEUaNqxTagPVng(Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;Ljava/io/File;)Ljava/lang/Long;
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->d(Ljava/io/File;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$R_DLQ_w0YsqZKS8Idu5Sl8MDX20(Ljava/util/concurrent/CompletableFuture;)J
    .locals 2

    invoke-static {p0}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->a(Ljava/util/concurrent/CompletableFuture;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic lambda$ekobwTbclB0dJnTsyxdIMiXyP5g(Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$hdIBiHRaqw6QJTn0HgEVcwxeENM(Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->b(Ljava/util/concurrent/CompletableFuture;)V

    return-void
.end method

.method public static synthetic lambda$kgqesry_X7vTm33mcFR1opFrVVs(Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;Ljava/io/File;)Lcom/coloros/settings/feature/storage/a/a;
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->e(Ljava/io/File;)Lcom/coloros/settings/feature/storage/a/a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$r-Se6bUHKNME9r_NKHyHdC8fqZQ(Ljava/util/List;Landroid/content/pm/PackageInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->a(Ljava/util/List;Landroid/content/pm/PackageInfo;)V

    return-void
.end method


# virtual methods
.method final a()Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;
    .locals 5

    const-string v0, "EmulatedStorageScanner"

    const-string v1, "start scan emulated storage"

    .line 361
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->f:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 1542
    new-instance v2, Lcom/coloros/settings/feature/storage/apps/usage/a/d;

    invoke-direct {v2}, Lcom/coloros/settings/feature/storage/apps/usage/a/d;-><init>()V

    .line 1543
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/settings/feature/storage/apps/usage/a/d;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "data != null"

    .line 1545
    invoke-static {v0, v3}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    :try_start_0
    iget-object v3, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->e:Lcom/coloros/settings/feature/storage/apps/usage/a/a;

    invoke-virtual {v3, v2}, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "Reset failed! Roll back data version."

    .line 1553
    invoke-static {v0, v2}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/settings/feature/storage/apps/usage/a/d;->b(Landroid/content/Context;)V

    goto :goto_1

    .line 1549
    :catch_1
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/settings/feature/storage/apps/usage/a/d;->b(Landroid/content/Context;)V

    const-string v2, "showStorageAlert"

    .line 1571
    invoke-static {v0, v2}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1573
    new-instance v3, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$b$-y3xFRqkpvddTgBuw4aJFZMxn8U;

    invoke-direct {v3, p0}, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$b$-y3xFRqkpvddTgBuw4aJFZMxn8U;-><init>(Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 1560
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1561
    new-instance v3, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$b$r-Se6bUHKNME9r_NKHyHdC8fqZQ;

    invoke-direct {v3, v2}, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$b$r-Se6bUHKNME9r_NKHyHdC8fqZQ;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    const-string v3, ","

    .line 1564
    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 1565
    iget-object v3, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->e:Lcom/coloros/settings/feature/storage/apps/usage/a/a;

    invoke-virtual {v3}, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->a()V

    .line 1566
    iget-object v3, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->e:Lcom/coloros/settings/feature/storage/apps/usage/a/a;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->a(ILjava/lang/String;)V

    :cond_1
    :goto_1
    const-string v2, "start scan emulated storage updateDBIfNeed"

    .line 364
    invoke-static {v0, v2}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->e:Lcom/coloros/settings/feature/storage/apps/usage/a/a;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->d()Ljava/util/ArrayList;

    move-result-object v0

    .line 365
    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->h:Ljava/util/ArrayList;

    .line 2646
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->e:Lcom/coloros/settings/feature/storage/apps/usage/a/a;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->f()Ljava/util/ArrayList;

    move-result-object v0

    .line 2647
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2648
    new-instance v3, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$b$ekobwTbclB0dJnTsyxdIMiXyP5g;

    invoke-direct {v3, p0, v2}, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$b$ekobwTbclB0dJnTsyxdIMiXyP5g;-><init>(Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 366
    iput-object v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->k:Ljava/util/ArrayList;

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->i:Ljava/util/ArrayList;

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->j:Ljava/util/ArrayList;

    .line 369
    new-instance v0, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$b$AOrgQyp1sDz2iHPFh289uzxi4qo;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$b$AOrgQyp1sDz2iHPFh289uzxi4qo;-><init>(Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;)V

    invoke-interface {v1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 377
    sget-object v0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->a(Ljava/lang/String;)Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;

    move-result-object v0

    return-object v0
.end method
