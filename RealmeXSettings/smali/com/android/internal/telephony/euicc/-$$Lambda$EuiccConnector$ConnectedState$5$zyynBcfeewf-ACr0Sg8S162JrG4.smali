.class public final synthetic Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$5$zyynBcfeewf-ACr0Sg8S162JrG4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$5;

.field private final synthetic f$1:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

.field private final synthetic f$2:I

.field private final synthetic f$3:Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$5;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;ILandroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$5$zyynBcfeewf-ACr0Sg8S162JrG4;->f$0:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$5;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$5$zyynBcfeewf-ACr0Sg8S162JrG4;->f$1:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    iput p3, p0, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$5$zyynBcfeewf-ACr0Sg8S162JrG4;->f$2:I

    iput-object p4, p0, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$5$zyynBcfeewf-ACr0Sg8S162JrG4;->f$3:Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$5$zyynBcfeewf-ACr0Sg8S162JrG4;->f$0:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$5;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$5$zyynBcfeewf-ACr0Sg8S162JrG4;->f$1:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    iget v2, p0, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$5$zyynBcfeewf-ACr0Sg8S162JrG4;->f$2:I

    iget-object v3, p0, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$5$zyynBcfeewf-ACr0Sg8S162JrG4;->f$3:Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$5;->lambda$onComplete$0$EuiccConnector$ConnectedState$5(Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;ILandroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;)V

    return-void
.end method
