.class public Lcom/coloros/systemui/common/receiver/RomUpdateReceiver;
.super Lcom/coloros/systemui/common/receiver/AbstractReceiver;
.source "RomUpdateReceiver.java"


# static fields
.field private static final ACTION_ROM_UPDATE:Ljava/lang/String; = "oppo.intent.action.ROM_UPDATE_CONFIG_SUCCESS"

.field private static final EXTRA_CONFIG_SUCCESS:Ljava/lang/String; = "ROM_UPDATE_CONFIG_LIST"

.field private static final TAG:Ljava/lang/String; = "RomUpdateReceiver"

.field private static volatile sInstance:Lcom/coloros/systemui/common/receiver/RomUpdateReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/coloros/systemui/common/receiver/AbstractReceiver;-><init>()V

    .line 40
    new-instance v0, Lcom/coloros/systemui/common/receiver/-$$Lambda$RomUpdateReceiver$iW10csndW8gi6muQUJGt1bXFWNo;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/common/receiver/-$$Lambda$RomUpdateReceiver$iW10csndW8gi6muQUJGt1bXFWNo;-><init>(Lcom/coloros/systemui/common/receiver/RomUpdateReceiver;)V

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/common/receiver/RomUpdateReceiver;->addListener(Lcom/coloros/systemui/common/receiver/IReceiverListener;)V

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/common/receiver/RomUpdateReceiver;
    .locals 2

    .line 44
    sget-object v0, Lcom/coloros/systemui/common/receiver/RomUpdateReceiver;->sInstance:Lcom/coloros/systemui/common/receiver/RomUpdateReceiver;

    if-nez v0, :cond_1

    .line 45
    const-class v0, Lcom/coloros/systemui/common/receiver/RomUpdateReceiver;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/common/receiver/RomUpdateReceiver;->sInstance:Lcom/coloros/systemui/common/receiver/RomUpdateReceiver;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/coloros/systemui/common/receiver/RomUpdateReceiver;

    invoke-direct {v1}, Lcom/coloros/systemui/common/receiver/RomUpdateReceiver;-><init>()V

    sput-object v1, Lcom/coloros/systemui/common/receiver/RomUpdateReceiver;->sInstance:Lcom/coloros/systemui/common/receiver/RomUpdateReceiver;

    .line 49
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 51
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/systemui/common/receiver/RomUpdateReceiver;->sInstance:Lcom/coloros/systemui/common/receiver/RomUpdateReceiver;

    return-object v0
.end method

.method private handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Common"

    const-string v3, "RomUpdateReceiver"

    invoke-static {v2, v3, v1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ROM_UPDATE_CONFIG_LIST"

    .line 65
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 66
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "sys_systemui_showhidenavigationbaricon_blacklist"

    .line 72
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "changeTableNameList contians sys_systemui_showhidenavigationbaricon_blacklist"

    .line 73
    invoke-static {v2, v3, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/coloros/systemui/common/receiver/RomUpdateReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/coloros/systemui/common/receiver/RomUpdateReceiver$1;-><init>(Lcom/coloros/systemui/common/receiver/RomUpdateReceiver;Landroid/content/Context;)V

    new-array v4, v1, [Ljava/lang/Void;

    .line 80
    invoke-virtual {v0, v4}, Lcom/coloros/systemui/common/receiver/RomUpdateReceiver$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    const-string v0, "sys_systemui_navigationbar_whitelist"

    .line 83
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "changeTableNameList contians sys_systemui_navigationbar_whitelist"

    .line 84
    invoke-static {v2, v3, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcom/coloros/systemui/common/receiver/RomUpdateReceiver$2;

    invoke-direct {v0, p0, p1}, Lcom/coloros/systemui/common/receiver/RomUpdateReceiver$2;-><init>(Lcom/coloros/systemui/common/receiver/RomUpdateReceiver;Landroid/content/Context;)V

    new-array v2, v1, [Ljava/lang/Void;

    .line 91
    invoke-virtual {v0, v2}, Lcom/coloros/systemui/common/receiver/RomUpdateReceiver$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    const-string v0, "sys_systemui_quicksettingstile_blacklist"

    .line 95
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "Statusbar"

    if-eqz v0, :cond_4

    const-string v0, "changeTableNameList contians sys_systemui_quicksettingstile_blacklist"

    .line 96
    invoke-static {v2, v3, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v0, Lcom/coloros/systemui/common/receiver/RomUpdateReceiver$3;

    invoke-direct {v0, p0, p1}, Lcom/coloros/systemui/common/receiver/RomUpdateReceiver$3;-><init>(Lcom/coloros/systemui/common/receiver/RomUpdateReceiver;Landroid/content/Context;)V

    new-array v4, v1, [Ljava/lang/Void;

    .line 103
    invoke-virtual {v0, v4}, Lcom/coloros/systemui/common/receiver/RomUpdateReceiver$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_4
    const-string v0, "sys_aod_prevent_burn_settings"

    .line 108
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isIsPreventedScreenBurn()Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "changeTableNameList contians sys_aod_prevent_burn_settings"

    .line 109
    invoke-static {v2, v3, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance p2, Lcom/coloros/systemui/common/receiver/RomUpdateReceiver$4;

    invoke-direct {p2, p0, p1}, Lcom/coloros/systemui/common/receiver/RomUpdateReceiver$4;-><init>(Lcom/coloros/systemui/common/receiver/RomUpdateReceiver;Landroid/content/Context;)V

    new-array p0, v1, [Ljava/lang/Void;

    .line 117
    invoke-virtual {p2, p0}, Lcom/coloros/systemui/common/receiver/RomUpdateReceiver$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_5
    return-void

    :cond_6
    :goto_0
    const-string p0, "list null or empty"

    .line 67
    invoke-static {v2, v3, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$iW10csndW8gi6muQUJGt1bXFWNo(Lcom/coloros/systemui/common/receiver/RomUpdateReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/common/receiver/RomUpdateReceiver;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getActions()[Ljava/lang/String;
    .locals 0

    const-string p0, "oppo.intent.action.ROM_UPDATE_CONFIG_SUCCESS"

    .line 56
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
