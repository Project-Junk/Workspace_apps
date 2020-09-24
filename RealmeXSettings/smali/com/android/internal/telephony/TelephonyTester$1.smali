.class Lcom/android/internal/telephony/TelephonyTester$1;
.super Landroid/content/BroadcastReceiver;
.source "TelephonyTester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyTester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/TelephonyTester;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/TelephonyTester;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 147
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "sIntentReceiver.onReceive: action="

    .line 149
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->access$100(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getActionDetached()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string p1, "simulate detaching"

    .line 151
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    .line 152
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyTester;->access$100(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/RegistrantList;

    .line 153
    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->access$100(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getActionAttached()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "simulate attaching"

    .line 155
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    .line 156
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyTester;->access$100(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/RegistrantList;

    .line 157
    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void

    :cond_1
    const-string v1, "com.android.internal.telephony.TestConferenceEventPackage"

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "inject simulated conference event package"

    .line 159
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    const-string v1, "filename"

    .line 161
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 160
    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/TelephonyTester;->access$200(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "com.android.internal.telephony.TestDialogEventPackage"

    .line 162
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "handle test dialog event package intent"

    .line 163
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/TelephonyTester;->access$300(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Intent;)V

    return-void

    :cond_3
    const-string p1, "com.android.internal.telephony.TestSuppSrvcFail"

    .line 165
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "handle test supp svc failed intent"

    .line 166
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    .line 167
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/TelephonyTester;->access$400(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Intent;)V

    return-void

    :cond_4
    const-string p1, "com.android.internal.telephony.TestHandoverFail"

    .line 168
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "handle handover fail test intent"

    .line 169
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    .line 170
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyTester;->access$500(Lcom/android/internal/telephony/TelephonyTester;)V

    return-void

    :cond_5
    const-string p1, "com.android.internal.telephony.TestSuppSrvcNotification"

    .line 171
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "handle supp service notification test intent"

    .line 172
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    .line 173
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/TelephonyTester;->access$600(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Intent;)V

    return-void

    :cond_6
    const-string p1, "com.android.internal.telephony.TestServiceState"

    .line 174
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "handle test service state changed intent"

    .line 175
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    .line 178
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/TelephonyTester;->access$702(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Intent;)Landroid/content/Intent;

    .line 179
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyTester;->access$100(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->sendEmptyMessage(I)Z

    return-void

    :cond_7
    const-string p1, "com.android.internal.telephony.TestImsECall"

    .line 181
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "handle test IMS ecall intent"

    .line 182
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-virtual {p1}, Lcom/android/internal/telephony/TelephonyTester;->testImsECall()V

    return-void

    :cond_8
    const-string p1, "com.android.internal.telephony.TestChangeNumber"

    .line 184
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "handle test change number intent"

    .line 185
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/TelephonyTester;->testChangeNumber(Landroid/content/Intent;)V

    return-void

    :cond_9
    const-string p1, "onReceive: unknown action="

    .line 188
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyTester;->access$000(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "TelephonyTester"

    .line 191
    invoke-static {p2, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
