.class public final Lcom/android/settingslib/utils/d;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# static fields
.field private static volatile a:Ljava/lang/Thread;

.field private static volatile b:Landroid/os/Handler;

.field private static volatile c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1

    .line 67
    sget-object v0, Lcom/android/settingslib/utils/d;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 68
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/utils/d;->c:Ljava/util/concurrent/ExecutorService;

    .line 70
    :cond_0
    sget-object v0, Lcom/android/settingslib/utils/d;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static a()Z
    .locals 2

    .line 35
    sget-object v0, Lcom/android/settingslib/utils/d;->a:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 36
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/utils/d;->a:Ljava/lang/Thread;

    .line 38
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/utils/d;->a:Ljava/lang/Thread;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static b()V
    .locals 2

    .line 56
    invoke-static {}, Lcom/android/settingslib/utils/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must be called on the UI thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Ljava/lang/Runnable;)V
    .locals 1

    .line 77
    invoke-static {}, Lcom/android/settingslib/utils/d;->c()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static c()Landroid/os/Handler;
    .locals 2

    .line 45
    sget-object v0, Lcom/android/settingslib/utils/d;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/settingslib/utils/d;->b:Landroid/os/Handler;

    .line 49
    :cond_0
    sget-object v0, Lcom/android/settingslib/utils/d;->b:Landroid/os/Handler;

    return-object v0
.end method
