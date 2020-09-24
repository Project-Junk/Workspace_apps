.class Lcom/android/internal/telephony/test/SimulatedGsmCallState;
.super Landroid/os/Handler;
.source "SimulatedGsmCallState.java"


# static fields
.field static final CONNECTING_PAUSE_MSEC:I = 0x1f4

.field static final EVENT_PROGRESS_CALL_STATE:I = 0x1

.field static final MAX_CALLS:I = 0x7


# instance fields
.field private mAutoProgressConnecting:Z

.field mCalls:[Lcom/android/internal/telephony/test/CallInfo;

.field private mNextDialFailImmediately:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x7

    .line 135
    new-array p1, p1, [Lcom/android/internal/telephony/test/CallInfo;

    iput-object p1, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    const/4 p1, 0x1

    .line 137
    iput-boolean p1, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mAutoProgressConnecting:Z

    return-void
.end method

.method private countActiveLines()I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InvalidStateEx;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    .line 774
    :goto_0
    iget-object v8, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v9, v8

    const/4 v10, 0x1

    if-ge v1, v9, :cond_9

    .line 775
    aget-object v8, v8, v1

    if-eqz v8, :cond_8

    if-nez v4, :cond_1

    .line 778
    iget-boolean v9, v8, Lcom/android/internal/telephony/test/CallInfo;->mIsMpty:Z

    if-eqz v9, :cond_1

    .line 779
    iget-object v7, v8, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v9, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v7, v9, :cond_0

    move v7, v10

    goto :goto_2

    :cond_0
    move v7, v0

    goto :goto_2

    .line 780
    :cond_1
    iget-boolean v9, v8, Lcom/android/internal/telephony/test/CallInfo;->mIsMpty:Z

    const-string v11, "Invalid state"

    const-string v12, "ModelInterpreter"

    if-eqz v9, :cond_3

    if-eqz v7, :cond_3

    iget-object v9, v8, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v13, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v9, v13, :cond_2

    goto :goto_1

    .line 783
    :cond_2
    invoke-static {v12, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    new-instance v0, Lcom/android/internal/telephony/test/InvalidStateEx;

    invoke-direct {v0}, Lcom/android/internal/telephony/test/InvalidStateEx;-><init>()V

    throw v0

    .line 785
    :cond_3
    :goto_1
    iget-boolean v9, v8, Lcom/android/internal/telephony/test/CallInfo;->mIsMpty:Z

    if-nez v9, :cond_5

    if-eqz v4, :cond_5

    if-eqz v7, :cond_5

    iget-object v9, v8, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v13, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v9, v13, :cond_4

    goto :goto_2

    .line 788
    :cond_4
    invoke-static {v12, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    new-instance v0, Lcom/android/internal/telephony/test/InvalidStateEx;

    invoke-direct {v0}, Lcom/android/internal/telephony/test/InvalidStateEx;-><init>()V

    throw v0

    .line 792
    :cond_5
    :goto_2
    iget-boolean v9, v8, Lcom/android/internal/telephony/test/CallInfo;->mIsMpty:Z

    or-int/2addr v4, v9

    .line 793
    iget-object v9, v8, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v11, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v9, v11, :cond_6

    move v9, v10

    goto :goto_3

    :cond_6
    move v9, v0

    :goto_3
    or-int/2addr v2, v9

    .line 794
    iget-object v9, v8, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v11, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v9, v11, :cond_7

    goto :goto_4

    :cond_7
    move v10, v0

    :goto_4
    or-int/2addr v3, v10

    .line 795
    invoke-virtual {v8}, Lcom/android/internal/telephony/test/CallInfo;->isConnecting()Z

    move-result v9

    or-int/2addr v5, v9

    .line 796
    invoke-virtual {v8}, Lcom/android/internal/telephony/test/CallInfo;->isRinging()Z

    move-result v8

    or-int/2addr v6, v8

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    if-eqz v2, :cond_a

    move v0, v10

    :cond_a
    if-eqz v3, :cond_b

    add-int/lit8 v0, v0, 0x1

    :cond_b
    if-eqz v5, :cond_c

    add-int/lit8 v0, v0, 0x1

    :cond_c
    if-eqz v6, :cond_d

    add-int/lit8 v0, v0, 0x1

    :cond_d
    return v0
.end method


# virtual methods
.method public conference()Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 611
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 612
    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 617
    invoke-virtual {v3}, Lcom/android/internal/telephony/test/CallInfo;->isConnecting()Z

    move-result v3

    if-eqz v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 622
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v1

    const/4 v4, 0x1

    if-ge v0, v3, :cond_3

    .line 623
    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 626
    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v3, v1, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    if-lez v2, :cond_2

    .line 628
    iput-boolean v4, v1, Lcom/android/internal/telephony/test/CallInfo;->mIsMpty:Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return v4
.end method

.method public explicitCallTransfer()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 641
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 642
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 647
    invoke-virtual {v2}, Lcom/android/internal/telephony/test/CallInfo;->isConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 654
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupAll()Z

    move-result v0

    return v0
.end method

.method public getClccLines()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 752
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 754
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 755
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 758
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/test/CallInfo;->toCLCCLine(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getDriverCalls()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/DriverCall;",
            ">;"
        }
    .end annotation

    .line 732
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 734
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 735
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 740
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/test/CallInfo;->toDriverCall(I)Lcom/android/internal/telephony/DriverCall;

    move-result-object v2

    .line 741
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 745
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SC< getDriverCalls "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GSM"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 161
    monitor-enter p0

    :try_start_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->progressConnectingCallState()V

    .line 168
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onAnswer()Z
    .locals 5

    .line 359
    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    .line 360
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 361
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 363
    iget-object v3, v2, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v3, v4, :cond_0

    iget-object v2, v2, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v2, v3, :cond_1

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->switchActiveAndHeldOrWaiting()Z

    move-result v0

    monitor-exit p0

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onChld(CC)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    add-int/lit8 v1, p2, -0x31

    if-ltz v1, :cond_0

    .line 399
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v2, v2

    if-lt v1, v2, :cond_2

    :cond_0
    return v0

    :cond_1
    move v1, v0

    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 431
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->explicitCallTransfer()Z

    move-result v0

    goto :goto_0

    .line 428
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->conference()Z

    move-result v0

    goto :goto_0

    :pswitch_2
    if-gtz p2, :cond_3

    .line 422
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->switchActiveAndHeldOrWaiting()Z

    move-result v0

    goto :goto_0

    .line 424
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->separateCall(I)Z

    move-result v0

    goto :goto_0

    :pswitch_3
    if-gtz p2, :cond_4

    .line 410
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->releaseActiveAcceptHeldOrWaiting()Z

    move-result v0

    goto :goto_0

    .line 412
    :cond_4
    iget-object p1, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object p2, p1, v1

    if-eqz p2, :cond_5

    const/4 p2, 0x0

    .line 415
    aput-object p2, p1, v1

    const/4 v0, 0x1

    goto :goto_0

    .line 406
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->releaseHeldOrUDUB()Z

    move-result v0

    :cond_5
    :goto_0
    :pswitch_5
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onDial(Ljava/lang/String;)Z
    .locals 8

    const-string v0, "SC< dial fail (invalid call state)"

    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SC> dial \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GSM"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-boolean v1, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mNextDialFailImmediately:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 665
    iput-boolean v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mNextDialFailImmediately:Z

    const-string p1, "SC< dial fail (per request)"

    .line 667
    invoke-static {v2, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 671
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 673
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "SC< dial fail (invalid ph num)"

    .line 674
    invoke-static {v2, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const-string v1, "*99"

    .line 679
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "SC< dial ignored (gprs)"

    .line 680
    invoke-static {v2, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 687
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->countActiveLines()I

    move-result v1

    if-le v1, v4, :cond_3

    .line 688
    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/internal/telephony/test/InvalidStateEx; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :cond_3
    const/4 v1, -0x1

    move v5, v1

    move v1, v3

    .line 696
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v7, v6

    if-ge v1, v7, :cond_7

    if-gez v5, :cond_4

    .line 697
    aget-object v6, v6, v1

    if-nez v6, :cond_4

    move v5, v1

    .line 701
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v7, v6, v1

    if-eqz v7, :cond_5

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/internal/telephony/test/CallInfo;->isActiveOrHeld()Z

    move-result v6

    if-nez v6, :cond_5

    .line 704
    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 706
    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v7, v6, v1

    if-eqz v7, :cond_6

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v7, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v6, v7, :cond_6

    .line 708
    iget-object v6, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v6, v6, v1

    sget-object v7, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v7, v6, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    if-gez v5, :cond_8

    .line 713
    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 717
    :cond_8
    invoke-static {p1}, Lcom/android/internal/telephony/test/CallInfo;->createOutgoingCall(Ljava/lang/String;)Lcom/android/internal/telephony/test/CallInfo;

    move-result-object p1

    aput-object p1, v6, v5

    .line 719
    iget-boolean p1, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mAutoProgressConnecting:Z

    if-eqz p1, :cond_9

    .line 720
    iget-object p1, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object p1, p1, v5

    .line 721
    invoke-virtual {p0, v4, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    .line 720
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 725
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "SC< dial (slot = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 692
    :catch_0
    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public onHangup()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 379
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 380
    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 382
    iget-object v2, v2, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v2, v3, :cond_0

    .line 383
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public progressConnectingCallState()V
    .locals 4

    .line 220
    monitor-enter p0

    const/4 v0, 0x0

    .line 221
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 222
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 224
    iget-object v2, v1, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->DIALING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v2, v3, :cond_0

    .line 225
    sget-object v0, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v0, v1, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    .line 227
    iget-boolean v0, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mAutoProgressConnecting:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 229
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 228
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    .line 233
    iget-object v2, v1, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v2, v3, :cond_1

    .line 236
    sget-object v0, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v0, v1, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public progressConnectingToActive()V
    .locals 4

    .line 246
    monitor-enter p0

    const/4 v0, 0x0

    .line 247
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 248
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 250
    iget-object v2, v1, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->DIALING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v2, v3, :cond_0

    iget-object v2, v1, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v2, v3, :cond_1

    .line 253
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v0, v1, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public releaseActiveAcceptHeldOrWaiting()Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 482
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v1, v4, :cond_1

    .line 483
    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 485
    iget-object v3, v3, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_0

    .line 486
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aput-object v5, v2, v1

    move v2, v6

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_4

    move v1, v0

    .line 494
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 495
    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    .line 497
    iget-object v3, v2, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->DIALING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v3, v4, :cond_2

    iget-object v2, v2, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v2, v3, :cond_3

    .line 501
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aput-object v5, v2, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v1, v0

    move v2, v1

    .line 507
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v4, v3

    if-ge v1, v4, :cond_6

    .line 508
    aget-object v3, v3, v1

    if-eqz v3, :cond_5

    .line 510
    iget-object v4, v3, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v4, v5, :cond_5

    .line 511
    sget-object v2, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v2, v3, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    move v2, v6

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    if-eqz v2, :cond_7

    return v6

    .line 520
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v2, v1

    if-ge v0, v2, :cond_9

    .line 521
    aget-object v1, v1, v0

    if-eqz v1, :cond_8

    .line 523
    invoke-virtual {v1}, Lcom/android/internal/telephony/test/CallInfo;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 524
    sget-object v0, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v0, v1, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    return v6

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    return v6
.end method

.method public releaseHeldOrUDUB()Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 451
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v1, v3, :cond_1

    .line 452
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 454
    invoke-virtual {v2}, Lcom/android/internal/telephony/test/CallInfo;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aput-object v4, v2, v1

    move v1, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    if-nez v1, :cond_3

    .line 462
    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 463
    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 465
    iget-object v1, v1, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v2, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v1, v2, :cond_2

    .line 467
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aput-object v4, v1, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return v5
.end method

.method public separateCall(I)Z
    .locals 6

    const/4 v0, 0x0

    .line 570
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v1, v1, p1

    if-eqz v1, :cond_4

    .line 572
    invoke-virtual {v1}, Lcom/android/internal/telephony/test/CallInfo;->isConnecting()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->countActiveLines()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_2

    .line 576
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v2, v1, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    .line 577
    iput-boolean v0, v1, Lcom/android/internal/telephony/test/CallInfo;->mIsMpty:Z

    move v1, v0

    .line 579
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    if-eq v1, p1, :cond_1

    .line 583
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 585
    iget-object v4, v2, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v4, v5, :cond_1

    .line 586
    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v4, v2, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    move v4, v1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v0

    move v4, v2

    :goto_1
    if-ne v2, v3, :cond_2

    .line 594
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v2, v2, v4

    iput-boolean v0, v2, Lcom/android/internal/telephony/test/CallInfo;->mIsMpty:Z
    :try_end_0
    .catch Lcom/android/internal/telephony/test/InvalidStateEx; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v3

    :catch_0
    :cond_4
    :goto_2
    return v0
.end method

.method public setAutoProgressConnectingCall(Z)V
    .locals 0

    .line 265
    iput-boolean p1, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mAutoProgressConnecting:Z

    return-void
.end method

.method public setNextDialFailImmediately(Z)V
    .locals 0

    .line 270
    iput-boolean p1, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mNextDialFailImmediately:Z

    return-void
.end method

.method public switchActiveAndHeldOrWaiting()Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 537
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    .line 538
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 540
    iget-object v2, v2, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v2, v3, :cond_0

    move v1, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 547
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v2

    if-ge v0, v3, :cond_5

    .line 548
    aget-object v2, v2, v0

    if-eqz v2, :cond_4

    .line 551
    iget-object v3, v2, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v3, v5, :cond_2

    .line 552
    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v3, v2, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    goto :goto_2

    .line 553
    :cond_2
    iget-object v3, v2, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v3, v5, :cond_3

    .line 554
    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v3, v2, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    .line 555
    invoke-virtual {v2}, Lcom/android/internal/telephony/test/CallInfo;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 556
    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v3, v2, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return v4
.end method

.method public triggerHangupAll()Z
    .locals 4

    .line 340
    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    .line 343
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 346
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 350
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    .line 354
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public triggerHangupBackground()Z
    .locals 4

    .line 318
    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    .line 321
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 322
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 324
    iget-object v2, v2, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v2, v3, :cond_0

    .line 325
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    .line 331
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public triggerHangupForeground()Z
    .locals 8

    .line 279
    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 284
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v1, v3, :cond_2

    .line 285
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    .line 287
    iget-object v6, v3, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v7, Lcom/android/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v6, v7, :cond_0

    iget-object v3, v3, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v6, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v3, v6, :cond_1

    .line 291
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aput-object v4, v2, v1

    move v2, v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 297
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v1, v1, v0

    if-eqz v1, :cond_4

    .line 299
    iget-object v3, v1, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v6, Lcom/android/internal/telephony/test/CallInfo$State;->DIALING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v3, v6, :cond_3

    iget-object v3, v1, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v6, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v3, v6, :cond_3

    iget-object v1, v1, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v1, v3, :cond_4

    .line 304
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aput-object v4, v1, v0

    move v2, v5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 308
    :cond_5
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    .line 309
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public triggerRing(Ljava/lang/String;)Z
    .locals 8

    .line 179
    monitor-enter p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    move v3, v0

    .line 184
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v4, v4

    const/4 v5, 0x1

    if-ge v0, v4, :cond_4

    .line 185
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v4, v4, v0

    if-nez v4, :cond_0

    if-gez v2, :cond_0

    move v2, v0

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_2

    .line 189
    iget-object v6, v4, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v7, Lcom/android/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v6, v7, :cond_1

    iget-object v6, v4, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v7, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v6, v7, :cond_2

    :cond_1
    const-string p1, "ModelInterpreter"

    const-string/jumbo v0, "triggerRing failed; phone already ringing"

    .line 193
    invoke-static {p1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    monitor-exit p0

    return v1

    :cond_2
    if-eqz v4, :cond_3

    move v3, v5

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-gez v2, :cond_5

    const-string p1, "ModelInterpreter"

    const-string/jumbo v0, "triggerRing failed; all full"

    .line 202
    invoke-static {p1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    monitor-exit p0

    return v1

    .line 206
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    .line 207
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-static {p1}, Lcom/android/internal/telephony/test/CallInfo;->createIncomingCall(Ljava/lang/String;)Lcom/android/internal/telephony/test/CallInfo;

    move-result-object p1

    aput-object p1, v0, v2

    if-eqz v3, :cond_6

    .line 210
    iget-object p1, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object p1, p1, v2

    sget-object v0, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v0, p1, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    .line 213
    :cond_6
    monitor-exit p0

    return v5

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
