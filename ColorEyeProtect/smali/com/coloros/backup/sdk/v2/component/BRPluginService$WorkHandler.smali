.class Lcom/coloros/backup/sdk/v2/component/BRPluginService$WorkHandler;
.super Lcom/coloros/backup/sdk/v2/common/utils/StaticHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/backup/sdk/v2/component/BRPluginService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/backup/sdk/v2/common/utils/StaticHandler<",
        "Lcom/coloros/backup/sdk/v2/component/BRPluginService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/backup/sdk/v2/common/utils/StaticHandler;-><init>(Ljava/lang/Object;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;Lcom/coloros/backup/sdk/v2/component/BRPluginService;)V
    .locals 10

    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz p0, :cond_0

    invoke-static {p2, p0}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$002(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Landroid/os/Messenger;)Landroid/os/Messenger;

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "args"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "method"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "BRPluginService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WorkHandler handleMessage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", msg.arg1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", method:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$100(Lcom/coloros/backup/sdk/v2/component/BRPluginService;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$200(Lcom/coloros/backup/sdk/v2/component/BRPluginService;)Ljava/lang/Class;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    :pswitch_1
    if-eqz v3, :cond_7

    const-string v0, "onPreview"

    goto/16 :goto_3

    :pswitch_2
    if-eqz v3, :cond_7

    const-string v0, "onDestroy"

    goto/16 :goto_3

    :pswitch_3
    invoke-static {p2}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$700(Lcom/coloros/backup/sdk/v2/component/BRPluginService;)Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v5, "BRPluginService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "before onCancel, Thread state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v3, :cond_3

    const-string v0, "onCancel"

    invoke-static {p2, v3, v4, v0, v1}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$500(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    :cond_3
    invoke-static {p2}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$700(Lcom/coloros/backup/sdk/v2/component/BRPluginService;)Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    const-string v3, "BRPluginService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after onCancel, Thread state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    if-eq v3, v1, :cond_4

    sget-object v3, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-ne v3, v1, :cond_7

    :cond_4
    const-string v1, "BRPluginService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStackTrace:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$800([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_4
    if-eqz v3, :cond_7

    const-string v0, "onContinue"

    goto :goto_1

    :pswitch_5
    if-eqz v3, :cond_7

    const-string v0, "onPause"

    goto :goto_1

    :pswitch_6
    if-eqz v3, :cond_7

    const-string v0, "onRestore"

    goto :goto_1

    :pswitch_7
    if-eqz v3, :cond_7

    const-string v0, "onBackup"

    :goto_1
    invoke-static {p2, v3, v4, v0, v1}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$500(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    goto :goto_5

    :pswitch_8
    const-string v0, "BRPluginService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    const-string v9, "config"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_7

    const-string v0, "onPrepare"

    goto :goto_3

    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_5

    move v0, v7

    goto :goto_2

    :cond_5
    move v0, v6

    :goto_2
    invoke-static {p2, v1, v0}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$600(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Landroid/os/Bundle;Z)V

    goto :goto_5

    :pswitch_a
    if-eqz v3, :cond_7

    :goto_3
    invoke-static {p2, v3, v4, v0, v1}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$500(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_4

    :pswitch_b
    const-string v0, "config"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v3, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-direct {v3, v0}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;-><init>(Landroid/os/Bundle;)V

    invoke-static {p2, v3}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$302(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;)Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-static {p2}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$300(Lcom/coloros/backup/sdk/v2/component/BRPluginService;)Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getLogLevel()I

    move-result v0

    invoke-static {v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->setLogLevel(I)V

    :cond_6
    invoke-static {p2, v1}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$400(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    :goto_4
    const-string v1, "return"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_7
    :goto_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v7, :cond_8

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p2, p0, p1, v2, v6}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$900(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Landroid/os/Messenger;ILandroid/os/Bundle;Z)V

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/coloros/backup/sdk/v2/component/BRPluginService;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/backup/sdk/v2/component/BRPluginService$WorkHandler;->handleMessage(Landroid/os/Message;Lcom/coloros/backup/sdk/v2/component/BRPluginService;)V

    return-void
.end method
