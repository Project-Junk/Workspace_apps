.class public Lcom/coloros/systemui/common/receiver/DragStateReceiver;
.super Lcom/coloros/systemui/common/receiver/AbstractReceiver;
.source "DragStateReceiver.java"


# static fields
.field public static final EXIT_DRAG_WINDOW_ACTION:Ljava/lang/String; = "com.oppo.intent.action.EXIT_DRAG_WINDOW"

.field public static final START_DRAG_WINDOW_ACTION:Ljava/lang/String; = "com.oppo.intent.action.START_DRAG_WINDOW"

.field public static final SUCCESS_DRAG_WINDOW_ACTION:Ljava/lang/String; = "com.oppo.intent.action.SUCCESS_DRAG_WINDOW"

.field private static volatile sInstance:Lcom/coloros/systemui/common/receiver/DragStateReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/coloros/systemui/common/receiver/AbstractReceiver;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/common/receiver/DragStateReceiver;
    .locals 2

    .line 16
    sget-object v0, Lcom/coloros/systemui/common/receiver/DragStateReceiver;->sInstance:Lcom/coloros/systemui/common/receiver/DragStateReceiver;

    if-nez v0, :cond_1

    .line 17
    const-class v0, Lcom/coloros/systemui/common/receiver/DragStateReceiver;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/common/receiver/DragStateReceiver;->sInstance:Lcom/coloros/systemui/common/receiver/DragStateReceiver;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lcom/coloros/systemui/common/receiver/DragStateReceiver;

    invoke-direct {v1}, Lcom/coloros/systemui/common/receiver/DragStateReceiver;-><init>()V

    sput-object v1, Lcom/coloros/systemui/common/receiver/DragStateReceiver;->sInstance:Lcom/coloros/systemui/common/receiver/DragStateReceiver;

    .line 21
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 23
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/systemui/common/receiver/DragStateReceiver;->sInstance:Lcom/coloros/systemui/common/receiver/DragStateReceiver;

    return-object v0
.end method


# virtual methods
.method protected getActions()[Ljava/lang/String;
    .locals 2

    const-string p0, "com.oppo.intent.action.EXIT_DRAG_WINDOW"

    const-string v0, "com.oppo.intent.action.SUCCESS_DRAG_WINDOW"

    const-string v1, "com.oppo.intent.action.START_DRAG_WINDOW"

    .line 29
    filled-new-array {p0, v0, v1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
