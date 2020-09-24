.class public Lcom/coloros/systemui/common/receiver/TimeReceiver;
.super Lcom/coloros/systemui/common/receiver/AbstractReceiver;
.source "TimeReceiver.java"


# static fields
.field private static volatile sInstance:Lcom/coloros/systemui/common/receiver/TimeReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/coloros/systemui/common/receiver/AbstractReceiver;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/common/receiver/TimeReceiver;
    .locals 2

    .line 28
    sget-object v0, Lcom/coloros/systemui/common/receiver/TimeReceiver;->sInstance:Lcom/coloros/systemui/common/receiver/TimeReceiver;

    if-nez v0, :cond_1

    .line 29
    const-class v0, Lcom/coloros/systemui/common/receiver/TimeReceiver;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/common/receiver/TimeReceiver;->sInstance:Lcom/coloros/systemui/common/receiver/TimeReceiver;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/coloros/systemui/common/receiver/TimeReceiver;

    invoke-direct {v1}, Lcom/coloros/systemui/common/receiver/TimeReceiver;-><init>()V

    sput-object v1, Lcom/coloros/systemui/common/receiver/TimeReceiver;->sInstance:Lcom/coloros/systemui/common/receiver/TimeReceiver;

    .line 33
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 35
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/systemui/common/receiver/TimeReceiver;->sInstance:Lcom/coloros/systemui/common/receiver/TimeReceiver;

    return-object v0
.end method


# virtual methods
.method protected getActions()[Ljava/lang/String;
    .locals 2

    const-string p0, "android.intent.action.TIME_TICK"

    const-string v0, "android.intent.action.TIME_SET"

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 40
    filled-new-array {p0, v0, v1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
