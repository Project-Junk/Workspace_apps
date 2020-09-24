.class public Lcom/color/eyeprotect/a/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/eyeprotect/a/a/b$a;,
        Lcom/color/eyeprotect/a/a/b$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/color/eyeprotect/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Lcom/color/eyeprotect/a/a/b$b;

.field private volatile e:Z

.field private f:J

.field private g:Z

.field private final h:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/eyeprotect/a/a/b;->b:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/eyeprotect/a/a/b;->e:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/color/eyeprotect/a/a/b;->f:J

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/color/eyeprotect/a/a/b;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lcom/color/eyeprotect/a/a/b$1;

    invoke-direct {v0, p0}, Lcom/color/eyeprotect/a/a/b$1;-><init>(Lcom/color/eyeprotect/a/a/b;)V

    iput-object v0, p0, Lcom/color/eyeprotect/a/a/b;->i:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/color/eyeprotect/a/a/b;->a:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "oppo.intent.aibrightness.START_RECORD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "oppo.intent.aibrightness.STOP_RECORD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "oppo.intent.aibrightness.PLAY_LUX_RECORD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "oppo.intent.aibrightness.STOP_PLAY_LUX_RECORD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/color/eyeprotect/a/a/b;->i:Landroid/content/BroadcastReceiver;

    const-string v1, "oppo.permission.OPPO_COMPONENT_SAFE"

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic a(Lcom/color/eyeprotect/a/a/b;J)J
    .locals 0

    iput-wide p1, p0, Lcom/color/eyeprotect/a/a/b;->f:J

    return-wide p1
.end method

.method private declared-synchronized a(Landroid/content/Intent;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/color/eyeprotect/a/a/b;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/eyeprotect/a/a/b;->e:Z

    iget-object v0, p0, Lcom/color/eyeprotect/a/a/b;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/color/eyeprotect/a/a/b;->c:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v0, p0, Lcom/color/eyeprotect/a/a/b;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/color/eyeprotect/a/a/b$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/color/eyeprotect/a/a/b$a;-><init>(Lcom/color/eyeprotect/a/a/b;Lcom/color/eyeprotect/a/a/b$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/color/eyeprotect/a/a/b;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/color/eyeprotect/a/a/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/color/eyeprotect/a/a/b;->c()V

    return-void
.end method

.method static synthetic a(Lcom/color/eyeprotect/a/a/b;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/eyeprotect/a/a/b;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/color/eyeprotect/a/a/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/color/eyeprotect/a/a/b;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/color/eyeprotect/a/a/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/color/eyeprotect/a/a/b;->d()V

    return-void
.end method

.method private declared-synchronized c()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/color/eyeprotect/a/a/b;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/color/eyeprotect/a/a/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/eyeprotect/a/a/b;->e:Z

    return p0
.end method

.method static synthetic d(Lcom/color/eyeprotect/a/a/b;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    iget-object p0, p0, Lcom/color/eyeprotect/a/a/b;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/color/eyeprotect/a/a/b;->b:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/color/eyeprotect/a/a/b;->b:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "oppo.intent.aibrightness.LUX_RECORD"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "lux_record"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/color/eyeprotect/a/a/b;->a:Landroid/content/Context;

    const-string v3, "oppo.permission.OPPO_COMPONENT_SAFE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/color/eyeprotect/a/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic e(Lcom/color/eyeprotect/a/a/b;)Lcom/color/eyeprotect/a/a/b$b;
    .locals 0

    iget-object p0, p0, Lcom/color/eyeprotect/a/a/b;->d:Lcom/color/eyeprotect/a/a/b$b;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/color/eyeprotect/a/a/b;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/color/eyeprotect/a/a/b;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SensorRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release unregisterReceiver error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/color/eyeprotect/a/b/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(F)V
    .locals 6

    const-string v0, "SensorRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write lux:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mOpenRecord:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/color/eyeprotect/a/a/b;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/color/eyeprotect/a/a/b;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/color/eyeprotect/a/a/b;->f:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iput-wide v0, p0, Lcom/color/eyeprotect/a/a/b;->f:J

    :cond_1
    iget-wide v2, p0, Lcom/color/eyeprotect/a/a/b;->f:J

    sub-long v2, v0, v2

    iput-wide v0, p0, Lcom/color/eyeprotect/a/a/b;->f:J

    iget-object v0, p0, Lcom/color/eyeprotect/a/a/b;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/color/eyeprotect/a/a/a;

    invoke-direct {v1, p1, v2, v3}, Lcom/color/eyeprotect/a/a/a;-><init>(FJ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/color/eyeprotect/a/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0x5dc

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/color/eyeprotect/a/a/b;->d()V

    :cond_2
    return-void
.end method

.method public a(Lcom/color/eyeprotect/a/a/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/color/eyeprotect/a/a/b;->d:Lcom/color/eyeprotect/a/a/b$b;

    return-void
.end method

.method public b()Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/eyeprotect/a/a/b;->e:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
