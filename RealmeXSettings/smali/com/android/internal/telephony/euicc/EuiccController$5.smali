.class Lcom/android/internal/telephony/euicc/EuiccController$5;
.super Ljava/lang/Object;
.source "EuiccController.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/euicc/EuiccController;->switchToSubscriptionPrivileged(IJILjava/lang/String;ZLjava/lang/String;Landroid/app/PendingIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/euicc/EuiccController;

.field final synthetic val$callbackIntent:Landroid/app/PendingIntent;

.field final synthetic val$callingPackage:Ljava/lang/String;

.field final synthetic val$callingToken:J

.field final synthetic val$cardId:I

.field final synthetic val$subscriptionId:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/euicc/EuiccController;Ljava/lang/String;JIILandroid/app/PendingIntent;)V
    .locals 0

    .line 858
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$callingPackage:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$callingToken:J

    iput p5, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$subscriptionId:I

    iput p6, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$cardId:I

    iput-object p7, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$callbackIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEuiccServiceUnavailable()V
    .locals 4

    .line 891
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$callbackIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method

.method public onSwitchComplete(I)V
    .locals 9

    .line 861
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    const-string v1, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DETAILED_CODE"

    .line 880
    invoke-virtual {v8, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 869
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$callingPackage:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-wide v1, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$callingToken:J

    iget v6, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$subscriptionId:I

    .line 874
    invoke-static {v1, v2, v6, v3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->forSwitchDeactivateSim(JILjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$cardId:I

    const-string v2, "android.service.euicc.action.RESOLVE_DEACTIVATE_SIM"

    move-object v1, v8

    .line 869
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccController;->addResolutionIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/EuiccOperation;I)V

    move v0, p1

    .line 886
    :goto_0
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$callbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1, v0, v8}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method
