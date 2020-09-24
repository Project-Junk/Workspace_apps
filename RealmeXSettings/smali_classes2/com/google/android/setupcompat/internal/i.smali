.class public Lcom/google/android/setupcompat/internal/i;
.super Ljava/lang/Object;
.source "SetupCompatServiceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupcompat/internal/i$a;,
        Lcom/google/android/setupcompat/internal/i$b;
    }
.end annotation


# static fields
.field static final a:Landroid/content/Intent;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static c:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static volatile g:Lcom/google/android/setupcompat/internal/i;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field final b:Landroid/content/ServiceConnection;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private volatile d:Lcom/google/android/setupcompat/internal/i$a;

.field private final e:Landroid/content/Context;

.field private final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 166
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.setupwizard"

    .line 168
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.setupcompat.SetupCompatService.BIND"

    .line 169
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/google/android/setupcompat/internal/i;->a:Landroid/content/Intent;

    const/4 v0, 0x0

    .line 335
    sput-boolean v0, Lcom/google/android/setupcompat/internal/i;->c:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    new-instance v0, Lcom/google/android/setupcompat/internal/i$1;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/internal/i$1;-><init>(Lcom/google/android/setupcompat/internal/i;)V

    iput-object v0, p0, Lcom/google/android/setupcompat/internal/i;->b:Landroid/content/ServiceConnection;

    .line 250
    new-instance v0, Lcom/google/android/setupcompat/internal/i$a;

    sget-object v1, Lcom/google/android/setupcompat/internal/i$b;->a:Lcom/google/android/setupcompat/internal/i$b;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/setupcompat/internal/i$a;-><init>(Lcom/google/android/setupcompat/internal/i$b;B)V

    iput-object v0, p0, Lcom/google/android/setupcompat/internal/i;->d:Lcom/google/android/setupcompat/internal/i$a;

    .line 252
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupcompat/internal/i;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/setupcompat/internal/i;->e:Landroid/content/Context;

    return-void
.end method

