.class public final Lcom/google/android/setupcompat/internal/c;
.super Ljava/lang/Object;
.source "ExecutorProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/util/concurrent/Executor;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/setupcompat/internal/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/setupcompat/internal/c<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/android/setupcompat/internal/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/setupcompat/internal/c<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Lcom/google/android/setupcompat/internal/c;

    const-string v1, "SetupCompatServiceInvoker"

    const/16 v2, 0x32

    .line 44
    invoke-static {v1, v2}, Lcom/google/android/setupcompat/internal/c;->a(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/setupcompat/internal/c;-><init>(Ljava/util/concurrent/Executor;)V

    sput-object v0, Lcom/google/android/setupcompat/internal/c;->a:Lcom/google/android/setupcompat/internal/c;

    .line 46
    new-instance v0, Lcom/google/android/setupcompat/internal/c;

    const-string v1, "SetupBindbackServiceExecutor"

    const/4 v2, 0x1

    .line 48
    invoke-static {v1, v2}, Lcom/google/android/setupcompat/internal/c;->a(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/setupcompat/internal/c;-><init>(Ljava/util/concurrent/Executor;)V

    sput-object v0, Lcom/google/android/setupcompat/internal/c;->b:Lcom/google/android/setupcompat/internal/c;

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/android/setupcompat/internal/c;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 88
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;
    .locals 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 82
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v6, p1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v7, Lcom/google/android/setupcompat/internal/-$$Lambda$c$0reY8FgyLjiXyNXhVu0Ekmjet7Y;

    invoke-direct {v7, p0}, Lcom/google/android/setupcompat/internal/-$$Lambda$c$0reY8FgyLjiXyNXhVu0Ekmjet7Y;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v8
.end method

.method public static synthetic lambda$0reY8FgyLjiXyNXhVu0Ekmjet7Y(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/setupcompat/internal/c;->a(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/google/android/setupcompat/internal/c;->d:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    return-object v0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupcompat/internal/c;->c:Ljava/util/concurrent/Executor;

    return-object v0
.end method
