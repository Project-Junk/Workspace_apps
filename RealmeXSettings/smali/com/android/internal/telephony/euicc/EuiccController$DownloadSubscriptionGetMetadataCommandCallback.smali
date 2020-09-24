.class Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;
.super Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;
.source "EuiccController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/EuiccController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadSubscriptionGetMetadataCommandCallback"
.end annotation


# instance fields
.field private final mForceDeactivateSim:Z

.field private final mSwitchAfterDownload:Z

.field private final mWithUserConsent:Z

.field final synthetic this$0:Lcom/android/internal/telephony/euicc/EuiccController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/euicc/EuiccController;JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;ZLandroid/app/PendingIntent;Z)V
    .locals 8

    move-object v7, p0

    move-object v1, p1

    .line 389
    iput-object v1, v7, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    move-object v0, p0

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p6

    move-object/from16 v6, p8

    .line 390
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;JLandroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;Landroid/app/PendingIntent;)V

    move v0, p5

    .line 391
    iput-boolean v0, v7, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mSwitchAfterDownload:Z

    move v0, p7

    .line 392
    iput-boolean v0, v7, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mForceDeactivateSim:Z

    move/from16 v0, p9

    .line 393
    iput-boolean v0, v7, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mWithUserConsent:Z

    return-void
.end method


# virtual methods
.method public onGetMetadataComplete(ILandroid/service/euicc/GetDownloadableSubscriptionMetadataResult;)V
    .locals 15

    move-object v0, p0

    .line 399
    invoke-virtual/range {p2 .. p2}, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->getDownloadableSubscription()Landroid/telephony/euicc/DownloadableSubscription;

    move-result-object v5

    .line 400
    iget-boolean v1, v0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mWithUserConsent:Z

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "EuiccController"

    if-eqz v1, :cond_2

    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->getResult()I

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    invoke-super/range {p0 .. p2}, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->onGetMetadataComplete(ILandroid/service/euicc/GetDownloadableSubscriptionMetadataResult;)V

    return-void

    .line 408
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v6, v0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mCallingPackage:Ljava/lang/String;

    invoke-static {v1, v5, v6}, Lcom/android/internal/telephony/euicc/EuiccController;->access$000(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 411
    iget-object v1, v0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-wide v3, v0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mCallingToken:J

    iget-boolean v6, v0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mSwitchAfterDownload:Z

    iget-boolean v7, v0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mForceDeactivateSim:Z

    iget-object v8, v0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mCallingPackage:Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    move/from16 v2, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscriptionPrivileged(IJLandroid/telephony/euicc/DownloadableSubscription;ZZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    return-void

    :cond_1
    const-string v1, "Caller does not have carrier privilege in metadata."

    .line 416
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v1, v0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v4, v0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v4, v3, v2}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void

    .line 420
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->getResult()I

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_3

    .line 423
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 424
    iget-object v7, v0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v10, v0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mCallingPackage:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-wide v2, v0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mCallingToken:J

    iget-object v4, v0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v5, v0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mSwitchAfterDownload:Z

    iget-object v6, v0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mCallingPackage:Ljava/lang/String;

    .line 428
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/euicc/EuiccOperation;->forDownloadNoPrivilegesOrDeactivateSimCheckMetadata(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object v13

    const-string v9, "android.service.euicc.action.RESOLVE_DEACTIVATE_SIM"

    move-object v8, v1

    move/from16 v14, p1

    .line 424
    invoke-virtual/range {v7 .. v14}, Lcom/android/internal/telephony/euicc/EuiccController;->addResolutionIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/EuiccOperation;I)V

    .line 432
    iget-object v2, v0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v3, v0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void

    .line 436
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->getResult()I

    move-result v1

    if-eqz v1, :cond_4

    .line 438
    invoke-super/range {p0 .. p2}, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->onGetMetadataComplete(ILandroid/service/euicc/GetDownloadableSubscriptionMetadataResult;)V

    return-void

    .line 442
    :cond_4
    iget-object v1, v0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v6, v0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mCallingPackage:Ljava/lang/String;

    invoke-static {v1, v5, v6}, Lcom/android/internal/telephony/euicc/EuiccController;->access$000(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 445
    iget-object v1, v0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-wide v3, v0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mCallingToken:J

    iget-boolean v6, v0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mSwitchAfterDownload:Z

    iget-boolean v7, v0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mForceDeactivateSim:Z

    iget-object v8, v0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mCallingPackage:Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    move/from16 v2, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscriptionPrivileged(IJLandroid/telephony/euicc/DownloadableSubscription;ZZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    return-void

    :cond_5
    const-string v1, "Caller is not permitted to download this profile per metadata"

    .line 450
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v1, v0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v4, v0, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v4, v3, v2}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method
