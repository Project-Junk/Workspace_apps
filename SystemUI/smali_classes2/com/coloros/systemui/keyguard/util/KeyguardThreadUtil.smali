.class public Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;
.super Ljava/lang/Object;
.source "KeyguardThreadUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThreadUtil"

.field private static sMainHandler:Landroid/os/Handler;

.field private static final sWorkHandler:Landroid/os/Handler;

.field private static sWorkThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->sMainHandler:Landroid/os/Handler;

    .line 23
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KeyguardWorkerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->sWorkThread:Landroid/os/HandlerThread;

    .line 26
    sget-object v0, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->sWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 29
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->sWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->sWorkHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMainHandler()Landroid/os/Handler;
    .locals 1

    .line 95
    sget-object v0, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->sMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getMainLooper()Landroid/os/Looper;
    .locals 1

    .line 91
    sget-object v0, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->sMainHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static getWorkHandler()Landroid/os/Handler;
    .locals 1

    .line 39
    sget-object v0, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->sWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getWorkLooper()Landroid/os/Looper;
    .locals 1

    .line 35
    sget-object v0, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->sWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static hasSameTaskInMainLooper(Ljava/lang/Runnable;)Z
    .locals 1

    .line 47
    sget-object v0, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->sMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public static hasSameTaskInWorkLooper(Ljava/lang/Runnable;)Z
    .locals 1

    .line 43
    sget-object v0, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->sWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public static removeCallbacksInUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 87
    sget-object v0, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->sMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static removeCallbacksInWorkThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 63
    sget-object v0, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->sWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 67
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 68
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 70
    :cond_0
    sget-object v0, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->sMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public static runOnUiThreadAtFront(Ljava/lang/Runnable;)V
    .locals 2

    .line 75
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 76
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 78
    :cond_0
    sget-object v0, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->sMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public static runOnUiThreadDelay(Ljava/lang/Runnable;J)V
    .locals 1

    .line 83
    sget-object v0, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->sMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static runOnWorkThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 51
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    sget-object v1, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->sWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 52
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 54
    :cond_0
    sget-object v0, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->sWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public static runOnWorkThreadDelay(Ljava/lang/Runnable;J)V
    .locals 1

    .line 59
    sget-object v0, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->sWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
