.class public abstract Lcom/coloros/systemui/common/receiver/AbstractReceiver;
.super Ljava/lang/Object;
.source "AbstractReceiver.java"


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private mHasRegister:Z

.field protected final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/systemui/common/receiver/IReceiverListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->TAG:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->mListeners:Ljava/util/List;

    .line 38
    new-instance v0, Lcom/coloros/systemui/common/receiver/AbstractReceiver$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/common/receiver/AbstractReceiver$1;-><init>(Lcom/coloros/systemui/common/receiver/AbstractReceiver;)V

    iput-object v0, p0, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic lambda$onReceive$0(Landroid/content/Context;Landroid/content/Intent;Lcom/coloros/systemui/common/receiver/IReceiverListener;)V
    .locals 0

    .line 122
    invoke-interface {p2, p0, p1}, Lcom/coloros/systemui/common/receiver/IReceiverListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static varargs unregister(Landroid/content/Context;[Lcom/coloros/systemui/common/receiver/AbstractReceiver;)V
    .locals 3

    .line 126
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {v2, p0}, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->unregister(Landroid/content/Context;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/coloros/systemui/common/receiver/IReceiverListener;)V
    .locals 0
    .param p1    # Lcom/coloros/systemui/common/receiver/IReceiverListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 106
    iget-object p0, p0, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected afterRegister(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method protected beforeRegister(Landroid/content/IntentFilter;)V
    .locals 0

    return-void
.end method

.method protected abstract getActions()[Ljava/lang/String;
.end method

.method protected onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 122
    iget-object p0, p0, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->mListeners:Ljava/util/List;

    new-instance v0, Lcom/coloros/systemui/common/receiver/-$$Lambda$AbstractReceiver$engrYrtNgNDJsn_Nh7DifB4j1J4;

    invoke-direct {v0, p1, p2}, Lcom/coloros/systemui/common/receiver/-$$Lambda$AbstractReceiver$engrYrtNgNDJsn_Nh7DifB4j1J4;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 5

    .line 47
    iget-object v0, p0, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Common"

    const-string v2, "register()"

    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-boolean v0, p0, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->mHasRegister:Z

    if-nez v0, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->getActions()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    array-length v1, v0

    if-lez v1, :cond_1

    .line 51
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 52
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 53
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->beforeRegister(Landroid/content/IntentFilter;)V

    .line 56
    iget-object v0, p0, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->mHasRegister:Z

    .line 58
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->afterRegister(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public register(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5

    .line 64
    iget-object v0, p0, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Common"

    const-string v2, "register()"

    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-boolean v0, p0, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->mHasRegister:Z

    if-nez v0, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->getActions()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67
    array-length v1, v0

    if-lez v1, :cond_1

    .line 68
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 70
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->beforeRegister(Landroid/content/IntentFilter;)V

    .line 73
    iget-object v0, p0, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "oppo.permission.OPPO_COMPONENT_SAFE"

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 p2, 0x1

    .line 74
    iput-boolean p2, p0, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->mHasRegister:Z

    .line 75
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->afterRegister(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public register(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Handler;)V
    .locals 8

    .line 81
    iget-object v0, p0, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Common"

    const-string v2, "register()"

    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-boolean v0, p0, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->mHasRegister:Z

    if-nez v0, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->getActions()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    array-length v1, v0

    if-lez v1, :cond_1

    .line 85
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 86
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 87
    invoke-virtual {v5, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0, v5}, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->beforeRegister(Landroid/content/IntentFilter;)V

    .line 90
    iget-object v3, p0, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v6, "oppo.permission.OPPO_COMPONENT_SAFE"

    move-object v2, p1

    move-object v4, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 p2, 0x1

    .line 91
    iput-boolean p2, p0, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->mHasRegister:Z

    .line 92
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->afterRegister(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public removeListener(Lcom/coloros/systemui/common/receiver/IReceiverListener;)V
    .locals 0
    .param p1    # Lcom/coloros/systemui/common/receiver/IReceiverListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 110
    iget-object p0, p0, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Common"

    const-string v2, "unregister()"

    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-boolean v0, p0, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->mHasRegister:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 101
    iput-boolean p1, p0, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->mHasRegister:Z

    :cond_0
    return-void
.end method
