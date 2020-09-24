.class Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$13;
.super Landroid/service/euicc/IOtaStatusChangedCallback$Stub;
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

    .line 871
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$13;->this$1:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$13;->val$callback:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    invoke-direct {p0}, Landroid/service/euicc/IOtaStatusChangedCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onOtaStatusChanged$0(Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;I)V
    .locals 0

    .line 877
    check-cast p0, Lcom/android/internal/telephony/euicc/EuiccConnector$OtaStatusChangedCallback;

    .line 878
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector$OtaStatusChangedCallback;->onOtaStatusChanged(I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onOtaStatusChanged$1$EuiccConnector$ConnectedState$13(Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;I)V
    .locals 1

    .line 882
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/euicc/EuiccConnector$OtaStatusChangedCallback;

    .line 883
    invoke-interface {v0, p2}, Lcom/android/internal/telephony/euicc/EuiccConnector$OtaStatusChangedCallback;->onOtaStatusChanged(I)V

    .line 884
    iget-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$13;->this$1:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    iget-object p2, p2, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p2, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1600(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    return-void
.end method

.method public onOtaStatusChanged(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x6

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 876
    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$13;->this$1:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    iget-object v1, v1, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$13;->val$callback:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    new-instance v3, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$13$5nh8TOHvAdIIa_S3V0gwsRICKC4;

    invoke-direct {v3, v2, p1}, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$13$5nh8TOHvAdIIa_S3V0gwsRICKC4;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;I)V

    invoke-virtual {v1, v0, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->sendMessage(ILjava/lang/Object;)V

    return-void

    .line 881
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$13;->this$1:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    iget-object v1, v1, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$13;->val$callback:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    new-instance v3, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$13$REfW_lBcrAssQONSKwOlO3PX83k;

    invoke-direct {v3, p0, v2, p1}, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$13$REfW_lBcrAssQONSKwOlO3PX83k;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$13;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;I)V

    invoke-virtual {v1, v0, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method
