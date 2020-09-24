.class public Lcom/android/internal/telephony/test/SimulatedCommands;
.super Lcom/android/internal/telephony/BaseCommands;
.source "SimulatedCommands.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;
.implements Lcom/android/internal/telephony/test/SimulatedRadioControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;,
        Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;
    }
.end annotation


# static fields
.field public static final DEFAULT_PIN1_ATTEMPT:I = 0x5

.field public static final DEFAULT_PIN2_ATTEMPT:I = 0x5

.field public static final DEFAULT_SIM_PIN2_CODE:Ljava/lang/String; = "5678"

.field public static final DEFAULT_SIM_PIN_CODE:Ljava/lang/String; = "1234"

.field public static final FAKE_ESN:Ljava/lang/String; = "1234"

.field public static final FAKE_IMEI:Ljava/lang/String; = "012345678901234"

.field public static final FAKE_IMEISV:Ljava/lang/String; = "99"

.field public static final FAKE_LONG_NAME:Ljava/lang/String; = "Fake long name"

.field public static final FAKE_MCC_MNC:Ljava/lang/String; = "310260"

.field public static final FAKE_MEID:Ljava/lang/String; = "1234"

.field public static final FAKE_SHORT_NAME:Ljava/lang/String; = "Fake short name"

.field private static final INITIAL_FDN_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

.field private static final INITIAL_LOCK_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

.field private static final LOG_TAG:Ljava/lang/String; = "SimulatedCommands"

.field private static final SIM_PUK2_CODE:Ljava/lang/String; = "87654321"

.field private static final SIM_PUK_CODE:Ljava/lang/String; = "12345678"


# instance fields
.field private final getNetworkSelectionModeCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mCellInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelId:I

.field public mCssSupported:Z

.field private mDataRadioTech:I

.field private mDataRegState:I

.field private mDcSuccess:Z

.field public mDefaultRoamingIndicator:I

.field private final mGetDataRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mGetOperatorCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mGetVoiceRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field mHandlerThread:Landroid/os/HandlerThread;

.field private mIccCardStatus:Lcom/android/internal/telephony/uicc/IccCardStatus;

.field private mIccIoResultForApduLogicalChannel:Lcom/android/internal/telephony/uicc/IccIoResult;

.field private mIccSlotStatus:Lcom/android/internal/telephony/uicc/IccSlotStatus;

.field private mImei:Ljava/lang/String;

.field private mImeiSv:Ljava/lang/String;

