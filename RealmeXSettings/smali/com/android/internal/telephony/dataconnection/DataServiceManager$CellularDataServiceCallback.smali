.class final Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;
.super Landroid/telephony/data/IDataServiceCallback$Stub;
.source "DataServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CellularDataServiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-direct {p0}, Landroid/telephony/data/IDataServiceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DataServiceManager$1;)V
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;-><init>(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)V

    return-void
.end method


# virtual methods
.method public final onDataCallListChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$1300(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Landroid/os/RegistrantList;

    move-result-object v0

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public final onDeactivateDataCallComplete(I)V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onDeactivateDataCallComplete. resultCode = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$100(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$1100(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 215
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {v1, v0, p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$1200(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Landroid/os/Message;I)V

    return-void
.end method

.method public final onRequestDataCallListComplete(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    .line 235
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onRequestDataCallListComplete. resultCode = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$100(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Ljava/lang/String;)V

    .line 236
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$1100(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Message;

    .line 237
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {v0, p2, p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$1200(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Landroid/os/Message;I)V

    return-void
.end method

.method public final onSetDataProfileComplete(I)V
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onSetDataProfileComplete. resultCode = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$100(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$1100(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 229
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {v1, v0, p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$1200(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Landroid/os/Message;I)V

    return-void
.end method

.method public final onSetInitialAttachApnComplete(I)V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onSetInitialAttachApnComplete. resultCode = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$100(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$1100(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 222
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {v1, v0, p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$1200(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Landroid/os/Message;I)V

    return-void
.end method

.method public final onSetupDataCallComplete(ILandroid/telephony/data/DataCallResponse;)V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSetupDataCallComplete. resultCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", response = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$100(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$1100(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data_call_response"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 205
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {p2, v0, p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$1200(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Landroid/os/Message;I)V

    return-void

    .line 207
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    const-string p2, "Unable to find the message for setup call response."

    invoke-static {p1, p2}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$400(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Ljava/lang/String;)V

    return-void
.end method
