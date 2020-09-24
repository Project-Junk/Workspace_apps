.class public Lcom/coloros/systemui/common/receiver/ForceClearReceiver;
.super Lcom/coloros/systemui/common/receiver/AbstractReceiver;
.source "ForceClearReceiver.java"


# static fields
.field private static final ACTION_FORCE_CLOSE_ALL_PROCESS:Ljava/lang/String; = "android.intent.action.FORCE_CLOSE_ALL_PROCESS"

.field private static volatile sInstance:Lcom/coloros/systemui/common/receiver/ForceClearReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/coloros/systemui/common/receiver/AbstractReceiver;-><init>()V

    .line 27
    sget-object v0, Lcom/coloros/systemui/common/receiver/-$$Lambda$ForceClearReceiver$LXw2pTGe3lkTm2Ti31gRCI4LLL8;->INSTANCE:Lcom/coloros/systemui/common/receiver/-$$Lambda$ForceClearReceiver$LXw2pTGe3lkTm2Ti31gRCI4LLL8;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/common/receiver/ForceClearReceiver;->addListener(Lcom/coloros/systemui/common/receiver/IReceiverListener;)V

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/common/receiver/ForceClearReceiver;
    .locals 2

    .line 31
    sget-object v0, Lcom/coloros/systemui/common/receiver/ForceClearReceiver;->sInstance:Lcom/coloros/systemui/common/receiver/ForceClearReceiver;

    if-nez v0, :cond_1

    .line 32
    const-class v0, Lcom/coloros/systemui/common/receiver/ForceClearReceiver;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/common/receiver/ForceClearReceiver;->sInstance:Lcom/coloros/systemui/common/receiver/ForceClearReceiver;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/coloros/systemui/common/receiver/ForceClearReceiver;

    invoke-direct {v1}, Lcom/coloros/systemui/common/receiver/ForceClearReceiver;-><init>()V

    sput-object v1, Lcom/coloros/systemui/common/receiver/ForceClearReceiver;->sInstance:Lcom/coloros/systemui/common/receiver/ForceClearReceiver;

    .line 36
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 38
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/systemui/common/receiver/ForceClearReceiver;->sInstance:Lcom/coloros/systemui/common/receiver/ForceClearReceiver;

    return-object v0
.end method

.method static synthetic lambda$new$0(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 27
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p0

    const-class p1, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    invoke-static {}, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->getInstance()Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->triggerGCImmediate()V

    return-void
.end method


# virtual methods
.method protected getActions()[Ljava/lang/String;
    .locals 0

    const-string p0, "android.intent.action.FORCE_CLOSE_ALL_PROCESS"

    .line 43
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
