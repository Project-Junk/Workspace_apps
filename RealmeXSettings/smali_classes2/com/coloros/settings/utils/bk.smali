.class public final Lcom/coloros/settings/utils/bk;
.super Ljava/lang/Object;
.source "ThreadPoolUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/utils/bk$a;
    }
.end annotation


# static fields
.field public static final a:I

.field private static final b:I

.field private static volatile c:Ljava/util/concurrent/ExecutorService;

.field private static volatile d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 33
    sput v0, Lcom/coloros/settings/utils/bk;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/coloros/settings/utils/bk;->b:I

    return-void
.end method

.method private static a()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .line 70
    sget-object v0, Lcom/coloros/settings/utils/bk;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 71
    sget v0, Lcom/coloros/settings/utils/bk;->b:I

    new-instance v1, Lcom/coloros/settings/utils/bk$a;

    invoke-direct {v1}, Lcom/coloros/settings/utils/bk$a;-><init>()V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/bk;->c:Ljava/util/concurrent/ExecutorService;

    .line 73
    :cond_0
    sget-object v0, Lcom/coloros/settings/utils/bk;->c:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 2

    .line 1062
    sget-object v0, Lcom/coloros/settings/utils/bk;->d:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1063
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/coloros/settings/utils/bk;->d:Landroid/os/Handler;

    .line 1066
    :cond_0
    sget-object v0, Lcom/coloros/settings/utils/bk;->d:Landroid/os/Handler;

    .line 38
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static b(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1

    .line 42
    invoke-static {}, Lcom/coloros/settings/utils/bk;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1

    .line 50
    invoke-static {}, Lcom/coloros/settings/utils/bk;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1

    .line 58
    invoke-static {}, Lcom/coloros/settings/utils/bk;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
