.class Lcom/android/internal/telephony/uicc/UiccProfile$3;
.super Landroid/os/Handler;
.source "UiccProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccProfile;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccProfile;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$3;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$3;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->access$200(Lcom/android/internal/telephony/uicc/UiccProfile;)Z

    move-result v0

    const-string v1, "handleMessage: Received "

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xb

    if-eq v0, v2, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " after dispose(); ignoring the message"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->access$300(Ljava/lang/String;)V

    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$3;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for phoneId "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$3;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->access$400(Lcom/android/internal/telephony/uicc/UiccProfile;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->access$500(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 176
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessage: Unhandled message with number: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->access$300(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 208
    :pswitch_0
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$3;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->access$1200(Lcom/android/internal/telephony/uicc/UiccProfile;)V

    .line 209
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$3;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->access$1300(Lcom/android/internal/telephony/uicc/UiccProfile;)V

    return-void

    .line 203
    :pswitch_1
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$3;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->access$1100(Lcom/android/internal/telephony/uicc/UiccProfile;)V

    .line 204
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$3;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateExternalState()V

    return-void

    .line 217
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 218
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$3;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleMessage: Exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->access$500(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessage: Error in SIM access with exception"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->access$1400(Ljava/lang/String;)V

    .line 222
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 223
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Message;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 191
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$3;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->access$800(Lcom/android/internal/telephony/uicc/UiccProfile;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$3;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->access$900(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 192
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 193
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 195
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$3;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->access$1000(Lcom/android/internal/telephony/uicc/UiccProfile;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$3;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 196
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->access$400(Lcom/android/internal/telephony/uicc/UiccProfile;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$3;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->access$900(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-virtual {p1, v0, v1}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    :cond_2
    return-void

    .line 178
    :pswitch_4
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$3;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->access$700(Lcom/android/internal/telephony/uicc/UiccProfile;)Landroid/os/RegistrantList;

    move-result-object p1

    new-instance v0, Landroid/os/AsyncResult;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$3;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 179
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->access$600(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 178
    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 187
    :pswitch_5
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$3;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateExternalState()V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
