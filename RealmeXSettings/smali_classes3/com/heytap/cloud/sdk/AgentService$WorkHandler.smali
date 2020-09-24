.class public Lcom/heytap/cloud/sdk/AgentService$WorkHandler;
.super Lcom/heytap/cloud/sdk/utils/StaticHandler;
.source "AgentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/cloud/sdk/AgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WorkHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/heytap/cloud/sdk/utils/StaticHandler<",
        "Lcom/heytap/cloud/sdk/AgentService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/heytap/cloud/sdk/AgentService;Landroid/os/Looper;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/heytap/cloud/sdk/utils/StaticHandler;-><init>(Ljava/lang/Object;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;Lcom/heytap/cloud/sdk/AgentService;)V
    .locals 6

    .line 86
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 89
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v2, "ht_account"

    .line 91
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 93
    check-cast v2, Lcom/heytap/cloud/sdk/account/Account;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 95
    :goto_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "handleMessage() msg id = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", msgType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AgentService"

    invoke-static {v5, v4}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_1

    .line 211
    :pswitch_0
    invoke-virtual {v3}, Landroid/os/Bundle;->clear()V

    .line 212
    invoke-static {p2, v3, v2}, Lcom/heytap/cloud/sdk/AgentService;->access$500(Lcom/heytap/cloud/sdk/AgentService;Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V

    goto/16 :goto_1

    .line 205
    :pswitch_1
    invoke-virtual {v3}, Landroid/os/Bundle;->clear()V

    .line 207
    invoke-static {p2, v1, v2}, Lcom/heytap/cloud/sdk/AgentService;->access$400(Lcom/heytap/cloud/sdk/AgentService;Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)Z

    move-result v1

    const-string v2, "key_boolean"

    .line 206
    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 200
    :pswitch_2
    invoke-virtual {v3}, Landroid/os/Bundle;->clear()V

    .line 201
    invoke-static {p2, v1, v2}, Lcom/heytap/cloud/sdk/AgentService;->access$300(Lcom/heytap/cloud/sdk/AgentService;Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V

    goto/16 :goto_1

    .line 194
    :pswitch_3
    invoke-virtual {v3}, Landroid/os/Bundle;->clear()V

    .line 195
    invoke-virtual {p2}, Lcom/heytap/cloud/sdk/AgentService;->isLocalDataClear()Z

    move-result v1

    const-string v2, "is_local_data_clear"

    .line 196
    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 190
    :pswitch_4
    invoke-static {p2, v2}, Lcom/heytap/cloud/sdk/AgentService;->access$200(Lcom/heytap/cloud/sdk/AgentService;Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;

    move-result-object v3

    goto/16 :goto_1

    .line 186
    :pswitch_5
    invoke-virtual {p2, v2}, Lcom/heytap/cloud/sdk/AgentService;->cancel(Lcom/heytap/cloud/sdk/account/Account;)V

    goto/16 :goto_1

    .line 181
    :pswitch_6
    invoke-virtual {v3}, Landroid/os/Bundle;->clear()V

    .line 182
    invoke-static {p2, v2}, Lcom/heytap/cloud/sdk/AgentService;->access$100(Lcom/heytap/cloud/sdk/AgentService;Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;

    move-result-object v3

    goto/16 :goto_1

    .line 176
    :pswitch_7
    invoke-virtual {v3}, Landroid/os/Bundle;->clear()V

    .line 177
    invoke-static {p2, v2}, Lcom/heytap/cloud/sdk/AgentService;->access$000(Lcom/heytap/cloud/sdk/AgentService;Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;

    move-result-object v3

    goto/16 :goto_1

    .line 172
    :pswitch_8
    invoke-virtual {p2, v2}, Lcom/heytap/cloud/sdk/AgentService;->onSmallBinaryFilesSyncEnd(Lcom/heytap/cloud/sdk/account/Account;)V

    goto/16 :goto_1

    .line 168
    :pswitch_9
    invoke-virtual {p2, v1, v2}, Lcom/heytap/cloud/sdk/AgentService;->processSmallBinaryFilesDownloadResult(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V

    goto :goto_1

    .line 163
    :pswitch_a
    invoke-virtual {v3}, Landroid/os/Bundle;->clear()V

    .line 164
    invoke-virtual {p2, v2}, Lcom/heytap/cloud/sdk/AgentService;->getSmallBinaryFilesDownloadRequestData(Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_1

    .line 159
    :pswitch_b
    invoke-virtual {p2, v1, v2}, Lcom/heytap/cloud/sdk/AgentService;->processSmallBinaryFilesUploadResult(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V

    goto :goto_1

    .line 154
    :pswitch_c
    invoke-virtual {v3}, Landroid/os/Bundle;->clear()V

    .line 155
    invoke-virtual {p2, v2}, Lcom/heytap/cloud/sdk/AgentService;->getSmallBinaryFilesUploadData(Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_1

    .line 150
    :pswitch_d
    invoke-virtual {p2, v2}, Lcom/heytap/cloud/sdk/AgentService;->onSmallBinaryFilesSyncStart(Lcom/heytap/cloud/sdk/account/Account;)V

    goto :goto_1

    :pswitch_e
    const-string v4, "need_delete_data"

    .line 145
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 146
    invoke-virtual {p2, v1, v2}, Lcom/heytap/cloud/sdk/AgentService;->onAccountLogout(ZLcom/heytap/cloud/sdk/account/Account;)V

    goto :goto_1

    .line 141
    :pswitch_f
    invoke-virtual {p2, v2}, Lcom/heytap/cloud/sdk/AgentService;->onAccountLogin(Lcom/heytap/cloud/sdk/account/Account;)V

    goto :goto_1

    .line 137
    :pswitch_10
    invoke-virtual {p2, v1, v2}, Lcom/heytap/cloud/sdk/AgentService;->onMetaDataRecoveryEnd(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V

    goto :goto_1

    .line 132
    :pswitch_11
    invoke-virtual {v3}, Landroid/os/Bundle;->clear()V

    .line 133
    invoke-virtual {p2, v1, v2}, Lcom/heytap/cloud/sdk/AgentService;->processRecoveryDataFromServer(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_1

    .line 128
    :pswitch_12
    invoke-virtual {p2, v1, v2}, Lcom/heytap/cloud/sdk/AgentService;->onMetaDataRecoveryStart(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V

    goto :goto_1

    .line 124
    :pswitch_13
    invoke-virtual {p2, v1, v2}, Lcom/heytap/cloud/sdk/AgentService;->onMetaDataBackupEnd(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V

    goto :goto_1

    .line 120
    :pswitch_14
    invoke-virtual {p2, v1, v2}, Lcom/heytap/cloud/sdk/AgentService;->processBackupResultFromServer(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V

    goto :goto_1

    .line 115
    :pswitch_15
    invoke-virtual {v3}, Landroid/os/Bundle;->clear()V

    .line 116
    invoke-virtual {p2, v2}, Lcom/heytap/cloud/sdk/AgentService;->getDirtyData(Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_1

    .line 109
    :pswitch_16
    invoke-virtual {p2, v2}, Lcom/heytap/cloud/sdk/AgentService;->hasDirtyData(Lcom/heytap/cloud/sdk/account/Account;)Z

    move-result v1

    .line 110
    invoke-virtual {v3}, Landroid/os/Bundle;->clear()V

    const-string v2, "has_dirty_data"

    .line 111
    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 104
    :pswitch_17
    invoke-virtual {v3}, Landroid/os/Bundle;->clear()V

    .line 105
    invoke-virtual {p2, v2}, Lcom/heytap/cloud/sdk/AgentService;->getAllData(Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_1

    .line 100
    :pswitch_18
    invoke-virtual {p2, v1, v2}, Lcom/heytap/cloud/sdk/AgentService;->onMetaDataBackupStart(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V

    .line 220
    :goto_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x32

    if-ge v1, v2, :cond_1

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 221
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p2, v0, p1, v3, v5}, Lcom/heytap/cloud/sdk/AgentService;->returnMsg(Landroid/os/Messenger;ILandroid/os/Bundle;Z)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
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

    .line 79
    check-cast p2, Lcom/heytap/cloud/sdk/AgentService;

    invoke-virtual {p0, p1, p2}, Lcom/heytap/cloud/sdk/AgentService$WorkHandler;->handleMessage(Landroid/os/Message;Lcom/heytap/cloud/sdk/AgentService;)V

    return-void
.end method
