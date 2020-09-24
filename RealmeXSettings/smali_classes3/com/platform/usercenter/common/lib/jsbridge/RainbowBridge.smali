.class public Lcom/platform/usercenter/common/lib/jsbridge/RainbowBridge;
.super Ljava/lang/Object;
.source "RainbowBridge.java"


# static fields
.field private static volatile sInstance:Lcom/platform/usercenter/common/lib/jsbridge/RainbowBridge;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/platform/usercenter/common/lib/jsbridge/RainbowBridge;
    .locals 2

    .line 11
    sget-object v0, Lcom/platform/usercenter/common/lib/jsbridge/RainbowBridge;->sInstance:Lcom/platform/usercenter/common/lib/jsbridge/RainbowBridge;

    if-nez v0, :cond_1

    .line 13
    const-class v1, Lcom/platform/usercenter/common/lib/jsbridge/RainbowBridge;

    monitor-enter v1

    .line 14
    :try_start_0
    sget-object v0, Lcom/platform/usercenter/common/lib/jsbridge/RainbowBridge;->sInstance:Lcom/platform/usercenter/common/lib/jsbridge/RainbowBridge;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/platform/usercenter/common/lib/jsbridge/RainbowBridge;

    invoke-direct {v0}, Lcom/platform/usercenter/common/lib/jsbridge/RainbowBridge;-><init>()V

    .line 17
    sput-object v0, Lcom/platform/usercenter/common/lib/jsbridge/RainbowBridge;->sInstance:Lcom/platform/usercenter/common/lib/jsbridge/RainbowBridge;

    .line 19
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public clazz(Ljava/lang/Class;)Lcom/platform/usercenter/common/lib/jsbridge/NativeMethodInjectHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/platform/usercenter/common/lib/jsbridge/NativeMethodInjectHelper;"
        }
    .end annotation

    .line 25
    invoke-static {}, Lcom/platform/usercenter/common/lib/jsbridge/NativeMethodInjectHelper;->getInstance()Lcom/platform/usercenter/common/lib/jsbridge/NativeMethodInjectHelper;

    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Lcom/platform/usercenter/common/lib/jsbridge/NativeMethodInjectHelper;->clazz(Ljava/lang/Class;)Lcom/platform/usercenter/common/lib/jsbridge/NativeMethodInjectHelper;

    move-result-object p1

    return-object p1
.end method
