.class public abstract Lcom/android/internal/telephony/BaseCommands;
.super Ljava/lang/Object;
.source "BaseCommands.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# instance fields
.field protected mAvailRegistrants:Landroid/os/RegistrantList;

.field protected mCallStateRegistrants:Landroid/os/RegistrantList;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mCarrierInfoForImsiEncryptionRegistrants:Landroid/os/RegistrantList;

.field protected mCatCallSetUpRegistrant:Landroid/os/Registrant;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mCatCcAlphaRegistrant:Landroid/os/Registrant;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mCatEventRegistrant:Landroid/os/Registrant;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mCatProCmdRegistrant:Landroid/os/Registrant;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mCatSessionEndRegistrant:Landroid/os/Registrant;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mCdmaPrlChangedRegistrants:Landroid/os/RegistrantList;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mCdmaSmsRegistrant:Landroid/os/Registrant;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mCdmaSubscription:I

.field protected mCdmaSubscriptionChangedRegistrants:Landroid/os/RegistrantList;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mDataCallListChangedRegistrants:Landroid/os/RegistrantList;

.field protected mDisplayInfoRegistrants:Landroid/os/RegistrantList;

.field protected mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mEmergencyNumberListRegistrants:Landroid/os/RegistrantList;

.field protected mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mGsmSmsRegistrant:Landroid/os/Registrant;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mHardwareConfigChangeRegistrants:Landroid/os/RegistrantList;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mIccRefreshRegistrants:Landroid/os/RegistrantList;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mIccSlotStatusChangedRegistrants:Landroid/os/RegistrantList;

.field protected mIccSmsFullRegistrant:Landroid/os/Registrant;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mIccStatusChangedRegistrants:Landroid/os/RegistrantList;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mLceInfoRegistrants:Landroid/os/RegistrantList;

.field protected mLineControlInfoRegistrants:Landroid/os/RegistrantList;

.field protected mModemResetRegistrants:Landroid/os/RegistrantList;

.field protected mNITZTimeRegistrant:Landroid/os/Registrant;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mNattKeepaliveStatusRegistrants:Landroid/os/RegistrantList;

.field protected mNetworkStateRegistrants:Landroid/os/RegistrantList;

.field protected mNotAvailRegistrants:Landroid/os/RegistrantList;

.field protected mNumberInfoRegistrants:Landroid/os/RegistrantList;

.field protected mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

.field protected mOnRegistrants:Landroid/os/RegistrantList;

.field protected mOtaProvisionRegistrants:Landroid/os/RegistrantList;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mPcoDataRegistrants:Landroid/os/RegistrantList;

.field protected mPhoneRadioCapabilityChangedRegistrants:Landroid/os/RegistrantList;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mPhoneType:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mPhysicalChannelConfigurationRegistrants:Landroid/os/RegistrantList;

.field protected mPreferredNetworkType:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

.field protected mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

.field protected mResendIncallMuteRegistrants:Landroid/os/RegistrantList;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mRestrictedStateRegistrant:Landroid/os/Registrant;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mRilCellInfoListRegistrants:Landroid/os/RegistrantList;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mRilConnectedRegistrants:Landroid/os/RegistrantList;

.field protected mRilNetworkScanResultRegistrants:Landroid/os/RegistrantList;

.field protected mRilVersion:I

.field protected mRingRegistrant:Landroid/os/Registrant;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mRingbackToneRegistrants:Landroid/os/RegistrantList;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mSignalInfoRegistrants:Landroid/os/RegistrantList;

.field protected mSignalStrengthRegistrant:Landroid/os/Registrant;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mSmsOnSimRegistrant:Landroid/os/Registrant;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mSmsStatusRegistrant:Landroid/os/Registrant;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mSrvccStateRegistrants:Landroid/os/RegistrantList;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mSsRegistrant:Landroid/os/Registrant;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mSsnRegistrant:Landroid/os/Registrant;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mState:I

.field protected mStateMonitor:Ljava/lang/Object;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mSubscriptionStatusRegistrants:Landroid/os/RegistrantList;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

.field protected mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

.field protected mUSSDRegistrant:Landroid/os/Registrant;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mUnsolOemHookRawRegistrant:Landroid/os/Registrant;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

.field protected mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

