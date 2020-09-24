.class Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;
.super Landroid/content/BroadcastReceiver;
.source "DcTesterFailBringUpAll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sIntentReceiver.onReceive: action="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->access$000(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->access$100(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->access$200(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    move-result-object p1

    const-string v0, "sFailBringUp"

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->saveParameters(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .line 61
    :cond_0
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->access$300(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getActionDetached()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, -0x1

    if-eqz p2, :cond_1

    .line 63
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    const-string p2, "simulate detaching"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->access$000(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->access$200(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    move-result-object p1

    const p2, 0x7fffffff

    const v1, 0x10004

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->saveParameters(III)V

    return-void

    .line 67
    :cond_1
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->access$300(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getActionAttached()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 69
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    const-string p2, "simulate attaching"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->access$000(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->access$200(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, v0}, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->saveParameters(III)V

    return-void

    .line 73
    :cond_2
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onReceive: unknown action="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->access$000(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Ljava/lang/String;)V

    return-void
.end method
