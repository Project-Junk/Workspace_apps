.class Lcom/coloros/backup/sdk/v2/component/BRPluginService$WorkHandler;
.super Lcom/coloros/backup/sdk/v2/common/utils/StaticHandler;
.source "BRPluginService.java"


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

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/coloros/backup/sdk/v2/common/utils/StaticHandler;-><init>(Ljava/lang/Object;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;Lcom/coloros/backup/sdk/v2/component/BRPluginService;)V
    .locals 11

    .line 99
    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz p0, :cond_0

    .line 101
    invoke-static {p2, p0}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$002(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 107
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "args"

    .line 109
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "method"

    .line 110
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 113
    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WorkHandler handleMessage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", msg.arg1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", method:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BRPluginService"

    invoke-static {v4, v3}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {p2}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$100(Lcom/coloros/backup/sdk/v2/component/BRPluginService;)Ljava/lang/Object;

    move-result-object v3

    .line 118
    invoke-static {p2}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$200(Lcom/coloros/backup/sdk/v2/component/BRPluginService;)Ljava/lang/Class;

    move-result-object v5

    .line 119
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x0

    const-string v8, "config"

    const/4 v9, 0x1

    const-string v10, "return"

    if-eqz v6, :cond_8

    if-eq v6, v9, :cond_7

    const/4 v0, 0x2

    if-eq v6, v0, :cond_5

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    if-eqz v3, :cond_a

    const-string v0, "onPreview"

    .line 143
    invoke-static {p2, v3, v5, v0, v1}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$500(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 144
    invoke-virtual {v2, v10, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2

    :pswitch_1
    if-eqz v3, :cond_a

    const-string v0, "onDestroy"

    .line 210
    invoke-static {p2, v3, v5, v0, v1}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$500(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 211
    invoke-virtual {v2, v10, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 185
    :pswitch_2
    invoke-static {p2}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$700(Lcom/coloros/backup/sdk/v2/component/BRPluginService;)Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 188
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "before onCancel, Thread state = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v3, :cond_3

    const-string v0, "onCancel"

    .line 192
    invoke-static {p2, v3, v5, v0, v1}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$500(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    .line 196
    :cond_3
    invoke-static {p2}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$700(Lcom/coloros/backup/sdk/v2/component/BRPluginService;)Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 198
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after onCancel, Thread state = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    sget-object v3, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    if-eq v3, v1, :cond_4

    sget-object v3, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-ne v3, v1, :cond_a

    .line 201
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStackTrace:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$800([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_3
    if-eqz v3, :cond_a

    const-string v0, "onContinue"

    .line 178
    invoke-static {p2, v3, v5, v0, v1}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$500(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_4
    if-eqz v3, :cond_a

    const-string v0, "onPause"

    .line 172
    invoke-static {p2, v3, v5, v0, v1}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$500(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_5
    if-eqz v3, :cond_a

    const-string v0, "onRestore"

    .line 166
    invoke-static {p2, v3, v5, v0, v1}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$500(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_6
    if-eqz v3, :cond_a

    const-string v0, "onBackup"

    .line 160
    invoke-static {p2, v3, v5, v0, v1}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$500(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    goto :goto_2

    .line 149
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_a

    const-string v0, "onPrepare"

    .line 153
    invoke-static {p2, v3, v5, v0, v1}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$500(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 154
    invoke-virtual {v2, v10, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 138
    :cond_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_6

    move v0, v9

    goto :goto_1

    :cond_6
    move v0, v7

    :goto_1
    invoke-static {p2, v1, v0}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$600(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Landroid/os/Bundle;Z)V

    goto :goto_2

    :cond_7
    if-eqz v3, :cond_a

    .line 132
    invoke-static {p2, v3, v5, v0, v1}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$500(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 133
    invoke-virtual {v2, v10, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 121
    :cond_8
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 123
    new-instance v3, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-direct {v3, v0}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;-><init>(Landroid/os/Bundle;)V

    invoke-static {p2, v3}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$302(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;)Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    .line 124
    invoke-static {p2}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$300(Lcom/coloros/backup/sdk/v2/component/BRPluginService;)Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getLogLevel()I

    move-result v0

    invoke-static {v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->setLogLevel(I)V

    .line 126
    :cond_9
    invoke-static {p2, v1}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$400(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 127
    invoke-virtual {v2, v10, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 219
    :cond_a
    :goto_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v9, :cond_b

    .line 220
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p2, p0, p1, v2, v7}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->access$900(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Landroid/os/Messenger;ILandroid/os/Bundle;Z)V

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

.method protected bridge synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    .line 92
    check-cast p2, Lcom/coloros/backup/sdk/v2/component/BRPluginService;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/backup/sdk/v2/component/BRPluginService$WorkHandler;->handleMessage(Landroid/os/Message;Lcom/coloros/backup/sdk/v2/component/BRPluginService;)V

    return-void
.end method
