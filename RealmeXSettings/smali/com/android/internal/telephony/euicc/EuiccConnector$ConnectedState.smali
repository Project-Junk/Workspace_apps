.class Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;
.super Lcom/android/internal/util/State;
.source "EuiccConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/EuiccConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/euicc/EuiccConnector;)V
    .locals 0

    .line 654
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$1;)V
    .locals 0

    .line 654
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 657
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1300(Lcom/android/internal/telephony/euicc/EuiccConnector;I)V

    .line 658
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    const/4 v1, 0x3

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->sendMessageDelayed(IJ)V

    return-void
.end method

.method public exit()V
    .locals 2

    .line 915
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1700(Lcom/android/internal/telephony/euicc/EuiccConnector;I)V

    .line 919
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1800(Lcom/android/internal/telephony/euicc/EuiccConnector;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    .line 920
    invoke-interface {v1}, Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;->onEuiccServiceUnavailable()V

    goto :goto_0

    .line 922
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1800(Lcom/android/internal/telephony/euicc/EuiccConnector;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 12

    const-string v0, "EuiccConnector"

    .line 663
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    .line 664
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1102(Lcom/android/internal/telephony/euicc/EuiccConnector;Landroid/service/euicc/IEuiccService;)Landroid/service/euicc/IEuiccService;

    .line 665
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v0, p1, Lcom/android/internal/telephony/euicc/EuiccConnector;->mDisconnectedState:Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->transitionTo(Lcom/android/internal/util/IState;)V

    return v2

    .line 667
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 668
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1200(Lcom/android/internal/telephony/euicc/EuiccConnector;)V

    .line 669
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v0, p1, Lcom/android/internal/telephony/euicc/EuiccConnector;->mAvailableState:Lcom/android/internal/telephony/euicc/EuiccConnector$AvailableState;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->transitionTo(Lcom/android/internal/util/IState;)V

    return v2

    .line 671
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_2

    .line 672
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    .line 673
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return v2

    .line 675
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$800(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 676
    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$900(Landroid/os/Message;)Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    move-result-object v1

    .line 677
    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v3, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1400(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    .line 678
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 679
    iget-object v4, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v4, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1500(Lcom/android/internal/telephony/euicc/EuiccConnector;I)I

    move-result v6

    .line 681
    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    .line 870
    :pswitch_0
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1100(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object p1

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$13;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$13;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    invoke-interface {p1, v6, v3}, Landroid/service/euicc/IEuiccService;->startOtaIfNecessary(ILandroid/service/euicc/IOtaStatusChangedCallback;)V

    goto/16 :goto_1

    .line 856
    :pswitch_1
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1100(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object p1

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$12;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$12;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    invoke-interface {p1, v6, v3}, Landroid/service/euicc/IEuiccService;->getOtaStatus(ILandroid/service/euicc/IGetOtaStatusCallback;)V

    goto/16 :goto_1

    .line 842
    :pswitch_2
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1100(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object p1

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$11;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$11;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    invoke-interface {p1, v6, v3}, Landroid/service/euicc/IEuiccService;->retainSubscriptionsForFactoryReset(ILandroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;)V

    goto/16 :goto_1

    .line 828
    :pswitch_3
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1100(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object p1

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$10;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$10;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    invoke-interface {p1, v6, v3}, Landroid/service/euicc/IEuiccService;->eraseSubscriptions(ILandroid/service/euicc/IEraseSubscriptionsCallback;)V

    goto/16 :goto_1

    .line 812
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameRequest;

    .line 813
    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1100(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameRequest;->mIccid:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameRequest;->mNickname:Ljava/lang/String;

    new-instance v5, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$9;

    invoke-direct {v5, p0, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$9;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    invoke-interface {v3, v6, v4, p1, v5}, Landroid/service/euicc/IEuiccService;->updateSubscriptionNickname(ILjava/lang/String;Ljava/lang/String;Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;)V

    goto/16 :goto_1

    .line 796
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchRequest;

    .line 797
    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1100(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchRequest;->mIccid:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchRequest;->mForceDeactivateSim:Z

    new-instance v5, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$8;

    invoke-direct {v5, p0, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$8;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    invoke-interface {v3, v6, v4, p1, v5}, Landroid/service/euicc/IEuiccService;->switchToSubscription(ILjava/lang/String;ZLandroid/service/euicc/ISwitchToSubscriptionCallback;)V

    goto/16 :goto_1

    .line 781
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteRequest;

    .line 782
    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1100(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object v3

    iget-object p1, p1, Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteRequest;->mIccid:Ljava/lang/String;

    new-instance v4, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$7;

    invoke-direct {v4, p0, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$7;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    invoke-interface {v3, v6, p1, v4}, Landroid/service/euicc/IEuiccService;->deleteSubscription(ILjava/lang/String;Landroid/service/euicc/IDeleteSubscriptionCallback;)V

    goto/16 :goto_1

    .line 767
    :pswitch_7
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1100(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object p1

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$6;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$6;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    invoke-interface {p1, v6, v3}, Landroid/service/euicc/IEuiccService;->getEuiccInfo(ILandroid/service/euicc/IGetEuiccInfoCallback;)V

    goto/16 :goto_1

    .line 749
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListRequest;

    .line 750
    iget-object v4, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v4}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1100(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object v4

    iget-boolean p1, p1, Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListRequest;->mForceDeactivateSim:Z

    new-instance v5, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$5;

    invoke-direct {v5, p0, v1, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$5;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;I)V

    invoke-interface {v4, v6, p1, v5}, Landroid/service/euicc/IEuiccService;->getDefaultDownloadableSubscriptionList(IZLandroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;)V

    goto/16 :goto_1

    .line 734
    :pswitch_9
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1100(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object p1

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$4;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$4;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    invoke-interface {p1, v6, v3}, Landroid/service/euicc/IEuiccService;->getEuiccProfileInfoList(ILandroid/service/euicc/IGetEuiccProfileInfoListCallback;)V

    goto :goto_1

    .line 715
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;

    .line 716
    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1100(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object v5

    iget-object v7, p1, Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;->mSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v8, p1, Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;->mSwitchAfterDownload:Z

    iget-boolean v9, p1, Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;->mForceDeactivateSim:Z

    iget-object v10, p1, Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;->mResolvedBundle:Landroid/os/Bundle;

    new-instance v11, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$3;

    invoke-direct {v11, p0, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$3;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    invoke-interface/range {v5 .. v11}, Landroid/service/euicc/IEuiccService;->downloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/os/Bundle;Landroid/service/euicc/IDownloadSubscriptionCallback;)V

    goto :goto_1

    .line 697
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataRequest;

    .line 698
    iget-object v4, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v4}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1100(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object v4

    iget-object v5, p1, Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataRequest;->mSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean p1, p1, Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataRequest;->mForceDeactivateSim:Z

    new-instance v7, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2;

    invoke-direct {v7, p0, v1, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;I)V

    invoke-interface {v4, v6, v5, p1, v7}, Landroid/service/euicc/IEuiccService;->getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;ZLandroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;)V

    goto :goto_1

    .line 683
    :pswitch_c
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1100(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object p1

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$1;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$1;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    invoke-interface {p1, v6, v3}, Landroid/service/euicc/IEuiccService;->getEid(ILandroid/service/euicc/IGetEidCallback;)V

    goto :goto_1

    .line 892
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unimplemented eUICC command: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    invoke-interface {v1}, Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;->onEuiccServiceUnavailable()V

    .line 894
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1600(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    const-string v3, "Exception making binder call to EuiccService"

    .line 902
    invoke-static {v0, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 903
    invoke-interface {v1}, Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;->onEuiccServiceUnavailable()V

    .line 904
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1600(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    :goto_1
    return v2

    :cond_3
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
