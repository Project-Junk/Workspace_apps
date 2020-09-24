.class Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll$1;
.super Landroid/content/BroadcastReceiver;
.source "DcTesterDeactivateAll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "sIntentReceiver.onReceive: action="

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->access$000(Ljava/lang/String;)V

    .line 52
    sget-object p2, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->sActionDcTesterDeactivateAll:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    .line 53
    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->access$100(Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getActionDetached()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onReceive: unknown action="

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->access$000(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "Send DEACTIVATE to all Dcc\'s"

    .line 54
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->access$000(Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->access$200(Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;)Lcom/android/internal/telephony/dataconnection/DcController;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 56
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->access$200(Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;)Lcom/android/internal/telephony/dataconnection/DcController;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 57
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->tearDownNow()V

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    const-string p1, "onReceive: mDcc is null, ignoring"

    .line 60
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->access$000(Ljava/lang/String;)V

    return-void
.end method
