.class public abstract Lcom/android/internal/telephony/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Connection$PostDialState;,
        Lcom/android/internal/telephony/Connection$ListenerBase;,
        Lcom/android/internal/telephony/Connection$Listener;,
        Lcom/android/internal/telephony/Connection$Capability;,
        Lcom/android/internal/telephony/Connection$PostDialListener;
    }
.end annotation


# static fields
.field public static final AUDIO_QUALITY_HIGH_DEFINITION:I = 0x2

.field public static final AUDIO_QUALITY_STANDARD:I = 0x1

.field private static LOG_TAG:Ljava/lang/String; = "Connection"
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Connection"


# instance fields
.field protected mAddress:Ljava/lang/String;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mAllowAddCallDuringVideoCall:Z

.field private mAllowHoldingVideoCall:Z

.field private mAnsweringDisconnectsActiveCall:Z

.field private mAudioModeIsVoip:Z

.field private mAudioQuality:I

.field private mCallRadioTech:I

.field private mCallSubstate:I

.field protected mCause:I

.field protected mCnapName:Ljava/lang/String;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mCnapNamePresentation:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mConnectTime:J

.field protected mConnectTimeReal:J

.field private mConnectionCapabilities:I

.field protected mConvertedNumber:Ljava/lang/String;

.field protected mCreateTime:J

.field protected mDialString:Ljava/lang/String;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mDuration:J
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

.field private mExtras:Landroid/os/Bundle;

.field private mHasKnownUserIntentEmergency:Z

.field protected mHoldingStartTime:J

.field private mIsEmergencyCall:Z

.field protected mIsIncoming:Z
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mIsNetworkIdentifiedEmergencyCall:Z

.field private mIsPulledCall:Z

.field public mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/Connection$Listener;",
            ">;"
        }
    .end annotation
.end field

.field protected mNextPostDialChar:I

.field protected mNumberConverted:Z

.field protected mNumberPresentation:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mOrigConnection:Lcom/android/internal/telephony/Connection;

.field private mPhoneType:I

.field private mPostDialListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/Connection$PostDialListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

.field protected mPostDialString:Ljava/lang/String;

.field public mPreHandoverState:Lcom/android/internal/telephony/Call$State;

.field private mPulledDialogId:I

.field private mTelecomCallId:Ljava/lang/String;

.field mUserData:Ljava/lang/Object;

.field private mVideoProvider:Landroid/telecom/Connection$VideoProvider;

.field private mVideoState:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 184
    iput v0, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    .line 190
    iput v0, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    .line 212
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    const/4 v0, 0x0

    .line 214
    iput-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mNumberConverted:Z

    .line 220
    iput v0, p0, Lcom/android/internal/telephony/Connection;->mCause:I

    .line 221
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v1, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 234
    iput v0, p0, Lcom/android/internal/telephony/Connection;->mCallRadioTech:I

    .line 240
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v1, p0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    .line 270
    iput-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsPulledCall:Z

    .line 281
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mPhoneType:I

    return-void
.end method

.method public static addCapability(II)I
    .locals 0

    or-int/2addr p0, p1

    return p0
.end method

.method public static removeCapability(II)I
    .locals 0

    not-int p1, p1

    and-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public addListener(Lcom/android/internal/telephony/Connection$Listener;)V
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPostDialListener(Lcom/android/internal/telephony/Connection$PostDialListener;)V
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public abstract cancelPostDial()V
.end method

.method protected final clearPostDialListeners()V
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 683
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public clearUserData()V
    .locals 1

    const/4 v0, 0x0

    .line 668
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    return-void
.end method

.method public abstract deflect(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioModeIsVoip()Z
    .locals 1

    .line 899
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mAudioModeIsVoip:Z

    return v0
.end method

.method public getAudioQuality()I
    .locals 1

    .line 917
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mAudioQuality:I

    return v0
.end method

.method public abstract getCall()Lcom/android/internal/telephony/Call;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end method

.method public getCallRadioTech()I
    .locals 1

    .line 890
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mCallRadioTech:I

    return v0
.end method

.method public getCallSubstate()I
    .locals 1

    .line 927
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mCallSubstate:I

    return v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    return-object v0
.end method

.method public getCnapNamePresentation()I
    .locals 1

    .line 337
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    return v0
.end method

.method public getConferenceParticipants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;"
        }
    .end annotation

    .line 581
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 586
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConferenceParticipants()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectTime()J
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 365
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    return-wide v0
.end method

