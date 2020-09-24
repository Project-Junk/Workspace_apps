.class public Lcom/coloros/systemui/aod/aodclock/util/AodThreadUtil;
.super Ljava/lang/Object;
.source "AodThreadUtil.java"


# static fields
.field private static final sWorkHandler:Landroid/os/Handler;

.field private static sWorkThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AodWorkerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coloros/systemui/aod/aodclock/util/AodThreadUtil;->sWorkThread:Landroid/os/HandlerThread;

    .line 23
    sget-object v0, Lcom/coloros/systemui/aod/aodclock/util/AodThreadUtil;->sWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/coloros/systemui/aod/aodclock/util/AodThreadUtil;->sWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/coloros/systemui/aod/aodclock/util/AodThreadUtil;->sWorkHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasCallbacksInWorkThread(Ljava/lang/Runnable;)Z
    .locals 1

    .line 48
    sget-object v0, Lcom/coloros/systemui/aod/aodclock/util/AodThreadUtil;->sWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public static removeCallbacksInWorkThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 44
    sget-object v0, Lcom/coloros/systemui/aod/aodclock/util/AodThreadUtil;->sWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static runOnWorkThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 32
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    sget-object v1, Lcom/coloros/systemui/aod/aodclock/util/AodThreadUtil;->sWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 33
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 35
    :cond_0
    sget-object v0, Lcom/coloros/systemui/aod/aodclock/util/AodThreadUtil;->sWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public static runOnWorkThreadDelay(Ljava/lang/Runnable;J)V
    .locals 1

    .line 40
    sget-object v0, Lcom/coloros/systemui/aod/aodclock/util/AodThreadUtil;->sWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
