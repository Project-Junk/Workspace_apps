.class public final Lcom/google/android/setupcompat/internal/h;
.super Ljava/lang/Object;
.source "SetupCompatServiceInvoker.java"


# static fields
.field private static e:Lcom/google/android/setupcompat/internal/h;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static final f:J


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Ljava/util/concurrent/ExecutorService;

.field private final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 127
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/setupcompat/internal/h;->f:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/google/android/setupcompat/internal/h;->a:Landroid/content/Context;

    .line 96
    sget-object p1, Lcom/google/android/setupcompat/internal/c;->a:Lcom/google/android/setupcompat/internal/c;

    invoke-virtual {p1}, Lcom/google/android/setupcompat/internal/c;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/google/android/setupcompat/internal/h;->b:Ljava/util/concurrent/ExecutorService;

    .line 97
    sget-object p1, Lcom/google/android/setupcompat/internal/c;->b:Lcom/google/android/setupcompat/internal/c;

    invoke-virtual {p1}, Lcom/google/android/setupcompat/internal/c;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/google/android/setupcompat/internal/h;->c:Ljava/util/concurrent/ExecutorService;

    .line 98
    sget-wide v0, Lcom/google/android/setupcompat/internal/h;->f:J

    iput-wide v0, p0, Lcom/google/android/setupcompat/internal/h;->d:J

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/setupcompat/internal/h;
    .locals 2

    const-class v0, Lcom/google/android/setupcompat/internal/h;

    monitor-enter v0

    .line 108
    :try_start_0
    sget-object v1, Lcom/google/android/setupcompat/internal/h;->e:Lcom/google/android/setupcompat/internal/h;

    if-nez v1, :cond_0

    .line 109
    new-instance v1, Lcom/google/android/setupcompat/internal/h;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/android/setupcompat/internal/h;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/setupcompat/internal/h;->e:Lcom/google/android/setupcompat/internal/h;

    .line 112
    :cond_0
    sget-object p0, Lcom/google/android/setupcompat/internal/h;->e:Lcom/google/android/setupcompat/internal/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private synthetic b(ILandroid/os/Bundle;)V
    .locals 5

    const-string v0, "SucServiceInvoker"

    .line 2063
    :try_start_0
    iget-object v1, p0, Lcom/google/android/setupcompat/internal/h;->a:Landroid/content/Context;

    iget-wide v2, p0, Lcom/google/android/setupcompat/internal/h;->d:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2064
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/setupcompat/internal/i;->a(Landroid/content/Context;JLjava/util/concurrent/TimeUnit;)Lcom/google/android/setupcompat/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2067
    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-interface {v1, p1, p2, v2}, Lcom/google/android/setupcompat/a;->a(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return-void

    :cond_0
    const-string p1, "logMetric failed since service reference is null. Are the permissions valid?"

    .line 2069
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    const/4 v1, 0x1

    .line 2072
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "Exception occurred while trying to log metric = [%s]"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private synthetic b(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "SucServiceInvoker"

    .line 1078
    :try_start_0
    iget-object v1, p0, Lcom/google/android/setupcompat/internal/h;->a:Landroid/content/Context;

    iget-wide v2, p0, Lcom/google/android/setupcompat/internal/h;->d:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1079
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/setupcompat/internal/i;->a(Landroid/content/Context;JLjava/util/concurrent/TimeUnit;)Lcom/google/android/setupcompat/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1082
    invoke-interface {v1, p1, p2}, Lcom/google/android/setupcompat/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_0
    const-string p2, "BindBack failed since service reference is null. Are the permissions valid?"

    .line 1084
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    goto :goto_0

    :catch_2
    move-exception p2

    :goto_0
    const/4 v1, 0x1

    .line 1087
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Exception occurred while %s trying bind back to SetupWizard."

    .line 1089
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1087
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic lambda$dCKdWjOAAPJx1338HVEettN3osM(Lcom/google/android/setupcompat/internal/h;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/internal/h;->b(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic lambda$xtCnKazkA1GyPJWQ__QpbPyuzQ8(Lcom/google/android/setupcompat/internal/h;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/internal/h;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;)V
    .locals 2

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/google/android/setupcompat/internal/h;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/setupcompat/internal/-$$Lambda$h$dCKdWjOAAPJx1338HVEettN3osM;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/setupcompat/internal/-$$Lambda$h$dCKdWjOAAPJx1338HVEettN3osM;-><init>(Lcom/google/android/setupcompat/internal/h;ILandroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    const/4 v0, 0x1

    .line 48
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Metric of type %d dropped since queue is full."

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SucServiceInvoker"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/google/android/setupcompat/internal/h;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/setupcompat/internal/-$$Lambda$h$xtCnKazkA1GyPJWQ__QpbPyuzQ8;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/setupcompat/internal/-$$Lambda$h$xtCnKazkA1GyPJWQ__QpbPyuzQ8;-><init>(Lcom/google/android/setupcompat/internal/h;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    const/4 v0, 0x1

    .line 56
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Screen %s bind back fail."

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SucServiceInvoker"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