.field private mImsRegState:[I

.field private mIsRadioPowerFailResponse:Z

.field public mMaxDataCalls:I

.field mNetworkType:I

.field mNextCallFailCause:I

.field mPausedResponseCount:I

.field mPausedResponses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field mPin1attemptsRemaining:I

.field mPin2Code:Ljava/lang/String;

.field mPin2UnlockAttempts:I

.field mPinCode:Ljava/lang/String;

.field mPinUnlockAttempts:I

.field mPuk2UnlockAttempts:I

.field mPukUnlockAttempts:I

.field public mReasonForDenial:I

.field public mRoamingIndicator:I

.field private mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

.field private mShouldReturnCellInfo:Z

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field mSimFdnEnabled:Z

.field mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

.field mSimLockEnabled:Z

.field mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

.field mSsnNotifyOn:Z

.field public mSystemIsInPrl:I

.field private mVoiceRadioTech:I

.field private mVoiceRegState:I

.field simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

.field private smscAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    sget-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    sput-object v0, Lcom/android/internal/telephony/test/SimulatedCommands;->INITIAL_LOCK_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    .line 98
    sget-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    sput-object v0, Lcom/android/internal/telephony/test/SimulatedCommands;->INITIAL_FDN_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x0

    .line 164
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x5

    .line 123
    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin1attemptsRemaining:I

    const/4 v1, 0x0

    .line 130
    iput-boolean v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSsnNotifyOn:Z

    const/4 v2, 0x1

    .line 131
    iput v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mVoiceRegState:I

    const/4 v3, 0x3

    .line 132
    iput v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mVoiceRadioTech:I

    .line 133
    iput v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDataRegState:I

    .line 134
    iput v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDataRadioTech:I

    .line 143
    iput-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCellInfoList:Ljava/util/List;

    .line 144
    iput-boolean v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mShouldReturnCellInfo:Z

    const/4 v0, -0x1

    .line 149
    iput v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mChannelId:I

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponses:Ljava/util/ArrayList;

    const/16 v0, 0x10

    .line 154
    iput v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mNextCallFailCause:I

    .line 156
    iput-boolean v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDcSuccess:Z

    .line 158
    iput-boolean v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIsRadioPowerFailResponse:Z

    .line 987
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mGetVoiceRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1015
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mGetDataRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1040
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mGetOperatorCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1420
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->getNetworkSelectionModeCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2205
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 165
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "SimulatedCommands"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mHandlerThread:Landroid/os/HandlerThread;

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 169
    new-instance v3, Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-direct {v3, v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    .line 171
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(IZ)V

    .line 172
    sget-object v0, Lcom/android/internal/telephony/test/SimulatedCommands;->INITIAL_LOCK_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    iput-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    .line 173
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    sget-object v3, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    if-eq v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockEnabled:Z

    const-string v0, "1234"

    .line 174
    iput-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    .line 175
    sget-object v0, Lcom/android/internal/telephony/test/SimulatedCommands;->INITIAL_FDN_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    iput-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    sget-object v3, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    if-eq v0, v3, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabled:Z

    const-string v0, "5678"

    .line 177
    iput-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2Code:Ljava/lang/String;

    return-void
.end method

.method private getCellInfoGsm()Landroid/telephony/CellInfoGsm;
    .locals 4

    .line 1902
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x1

    .line 1904
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1905
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x2

    .line 1906
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const-wide v2, 0x1526bf6e6d4L

    .line 1907
    invoke-virtual {v0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v2, 0x0

    .line 1908
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1910
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const-string v1, "310"

    .line 1911
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v1, "260"

    .line 1912
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v1, "long"

    .line 1913
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v1, "short"

    .line 1914
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v1, 0x7b

    .line 1916
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v1, 0x1c8

    .line 1917
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v1, 0x3b6

    .line 1918
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v1, 0x1b

    .line 1919
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v1, 0x63

    .line 1921
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1922
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x3

    .line 1923
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1924
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1926
    sget-object v1, Landroid/telephony/CellInfoGsm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfoGsm;

    return-object v0
.end method

.method private isSimLocked()Z
    .locals 2

    .line 1245
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SimulatedCommands"

    .line 187
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 1688
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1689
    iget p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponseCount:I

    if-lez p2, :cond_0

    .line 1690
    iget-object p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponses:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 1692
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method private resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1677
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1678
    iget p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponseCount:I

    if-lez p2, :cond_0

    .line 1679
    iget-object p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponses:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 1681
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method private unimplemented(Landroid/os/Message;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1664
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unimplemented"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1667
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponseCount:I

    if-lez v0, :cond_0

    .line 1668
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 1670
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method


# virtual methods
.method public acceptCall(Landroid/os/Message;)V
    .locals 3

    .line 809
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->acceptCall(Landroid/os/Message;)V

    .line 810
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onAnswer()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 813
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Hangup Error"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    .line 815
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 1282
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .locals 0

    .line 1276
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 1

    .line 1269
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1270
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    .line 1271
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    return-void
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    .line 1507
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 404
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 372
    iput-object p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    .line 373
    invoke-direct {p0, p3, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p1, "SimulatedCommands"

    const-string p2, "[SimCmd] changeIccPin: pin failed!"

    .line 378
    invoke-static {p1, p2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    new-instance p1, Lcom/android/internal/telephony/CommandException;

    sget-object p2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 382
    invoke-direct {p0, p3, v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2Code:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 388
    iput-object p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2Code:Ljava/lang/String;

    .line 389
    invoke-direct {p0, p3, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p1, "SimulatedCommands"

    const-string p2, "[SimCmd] changeIccPin2: pin2 failed!"

    .line 394
    invoke-static {p1, p2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    new-instance p1, Lcom/android/internal/telephony/CommandException;

    sget-object p2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 398
    invoke-direct {p0, p3, v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 1881
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .line 1873
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1875
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 3

    .line 750
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v1, 0x33

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 753
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Hangup Error"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    .line 755
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 1

    .line 1189
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->deactivateDataCall(IILandroid/os/Message;)V

    const/4 p1, 0x0

    .line 1190
    invoke-direct {p0, p3, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .locals 1

    .line 1123
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Delete RUIM message at index "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SimulatedCommands"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .locals 1

    .line 1117
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Delete message at index "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SimulatedCommands"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILandroid/os/Message;)V
    .locals 7

    .line 568
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILandroid/os/Message;)V

    .line 570
    iget-object p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onDial(Ljava/lang/String;)Z

    const/4 p1, 0x0

    .line 572
    invoke-direct {p0, p6, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 8

    .line 590
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 592
    iget-object p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onDial(Ljava/lang/String;)Z

    const/4 p1, 0x0

    .line 594
    invoke-direct {p0, p7, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 0

    .line 1397
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 3

    .line 771
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v1, 0x34

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 774
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Hangup Error"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    .line 776
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public forceDataDormancy(Landroid/os/Message;)V
    .locals 0

    .line 1821
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public getAllowedCarriers(Landroid/os/Message;Landroid/os/WorkSource;)V
    .locals 0

    .line 2091
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 0

    .line 1434
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .locals 1

    .line 1455
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getBasebandVersion(Landroid/os/Message;)V

    const-string v0, "SimulatedCommands"

    .line 1456
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .locals 5

    const-string v0, "123"

    const-string v1, "456"

    const-string v2, "789"

    const-string v3, "234"

    const-string v4, "345"

    .line 1713
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 1714
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 0

    .line 1329
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .locals 0

    .line 1811
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .locals 0

    .line 1241
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public declared-synchronized getCellInfoList(Landroid/os/Message;Landroid/os/WorkSource;)V
    .locals 1

    monitor-enter p0

    .line 1935
    :try_start_0
    iget-boolean p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mShouldReturnCellInfo:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    monitor-exit p0

    return-void

    .line 1937
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCellInfoList:Ljava/util/List;

    if-nez p2, :cond_1

    .line 1938
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1939
    invoke-direct {p0}, Lcom/android/internal/telephony/test/SimulatedCommands;->getCellInfoGsm()Landroid/telephony/CellInfoGsm;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1942
    :cond_1
    iget-object p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCellInfoList:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1943
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 3

    .line 517
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getCurrentCalls(Landroid/os/Message;)V

    .line 518
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/test/SimulatedCommands;->isSimLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->getDriverCalls()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 523
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 2

    .line 546
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 547
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getDataCallList(Landroid/os/Message;)V

    .line 548
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    if-eqz v1, :cond_0

    .line 549
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .locals 2

    .line 1004
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mGetDataRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1006
    new-instance v0, Landroid/hardware/radio/V1_0/DataRegStateResult;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataRegStateResult;-><init>()V

    .line 1007
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDataRegState:I

    iput v1, v0, Landroid/hardware/radio/V1_0/DataRegStateResult;->regState:I

    .line 1008
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDataRadioTech:I

    iput v1, v0, Landroid/hardware/radio/V1_0/DataRegStateResult;->rat:I

    .line 1009
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mMaxDataCalls:I

    iput v1, v0, Landroid/hardware/radio/V1_0/DataRegStateResult;->maxDataCalls:I

    .line 1010
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mReasonForDenial:I

    iput v1, v0, Landroid/hardware/radio/V1_0/DataRegStateResult;->reasonDataDenied:I

    .line 1012
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .locals 3

    .line 1701
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getDeviceIdentity(Landroid/os/Message;)V

    const-string v0, "1234"

    const-string v1, "012345678901234"

    const-string v2, "99"

    .line 1702
    filled-new-array {v1, v2, v0, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public getGetDataRegistrationStateCallCount()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1019
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mGetDataRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getGetNetworkSelectionModeCallCount()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1424
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->getNetworkSelectionModeCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getGetOperatorCallCount()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1044
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mGetOperatorCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 1045
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mGetOperatorCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getGetVoiceRegistrationStateCallCount()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 991
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mGetVoiceRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .locals 0

    .line 1838
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 2313
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getHardwareConfig(Landroid/os/Message;)V
    .locals 0

    .line 2044
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .locals 1

    .line 626
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getIMEI(Landroid/os/Message;)V

    .line 627
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mImei:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "012345678901234"

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .locals 1

    .line 643
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getIMEISV(Landroid/os/Message;)V

    .line 644
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mImeiSv:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "99"

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    .line 599
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    const-string p1, "012345678901234"

    .line 610
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .locals 3

    .line 194
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getIccCardStatus(Landroid/os/Message;)V

    .line 195
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIccCardStatus:Lcom/android/internal/telephony/uicc/IccCardStatus;

    if-eqz v0, :cond_0

    .line 196
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 198
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IccCardStatus not set"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getIccSlotsStatus(Landroid/os/Message;)V
    .locals 3

    .line 208
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getIccSlotsStatus(Landroid/os/Message;)V

    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIccSlotStatus:Lcom/android/internal/telephony/uicc/IccSlotStatus;

    if-eqz v0, :cond_0

    .line 210
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 212
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 1

    .line 1969
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mImsRegState:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 1970
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mImsRegState:[I

    .line 1973
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mImsRegState:[I

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 2

    .line 848
    new-instance v0, Lcom/android/internal/telephony/LastCallFailCause;

    invoke-direct {v0}, Lcom/android/internal/telephony/LastCallFailCause;-><init>()V

    .line 849
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mNextCallFailCause:I

    iput v1, v0, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    .line 850
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .locals 0

    .line 865
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 859
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public getModemActivityInfo(Landroid/os/Message;Landroid/os/WorkSource;)V
    .locals 0

    .line 2080
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public getMute(Landroid/os/Message;)V
    .locals 0

    .line 872
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 2

    .line 1412
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 1413
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->getNetworkSelectionModeCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v0, 0x1

    .line 1414
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 1417
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public getOperator(Landroid/os/Message;)V
    .locals 3

    .line 1030
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mGetOperatorCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const-string v0, "Fake long name"

    const-string v1, "Fake short name"

    const-string v2, "310260"

    .line 1035
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 1037
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 534
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->getDataCallList(Landroid/os/Message;)V

    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 3

    .line 1202
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getPreferredNetworkType(Landroid/os/Message;)V

    const/4 v0, 0x1

    .line 1203
    new-array v0, v0, [I

    .line 1205
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mNetworkType:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1206
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .locals 0

    .line 1740
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public getRadioCapability(Landroid/os/Message;)V
    .locals 8

    .line 2096
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getRadioCapability(Landroid/os/Message;)V

    .line 2097
    new-instance v0, Lcom/android/internal/telephony/RadioCapability;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0xffff

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public getRilVersion()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .locals 8

    .line 880
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v0, :cond_0

    .line 881
    new-instance v0, Landroid/telephony/SignalStrength;

    new-instance v2, Landroid/telephony/CellSignalStrengthCdma;

    invoke-direct {v2}, Landroid/telephony/CellSignalStrengthCdma;-><init>()V

    new-instance v3, Landroid/telephony/CellSignalStrengthGsm;

    const/16 v1, 0x14

    const/4 v4, 0x0

    const v5, 0x7fffffff

    invoke-direct {v3, v1, v4, v5}, Landroid/telephony/CellSignalStrengthGsm;-><init>(III)V

    new-instance v4, Landroid/telephony/CellSignalStrengthWcdma;

    invoke-direct {v4}, Landroid/telephony/CellSignalStrengthWcdma;-><init>()V

    new-instance v5, Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-direct {v5}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>()V

    new-instance v6, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {v6}, Landroid/telephony/CellSignalStrengthLte;-><init>()V

    new-instance v7, Landroid/telephony/CellSignalStrengthNr;

    invoke-direct {v7}, Landroid/telephony/CellSignalStrengthNr;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/CellSignalStrengthCdma;Landroid/telephony/CellSignalStrengthGsm;Landroid/telephony/CellSignalStrengthWcdma;Landroid/telephony/CellSignalStrengthTdscdma;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellSignalStrengthNr;)V

    iput-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 1

    .line 1217
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->smscAddress:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1218
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getSmscAddress(Landroid/os/Message;)V

    return-void
.end method

.method public getVoiceRadioTechnology(Landroid/os/Message;)V
    .locals 3

    .line 1891
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getVoiceRadioTechnology(Landroid/os/Message;)V

    const/4 v0, 0x1

    .line 1892
    new-array v0, v0, [I

    .line 1893
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mVoiceRadioTech:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1894
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public getVoiceRegistrationState(Landroid/os/Message;)V
    .locals 2

    .line 973
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mGetVoiceRegistrationStateCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 975
    new-instance v0, Landroid/hardware/radio/V1_0/VoiceRegStateResult;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;-><init>()V

    .line 976
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mVoiceRegState:I

    iput v1, v0, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->regState:I

    .line 977
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mVoiceRadioTech:I

    iput v1, v0, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->rat:I

    .line 978
    iget-boolean v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCssSupported:Z

    iput-boolean v1, v0, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->cssSupported:Z

    .line 979
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mRoamingIndicator:I

    iput v1, v0, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->roamingIndicator:I

    .line 980
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSystemIsInPrl:I

    iput v1, v0, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->systemIsInPrl:I

    .line 981
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDefaultRoamingIndicator:I

    iput v1, v0, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->defaultRoamingIndicator:I

    .line 982
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mReasonForDenial:I

    iput v1, v0, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->reasonForDenial:I

    .line 984
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .locals 0

    const/4 p1, 0x0

    .line 953
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 2

    .line 662
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    add-int/lit8 p1, p1, 0x30

    int-to-char p1, p1

    const/16 v1, 0x31

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "GSM"

    if-nez p1, :cond_0

    const-string p1, "[SimCmd] hangupConnection: resultFail"

    .line 665
    invoke-static {v1, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "Hangup Error"

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const-string p1, "[SimCmd] hangupConnection: resultSuccess"

    .line 668
    invoke-static {v1, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 3

    .line 707
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v1, 0x31

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 710
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Hangup Error"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    .line 712
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 3

    .line 685
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 688
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Hangup Error"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    .line 690
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public iccCloseLogicalChannel(ILandroid/os/Message;)V
    .locals 0

    .line 2000
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 11

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    .line 1288
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/test/SimulatedCommands;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 1299
    invoke-direct {p0, p10}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1

    .line 1993
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V

    const/4 p1, 0x1

    .line 1994
    new-array p1, p1, [I

    iget p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mChannelId:I

    const/4 v0, 0x0

    aput p2, p1, v0

    .line 1995
    invoke-direct {p0, p3, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 2019
    invoke-direct {p0, p7}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 11

    move-object v0, p0

    move-object/from16 v10, p8

    .line 2007
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 2009
    iget-object v1, v0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIccIoResultForApduLogicalChannel:Lcom/android/internal/telephony/uicc/IccIoResult;

    if-eqz v1, :cond_0

    .line 2010
    invoke-direct {p0, v10, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2012
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "IccIoResult not set"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v10, v1, v2}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1520
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1521
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1539
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1540
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public isDataAllowed()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2216
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public notifyEmergencyCallbackMode()V
    .locals 1

    .line 2118
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    .line 2119
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method public notifyExitEmergencyCallbackMode()V
    .locals 3

    .line 2130
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 2131
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public notifyGsmBroadcastSms(Ljava/lang/Object;)V
    .locals 3

    .line 2106
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    .line 2107
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public notifyIccSmsFull()V
    .locals 1

    .line 2112
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    .line 2113
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method public notifyImsNetworkStateChanged()V
    .locals 1

    .line 2137
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 2138
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_0
    return-void
.end method

.method public notifyModemReset()V
    .locals 4

    .line 2143
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mModemResetRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 2144
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mModemResetRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    const-string v3, "Test"

    invoke-direct {v1, v2, v3, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public notifyNetworkStateChanged()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2160
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mNetworkStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public notifyOtaProvisionStatusChanged()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2165
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2166
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x8

    aput v2, v0, v1

    .line 2168
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public notifyRadioOn()V
    .locals 1

    .line 2155
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public notifySignalStrength()V
    .locals 8

    .line 2173
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v0, :cond_0

    .line 2174
    new-instance v0, Landroid/telephony/SignalStrength;

    new-instance v2, Landroid/telephony/CellSignalStrengthCdma;

    invoke-direct {v2}, Landroid/telephony/CellSignalStrengthCdma;-><init>()V

    new-instance v3, Landroid/telephony/CellSignalStrengthGsm;

    const/16 v1, 0x14

    const/4 v4, 0x0

    const v5, 0x7fffffff

    invoke-direct {v3, v1, v4, v5}, Landroid/telephony/CellSignalStrengthGsm;-><init>(III)V

    new-instance v4, Landroid/telephony/CellSignalStrengthWcdma;

    invoke-direct {v4}, Landroid/telephony/CellSignalStrengthWcdma;-><init>()V

    new-instance v5, Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-direct {v5}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>()V

    new-instance v6, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {v6}, Landroid/telephony/CellSignalStrengthLte;-><init>()V

    new-instance v7, Landroid/telephony/CellSignalStrengthNr;

    invoke-direct {v7}, Landroid/telephony/CellSignalStrengthNr;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/CellSignalStrengthCdma;Landroid/telephony/CellSignalStrengthGsm;Landroid/telephony/CellSignalStrengthWcdma;Landroid/telephony/CellSignalStrengthTdscdma;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellSignalStrengthNr;)V

    iput-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 2183
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_1

    .line 2184
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSignalStrength:Landroid/telephony/SignalStrength;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_1
    return-void
.end method

.method public notifySmsStatus(Ljava/lang/Object;)V
    .locals 3

    .line 2100
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSmsStatusRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    .line 2101
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSmsStatusRegistrant:Landroid/os/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public nvReadItem(ILandroid/os/Message;Landroid/os/WorkSource;)V
    .locals 0

    .line 2024
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public nvResetConfig(ILandroid/os/Message;)V
    .locals 0

    .line 2039
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public nvWriteCdmaPrl([BLandroid/os/Message;)V
    .locals 0

    .line 2034
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public nvWriteItem(ILjava/lang/String;Landroid/os/Message;Landroid/os/WorkSource;)V
    .locals 0

    .line 2029
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public pauseResponses()V
    .locals 1

    .line 1642
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponseCount:I

    return-void
.end method

.method public progressConnectingCallState()V
    .locals 1

    .line 1558
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->progressConnectingCallState()V

    .line 1559
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public progressConnectingToActive()V
    .locals 1

    .line 1566
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->progressConnectingToActive()V

    .line 1567
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public pullLceData(Landroid/os/Message;)V
    .locals 0

    .line 2065
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x4

    .line 913
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 920
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void

    :array_0
    .array-data 4
        0x4
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 0

    .line 1309
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 1

    .line 1389
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    const/4 p1, 0x0

    .line 1391
    invoke-direct {p0, p4, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 0

    .line 1350
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 0

    .line 1725
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 422
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/test/SimulatedCommands;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 1

    const-string p2, "SimulatedCommands"

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p1, :cond_2

    const-string v0, "SC"

    .line 428
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p5, :cond_1

    .line 430
    new-array p1, p3, [I

    .line 431
    iget-boolean p3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockEnabled:Z

    aput p3, p1, p4

    .line 432
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "[SimCmd] queryFacilityLock: SIM is "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 433
    aget p4, p1, p4

    if-nez p4, :cond_0

    const-string/jumbo p4, "unlocked"

    goto :goto_0

    :cond_0
    const-string p4, "locked"

    :goto_0
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 432
    invoke-static {p2, p3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-direct {p0, p5, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_5

    const-string v0, "FD"

    .line 437
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p5, :cond_4

    .line 439
    new-array p1, p3, [I

    .line 440
    iget-boolean p3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabled:Z

    aput p3, p1, p4

    .line 441
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "[SimCmd] queryFacilityLock: FDN is "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 442
    aget p4, p1, p4

    if-nez p4, :cond_3

    const-string p4, "disabled"

    goto :goto_1

    :cond_3
    const-string p4, "enabled"

    :goto_1
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 441
    invoke-static {p2, p3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-direct {p0, p5, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_4
    return-void

    .line 448
    :cond_5
    invoke-direct {p0, p5}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 0

    .line 1776
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 2150
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2151
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 2280
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2281
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForLceInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 2070
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->registerForLceInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForModemReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 2229
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->registerForModemReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2230
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->registerForModemReset(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForNattKeepaliveStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 2292
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->registerForNattKeepaliveStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForPcoData(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 3

    .line 829
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 832
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Hangup Error"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    .line 834
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    .line 1230
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1231
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    return-void
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    .line 1236
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public requestIccSimAuthentication(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 1886
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public requestShutdown(Landroid/os/Message;)V
    .locals 1

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 2049
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(IZ)V

    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .locals 0

    .line 1513
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public resumeResponses()V
    .locals 3

    .line 1648
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponseCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponseCount:I

    .line 1650
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponseCount:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1651
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1652
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1654
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_1
    const-string v0, "GSM"

    const-string v1, "SimulatedCommands.resumeResponses < 0"

    .line 1656
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 1

    .line 1086
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    const/4 p1, 0x0

    .line 1087
    invoke-direct {p0, p4, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 1784
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .locals 1

    .line 1792
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->sendCdmaSms([BLandroid/os/Message;)V

    const/4 p1, 0x0

    .line 1793
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;Z)V
    .locals 0

    return-void
.end method

.method public sendDeviceState(IZLandroid/os/Message;)V
    .locals 1

    .line 2235
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->sendDeviceState(IZLandroid/os/Message;)V

    const/4 p1, 0x0

    .line 2236
    invoke-direct {p0, p3, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 0

    const/4 p1, 0x0

    .line 1055
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    const/4 p1, 0x0

    .line 936
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    const/4 p1, 0x0

    .line 944
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public sendImsCdmaSms([BIILandroid/os/Message;)V
    .locals 1

    .line 1979
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->sendImsCdmaSms([BIILandroid/os/Message;)V

    .line 1980
    new-instance p1, Lcom/android/internal/telephony/SmsResponse;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3, p2}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p4, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
    .locals 6

    .line 1986
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V

    .line 1988
    new-instance p1, Lcom/android/internal/telephony/SmsResponse;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3, p2}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p5, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .line 1098
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1099
    new-instance p1, Lcom/android/internal/telephony/SmsResponse;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0, p2}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, p3, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 1112
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public sendStkCcAplha(Ljava/lang/String;)V
    .locals 0

    .line 1470
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->triggerIncomingStkCcAlpha(Ljava/lang/String;)V

    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    const/4 p1, 0x0

    .line 928
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2

    const-string v0, "#646#"

    .line 1492
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "0"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1493
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    const-string p1, "You have NNN minutes remaining."

    .line 1496
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->triggerIncomingUssd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1498
    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    const-string p1, "All Done"

    .line 1500
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->triggerIncomingUssd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .locals 2

    add-int/lit8 p1, p1, 0x30

    int-to-char p1, p1

    .line 790
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v1, 0x32

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 793
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "Hangup Error"

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    .line 795
    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public setAllowedCarriers(Landroid/telephony/CarrierRestrictionRules;Landroid/os/Message;Landroid/os/WorkSource;)V
    .locals 0

    .line 2086
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setAutoProgressConnectingCall(Z)V
    .locals 1

    .line 1576
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->setAutoProgressConnectingCall(Z)V

    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 0

    const/4 p1, 0x0

    .line 900
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 0

    .line 1338
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 7

    .line 1373
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    const/4 p1, 0x0

    .line 1375
    invoke-direct {p0, p6, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 0

    .line 1362
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;Landroid/os/Message;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1530
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1531
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0

    .line 1805
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0

    .line 1817
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 0

    .line 1730
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .locals 0

    .line 1720
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setCellInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1898
    iput-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCellInfoList:Ljava/util/List;

    return-void
.end method

.method public declared-synchronized setCellInfoListBehavior(Z)V
    .locals 0

    monitor-enter p0

    .line 1930
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mShouldReturnCellInfo:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1931
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setCellInfoListRate(ILandroid/os/Message;Landroid/os/WorkSource;)V
    .locals 0

    .line 1952
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setDataAllowed(ZLandroid/os/Message;)V
    .locals 2

    .line 2209
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setDataAllowed = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->log(Ljava/lang/String;)V

    .line 2210
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p1, 0x0

    .line 2211
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public setDataCallResult(ZLandroid/hardware/radio/V1_0/SetupDataCallResult;)V
    .locals 0

    .line 1140
    iput-object p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    .line 1141
    iput-boolean p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDcSuccess:Z

    return-void
.end method

.method public setDataProfile([Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setDataRadioTech(I)V
    .locals 0

    .line 995
    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDataRadioTech:I

    return-void
.end method

.method public setDataRegState(I)V
    .locals 0

    .line 999
    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDataRegState:I

    return-void
.end method

.method public setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 2125
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2126
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    .line 454
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/test/SimulatedCommands;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 1

    const/4 p4, 0x0

    const-string p5, "SimulatedCommands"

    if-eqz p1, :cond_1

    const-string v0, "SC"

    .line 462
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 463
    iget-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "[SimCmd] setFacilityLock: pin is valid"

    .line 464
    invoke-static {p5, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iput-boolean p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockEnabled:Z

    .line 467
    invoke-direct {p0, p6, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p1, "[SimCmd] setFacilityLock: pin failed!"

    .line 472
    invoke-static {p5, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    new-instance p1, Lcom/android/internal/telephony/CommandException;

    sget-object p2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 476
    invoke-direct {p0, p6, p4, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    if-eqz p1, :cond_3

    const-string v0, "FD"

    .line 480
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    .line 481
    iget-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2Code:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "[SimCmd] setFacilityLock: pin2 is valid"

    .line 482
    invoke-static {p5, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iput-boolean p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabled:Z

    .line 485
    invoke-direct {p0, p6, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void

    :cond_2
    const-string p1, "[SimCmd] setFacilityLock: pin2 failed!"

    .line 490
    invoke-static {p5, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    new-instance p1, Lcom/android/internal/telephony/CommandException;

    sget-object p2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 494
    invoke-direct {p0, p6, p4, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    .line 499
    :cond_3
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0

    .line 1827
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0

    .line 1833
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setIMEI(Ljava/lang/String;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mImei:Ljava/lang/String;

    return-void
.end method

.method public setIMEISV(Ljava/lang/String;)V
    .locals 0

    .line 631
    iput-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mImeiSv:Ljava/lang/String;

    return-void
.end method

.method public setIccCardStatus(Lcom/android/internal/telephony/uicc/IccCardStatus;)V
    .locals 0

    .line 2190
    iput-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIccCardStatus:Lcom/android/internal/telephony/uicc/IccCardStatus;

    return-void
.end method

.method public setIccIoResultForApduLogicalChannel(Lcom/android/internal/telephony/uicc/IccIoResult;)V
    .locals 0

    .line 2194
    iput-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIccIoResultForApduLogicalChannel:Lcom/android/internal/telephony/uicc/IccIoResult;

    return-void
.end method

.method public setIccSlotStatus(Lcom/android/internal/telephony/uicc/IccSlotStatus;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIccSlotStatus:Lcom/android/internal/telephony/uicc/IccSlotStatus;

    return-void
.end method

.method public setImsRegistrationState([I)V
    .locals 0

    .line 1964
    iput-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mImsRegState:[I

    return-void
.end method

.method public setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setLinkCapacityReportingCriteria(III[I[IILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .locals 1

    .line 1211
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->setLocationUpdates(ZLandroid/os/Message;)V

    const/4 p1, 0x0

    .line 1212
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public setLogicalToPhysicalSlotMapping([ILandroid/os/Message;)V
    .locals 0

    .line 219
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .locals 0

    .line 869
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0

    .line 1395
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 1400
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setNextCallFailCause(I)V
    .locals 0

    .line 1588
    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mNextCallFailCause:I

    return-void
.end method

.method public setNextDialFailImmediately(Z)V
    .locals 1

    .line 1582
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->setNextDialFailImmediately(Z)V

    return-void
.end method

.method public setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 2270
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2271
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public setOpenChannelId(I)V
    .locals 0

    .line 2198
    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mChannelId:I

    return-void
.end method

.method public setPhoneType(I)V
    .locals 0

    return-void
.end method

.method public setPin1RemainingAttempt(I)V
    .locals 0

    .line 2202
    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin1attemptsRemaining:I

    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 1

    .line 1195
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1196
    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mNetworkType:I

    const/4 p1, 0x0

    .line 1197
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .locals 0

    .line 1745
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .locals 2

    .line 1253
    iget-boolean v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIsRadioPowerFailResponse:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1254
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "setRadioPower failed!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 1259
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(IZ)V

    goto :goto_0

    .line 1261
    :cond_1
    invoke-virtual {p0, v0, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(IZ)V

    .line 1263
    :goto_0
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public setRadioPowerFailResponse(Z)V
    .locals 0

    .line 2275
    iput-boolean p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIsRadioPowerFailResponse:Z

    return-void
.end method

.method public setSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 0

    .line 875
    iput-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-void
.end method

.method public setSignalStrengthReportingCriteria(II[IILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setSimCardPower(ILandroid/os/Message;Landroid/os/WorkSource;)V
    .locals 0

    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .line 1223
    iput-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->smscAddress:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1224
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1225
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    .line 410
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 412
    iget-boolean p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSsnNotifyOn:Z

    if-eqz p2, :cond_0

    const-string p2, "SimulatedCommands"

    const-string v0, "Supp Service Notifications already enabled!"

    .line 413
    invoke-static {p2, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSsnNotifyOn:Z

    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 1

    const-string p1, "SimulatedCommands"

    const-string v0, "Not implemented in SimulatedCommands"

    .line 1760
    invoke-static {p1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setUnsolResponseFilter(ILandroid/os/Message;)V
    .locals 1

    .line 2241
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->setUnsolResponseFilter(ILandroid/os/Message;)V

    const/4 p1, 0x0

    .line 2242
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public setVoiceRadioTech(I)V
    .locals 0

    .line 957
    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mVoiceRadioTech:I

    return-void
.end method

.method public setVoiceRegState(I)V
    .locals 0

    .line 961
    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mVoiceRegState:I

    return-void
.end method

.method public setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/os/Message;)V
    .locals 8

    .line 1156
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/os/Message;)V

    .line 1159
    iget-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    if-nez p1, :cond_0

    .line 1161
    :try_start_0
    new-instance p1, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/SetupDataCallResult;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    .line 1162
    iget-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const/4 p2, 0x0

    iput p2, p1, Landroid/hardware/radio/V1_0/SetupDataCallResult;->status:I

    .line 1163
    iget-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const/4 p2, -0x1

    iput p2, p1, Landroid/hardware/radio/V1_0/SetupDataCallResult;->suggestedRetryTime:I

    .line 1164
    iget-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const/4 p2, 0x1

    iput p2, p1, Landroid/hardware/radio/V1_0/SetupDataCallResult;->cid:I

    .line 1165
    iget-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const/4 p2, 0x2

    iput p2, p1, Landroid/hardware/radio/V1_0/SetupDataCallResult;->active:I

    .line 1166
    iget-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const-string p2, "IP"

    iput-object p2, p1, Landroid/hardware/radio/V1_0/SetupDataCallResult;->type:Ljava/lang/String;

    .line 1167
    iget-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const-string p2, "rmnet_data7"

    iput-object p2, p1, Landroid/hardware/radio/V1_0/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 1168
    iget-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const-string p2, "12.34.56.78"

    iput-object p2, p1, Landroid/hardware/radio/V1_0/SetupDataCallResult;->addresses:Ljava/lang/String;

    .line 1169
    iget-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const-string p2, "98.76.54.32"

    iput-object p2, p1, Landroid/hardware/radio/V1_0/SetupDataCallResult;->dnses:Ljava/lang/String;

    .line 1170
    iget-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const-string p2, "11.22.33.44"

    iput-object p2, p1, Landroid/hardware/radio/V1_0/SetupDataCallResult;->gateways:Ljava/lang/String;

    .line 1171
    iget-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const-string p2, "fd00:976a:c305:1d::8 fd00:976a:c202:1d::7 fd00:976a:c305:1d::5"

    iput-object p2, p1, Landroid/hardware/radio/V1_0/SetupDataCallResult;->pcscf:Ljava/lang/String;

    .line 1173
    iget-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    const/16 p2, 0x5a0

    iput p2, p1, Landroid/hardware/radio/V1_0/SetupDataCallResult;->mtu:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1179
    :catch_0
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSetupDataCallResult:Landroid/hardware/radio/V1_0/SetupDataCallResult;

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->convertDataCallResult(Ljava/lang/Object;)Landroid/telephony/data/DataCallResponse;

    move-result-object p1

    .line 1180
    iget-boolean p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mDcSuccess:Z

    if-eqz p2, :cond_1

    .line 1181
    invoke-direct {p0, p7, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void

    .line 1183
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Setup data call failed!"

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p7, p1, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public shutdown()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1617
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(IZ)V

    .line 1618
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1620
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 1

    .line 1065
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->startDtmf(CLandroid/os/Message;)V

    const/4 p1, 0x0

    .line 1066
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public startLceService(IZLandroid/os/Message;)V
    .locals 1

    .line 2054
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->startLceService(IZLandroid/os/Message;)V

    return-void
.end method

.method public startNattKeepalive(ILandroid/net/KeepalivePacketData;ILandroid/os/Message;)V
    .locals 1

    .line 2303
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->startNattKeepalive(ILandroid/net/KeepalivePacketData;ILandroid/os/Message;)V

    return-void
.end method

.method public startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    .locals 0

    .line 1442
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    .line 1076
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public stopLceService(Landroid/os/Message;)V
    .locals 0

    .line 2060
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public stopNattKeepalive(ILandroid/os/Message;)V
    .locals 1

    .line 2309
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->stopNattKeepalive(ILandroid/os/Message;)V

    return-void
.end method

.method public stopNetworkScan(Landroid/os/Message;)V
    .locals 0

    .line 1450
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->REQUIRE_PIN:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    const/4 v2, 0x0

    const-string v3, "SimulatedCommands"

    if-eq v0, v1, :cond_0

    .line 225
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[SimCmd] supplyIccPin: wrong state, state="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance p1, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 229
    invoke-direct {p0, p2, v2, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "[SimCmd] supplyIccPin: success!"

    .line 234
    invoke-static {v3, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 235
    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinUnlockAttempts:I

    .line 236
    sget-object p1, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    iput-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    .line 237
    iget-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 239
    invoke-direct {p0, p2, v2}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void

    :cond_1
    if-eqz p2, :cond_3

    .line 245
    iget p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinUnlockAttempts:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinUnlockAttempts:I

    .line 247
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[SimCmd] supplyIccPin: failed! attempt="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinUnlockAttempts:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinUnlockAttempts:I

    const/4 v0, 0x5

    if-lt p1, v0, :cond_2

    const-string p1, "[SimCmd] supplyIccPin: set state to REQUIRE_PUK"

    .line 250
    invoke-static {v3, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    sget-object p1, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->REQUIRE_PUK:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    iput-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    .line 254
    :cond_2
    new-instance p1, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 256
    invoke-direct {p0, p2, v2, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4

    .line 299
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->REQUIRE_PIN2:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    const/4 v2, 0x0

    const-string v3, "SimulatedCommands"

    if-eq v0, v1, :cond_0

    .line 300
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[SimCmd] supplyIccPin2: wrong state, state="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance p1, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 304
    invoke-direct {p0, p2, v2, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 308
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2Code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "[SimCmd] supplyIccPin2: success!"

    .line 309
    invoke-static {v3, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 310
    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2UnlockAttempts:I

    .line 311
    sget-object p1, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    iput-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    .line 313
    invoke-direct {p0, p2, v2}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void

    :cond_1
    if-eqz p2, :cond_3

    .line 318
    iget p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2UnlockAttempts:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2UnlockAttempts:I

    .line 320
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[SimCmd] supplyIccPin2: failed! attempt="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2UnlockAttempts:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2UnlockAttempts:I

    const/4 v0, 0x5

    if-lt p1, v0, :cond_2

    const-string p1, "[SimCmd] supplyIccPin2: set state to REQUIRE_PUK2"

    .line 323
    invoke-static {v3, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    sget-object p1, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->REQUIRE_PUK2:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    iput-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    .line 327
    :cond_2
    new-instance p1, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 329
    invoke-direct {p0, p2, v2, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 1863
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2

    .line 1843
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1844
    iget-object p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1845
    invoke-direct {p0, p3, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p1, "SimulatedCommands"

    const-string p2, "[SimCmd] supplyIccPinForApp: pin failed!"

    .line 1849
    invoke-static {p1, p2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    new-instance p1, Lcom/android/internal/telephony/CommandException;

    sget-object p2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    const/4 p2, 0x1

    .line 1852
    new-array v0, p2, [I

    .line 1853
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin1attemptsRemaining:I

    sub-int/2addr v1, p2

    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin1attemptsRemaining:I

    const/4 p2, 0x0

    if-gez v1, :cond_1

    move v1, p2

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin1attemptsRemaining:I

    :goto_0
    aput v1, v0, p2

    .line 1852
    invoke-direct {p0, p3, v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 262
    iget-object p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    sget-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->REQUIRE_PUK:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    const/4 v1, 0x0

    const-string v2, "SimulatedCommands"

    if-eq p2, v0, :cond_0

    .line 263
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[SimCmd] supplyIccPuk: wrong state, state="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    new-instance p1, Lcom/android/internal/telephony/CommandException;

    sget-object p2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 267
    invoke-direct {p0, p3, v1, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string p2, "12345678"

    .line 271
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "[SimCmd] supplyIccPuk: success!"

    .line 272
    invoke-static {v2, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    sget-object p1, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    iput-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    const/4 p1, 0x0

    .line 274
    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPukUnlockAttempts:I

    .line 275
    iget-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 277
    invoke-direct {p0, p3, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void

    :cond_1
    if-eqz p3, :cond_3

    .line 282
    iget p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPukUnlockAttempts:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPukUnlockAttempts:I

    .line 284
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[SimCmd] supplyIccPuk: failed! attempt="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPukUnlockAttempts:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPukUnlockAttempts:I

    const/16 p2, 0xa

    if-lt p1, p2, :cond_2

    const-string p1, "[SimCmd] supplyIccPuk: set state to SIM_PERM_LOCKED"

    .line 287
    invoke-static {v2, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    sget-object p1, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->SIM_PERM_LOCKED:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    iput-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    .line 291
    :cond_2
    new-instance p1, Lcom/android/internal/telephony/CommandException;

    sget-object p2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 293
    invoke-direct {p0, p3, v1, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 335
    iget-object p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    sget-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->REQUIRE_PUK2:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    const/4 v1, 0x0

    const-string v2, "SimulatedCommands"

    if-eq p2, v0, :cond_0

    .line 336
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[SimCmd] supplyIccPuk2: wrong state, state="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance p1, Lcom/android/internal/telephony/CommandException;

    sget-object p2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 340
    invoke-direct {p0, p3, v1, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string p2, "87654321"

    .line 344
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "[SimCmd] supplyIccPuk2: success!"

    .line 345
    invoke-static {v2, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    sget-object p1, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    iput-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    const/4 p1, 0x0

    .line 347
    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPuk2UnlockAttempts:I

    .line 349
    invoke-direct {p0, p3, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void

    :cond_1
    if-eqz p3, :cond_3

    .line 354
    iget p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPuk2UnlockAttempts:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPuk2UnlockAttempts:I

    .line 356
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[SimCmd] supplyIccPuk2: failed! attempt="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPuk2UnlockAttempts:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPuk2UnlockAttempts:I

    const/16 p2, 0xa

    if-lt p1, p2, :cond_2

    const-string p1, "[SimCmd] supplyIccPuk2: set state to SIM_PERM_LOCKED"

    .line 359
    invoke-static {v2, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    sget-object p1, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->SIM_PERM_LOCKED:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    iput-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    .line 363
    :cond_2
    new-instance p1, Lcom/android/internal/telephony/CommandException;

    sget-object p2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 365
    invoke-direct {p0, p3, v1, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 1868
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 1858
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 504
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 3

    .line 729
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v1, 0x32

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 732
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Hangup Error"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    .line 734
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method public triggerHangupAll()V
    .locals 1

    .line 1629
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupAll()Z

    .line 1630
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public triggerHangupBackground()V
    .locals 1

    .line 1602
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupBackground()Z

    .line 1603
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public triggerHangupForeground()V
    .locals 1

    .line 1594
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupForeground()Z

    .line 1595
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public triggerIncomingSMS(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public triggerIncomingStkCcAlpha(Ljava/lang/String;)V
    .locals 1

    .line 1464
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCatCcAlphaRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    .line 1465
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCatCcAlphaRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0, p1}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public triggerIncomingUssd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1481
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mUSSDRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 1482
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 1483
    iget-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mUSSDRegistrant:Landroid/os/Registrant;

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public triggerNITZupdate(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mNITZTimeRegistrant:Landroid/os/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 1147
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, p1

    const/4 p1, 0x0

    invoke-direct {v1, p1, v2, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1146
    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public triggerRestrictedStateChanged(I)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2262
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    .line 2263
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    .line 2264
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2263
    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public triggerRing(Ljava/lang/String;)V
    .locals 1

    .line 1551
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerRing(Ljava/lang/String;)Z

    .line 1552
    iget-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public triggerSsn(II)V
    .locals 2

    .line 1608
    new-instance v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 1609
    iput p1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 1610
    iput p2, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 1611
    iget-object p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSsnRegistrant:Landroid/os/Registrant;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {p2, v1, v0, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, p2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public unregisterForIccRefresh(Landroid/os/Handler;)V
    .locals 1

    .line 2286
    invoke-super {p0, p1}, Lcom/android/internal/telephony/BaseCommands;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 2287
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->unregisterForIccRefresh(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForLceInfo(Landroid/os/Handler;)V
    .locals 1

    .line 2075
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->unregisterForLceInfo(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForNattKeepaliveStatus(Landroid/os/Handler;)V
    .locals 1

    .line 2297
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->getInstance()Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedCommandsVerifier;->unregisterForNattKeepaliveStatus(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForPcoData(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 1135
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Write SMS to RUIM with status "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SimulatedCommands"

    invoke-static {p2, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 1129
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Write SMS to SIM with status "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SimulatedCommands"

    invoke-static {p2, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method
