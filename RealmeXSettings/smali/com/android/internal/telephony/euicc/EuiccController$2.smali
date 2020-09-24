.class Lcom/android/internal/telephony/euicc/EuiccController$2;
.super Ljava/lang/Object;
.source "EuiccController.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscriptionPrivileged(IJLandroid/telephony/euicc/DownloadableSubscription;ZZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
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

.field final synthetic val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

.field final synthetic val$switchAfterDownload:Z


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/telephony/euicc/DownloadableSubscription;ZLandroid/app/PendingIntent;Ljava/lang/String;JI)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    iput-boolean p3, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$switchAfterDownload:Z

    iput-object p4, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callbackIntent:Landroid/app/PendingIntent;

    iput-object p5, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingPackage:Ljava/lang/String;

    iput-wide p6, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingToken:J

    iput p8, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$cardId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadComplete(Landroid/service/euicc/DownloadSubscriptionResult;)V
    .locals 17

    move-object/from16 v0, p0

    .line 482
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 484
    invoke-virtual/range {p1 .. p1}, Landroid/service/euicc/DownloadSubscriptionResult;->getResult()I

    move-result v1

    const/4 v2, -0x2

    const/4 v3, 0x0

    const/4 v10, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_0

    const/4 v3, 0x2

    .line 552
    invoke-virtual/range {p1 .. p1}, Landroid/service/euicc/DownloadSubscriptionResult;->getResult()I

    move-result v1

    const-string v2, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DETAILED_CODE"

    .line 550
    invoke-virtual {v9, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 489
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    .line 490
    invoke-static {v1}, Lcom/android/internal/telephony/euicc/EuiccController;->access$100(Lcom/android/internal/telephony/euicc/EuiccController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "euicc_provisioned"

    .line 489
    invoke-static {v1, v2, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 493
    iget-object v1, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    const-string v2, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTION"

    invoke-virtual {v9, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 496
    iget-boolean v1, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$switchAfterDownload:Z

    if-nez v1, :cond_4

    .line 499
    iget-object v1, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v2, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v3, v9}, Lcom/android/internal/telephony/euicc/EuiccController;->refreshSubscriptionsAndSendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void

    .line 506
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v4, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingPackage:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-wide v2, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingToken:J

    iget-object v7, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v8, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$switchAfterDownload:Z

    .line 511
    invoke-static {v2, v3, v7, v8, v4}, Lcom/android/internal/telephony/euicc/EuiccOperation;->forDownloadDeactivateSim(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object v7

    iget v8, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$cardId:I

    const-string v3, "android.service.euicc.action.RESOLVE_DEACTIVATE_SIM"

    move-object v2, v9

    .line 506
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/euicc/EuiccController;->addResolutionIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/EuiccOperation;I)V

    :goto_0
    move v3, v10

    goto :goto_1

    .line 523
    :cond_2
    iget-object v1, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    invoke-virtual {v1}, Landroid/telephony/euicc/DownloadableSubscription;->getConfirmationCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    .line 526
    invoke-virtual/range {p1 .. p1}, Landroid/service/euicc/DownloadSubscriptionResult;->getResolvableErrors()I

    move-result v1

    if-eqz v1, :cond_3

    .line 527
    iget-object v1, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v4, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingPackage:Ljava/lang/String;

    .line 530
    invoke-virtual/range {p1 .. p1}, Landroid/service/euicc/DownloadSubscriptionResult;->getResolvableErrors()I

    move-result v5

    iget-wide v11, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingToken:J

    iget-object v13, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v14, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$switchAfterDownload:Z

    iget-object v15, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingPackage:Ljava/lang/String;

    .line 534
    invoke-virtual/range {p1 .. p1}, Landroid/service/euicc/DownloadSubscriptionResult;->getResolvableErrors()I

    move-result v16

    .line 532
    invoke-static/range {v11 .. v16}, Lcom/android/internal/telephony/euicc/EuiccOperation;->forDownloadResolvableErrors(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;I)Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object v7

    iget v8, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$cardId:I

    const-string v3, "android.service.euicc.action.RESOLVE_RESOLVABLE_ERRORS"

    move-object v2, v9

    .line 527
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/euicc/EuiccController;->addResolutionIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/EuiccOperation;I)V

    goto :goto_0

    .line 537
    :cond_3
    iget-object v1, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v4, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingPackage:Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v2, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingToken:J

    iget-object v7, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v8, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$switchAfterDownload:Z

    .line 542
    invoke-static {v2, v3, v7, v8, v4}, Lcom/android/internal/telephony/euicc/EuiccOperation;->forDownloadConfirmationCode(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object v7

    iget v8, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$cardId:I

    const-string v3, "android.service.euicc.action.RESOLVE_CONFIRMATION_CODE"

    move-object v2, v9

    .line 537
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/euicc/EuiccController;->addResolutionIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/EuiccOperation;I)V

    goto :goto_0

    .line 556
    :cond_4
    :goto_1
    iget-object v1, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v2, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v3, v9}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method

.method public onEuiccServiceUnavailable()V
    .locals 4

    .line 561
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callbackIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method
