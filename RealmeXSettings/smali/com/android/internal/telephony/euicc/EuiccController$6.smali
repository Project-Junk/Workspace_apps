.class Lcom/android/internal/telephony/euicc/EuiccController$6;
.super Ljava/lang/Object;
.source "EuiccController.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/euicc/EuiccController;->updateSubscriptionNickname(IILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
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

    .line 923
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$6;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController$6;->val$callbackIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEuiccServiceUnavailable()V
    .locals 4

    .line 947
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$6;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccController$6;->val$callbackIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method

.method public onUpdateNicknameComplete(I)V
    .locals 3

    .line 926
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DETAILED_CODE"

    .line 936
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 942
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$6;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccController$6;->val$callbackIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2, v0}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void

    .line 931
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$6;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccController$6;->val$callbackIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/android/internal/telephony/euicc/EuiccController;->refreshSubscriptionsAndSendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method
