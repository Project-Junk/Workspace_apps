.class Lcom/coloros/backup/sdk/v2/component/BRPluginService$WorkHandler;
.super Lcom/coloros/backup/sdk/v2/common/utils/StaticHandler;
.source "BRPluginService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/backup/sdk/v2/component/BRPluginService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/coloros/backup/sdk/v2/common/utils/StaticHandler;-><init>(Ljava/lang/Object;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;Lcom/coloros/backup/sdk/v2/component/BRPluginService;)V
    .locals 12

    .line 99
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 101
    invoke-static {p2, v0}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$002(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 107
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "args"

    .line 109
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "method"

    .line 110
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 113
    :goto_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WorkHandler handleMessage "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", msg.arg1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", method:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BRPluginService"

    invoke-static {v5, v4}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {p2}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$100(Lcom/coloros/backup/sdk/v2/component/BRPluginService;)Ljava/lang/Object;

    move-result-object v4

    .line 118
    invoke-static {p2}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$200(Lcom/coloros/backup/sdk/v2/component/BRPluginService;)Ljava/lang/Class;

    move-result-object v6

    .line 119
    iget v7, p1, Landroid/os/Message;->what:I

    const/4 v8, 0x0

    const-string v9, "config"

    const/4 v10, 0x1

    const-string v11, "return"

    if-eqz v7, :cond_8

    if-eq v7, v10, :cond_7

    const/4 v1, 0x2

    if-eq v7, v1, :cond_5

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    if-eqz v4, :cond_a

    const-string v1, "onPreview"

    .line 143
    invoke-static {p2, v4, v6, v1, v2}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$500(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 144
    invoke-virtual {v3, v11, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2

    :pswitch_1
    if-eqz v4, :cond_a

    const-string v1, "onDestroy"

    .line 210
    invoke-static {p2, v4, v6, v1, v2}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$500(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 211
    invoke-virtual {v3, v11, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 185
    :pswitch_2
    invoke-static {p2}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$700(Lcom/coloros/backup/sdk/v2/component/BRPluginService;)Landroid/os/HandlerThread;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 188
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "before onCancel, Thread state = "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v4, :cond_3

    const-string v1, "onCancel"

    .line 192
    invoke-static {p2, v4, v6, v1, v2}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$500(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    .line 196
    :cond_3
    invoke-static {p2}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$700(Lcom/coloros/backup/sdk/v2/component/BRPluginService;)Landroid/os/HandlerThread;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 198
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    .line 199
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "after onCancel, Thread state = "

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    sget-object v4, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    if-eq v4, v2, :cond_4

    sget-object v4, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-ne v4, v2, :cond_a

    .line 201
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "getStackTrace:\n"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$800([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_3
    if-eqz v4, :cond_a

    const-string v1, "onContinue"

    .line 178
    invoke-static {p2, v4, v6, v1, v2}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$500(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_4
    if-eqz v4, :cond_a

    const-string v1, "onPause"

    .line 172
    invoke-static {p2, v4, v6, v1, v2}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$500(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_5
    if-eqz v4, :cond_a

    const-string v1, "onRestore"

    .line 166
    invoke-static {p2, v4, v6, v1, v2}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$500(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    goto :goto_2

    :pswitch_6
    if-eqz v4, :cond_a

    const-string v1, "onBackup"

    .line 160
    invoke-static {p2, v4, v6, v1, v2}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$500(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    goto :goto_2

    .line 149
    :pswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_a

    const-string v1, "onPrepare"

    .line 153
    invoke-static {p2, v4, v6, v1, v2}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$500(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 154
    invoke-virtual {v3, v11, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 138
    :cond_5
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_6

    move v1, v10

    goto :goto_1

    :cond_6
    move v1, v8

    :goto_1
    invoke-static {p2, v2, v1}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$600(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Landroid/os/Bundle;Z)V

    goto :goto_2

    :cond_7
    if-eqz v4, :cond_a

    .line 132
    invoke-static {p2, v4, v6, v1, v2}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$500(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 133
    invoke-virtual {v3, v11, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 121
    :cond_8
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 123
    new-instance v4, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-direct {v4, v1}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;-><init>(Landroid/os/Bundle;)V

    invoke-static {p2, v4}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$302(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;)Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    .line 124
    invoke-static {p2}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$300(Lcom/coloros/backup/sdk/v2/component/BRPluginService;)Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getLogLevel()I

    move-result v1

    invoke-static {v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->setLogLevel(I)V

    .line 126
    :cond_9
    invoke-static {p2, v2}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$400(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 127
    invoke-virtual {v3, v11, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 219
    :cond_a
    :goto_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v10, :cond_b

    .line 220
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p2, v0, p1, v3, v8}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$900(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Landroid/os/Messenger;ILandroid/os/Bundle;Z)V

    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    .line 92
    check-cast p2, Lcom/coloros/backup/sdk/v2/component/BRPluginService;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/backup/sdk/v2/component/BRPluginService$WorkHandler;->handleMessage(Landroid/os/Message;Lcom/coloros/backup/sdk/v2/component/BRPluginService;)V

    return-void
.end method