.method public getConnectTimeReal()J
    .locals 2

    .line 393
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    return-wide v0
.end method

.method public getConnectionCapabilities()I
    .locals 1

    .line 842
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mConnectionCapabilities:I

    return v0
.end method

.method public getConnectionExtras()Landroid/os/Bundle;
    .locals 2

    .line 1031
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public getCreateTime()J
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 354
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mCreateTime:J

    return-wide v0
.end method

.method public getDisconnectCause()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 445
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mCause:I

    return v0
.end method

.method public abstract getDisconnectTime()J
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end method

.method public getDurationMillis()J
    .locals 4
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 412
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-wide v2

    .line 414
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mDuration:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 415
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    sub-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method public getEmergencyNumberInfo()Landroid/telephony/emergency/EmergencyNumber;
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

    return-object v0
.end method

.method public abstract getHoldDurationMillis()J
.end method

.method public getHoldingStartTime()J
    .locals 2

    .line 427
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mHoldingStartTime:J

    return-wide v0
.end method

.method public abstract getNumberPresentation()I
.end method

.method public getOrigConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    return-object v0
.end method

.method public getOrigDialString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .line 1278
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mPhoneType:I

    return v0
.end method

.method public getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    return-object v0
.end method

.method public abstract getPreciseDisconnectCause()I
.end method

.method public getPulledDialogId()I
    .locals 1

    .line 1096
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mPulledDialogId:I

    return v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .locals 2

    .line 710
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 713
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/Connection;->mNextPostDialChar:I

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 557
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-nez v0, :cond_0

    .line 560
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    return-object v0

    .line 562
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    return-object v0
.end method

.method public getStateBeforeHandover()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method public getTelecomCallId()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mTelecomCallId:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 616
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract getVendorDisconnectCause()Ljava/lang/String;
.end method

.method public getVideoProvider()Landroid/telecom/Connection$VideoProvider;
    .locals 1

    .line 908
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    .line 834
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mVideoState:I

    return v0
.end method

.method public abstract hangup()V
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public hasCapabilities(I)Z
    .locals 1

    .line 849
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mConnectionCapabilities:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hasKnownUserIntentEmergency()Z
    .locals 1

    .line 507
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mHasKnownUserIntentEmergency:Z

    return v0
.end method

.method public isActiveCallDisconnectedOnAnswer()Z
    .locals 1

    .line 1039
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mAnsweringDisconnectsActiveCall:Z

    return v0
.end method

.method public isAlive()Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 599
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    return v0
.end method

.method public isConferenceHost()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmergencyCall()Z
    .locals 1

    .line 483
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsEmergencyCall:Z

    return v0
.end method

.method public isIncoming()Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 464
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsIncoming:Z

    return v0
.end method

.method public isMemberOfPeerConference()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isMultiparty()Z
.end method

.method public isNetworkIdentifiedEmergencyCall()Z
    .locals 1

    .line 1309
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsNetworkIdentifiedEmergencyCall:Z

    return v0
.end method

.method public isPulledCall()Z
    .locals 1

    .line 1081
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsPulledCall:Z

    return v0
.end method

.method public isRinging()Z
    .locals 1

    .line 607
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    return v0
.end method