.field protected mVoiceRadioTechChangedRegistrants:Landroid/os/RegistrantList;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 36
    iput v0, p0, Lcom/android/internal/telephony/BaseCommands;->mState:I

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    .line 40
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

    .line 41
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    .line 42
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mAvailRegistrants:Landroid/os/RegistrantList;

    .line 43
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

    .line 44
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    .line 45
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    .line 47
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNetworkStateRegistrants:Landroid/os/RegistrantList;

    .line 48
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mDataCallListChangedRegistrants:Landroid/os/RegistrantList;

    .line 49
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoiceRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    .line 51
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    .line 53
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    .line 55
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSlotStatusChangedRegistrants:Landroid/os/RegistrantList;

    .line 56
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    .line 57
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    .line 60
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    .line 62
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    .line 64
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    .line 65
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    .line 66
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNumberInfoRegistrants:Landroid/os/RegistrantList;

    .line 67
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

    .line 68
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mLineControlInfoRegistrants:Landroid/os/RegistrantList;

    .line 69
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

    .line 70
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

    .line 71
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    .line 73
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    .line 75
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSubscriptionChangedRegistrants:Landroid/os/RegistrantList;

    .line 77
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaPrlChangedRegistrants:Landroid/os/RegistrantList;

    .line 79
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    .line 81
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    .line 82
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    .line 84
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilCellInfoListRegistrants:Landroid/os/RegistrantList;

    .line 86
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSubscriptionStatusRegistrants:Landroid/os/RegistrantList;

    .line 88
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    .line 90
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mHardwareConfigChangeRegistrants:Landroid/os/RegistrantList;

    .line 92
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mPhoneRadioCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    .line 95
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mPcoDataRegistrants:Landroid/os/RegistrantList;

    .line 96
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCarrierInfoForImsiEncryptionRegistrants:Landroid/os/RegistrantList;

    .line 97
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilNetworkScanResultRegistrants:Landroid/os/RegistrantList;

    .line 98
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mModemResetRegistrants:Landroid/os/RegistrantList;

    .line 99
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNattKeepaliveStatusRegistrants:Landroid/os/RegistrantList;

    .line 100
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mPhysicalChannelConfigurationRegistrants:Landroid/os/RegistrantList;

    .line 101
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mLceInfoRegistrants:Landroid/os/RegistrantList;

    .line 102
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEmergencyNumberListRegistrants:Landroid/os/RegistrantList;

    const/4 v0, -0x1

    .line 154
    iput v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilVersion:I

    .line 157
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getLteOnCdmaMode()I
    .locals 1

    .line 895
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v0

    return v0
.end method

