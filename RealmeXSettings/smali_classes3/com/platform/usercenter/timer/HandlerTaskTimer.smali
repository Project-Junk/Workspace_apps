.class public final Lcom/platform/usercenter/timer/HandlerTaskTimer;
.super Ljava/lang/Object;
.source "HandlerTaskTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;,
        Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;
    }
.end annotation


# static fields
.field private static instance:Lcom/platform/usercenter/timer/HandlerTaskTimer;


# instance fields
.field private builderTagsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final callback:Landroid/os/Handler$Callback;

.field private final uiHandler:Lcom/platform/usercenter/timer/WeakHandler;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer;->builderTagsMap:Ljava/util/Map;

    .line 26
    new-instance v0, Lcom/platform/usercenter/timer/HandlerTaskTimer$1;

    invoke-direct {v0, p0}, Lcom/platform/usercenter/timer/HandlerTaskTimer$1;-><init>(Lcom/platform/usercenter/timer/HandlerTaskTimer;)V

    iput-object v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer;->callback:Landroid/os/Handler$Callback;

    .line 43
    new-instance v0, Lcom/platform/usercenter/timer/WeakHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer;->callback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Lcom/platform/usercenter/timer/WeakHandler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer;->uiHandler:Lcom/platform/usercenter/timer/WeakHandler;

    return-void
.end method

.method static synthetic access$100(Lcom/platform/usercenter/timer/HandlerTaskTimer;)Lcom/platform/usercenter/timer/WeakHandler;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer;->uiHandler:Lcom/platform/usercenter/timer/WeakHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/platform/usercenter/timer/HandlerTaskTimer;)Ljava/util/Map;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer;->builderTagsMap:Ljava/util/Map;

    return-object p0
.end method

.method public static getInstance()Lcom/platform/usercenter/timer/HandlerTaskTimer;
    .locals 2

    .line 47
    sget-object v0, Lcom/platform/usercenter/timer/HandlerTaskTimer;->instance:Lcom/platform/usercenter/timer/HandlerTaskTimer;

    if-nez v0, :cond_1

    .line 48
    const-class v0, Lcom/platform/usercenter/timer/HandlerTaskTimer;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/platform/usercenter/timer/HandlerTaskTimer;->instance:Lcom/platform/usercenter/timer/HandlerTaskTimer;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/platform/usercenter/timer/HandlerTaskTimer;

    invoke-direct {v1}, Lcom/platform/usercenter/timer/HandlerTaskTimer;-><init>()V

    sput-object v1, Lcom/platform/usercenter/timer/HandlerTaskTimer;->instance:Lcom/platform/usercenter/timer/HandlerTaskTimer;

    .line 52
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 54
    :cond_1
    :goto_0
    sget-object v0, Lcom/platform/usercenter/timer/HandlerTaskTimer;->instance:Lcom/platform/usercenter/timer/HandlerTaskTimer;

    return-object v0
.end method


# virtual methods
.method public final cancel(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer;->builderTagsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;

    if-eqz p1, :cond_1

    .line 67
    invoke-virtual {p1}, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->cancel()V

    :cond_1
    return-void
.end method

.method public final newBuilder()Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;
    .locals 1

    .line 58
    new-instance v0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;

    invoke-direct {v0, p0}, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;-><init>(Lcom/platform/usercenter/timer/HandlerTaskTimer;)V

    return-object v0
.end method

.method public final pause(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer;->builderTagsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;

    if-eqz p1, :cond_1

    .line 77
    invoke-virtual {p1}, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->pause()V

    :cond_1
    return-void
.end method

.method public final resume(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer;->builderTagsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;

    if-eqz p1, :cond_1

    .line 87
    invoke-virtual {p1}, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->resume()V

    :cond_1
    return-void
.end method
