.class Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;
.super Ljava/lang/Object;
.source "EuiccController.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/EuiccController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetDefaultListCommandCallback"
.end annotation


# instance fields
.field final mCallbackIntent:Landroid/app/PendingIntent;

.field final mCallingPackage:Ljava/lang/String;

.field final mCallingToken:J

.field final synthetic this$0:Lcom/android/internal/telephony/euicc/EuiccController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/euicc/EuiccController;JLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 0

    .line 629
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    iput-wide p2, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->mCallingToken:J

    .line 631
    iput-object p4, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->mCallingPackage:Ljava/lang/String;

    .line 632
    iput-object p5, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public onEuiccServiceUnavailable()V
    .locals 4

    .line 674
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method

.method public onGetDefaultListComplete(ILandroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;)V
    .locals 9

    .line 638
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 640
    invoke-virtual {p2}, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;->getResult()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    .line 665
    invoke-virtual {p2}, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;->getResult()I

    move-result p2

    const-string v0, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DETAILED_CODE"

    .line 663
    invoke-virtual {v8, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 643
    invoke-virtual {p2}, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;->getDownloadableSubscriptions()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 644
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 647
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/telephony/euicc/DownloadableSubscription;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/os/Parcelable;

    const-string v0, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTIONS"

    .line 645
    invoke-virtual {v8, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    .line 652
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->mCallingPackage:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-wide v1, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->mCallingToken:J

    .line 657
    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->forGetDefaultListDeactivateSim(JLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object v6

    const-string v2, "android.service.euicc.action.RESOLVE_DEACTIVATE_SIM"

    move-object v1, v8

    move v7, p1

    .line 652
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccController;->addResolutionIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/EuiccOperation;I)V

    move p1, p2

    .line 669
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {p2, v0, p1, v8}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method