.method public getRadioCapability(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getRadioState()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/android/internal/telephony/BaseCommands;->mState:I

    return v0
.end method

.method public getRilVersion()I
    .locals 1

    .line 939
    iget v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilVersion:I

    return v0
.end method

.method public pullLceData(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 706
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 707
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 215
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 217
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter p1

    .line 218
    :try_start_0
    iget-object p2, p0, Lcom/android/internal/telephony/BaseCommands;->mAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 220
    iget p2, p0, Lcom/android/internal/telephony/BaseCommands;->mState:I

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    .line 221
    new-instance p2, Landroid/os/AsyncResult;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p3, p3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 223
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 275
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 277
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForCallWaitingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 629
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 630
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForCarrierInfoForImsiEncryption(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 1022
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCarrierInfoForImsiEncryptionRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/Registrant;

    invoke-direct {v1, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 662
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 663
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForCdmaPrlChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 761
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 762
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaPrlChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForCdmaSubscriptionChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 750
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 751
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSubscriptionChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForCellInfoList(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 903
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 904
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mRilCellInfoListRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForDataCallListChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 299
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 301
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mDataCallListChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 618
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 619
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForEmergencyNumberList(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 831
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 832
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mEmergencyNumberListRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 772
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 773
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForHardwareConfigChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 783
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 784
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mHardwareConfigChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 526
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 527
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForIccSlotStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 333
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 334
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSlotStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 322
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 323
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 185
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 186
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 594
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 595
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 583
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 584
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForLceInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 986
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 988
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter p1

    .line 989
    :try_start_0
    iget-object p2, p0, Lcom/android/internal/telephony/BaseCommands;->mLceInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 990
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 695
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 696
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mLineControlInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForModemReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 1002
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mModemResetRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/Registrant;

    invoke-direct {v1, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForNattKeepaliveStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 1032
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1034
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter p1

    .line 1035
    :try_start_0
    iget-object p2, p0, Lcom/android/internal/telephony/BaseCommands;->mNattKeepaliveStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1036
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public registerForNetworkScanResult(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 794
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 795
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mRilNetworkScanResultRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 287
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 289
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mNetworkStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 235
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 237
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter p1

    .line 238
    :try_start_0
    iget-object p2, p0, Lcom/android/internal/telephony/BaseCommands;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 240
    iget p2, p0, Lcom/android/internal/telephony/BaseCommands;->mState:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    .line 241
    new-instance p2, Landroid/os/AsyncResult;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p3, p3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 243
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 673
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 674
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mNumberInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 255
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 257
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter p1

    .line 258
    :try_start_0
    iget-object p2, p0, Lcom/android/internal/telephony/BaseCommands;->mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 260
    iget p2, p0, Lcom/android/internal/telephony/BaseCommands;->mState:I

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/android/internal/telephony/BaseCommands;->mState:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_1

    .line 262
    :cond_0
    new-instance p2, Landroid/os/AsyncResult;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p3, p3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 264
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 195
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 197
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter p1

    .line 198
    :try_start_0
    iget-object p2, p0, Lcom/android/internal/telephony/BaseCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 200
    iget p2, p0, Lcom/android/internal/telephony/BaseCommands;->mState:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 201
    new-instance p2, Landroid/os/AsyncResult;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p3, p3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 203
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public registerForPcoData(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 1012
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mPcoDataRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/Registrant;

    invoke-direct {v1, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForPhysicalChannelConfiguration(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 913
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 914
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mPhysicalChannelConfigurationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 963
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 964
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mPhoneRadioCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 169
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 171
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter p1

    .line 172
    :try_start_0
    iget-object p2, p0, Lcom/android/internal/telephony/BaseCommands;->mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 173
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 174
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 684
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 685
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 739
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 740
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 808
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 809
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 810
    iget p1, p0, Lcom/android/internal/telephony/BaseCommands;->mRilVersion:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 811
    new-instance p2, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1, p3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 728
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 729
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 640
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 641
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForSrvccStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 924
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 926
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForSubscriptionStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 821
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 822
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mSubscriptionStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 717
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 718
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForVoiceRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 311
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 312
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mVoiceRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public requestShutdown(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setDataAllowed(ZLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 536
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    return-void
.end method

.method public setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 550
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRingRegistrant:Landroid/os/Registrant;

    return-void
.end method

.method public setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 500
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    return-void
.end method

.method public setOnCatCcAlphaNotify(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 573
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatCcAlphaRegistrant:Landroid/os/Registrant;

    return-void
.end method

.method public setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 487
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatEventRegistrant:Landroid/os/Registrant;

    return-void
.end method

.method public setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 474
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatProCmdRegistrant:Landroid/os/Registrant;

    return-void
.end method

.method public setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 461
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    return-void
.end method

.method public setOnIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 531
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public setOnIccSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 513
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    return-void
.end method

.method public setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 422
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNITZTimeRegistrant:Landroid/os/Registrant;

    return-void
.end method

.method public setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 357
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    return-void
.end method

.method public setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 370
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    return-void
.end method

.method public setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 344
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmSmsRegistrant:Landroid/os/Registrant;

    return-void
.end method

.method public setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 605
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    return-void
.end method

.method public setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 409
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    return-void
.end method

.method public setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 383
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    return-void
.end method

.method public setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 396
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsStatusRegistrant:Landroid/os/Registrant;

    return-void
.end method

.method public setOnSs(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 563
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSsRegistrant:Landroid/os/Registrant;

    return-void
.end method

.method public setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 448
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSsnRegistrant:Landroid/os/Registrant;

    return-void
.end method

.method public setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 435
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mUSSDRegistrant:Landroid/os/Registrant;

    return-void
.end method

.method public setOnUnsolOemHookRaw(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 645
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    return-void
.end method

.method public setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method protected setRadioState(IZ)V
    .locals 3

    .line 856
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 857
    :try_start_0
    iget v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:I

    .line 858
    iput p1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:I

    .line 860
    iget p1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:I

    if-ne v1, p1, :cond_0

    if-nez p2, :cond_0

    .line 862
    monitor-exit v0

    return-void

    .line 865
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 867
    iget p1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    if-ne v1, p2, :cond_1

    .line 869
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 872
    :cond_1
    iget p1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:I

    if-ne p1, p2, :cond_2

    if-eq v1, p2, :cond_2

    .line 874
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 877
    :cond_2
    iget p1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    if-eq v1, v2, :cond_3

    .line 879
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 882
    :cond_3
    iget p1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:I

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:I

    if-ne p1, p2, :cond_5

    :cond_4
    if-ne v1, v2, :cond_5

    .line 885
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 887
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setUiccSubscription(IIIILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public startLceService(IZLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public stopLceService(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public testingEmergencyCall()V
    .locals 0

    return-void
.end method

.method public unSetOnCallRing(Landroid/os/Handler;)V
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRingRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 556
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mRingRegistrant:Landroid/os/Registrant;

    invoke-virtual {p1}, Landroid/os/Registrant;->clear()V

    const/4 p1, 0x0

    .line 557
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mRingRegistrant:Landroid/os/Registrant;

    :cond_0
    return-void
.end method

.method public unSetOnCatCallSetUp(Landroid/os/Handler;)V
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 506
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    invoke-virtual {p1}, Landroid/os/Registrant;->clear()V

    const/4 p1, 0x0

    .line 507
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    :cond_0
    return-void
.end method

.method public unSetOnCatCcAlphaNotify(Landroid/os/Handler;)V
    .locals 0

    .line 578
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mCatCcAlphaRegistrant:Landroid/os/Registrant;

    invoke-virtual {p1}, Landroid/os/Registrant;->clear()V

    return-void
.end method

.method public unSetOnCatEvent(Landroid/os/Handler;)V
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatEventRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 493
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mCatEventRegistrant:Landroid/os/Registrant;

    invoke-virtual {p1}, Landroid/os/Registrant;->clear()V

    const/4 p1, 0x0

    .line 494
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mCatEventRegistrant:Landroid/os/Registrant;

    :cond_0
    return-void
.end method

.method public unSetOnCatProactiveCmd(Landroid/os/Handler;)V
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatProCmdRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 480
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mCatProCmdRegistrant:Landroid/os/Registrant;

    invoke-virtual {p1}, Landroid/os/Registrant;->clear()V

    const/4 p1, 0x0

    .line 481
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mCatProCmdRegistrant:Landroid/os/Registrant;

    :cond_0
    return-void
.end method

.method public unSetOnCatSessionEnd(Landroid/os/Handler;)V
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 467
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    invoke-virtual {p1}, Landroid/os/Registrant;->clear()V

    const/4 p1, 0x0

    .line 468
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    :cond_0
    return-void
.end method

.method public unSetOnIccSmsFull(Landroid/os/Handler;)V
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 519
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    invoke-virtual {p1}, Landroid/os/Registrant;->clear()V

    const/4 p1, 0x0

    .line 520
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    :cond_0
    return-void
.end method

.method public unSetOnNITZTime(Landroid/os/Handler;)V
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNITZTimeRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 428
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mNITZTimeRegistrant:Landroid/os/Registrant;

    invoke-virtual {p1}, Landroid/os/Registrant;->clear()V

    const/4 p1, 0x0

    .line 429
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mNITZTimeRegistrant:Landroid/os/Registrant;

    :cond_0
    return-void
.end method

.method public unSetOnNewCdmaSms(Landroid/os/Handler;)V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 363
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    invoke-virtual {p1}, Landroid/os/Registrant;->clear()V

    const/4 p1, 0x0

    .line 364
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    :cond_0
    return-void
.end method

.method public unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 376
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    invoke-virtual {p1}, Landroid/os/Registrant;->clear()V

    const/4 p1, 0x0

    .line 377
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    :cond_0
    return-void
.end method

.method public unSetOnNewGsmSms(Landroid/os/Handler;)V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmSmsRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 350
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmSmsRegistrant:Landroid/os/Registrant;

    invoke-virtual {p1}, Landroid/os/Registrant;->clear()V

    const/4 p1, 0x0

    .line 351
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmSmsRegistrant:Landroid/os/Registrant;

    :cond_0
    return-void
.end method

.method public unSetOnRestrictedStateChanged(Landroid/os/Handler;)V
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 611
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    invoke-virtual {p1}, Landroid/os/Registrant;->clear()V

    const/4 p1, 0x0

    .line 612
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    :cond_0
    return-void
.end method

.method public unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 415
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    invoke-virtual {p1}, Landroid/os/Registrant;->clear()V

    const/4 p1, 0x0

    .line 416
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    :cond_0
    return-void
.end method

.method public unSetOnSmsOnSim(Landroid/os/Handler;)V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 389
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    invoke-virtual {p1}, Landroid/os/Registrant;->clear()V

    const/4 p1, 0x0

    .line 390
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    :cond_0
    return-void
.end method

.method public unSetOnSmsStatus(Landroid/os/Handler;)V
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsStatusRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 402
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsStatusRegistrant:Landroid/os/Registrant;

    invoke-virtual {p1}, Landroid/os/Registrant;->clear()V

    const/4 p1, 0x0

    .line 403
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsStatusRegistrant:Landroid/os/Registrant;

    :cond_0
    return-void
.end method

.method public unSetOnSs(Landroid/os/Handler;)V
    .locals 0

    .line 568
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mSsRegistrant:Landroid/os/Registrant;

    invoke-virtual {p1}, Landroid/os/Registrant;->clear()V

    return-void
.end method

.method public unSetOnSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSsnRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 454
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mSsnRegistrant:Landroid/os/Registrant;

    invoke-virtual {p1}, Landroid/os/Registrant;->clear()V

    const/4 p1, 0x0

    .line 455
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mSsnRegistrant:Landroid/os/Registrant;

    :cond_0
    return-void
.end method

.method public unSetOnUSSD(Landroid/os/Handler;)V
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mUSSDRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 441
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mUSSDRegistrant:Landroid/os/Registrant;

    invoke-virtual {p1}, Landroid/os/Registrant;->clear()V

    const/4 p1, 0x0

    .line 442
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mUSSDRegistrant:Landroid/os/Registrant;

    :cond_0
    return-void
.end method

.method public unSetOnUnsolOemHookRaw(Landroid/os/Handler;)V
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 650
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    invoke-virtual {p1}, Landroid/os/Registrant;->clear()V

    const/4 p1, 0x0

    .line 651
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    :cond_0
    return-void
.end method

.method public unregisterForAvailable(Landroid/os/Handler;)V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 230
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterForCallStateChanged(Landroid/os/Handler;)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForCallWaitingInfo(Landroid/os/Handler;)V
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForCarrierInfoForImsiEncryption(Landroid/os/Handler;)V
    .locals 1

    .line 1027
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCarrierInfoForImsiEncryptionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForCdmaOtaProvision(Landroid/os/Handler;)V
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForCdmaPrlChanged(Landroid/os/Handler;)V
    .locals 1

    .line 767
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaPrlChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForCdmaSubscriptionChanged(Landroid/os/Handler;)V
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSubscriptionChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForCellInfoList(Landroid/os/Handler;)V
    .locals 1

    .line 908
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilCellInfoListRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForDataCallListChanged(Landroid/os/Handler;)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mDataCallListChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForEmergencyNumberList(Landroid/os/Handler;)V
    .locals 1

    .line 837
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEmergencyNumberListRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForExitEmergencyCallbackMode(Landroid/os/Handler;)V
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForHardwareConfigChanged(Landroid/os/Handler;)V
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mHardwareConfigChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForIccRefresh(Landroid/os/Handler;)V
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForIccSlotStatusChanged(Landroid/os/Handler;)V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSlotStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForIccStatusChanged(Landroid/os/Handler;)V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForLceInfo(Landroid/os/Handler;)V
    .locals 2

    .line 995
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 996
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mLceInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 997
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mLineControlInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForModemReset(Landroid/os/Handler;)V
    .locals 1

    .line 1007
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mModemResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForNattKeepaliveStatus(Landroid/os/Handler;)V
    .locals 2

    .line 1041
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 1042
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mNattKeepaliveStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1043
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterForNetworkScanResult(Landroid/os/Handler;)V
    .locals 1

    .line 800
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilNetworkScanResultRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForNetworkStateChanged(Landroid/os/Handler;)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNetworkStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForNotAvailable(Landroid/os/Handler;)V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 250
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterForNumberInfo(Landroid/os/Handler;)V
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNumberInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForOffOrNotAvailable(Landroid/os/Handler;)V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 270
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterForOn(Landroid/os/Handler;)V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 209
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterForPcoData(Landroid/os/Handler;)V
    .locals 1

    .line 1017
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mPcoDataRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForPhysicalChannelConfiguration(Landroid/os/Handler;)V
    .locals 1

    .line 919
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mPhysicalChannelConfigurationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRadioCapabilityChanged(Landroid/os/Handler;)V
    .locals 1

    .line 969
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mPhoneRadioCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRadioStateChanged(Landroid/os/Handler;)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 181
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 1

    .line 745
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRilConnected(Landroid/os/Handler;)V
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSrvccStateChanged(Landroid/os/Handler;)V
    .locals 1

    .line 931
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSubscriptionStatusChanged(Landroid/os/Handler;)V
    .locals 1

    .line 826
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSubscriptionStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForVoiceRadioTechChanged(Landroid/os/Handler;)V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoiceRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unsetOnIccRefresh(Landroid/os/Handler;)V
    .locals 0

    .line 545
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/BaseCommands;->unregisterForIccRefresh(Landroid/os/Handler;)V

    return-void
.end method
