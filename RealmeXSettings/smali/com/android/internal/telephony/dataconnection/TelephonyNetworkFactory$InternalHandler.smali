.class Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;
.super Landroid/os/Handler;
.source "TelephonyNetworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;Landroid/os/Looper;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    .line 146
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 151
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 175
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_request_type"

    .line 176
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "extra_network_request"

    .line 178
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkRequest;

    const-string v1, "extra_success"

    .line 180
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "extra_transport_type"

    .line 182
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 184
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    invoke-static {v2, v0, v1, p1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->access$500(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;Landroid/net/NetworkRequest;ZI)V

    goto :goto_0

    .line 169
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 170
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams;

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams;->apnType:I

    iget p1, p1, Lcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams;->targetTransport:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->access$400(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;II)V

    return-void

    .line 165
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->access$300(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;Landroid/os/Message;)V

    return-void

    .line 161
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->access$200(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;Landroid/os/Message;)V

    return-void

    .line 157
    :pswitch_4
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->access$100(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;)V

    return-void

    .line 153
    :pswitch_5
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->access$000(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;)V

    :cond_0
    :goto_0
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
