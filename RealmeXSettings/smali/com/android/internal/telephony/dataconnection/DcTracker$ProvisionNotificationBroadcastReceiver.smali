.class Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProvisionNotificationBroadcastReceiver"
.end annotation


# instance fields
.field private final mNetworkOperator:Ljava/lang/String;

.field private final mProvisionUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 951
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 952
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->mNetworkOperator:Ljava/lang/String;

    .line 953
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->mProvisionUrl:Ljava/lang/String;

    return-void
.end method

.method private enableMobileProvisioning()V
    .locals 3

    .line 961
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const v1, 0x42025

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 962
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->mProvisionUrl:Ljava/lang/String;

    const-string v2, "provisioningUrl"

    invoke-static {v2, v1}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 963
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private setEnableFailFastMobileData(I)V
    .locals 3

    .line 957
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const v1, 0x42024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 970
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v0, "onReceive : ProvisionNotificationBroadcastReceiver"

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 971
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {p2, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$1702(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 972
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$1700(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/app/ProgressDialog;

    move-result-object p2

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->mNetworkOperator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 973
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$1700(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/app/ProgressDialog;

    move-result-object p2

    const v0, 0x10403b5

    .line 975
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 973
    invoke-virtual {p2, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 976
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$1700(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/app/ProgressDialog;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 977
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$1700(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 979
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$1700(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d9

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 981
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$1700(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 984
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 985
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$1700(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/app/ProgressDialog;

    move-result-object v0

    const v1, 0x4202a

    .line 984
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 988
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$1800(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)V

    .line 989
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->setEnableFailFastMobileData(I)V

    .line 990
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;->enableMobileProvisioning()V

    return-void
.end method