.method public isWifi()Z
    .locals 2

    .line 880
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCallRadioTech()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public migrateFrom(Lcom/android/internal/telephony/Connection;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 798
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    .line 799
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mDialString:Ljava/lang/String;

    .line 800
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mCreateTime:J

    .line 801
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    .line 802
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTimeReal()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    .line 803
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getHoldingStartTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mHoldingStartTime:J

    .line 804
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    .line 805
    iget-object v0, p1, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    .line 806
    iget v0, p1, Lcom/android/internal/telephony/Connection;->mNextPostDialChar:I

    iput v0, p0, Lcom/android/internal/telephony/Connection;->mNextPostDialChar:I

    .line 807
    iget-object p1, p1, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    return-void
.end method

.method protected notifyDisconnect(I)V
    .locals 2

    .line 1268
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyDisconnect: callId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connection"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 1270
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Connection$Listener;->onDisconnect(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final notifyPostDialListeners()V
    .locals 2

    .line 688
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v0, v1, :cond_0

    .line 689
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$PostDialListener;

    .line 690
    invoke-interface {v1}, Lcom/android/internal/telephony/Connection$PostDialListener;->onPostDialWait()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final notifyPostDialListenersNextChar(C)V
    .locals 2

    .line 696
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$PostDialListener;

    .line 697
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Connection$PostDialListener;->onPostDialChar(C)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCallPullFailed(Lcom/android/internal/telephony/Connection;)V
    .locals 2

    .line 1195
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 1196
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Connection$Listener;->onCallPullFailed(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConferenceMergeFailed()V
    .locals 2

    .line 1172
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 1173
    invoke-interface {v1}, Lcom/android/internal/telephony/Connection$Listener;->onConferenceMergedFailed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1218
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 1219
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/Connection$Listener;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDisconnect(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public onExitedEcmMode()V
    .locals 2

    .line 1181
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 1182
    invoke-interface {v1}, Lcom/android/internal/telephony/Connection$Listener;->onExitedEcmMode()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onHandoverToWifiFailed()V
    .locals 2

    .line 1209
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 1210
    invoke-interface {v1}, Lcom/android/internal/telephony/Connection$Listener;->onHandoverToWifiFailed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOriginalConnectionReplaced(Lcom/android/internal/telephony/Connection;)V
    .locals 2

    .line 1201
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 1202
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Connection$Listener;->onOriginalConnectionReplaced(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRttInitiated()V
    .locals 2

    .line 1252
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 1253
    invoke-interface {v1}, Lcom/android/internal/telephony/Connection$Listener;->onRttInitiated()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRttModifyRequestReceived()V
    .locals 2

    .line 1240
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 1241
    invoke-interface {v1}, Lcom/android/internal/telephony/Connection$Listener;->onRttModifyRequestReceived()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRttModifyResponseReceived(I)V
    .locals 2

    .line 1246
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 1247
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Connection$Listener;->onRttModifyResponseReceived(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRttTerminated()V
    .locals 2

    .line 1258
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 1259
    invoke-interface {v1}, Lcom/android/internal/telephony/Connection$Listener;->onRttTerminated()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract proceedAfterWaitChar()V
.end method

.method public abstract proceedAfterWildChar(Ljava/lang/String;)V
.end method

.method public pullExternalCall()V
    .locals 0

    return-void
.end method

.method public final removeListener(Lcom/android/internal/telephony/Connection$Listener;)V
    .locals 1

    .line 825
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removePostDialListener(Lcom/android/internal/telephony/Connection$PostDialListener;)V
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetConnectionTime()V
    .locals 2

    .line 1285
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mPhoneType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1287
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    .line 1288
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    const-wide/16 v0, 0x0

    .line 1289
    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mDuration:J

    :cond_1
    return-void
.end method

.method public abstract separate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public setActiveCallDisconnectedOnAnswer(Z)V
    .locals 0

    .line 1051
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mAnsweringDisconnectsActiveCall:Z

    return-void
.end method

.method public setAddress(Ljava/lang/String;I)V
    .locals 2

    .line 1137
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setAddress = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connection"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    .line 1139
    iput p2, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    return-void
.end method

.method public setAllowAddCallDuringVideoCall(Z)V
    .locals 0

    .line 1059
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mAllowAddCallDuringVideoCall:Z

    return-void
.end method

.method public setAllowHoldingVideoCall(Z)V
    .locals 0

    .line 1067
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mAllowHoldingVideoCall:Z

    return-void
.end method

.method public setAudioModeIsVoip(Z)V
    .locals 0

    .line 983
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mAudioModeIsVoip:Z

    return-void
.end method

.method public setAudioQuality(I)V
    .locals 2

    .line 992
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mAudioQuality:I

    .line 993
    iget-object p1, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 994
    iget v1, p0, Lcom/android/internal/telephony/Connection;->mAudioQuality:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Connection$Listener;->onAudioQualityChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCallRadioTech(I)V
    .locals 2

    .line 968
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mCallRadioTech:I

    if-ne v0, p1, :cond_0

    return-void

    .line 971
    :cond_0
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mCallRadioTech:I

    .line 972
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 973
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Connection$Listener;->onCallRadioTechChanged(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCallSubstate(I)V
    .locals 2

    .line 1106
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mCallSubstate:I

    .line 1107
    iget-object p1, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1108
    iget v1, p0, Lcom/android/internal/telephony/Connection;->mCallSubstate:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Connection$Listener;->onCallSubstateChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setConnectTime(J)V
    .locals 0

    .line 374
    iput-wide p1, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    return-void
.end method

.method public setConnectTimeReal(J)V
    .locals 0

    .line 383
    iput-wide p1, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    return-void
.end method

.method public setConnectionCapabilities(I)V
    .locals 2

    .line 953
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mConnectionCapabilities:I

    if-eq v0, p1, :cond_0

    .line 954
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mConnectionCapabilities:I

    .line 955
    iget-object p1, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 956
    iget v1, p0, Lcom/android/internal/telephony/Connection;->mConnectionCapabilities:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Connection$Listener;->onConnectionCapabilitiesChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setConnectionExtras(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1006
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    .line 1008
    iget-object p1, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p1

    .line 1011
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->filterValues()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    .line 1012
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 1014
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setConnectionExtras: filtering "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " invalid extras."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Connection"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1018
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    .line 1021
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1022
    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Connection$Listener;->onExtrasChanged(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setConverted(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1125
    iput-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mNumberConverted:Z

    .line 1126
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mConvertedNumber:Ljava/lang/String;

    .line 1127
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    .line 1128
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mDialString:Ljava/lang/String;

    return-void
.end method

.method public setDialString(Ljava/lang/String;)V
    .locals 0

    .line 1143
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mDialString:Ljava/lang/String;

    return-void
.end method

.method public setEmergencyCallInfo()V
    .locals 2

    .line 516
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumber(Ljava/lang/String;)Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 524
    iput-boolean v1, p0, Lcom/android/internal/telephony/Connection;->mIsEmergencyCall:Z

    .line 525
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

    :cond_0
    return-void
.end method

.method public setHasKnownUserIntentEmergency(Z)V
    .locals 0

    .line 543
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mHasKnownUserIntentEmergency:Z

    return-void
.end method

.method public setIsIncoming(Z)V
    .locals 0

    .line 473
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mIsIncoming:Z

    return-void
.end method

.method public setIsNetworkIdentifiedEmergencyCall(Z)V
    .locals 2

    .line 1298
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mIsNetworkIdentifiedEmergencyCall:Z

    .line 1299
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 1300
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Connection$Listener;->onIsNetworkEmergencyCallChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIsPulledCall(Z)V
    .locals 0

    .line 1077
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mIsPulledCall:Z

    return-void
.end method

.method public setPulledDialogId(I)V
    .locals 0

    .line 1092
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mPulledDialogId:I

    return-void
.end method

.method public setTelecomCallId(Ljava/lang/String;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mTelecomCallId:Ljava/lang/String;

    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    return-void
.end method

.method public setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    .locals 2

    .line 1118
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    .line 1119
    iget-object p1, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1120
    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Connection$Listener;->onVideoProviderChanged(Landroid/telecom/Connection$VideoProvider;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setVideoState(I)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 939
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mVideoState:I

    .line 940
    iget-object p1, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 941
    iget v1, p0, Lcom/android/internal/telephony/Connection;->mVideoState:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Connection$Listener;->onVideoStateChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public shouldAllowAddCallDuringVideoCall()Z
    .locals 1

    .line 1055
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mAllowAddCallDuringVideoCall:Z

    return v0
.end method

.method public shouldAllowHoldingVideoCall()Z
    .locals 1

    .line 1063
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mAllowHoldingVideoCall:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1318
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1320
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " callId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1321
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " isExternal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/telephony/Connection;->mConnectionCapabilities:I

    const/16 v3, 0x10

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const-string v2, "Y"

    goto :goto_0

    :cond_0
    const-string v2, "N"

    .line 1322
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1323
    sget-object v1, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1324
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addr: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " pres.: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1325
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " dial: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1326
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " postdial: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1327
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " cnap name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1328
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1329
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " incoming: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1332
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " post dial state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1333
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1334
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateConferenceParticipants(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .line 1152
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 1153
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Connection$Listener;->onConferenceParticipantsChanged(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateMultipartyState(Z)V
    .locals 2

    .line 1163
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 1164
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Connection$Listener;->onMultipartyStateChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