.method private a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/setupcompat/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 3177
    iget-object v0, p0, Lcom/google/android/setupcompat/internal/i;->d:Lcom/google/android/setupcompat/internal/i$a;

    .line 92
    iget-object v1, v0, Lcom/google/android/setupcompat/internal/i$a;->a:Lcom/google/android/setupcompat/internal/i$b;

    sget-object v2, Lcom/google/android/setupcompat/internal/i$b;->d:Lcom/google/android/setupcompat/internal/i$b;

    if-ne v1, v2, :cond_0

    .line 93
    iget-object p1, v0, Lcom/google/android/setupcompat/internal/i$a;->b:Lcom/google/android/setupcompat/a;

    return-object p1

    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/google/android/setupcompat/internal/i;->d()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    const-string v1, "SucServiceProvider"

    const-string v2, "Waiting for service to get connected"

    .line 97
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 4177
    iget-object p1, p0, Lcom/google/android/setupcompat/internal/i;->d:Lcom/google/android/setupcompat/internal/i$a;

    const/4 p2, 0x4

    .line 107
    invoke-static {v1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 108
    new-array p2, v2, [Ljava/lang/Object;

    iget-object p3, p1, Lcom/google/android/setupcompat/internal/i$a;->a:Lcom/google/android/setupcompat/internal/i$b;

    aput-object p3, p2, v3

    const-string p3, "Finished waiting for service to get connected. Current state = %s"

    .line 110
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 108
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_1
    iget-object p1, p1, Lcom/google/android/setupcompat/internal/i$a;->b:Lcom/google/android/setupcompat/a;

    return-object p1

    .line 102
    :cond_2
    invoke-direct {p0}, Lcom/google/android/setupcompat/internal/i;->b()V

    .line 103
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 104
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v3

    aput-object p3, v1, v2

    const-string p1, "Failed to acquire connection after [%s %s]"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;JLjava/util/concurrent/TimeUnit;)Lcom/google/android/setupcompat/a;
    .locals 3
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 55
    invoke-static {p0}, Lcom/google/android/setupcompat/internal/i;->a(Landroid/content/Context;)Lcom/google/android/setupcompat/internal/i;

    move-result-object p0

    .line 1061
    sget-boolean v0, Lcom/google/android/setupcompat/internal/i;->c:Z

    if-nez v0, :cond_1

    .line 1062
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 2177
    iget-object v0, p0, Lcom/google/android/setupcompat/internal/i;->d:Lcom/google/android/setupcompat/internal/i$a;

    .line 1065
    sget-object v1, Lcom/google/android/setupcompat/internal/i$2;->a:[I

    iget-object v2, v0, Lcom/google/android/setupcompat/internal/i$a;->a:Lcom/google/android/setupcompat/internal/i$b;

    invoke-virtual {v2}, Lcom/google/android/setupcompat/internal/i$b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1086
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unknown state = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v0, Lcom/google/android/setupcompat/internal/i$a;->a:Lcom/google/android/setupcompat/internal/i$b;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1083
    :pswitch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "NOT_STARTED state only possible before instance is created."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1079
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/setupcompat/internal/i;->b()V

    .line 1080
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupcompat/internal/i;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/setupcompat/a;

    move-result-object p0

    return-object p0

    .line 1076
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupcompat/internal/i;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/setupcompat/a;

    move-result-object p0

    return-object p0

    :pswitch_3
    const/4 p0, 0x0

    return-object p0

    .line 1067
    :pswitch_4
    iget-object p0, v0, Lcom/google/android/setupcompat/internal/i$a;->b:Lcom/google/android/setupcompat/a;

    return-object p0

    .line 2041
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "getService blocks and should not be called from the main thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Landroid/content/Context;)Lcom/google/android/setupcompat/internal/i;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "Context object cannot be null."

    .line 316
    invoke-static {p0, v0}, Lcom/google/android/setupcompat/internal/g;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/google/android/setupcompat/internal/i;->g:Lcom/google/android/setupcompat/internal/i;

    if-nez v0, :cond_1

    .line 319
    const-class v1, Lcom/google/android/setupcompat/internal/i;

    monitor-enter v1

    .line 320
    :try_start_0
    sget-object v0, Lcom/google/android/setupcompat/internal/i;->g:Lcom/google/android/setupcompat/internal/i;

    if-nez v0, :cond_0

    .line 322
    new-instance v0, Lcom/google/android/setupcompat/internal/i;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/internal/i;-><init>(Landroid/content/Context;)V

    .line 323
    sput-object v0, Lcom/google/android/setupcompat/internal/i;->g:Lcom/google/android/setupcompat/internal/i;

    invoke-direct {v0}, Lcom/google/android/setupcompat/internal/i;->b()V

    .line 325
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static a()Ljava/util/concurrent/CountDownLatch;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 123
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    return-object v0
.end method

.method private a(Lcom/google/android/setupcompat/internal/i$a;)V
    .locals 4

    const-string v0, "SucServiceProvider"

    const/4 v1, 0x4

    .line 181
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 182
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/setupcompat/internal/i;->d:Lcom/google/android/setupcompat/internal/i$a;

    iget-object v3, v3, Lcom/google/android/setupcompat/internal/i$a;->a:Lcom/google/android/setupcompat/internal/i$b;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/google/android/setupcompat/internal/i$a;->a:Lcom/google/android/setupcompat/internal/i$b;

    aput-object v3, v1, v2

    const-string v2, "State changed: %s -> %s"

    .line 184
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    iput-object p1, p0, Lcom/google/android/setupcompat/internal/i;->d:Lcom/google/android/setupcompat/internal/i$a;

    .line 188
    invoke-direct {p0}, Lcom/google/android/setupcompat/internal/i;->c()Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 190
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/google/android/setupcompat/internal/i;Lcom/google/android/setupcompat/internal/i$a;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/setupcompat/internal/i;->a(Lcom/google/android/setupcompat/internal/i$a;)V

    return-void
.end method

.method private declared-synchronized b()V
    .locals 5

    monitor-enter p0

    .line 5177
    :try_start_0
    iget-object v0, p0, Lcom/google/android/setupcompat/internal/i;->d:Lcom/google/android/setupcompat/internal/i$a;

    .line 128
    iget-object v1, v0, Lcom/google/android/setupcompat/internal/i$a;->a:Lcom/google/android/setupcompat/internal/i$b;

    sget-object v2, Lcom/google/android/setupcompat/internal/i$b;->d:Lcom/google/android/setupcompat/internal/i$b;

    if-ne v1, v2, :cond_0

    const-string v0, "SucServiceProvider"

    const-string v1, "Refusing to rebind since current state is already connected"

    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    .line 132
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/google/android/setupcompat/internal/i$a;->a:Lcom/google/android/setupcompat/internal/i$b;

    sget-object v1, Lcom/google/android/setupcompat/internal/i$b;->a:Lcom/google/android/setupcompat/internal/i$b;

    if-eq v0, v1, :cond_1

    const-string v0, "SucServiceProvider"

    const-string v1, "Unbinding existing service connection."

    .line 133
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/google/android/setupcompat/internal/i;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/setupcompat/internal/i;->b:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 139
    :try_start_2
    iget-object v2, p0, Lcom/google/android/setupcompat/internal/i;->e:Landroid/content/Context;

    sget-object v3, Lcom/google/android/setupcompat/internal/i;->a:Landroid/content/Intent;

    iget-object v4, p0, Lcom/google/android/setupcompat/internal/i;->b:Landroid/content/ServiceConnection;

    .line 140
    invoke-virtual {v2, v3, v4, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "SucServiceProvider"

    const-string v4, "Unable to bind to compat service"

    .line 142
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    .line 6173
    iget-object v0, p0, Lcom/google/android/setupcompat/internal/i;->d:Lcom/google/android/setupcompat/internal/i$a;

    iget-object v0, v0, Lcom/google/android/setupcompat/internal/i$a;->a:Lcom/google/android/setupcompat/internal/i$b;

    .line 150
    sget-object v2, Lcom/google/android/setupcompat/internal/i$b;->d:Lcom/google/android/setupcompat/internal/i$b;

    if-eq v0, v2, :cond_3

    .line 151
    new-instance v0, Lcom/google/android/setupcompat/internal/i$a;

    sget-object v2, Lcom/google/android/setupcompat/internal/i$b;->c:Lcom/google/android/setupcompat/internal/i$b;

    invoke-direct {v0, v2, v1}, Lcom/google/android/setupcompat/internal/i$a;-><init>(Lcom/google/android/setupcompat/internal/i$b;B)V

    invoke-direct {p0, v0}, Lcom/google/android/setupcompat/internal/i;->a(Lcom/google/android/setupcompat/internal/i$a;)V

    const-string v0, "SucServiceProvider"

    const-string v1, "Context#bindService went through, now waiting for service connection"

    .line 152
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    .line 156
    :cond_2
    :try_start_4
    new-instance v2, Lcom/google/android/setupcompat/internal/i$a;

    sget-object v3, Lcom/google/android/setupcompat/internal/i$b;->b:Lcom/google/android/setupcompat/internal/i$b;

    invoke-direct {v2, v3, v1}, Lcom/google/android/setupcompat/internal/i$a;-><init>(Lcom/google/android/setupcompat/internal/i$b;B)V

    invoke-direct {p0, v2}, Lcom/google/android/setupcompat/internal/i;->a(Lcom/google/android/setupcompat/internal/i$a;)V

    const-string v2, "SucServiceProvider"

    const-string v3, "Context#bindService did not succeed, is the manifest missing %s permission?"

    .line 157
    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "com.google.android.setupwizard.SETUP_COMPAT_SERVICE"

    aput-object v4, v0, v1

    .line 159
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 163
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()Ljava/util/concurrent/CountDownLatch;
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/google/android/setupcompat/internal/i;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private d()Ljava/util/concurrent/CountDownLatch;
    .locals 3

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupcompat/internal/i;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1

    return-object v0

    .line 210
    :cond_1
    invoke-static {}, Lcom/google/android/setupcompat/internal/i;->a()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/google/android/setupcompat/internal/i;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0
.end method
