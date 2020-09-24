.class public final synthetic Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$3$6FrGqACrFuV-2Sxte2SudRMjR6s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$3;

.field private final synthetic f$1:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

.field private final synthetic f$2:Landroid/service/euicc/DownloadSubscriptionResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$3;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;Landroid/service/euicc/DownloadSubscriptionResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$3$6FrGqACrFuV-2Sxte2SudRMjR6s;->f$0:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$3;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$3$6FrGqACrFuV-2Sxte2SudRMjR6s;->f$1:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    iput-object p3, p0, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$3$6FrGqACrFuV-2Sxte2SudRMjR6s;->f$2:Landroid/service/euicc/DownloadSubscriptionResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$3$6FrGqACrFuV-2Sxte2SudRMjR6s;->f$0:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$3;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$3$6FrGqACrFuV-2Sxte2SudRMjR6s;->f$1:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$3$6FrGqACrFuV-2Sxte2SudRMjR6s;->f$2:Landroid/service/euicc/DownloadSubscriptionResult;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$3;->lambda$onComplete$0$EuiccConnector$ConnectedState$3(Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;Landroid/service/euicc/DownloadSubscriptionResult;)V

    return-void
.end method
