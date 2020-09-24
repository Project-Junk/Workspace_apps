.class public final Lcom/android/ims/e$a;
.super Landroid/os/Handler;
.source "ImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/e$a$b;,
        Lcom/android/ims/e$a$a;
    }
.end annotation


# instance fields
.field public a:Lcom/android/ims/e$a$b;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final b:Ljava/lang/Runnable;

.field private c:Lcom/android/ims/h$c;

.field private final d:Landroid/content/Context;

.field private final e:I

.field private final f:Lcom/android/ims/e$a$a;

.field private final g:Ljava/util/concurrent/Executor;

.field private final h:Ljava/lang/Object;

.field private i:I

.field private j:Lcom/android/ims/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/ims/e$a$a;)V
    .locals 1

    .line 293
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 203
    new-instance v0, Lcom/android/ims/-$$Lambda$e$a$_nAEnv_L2HNJIVLNOINdzLcewEw;

    invoke-direct {v0, p0}, Lcom/android/ims/-$$Lambda$e$a$_nAEnv_L2HNJIVLNOINdzLcewEw;-><init>(Lcom/android/ims/e$a;)V

    iput-object v0, p0, Lcom/android/ims/e$a;->b:Ljava/lang/Runnable;

    .line 229
    new-instance v0, Lcom/android/ims/e$a$1;

    invoke-direct {v0, p0}, Lcom/android/ims/e$a$1;-><init>(Lcom/android/ims/e$a;)V

    iput-object v0, p0, Lcom/android/ims/e$a;->c:Lcom/android/ims/h$c;

    .line 277
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/e$a;->h:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 279
    iput v0, p0, Lcom/android/ims/e$a;->i:I

    .line 282
    new-instance v0, Lcom/android/ims/-$$Lambda$e$a$Ja09ID4vDeB8geQSe8PxCYM_7Ms;

    invoke-direct {v0, p0}, Lcom/android/ims/-$$Lambda$e$a$Ja09ID4vDeB8geQSe8PxCYM_7Ms;-><init>(Lcom/android/ims/e$a;)V

    iput-object v0, p0, Lcom/android/ims/e$a;->a:Lcom/android/ims/e$a$b;

    .line 294
    iput-object p1, p0, Lcom/android/ims/e$a;->d:Landroid/content/Context;

    .line 295
    iput p2, p0, Lcom/android/ims/e$a;->e:I

    .line 296
    iput-object p3, p0, Lcom/android/ims/e$a;->f:Lcom/android/ims/e$a$a;

    .line 297
    new-instance p1, Landroid/os/HandlerExecutor;

    invoke-direct {p1, p0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/ims/e$a;->g:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/ims/e$a$a;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 301
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 203
    new-instance v0, Lcom/android/ims/-$$Lambda$e$a$_nAEnv_L2HNJIVLNOINdzLcewEw;

    invoke-direct {v0, p0}, Lcom/android/ims/-$$Lambda$e$a$_nAEnv_L2HNJIVLNOINdzLcewEw;-><init>(Lcom/android/ims/e$a;)V

    iput-object v0, p0, Lcom/android/ims/e$a;->b:Ljava/lang/Runnable;

    .line 229
    new-instance v0, Lcom/android/ims/e$a$1;

    invoke-direct {v0, p0}, Lcom/android/ims/e$a$1;-><init>(Lcom/android/ims/e$a;)V

    iput-object v0, p0, Lcom/android/ims/e$a;->c:Lcom/android/ims/h$c;

    .line 277
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/e$a;->h:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 279
    iput v0, p0, Lcom/android/ims/e$a;->i:I

    .line 282
    new-instance v0, Lcom/android/ims/-$$Lambda$e$a$Ja09ID4vDeB8geQSe8PxCYM_7Ms;

    invoke-direct {v0, p0}, Lcom/android/ims/-$$Lambda$e$a$Ja09ID4vDeB8geQSe8PxCYM_7Ms;-><init>(Lcom/android/ims/e$a;)V

    iput-object v0, p0, Lcom/android/ims/e$a;->a:Lcom/android/ims/e$a$b;

    .line 302
    iput-object p1, p0, Lcom/android/ims/e$a;->d:Landroid/content/Context;

    .line 303
    iput p2, p0, Lcom/android/ims/e$a;->e:I

    .line 304
    iput-object p3, p0, Lcom/android/ims/e$a;->f:Lcom/android/ims/e$a$a;

    .line 305
    iput-object p4, p0, Lcom/android/ims/e$a;->g:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a(Lcom/android/ims/e$a;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/android/ims/e$a;->g:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic b(Lcom/android/ims/e$a;)V
    .locals 0

    .line 195
    invoke-direct {p0}, Lcom/android/ims/e$a;->e()V

    return-void
.end method

.method private c()V
    .locals 4

    .line 342
    iget-object v0, p0, Lcom/android/ims/e$a;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/e$a;->j:Lcom/android/ims/e;

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/android/ims/e$a;->j:Lcom/android/ims/e;

    iget-object v2, p0, Lcom/android/ims/e$a;->c:Lcom/android/ims/h$c;

    invoke-virtual {v1, v2}, Lcom/android/ims/e;->a(Lcom/android/ims/h$c;)V

    const/4 v1, 0x0

    .line 348
    iput-object v1, p0, Lcom/android/ims/e$a;->j:Lcom/android/ims/e;

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/android/ims/e$a;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/ims/e$a;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 353
    iget-object v1, p0, Lcom/android/ims/e$a;->b:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/ims/e$a;->a:Lcom/android/ims/e$a$b;

    invoke-interface {v2}, Lcom/android/ims/e$a$b;->get()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/ims/e$a;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 354
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic c(Lcom/android/ims/e$a;)V
    .locals 0

    .line 195
    invoke-direct {p0}, Lcom/android/ims/e$a;->c()V

    return-void
.end method

.method static synthetic d(Lcom/android/ims/e$a;)Ljava/lang/Object;
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/android/ims/e$a;->h:Ljava/lang/Object;

    return-object p0
.end method

.method private d()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/android/ims/e$a;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/e$a;->d:Landroid/content/Context;

    iget v2, p0, Lcom/android/ims/e$a;->e:I

    invoke-static {v1, v2}, Lcom/android/ims/e;->a(Landroid/content/Context;I)Lcom/android/ims/e;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/e$a;->j:Lcom/android/ims/e;

    .line 362
    iget-object v1, p0, Lcom/android/ims/e$a;->j:Lcom/android/ims/e;

    iget-object v2, p0, Lcom/android/ims/e$a;->c:Lcom/android/ims/h$c;

    .line 2682
    iget-object v3, v1, Lcom/android/ims/e;->e:Lcom/android/ims/h;

    invoke-virtual {v3}, Lcom/android/ims/h;->k()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_0

    .line 2687
    iget-object v1, v1, Lcom/android/ims/e;->k:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    iget-object v0, p0, Lcom/android/ims/e$a;->c:Lcom/android/ims/h$c;

    invoke-interface {v0}, Lcom/android/ims/h$c;->a()V

    return-void

    .line 2683
    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "Binder is not active!"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    :catchall_0
    move-exception v1

    .line 363
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic e(Lcom/android/ims/e$a;)Lcom/android/ims/e;
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/android/ims/e$a;->j:Lcom/android/ims/e;

    return-object p0
.end method

.method private e()V
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/android/ims/e$a;->f:Lcom/android/ims/e$a$a;

    invoke-interface {v0}, Lcom/android/ims/e$a$a;->connectionUnavailable()V

    return-void
.end method

.method private synthetic f()I
    .locals 5

    .line 284
    iget-object v0, p0, Lcom/android/ims/e$a;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 285
    :try_start_0
    iget v1, p0, Lcom/android/ims/e$a;->i:I

    const/4 v2, 0x1

    shl-int v1, v2, v1

    mul-int/lit16 v1, v1, 0x1f4

    .line 286
    iget v3, p0, Lcom/android/ims/e$a;->i:I

    const/4 v4, 0x6

    if-gt v3, v4, :cond_0

    .line 287
    iget v3, p0, Lcom/android/ims/e$a;->i:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/ims/e$a;->i:I

    .line 289
    :cond_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 290
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic f(Lcom/android/ims/e$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3372
    iget-object v0, p0, Lcom/android/ims/e$a;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 3373
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/e$a;->j:Lcom/android/ims/e;

    .line 3374
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3376
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/e$a;->f:Lcom/android/ims/e$a$a;

    invoke-interface {v0, v1}, Lcom/android/ims/e$a$a;->connectionReady(Lcom/android/ims/e;)V
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3383
    iget-object v0, p0, Lcom/android/ims/e$a;->h:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3384
    :try_start_2
    iput v1, p0, Lcom/android/ims/e$a;->i:I

    .line 3385
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catch_0
    move-exception p0

    .line 3379
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connector: notifyReady exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3380
    throw p0

    :catchall_1
    move-exception p0

    .line 3374
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method private synthetic g()V
    .locals 0

    .line 205
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/e$a;->d()V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 207
    :catch_0
    invoke-direct {p0}, Lcom/android/ims/e$a;->c()V

    return-void
.end method

.method public static synthetic lambda$Ja09ID4vDeB8geQSe8PxCYM_7Ms(Lcom/android/ims/e$a;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/ims/e$a;->f()I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$_nAEnv_L2HNJIVLNOINdzLcewEw(Lcom/android/ims/e$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ims/e$a;->g()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/android/ims/e$a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/ims/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 321
    iput v0, p0, Lcom/android/ims/e$a;->i:I

    .line 324
    iget-object v0, p0, Lcom/android/ims/e$a;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/ims/e$a;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()V
    .locals 3

    .line 332
    iget-object v0, p0, Lcom/android/ims/e$a;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/ims/e$a;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 333
    iget-object v0, p0, Lcom/android/ims/e$a;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 334
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/e$a;->j:Lcom/android/ims/e;

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/android/ims/e$a;->j:Lcom/android/ims/e;

    iget-object v2, p0, Lcom/android/ims/e$a;->c:Lcom/android/ims/h$c;

    invoke-virtual {v1, v2}, Lcom/android/ims/e;->a(Lcom/android/ims/h$c;)V

    .line 337
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    invoke-direct {p0}, Lcom/android/ims/e$a;->e()V

    return-void

    :catchall_0
    move-exception v1

    .line 337
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
