.class public Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;
.super Ljava/lang/Object;
.source "BRListenerHandler.java"

# interfaces
.implements Lcom/coloros/backup/sdk/v2/host/listener/BRListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler$WorkHandler;,
        Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler$Agrs;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_ON_ALL_END:I = 0x4

.field private static final MSG_ON_CREATE:I = 0x0

.field private static final MSG_ON_END:I = 0x3

.field private static final MSG_ON_ERROR:I = 0x6

.field private static final MSG_ON_PREPARE:I = 0x1

.field private static final MSG_ON_PREVIEW:I = 0x7

.field private static final MSG_ON_PROGRESS_CHANGED:I = 0x5

.field private static final MSG_ON_START:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BRListenerHandler"


# instance fields
.field private mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

.field private mHandler:Landroid/os/Handler;

.field private mParentChildRelationshipMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRecordMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitMsgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;->mRecordMap:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;->mParentChildRelationshipMap:Ljava/util/HashMap;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;->mWaitMsgMap:Ljava/util/HashMap;

    .line 100
    new-instance v0, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler$WorkHandler;

    invoke-direct {v0, p0, p1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler$WorkHandler;-><init>(Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;)Lcom/coloros/backup/sdk/v2/host/listener/BRListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;->mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    return-object p0
.end method

.method private initRecordPlugin(Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;)V
    .locals 3

    .line 192
    invoke-virtual {p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getUniqueID()Ljava/lang/String;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;->mRecordMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-virtual {p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->isParent()Z

    move-result v1

    if-nez v1, :cond_1

    .line 195
    invoke-virtual {p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getParentID()Ljava/lang/String;

    move-result-object p1

    .line 197
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;->mParentChildRelationshipMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 200
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;->mParentChildRelationshipMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private isAllParentAndChildEnd(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)Z
    .locals 3

    .line 214
    invoke-virtual {p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->getServiceInfo()Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    move-result-object p1

    .line 215
    invoke-virtual {p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->isParent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    invoke-virtual {p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getParentID()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getUniqueID()Ljava/lang/String;

    move-result-object p1

    .line 222
    :goto_0
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;->mRecordMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 223
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;->mParentChildRelationshipMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    .line 229
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 230
    iget-object v2, p0, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;->mRecordMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 234
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    return v1

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_1
    return v1
.end method

.method private setTrueInRecord(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)V
    .locals 1

    .line 207
    invoke-virtual {p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->getServiceInfo()Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    move-result-object p1

    .line 208
    invoke-virtual {p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getUniqueID()Ljava/lang/String;

    move-result-object p1

    .line 209
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;->mRecordMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onAllEnd(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "BRListenerHandler"

    const-string v1, "onAllEnd"

    .line 177
    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler$Agrs;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler$Agrs;-><init>(Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;[Ljava/lang/Object;)V

    const/4 p0, 0x4

    invoke-virtual {v0, p0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onError(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V
    .locals 4

    .line 188
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler$Agrs;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-direct {v1, p0, v2}, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler$Agrs;-><init>(Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;[Ljava/lang/Object;)V

    const/4 p0, 0x6

    invoke-virtual {v0, p0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPluginAdd(Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;Landroid/os/Bundle;)V
    .locals 0

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    monitor-enter p2

    .line 112
    :try_start_0
    invoke-direct {p0, p1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;->initRecordPlugin(Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;)V

    .line 113
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPluginCreate(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler$Agrs;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-direct {v1, p0, v2}, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler$Agrs;-><init>(Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;[Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPluginEnd(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V
    .locals 8

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    monitor-enter v0

    .line 139
    :try_start_0
    invoke-direct {p0, p1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;->setTrueInRecord(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)V

    .line 140
    invoke-virtual {p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->getServiceInfo()Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    move-result-object v1

    .line 144
    invoke-direct {p0, p1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;->isAllParentAndChildEnd(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eqz v2, :cond_1

    .line 145
    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->isParent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler$Agrs;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    aput-object p2, v5, v3

    invoke-direct {v2, p0, v5}, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler$Agrs;-><init>(Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;[Ljava/lang/Object;)V

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 156
    :cond_0
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;->mWaitMsgMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getParentID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Message;

    if-eqz p0, :cond_2

    .line 158
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->isParent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 166
    iget-object v2, p0, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler$Agrs;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    aput-object p2, v5, v3

    invoke-direct {v7, p0, v5}, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler$Agrs;-><init>(Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;[Ljava/lang/Object;)V

    invoke-virtual {v2, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 167
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;->mWaitMsgMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getUniqueID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPluginPrepare(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler$Agrs;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-direct {v1, p0, v2}, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler$Agrs;-><init>(Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;[Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPluginPreview(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler$Agrs;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-direct {v1, p0, v2}, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler$Agrs;-><init>(Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;[Ljava/lang/Object;)V

    const/4 p0, 0x7

    invoke-virtual {v0, p0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPluginStart(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V
    .locals 5

    .line 133
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler$Agrs;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p2, v3, p1

    invoke-direct {v1, p0, v3}, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler$Agrs;-><init>(Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onProgressChanged(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V
    .locals 4

    .line 183
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler$Agrs;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-direct {v1, p0, v2}, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler$Agrs;-><init>(Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;[Ljava/lang/Object;)V

    const/4 p0, 0x5

    invoke-virtual {v0, p0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setListener(Lcom/coloros/backup/sdk/v2/host/listener/BRListener;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;->mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    return-void
.end method
