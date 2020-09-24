.class Lcom/android/internal/telephony/euicc/EuiccController$8;
.super Ljava/lang/Object;
.source "EuiccController.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/EuiccConnector$RetainSubscriptionsCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/euicc/EuiccController;->retainSubscriptionsForFactoryReset(ILandroid/app/PendingIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/euicc/EuiccController;

.field final synthetic val$callbackIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/app/PendingIntent;)V
    .locals 0

    .line 1002
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$8;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController$8;->val$callbackIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEuiccServiceUnavailable()V
    .locals 4

    .line 1024
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$8;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccController$8;->val$callbackIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method

.method public onRetainSubscriptionsComplete(I)V
    .locals 3

    .line 1005
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    const-string v2, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DETAILED_CODE"

    .line 1013
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1019
    :goto_0
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$8;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController$8;->val$callbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v2, v1, v0}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method
