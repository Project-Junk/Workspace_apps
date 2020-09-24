.class public Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;
.super Lcom/coloros/systemui/common/receiver/AbstractReceiver;
.source "SystemDialogReceiver.java"


# static fields
.field public static final EXTRA_REASON:Ljava/lang/String; = "reason"

.field public static final REASON_ASSIST:Ljava/lang/String; = "assist"

.field public static final REASON_CALL:Ljava/lang/String; = "call"

.field public static final REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field public static final REASON_VOICEINTERACTION:Ljava/lang/String; = "voiceinteraction"

.field private static volatile sInstance:Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/coloros/systemui/common/receiver/AbstractReceiver;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;
    .locals 2

    .line 32
    sget-object v0, Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;->sInstance:Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;

    if-nez v0, :cond_1

    .line 33
    const-class v0, Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;->sInstance:Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;

    invoke-direct {v1}, Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;-><init>()V

    sput-object v1, Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;->sInstance:Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;

    .line 37
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 39
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;->sInstance:Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;

    return-object v0
.end method


# virtual methods
.method protected getActions()[Ljava/lang/String;
    .locals 0

    const-string p0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 44
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
