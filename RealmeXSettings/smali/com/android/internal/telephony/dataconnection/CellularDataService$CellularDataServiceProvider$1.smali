.class Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider$1;
.super Landroid/os/Handler;
.source "CellularDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;-><init>(Lcom/android/internal/telephony/dataconnection/CellularDataService;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;

.field final synthetic val$this$0:Lcom/android/internal/telephony/dataconnection/CellularDataService;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;Landroid/os/Looper;Lcom/android/internal/telephony/dataconnection/CellularDataService;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider$1;->this$1:Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;

    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider$1;->val$this$0:Lcom/android/internal/telephony/dataconnection/CellularDataService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider$1;->this$1:Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->access$000(Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/DataServiceCallback;

    .line 80
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 81
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x4

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider$1;->this$1:Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->this$0:Lcom/android/internal/telephony/dataconnection/CellularDataService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/CellularDataService;->access$100(Lcom/android/internal/telephony/dataconnection/CellularDataService;Ljava/lang/String;)V

    return-void

    .line 114
    :pswitch_0
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider$1;->this$1:Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;

    iget-object v0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->notifyDataCallListChanged(Ljava/util/List;)V

    return-void

    .line 106
    :pswitch_1
    iget-object p1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    .line 109
    :goto_0
    iget-object p1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 110
    :cond_1
    iget-object p1, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 105
    :goto_1
    invoke-virtual {v0, v3, p1}, Landroid/telephony/data/DataServiceCallback;->onRequestDataCallListComplete(ILjava/util/List;)V

    return-void

    .line 100
    :pswitch_2
    iget-object p1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataServiceCallback;->onSetDataProfileComplete(I)V

    return-void

    .line 95
    :pswitch_3
    iget-object p1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataServiceCallback;->onSetInitialAttachApnComplete(I)V

    return-void

    .line 90
    :pswitch_4
    iget-object p1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    move v3, v4

    :goto_4
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataServiceCallback;->onDeactivateDataCallComplete(I)V

    return-void

    .line 83
    :pswitch_5
    iget-object p1, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/data/DataCallResponse;

    .line 84
    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    move v3, v4

    :goto_5
    invoke-virtual {v0, v3, p1}, Landroid/telephony/data/DataServiceCallback;->onSetupDataCallComplete(ILandroid/telephony/data/DataCallResponse;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
