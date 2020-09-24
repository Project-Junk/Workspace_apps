.class Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$4;
.super Landroid/service/euicc/IGetEuiccProfileInfoListCallback$Stub;
.source "EuiccConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->processMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

.field final synthetic val$callback:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V
    .locals 0

    .line 735
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$4;->this$1:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$4;->val$callback:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    invoke-direct {p0}, Landroid/service/euicc/IGetEuiccProfileInfoListCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onComplete$0$EuiccConnector$ConnectedState$4(Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;Landroid/service/euicc/GetEuiccProfileInfoListResult;)V
    .locals 1

    .line 740
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/euicc/EuiccConnector$GetEuiccProfileInfoListCommandCallback;

    .line 741
    invoke-interface {v0, p2}, Lcom/android/internal/telephony/euicc/EuiccConnector$GetEuiccProfileInfoListCommandCallback;->onListComplete(Landroid/service/euicc/GetEuiccProfileInfoListResult;)V

    .line 742
    iget-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$4;->this$1:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    iget-object p2, p2, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1600(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    return-void
.end method

.method public onComplete(Landroid/service/euicc/GetEuiccProfileInfoListResult;)V
    .locals 3

    .line 739
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$4;->this$1:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    iget-object v0, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$4;->val$callback:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    new-instance v2, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$4$S52i3hpE3-FGho807KZ1LR5rXQM;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$4$S52i3hpE3-FGho807KZ1LR5rXQM;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$4;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;Landroid/service/euicc/GetEuiccProfileInfoListResult;)V

    const/4 p1, 0x6

    invoke-virtual {v0, p1, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method
