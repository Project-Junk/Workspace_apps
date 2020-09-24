.class Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;
.super Ljava/lang/Thread;
.source "BREngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/backup/sdk/v2/host/process/BREngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WorkThread"
.end annotation


# instance fields
.field private mIsSingleThread:Z

.field private mIsStop:Z

.field private mPool:Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;

.field private final mTaskIndexs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTasksInThread:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;",
            "Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/coloros/backup/sdk/v2/host/process/BREngine;


# direct methods
.method public constructor <init>(Lcom/coloros/backup/sdk/v2/host/process/BREngine;Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;I)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->this$0:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 149
    iput-boolean p1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->mIsStop:Z

    .line 150
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->mTasksInThread:Ljava/util/HashMap;

    .line 151
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->mTaskIndexs:Ljava/util/ArrayList;

    .line 156
    iput-object p2, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->mPool:Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;

    .line 157
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->mTaskIndexs:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-direct {p0, p3}, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->isSingleThread(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->mIsSingleThread:Z

    return-void
.end method

.method private addTaskIndex(I)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->mTaskIndexs:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getTask()Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;
    .locals 4

    .line 171
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->mTaskIndexs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 172
    iget-object v3, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->this$0:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    invoke-static {v3}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->access$000(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v2, :cond_1

    .line 174
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_0

    return-object v2

    .line 181
    :cond_2
    iget-boolean v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->mIsSingleThread:Z

    if-nez v0, :cond_3

    if-nez v2, :cond_3

    .line 183
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->mPool:Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;

    invoke-virtual {v0}, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;->pollNotApplyedTaskID()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " apply getTaskID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BackupEngine"

    invoke-static {v3, v2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->addTaskIndex(I)V

    .line 187
    iget-object v2, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->this$0:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    invoke-static {v2}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->access$000(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_3

    .line 188
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;

    return-object v0

    :cond_3
    return-object v1
.end method

.method private isSingleThread(I)Z
    .locals 1

    const/4 v0, -0x1

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 198
    :goto_0
    iget-boolean v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->mIsStop:Z

    if-nez v0, :cond_9

    .line 199
    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->getTask()Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->getPluginInfo()Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    move-result-object v2

    goto :goto_1

    :cond_0
    move-object v2, v1

    :goto_1
    const/4 v3, 0x0

    const-string v9, "BackupEngine"

    if-eqz v2, :cond_7

    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WorkThread infos: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", mIsAllCancel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->this$0:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    invoke-static {v5}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->access$200(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mCancelMap.get(pluginInfo)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->this$0:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    invoke-static {v5}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->access$300(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v4, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->this$0:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->access$402(Lcom/coloros/backup/sdk/v2/host/process/BREngine;Z)Z

    .line 209
    iget-object v4, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->this$0:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    invoke-static {v4}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->access$300(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    .line 210
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 211
    :cond_1
    iget-object v4, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->this$0:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    invoke-static {v4}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->access$200(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Z

    move-result v4

    if-nez v4, :cond_6

    if-eqz v3, :cond_2

    goto/16 :goto_3

    .line 218
    :cond_2
    invoke-virtual {v0}, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->isManual()Z

    move-result v3

    .line 219
    invoke-virtual {v0}, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->isManualBegin()Z

    move-result v4

    .line 221
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mTasksInThread: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->mTasksInThread:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_3

    if-nez v4, :cond_3

    .line 224
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->mTasksInThread:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "not need to new BRPluginProxy "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", proxy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-nez v1, :cond_5

    .line 231
    instance-of v1, v2, Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;

    if-eqz v1, :cond_4

    .line 232
    new-instance v1, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;

    iget-object v3, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->this$0:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    invoke-static {v3}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->access$500(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;-><init>(Landroid/content/Context;Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;)V

    goto :goto_2

    .line 234
    :cond_4
    new-instance v1, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    iget-object v3, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->this$0:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    invoke-static {v3}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->access$500(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->this$0:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    invoke-static {v5}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->access$600(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Landroid/os/HandlerThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    iget-object v3, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->this$0:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    invoke-static {v3}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->access$700(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Landroid/os/HandlerThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    move-object v3, v1

    move-object v6, v2

    invoke-direct/range {v3 .. v8}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;-><init>(Landroid/content/Context;Lcom/coloros/backup/sdk/v2/host/process/BREngine;Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;Landroid/os/Looper;Landroid/os/Looper;)V

    .line 237
    :goto_2
    iget-object v3, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->this$0:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    invoke-static {v3}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->access$800(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->setBRExceptionHandler(Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;)V

    .line 238
    iget-object v3, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->this$0:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    invoke-static {v3}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->access$900(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->setBREngineConfig(Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;)V

    .line 240
    iget-object v3, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->this$0:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    invoke-static {v3}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->access$1000(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->setBRListener(Lcom/coloros/backup/sdk/v2/host/listener/BRListener;)V

    .line 241
    iget-object v3, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->this$0:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    invoke-static {v3}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->access$1100(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v3, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->mTasksInThread:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "new BRPluginProxy "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", proxy"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_5
    iget-object v3, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->this$0:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    invoke-static {v3}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->access$1200(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Landroid/os/Bundle;

    move-result-object v3

    .line 247
    invoke-virtual {v2}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "params"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 248
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "proxy start:"

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0, v1, v3}, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->run(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    .line 251
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->this$0:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    invoke-static {v0}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->access$100(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mRunningTaskCount:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->this$0:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    invoke-static {v2}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->access$100(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", proxy end:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 213
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->this$0:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    invoke-static {v0}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->access$100(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto/16 :goto_0

    .line 254
    :cond_7
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->this$0:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    invoke-static {v0}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->access$400(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->this$0:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    invoke-static {v0}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->access$100(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_8

    .line 255
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->this$0:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    invoke-static {v0, v3}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->access$402(Lcom/coloros/backup/sdk/v2/host/process/BREngine;Z)Z

    .line 257
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->this$0:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    invoke-static {v0}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->access$1000(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 259
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->this$0:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    invoke-static {v1}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->access$1200(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "do onAllEnd"

    .line 261
    invoke-static {v9, v2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-interface {v0, v1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onAllEnd(Landroid/os/Bundle;)V

    :cond_8
    const-wide/16 v0, 0x1f4

    .line 266
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public stopRun()V
    .locals 1

    const/4 v0, 0x1

    .line 275
    iput-boolean v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->mIsStop:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->mTaskIndexs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
