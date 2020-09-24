.class public Lcom/android/internal/telephony/GsmCdmaConnection;
.super Lcom/android/internal/telephony/Connection;
.source "GsmCdmaConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final EVENT_DTMF_DELAY_DONE:I = 0x5

.field static final EVENT_DTMF_DONE:I = 0x1

.field static final EVENT_NEXT_POST_DIAL:I = 0x3

.field static final EVENT_PAUSE_DONE:I = 0x2

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "GsmCdmaConnection"

.field public static final OTASP_NUMBER:Ljava/lang/String; = "*22899"

.field static final PAUSE_DELAY_MILLIS_CDMA:I = 0x7d0

.field static final PAUSE_DELAY_MILLIS_GSM:I = 0xbb8

.field private static final VDBG:Z = false

.field static final WAKE_LOCK_TIMEOUT_MILLIS:I = 0xea60


# instance fields
.field private mAudioCodec:I

.field mDisconnectTime:J

.field mDisconnected:Z

.field private mDtmfToneDelay:I

.field mHandler:Landroid/os/Handler;

.field mIndex:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field mOrigConnection:Lcom/android/internal/telephony/Connection;

.field mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field mParent:Lcom/android/internal/telephony/GsmCdmaCall;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field mPreciseCause:I

.field mUusInfo:Lcom/android/internal/telephony/UUSInfo;

.field mVendorCause:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;)V
    .locals 1

    .line 219
    invoke-virtual {p4}, Lcom/android/internal/telephony/GsmCdmaCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Connection;-><init>(I)V

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPreciseCause:I

    .line 80
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDtmfToneDelay:I

    .line 83
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mAudioCodec:I

    .line 85
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 220
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->createWakeLock(Landroid/content/Context;)V

    .line 221
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->acquireWakeLock()V

    .line 223
    iput-object p3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    .line 224
    new-instance p1, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;

    iget-object p3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p0, p3}, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;-><init>(Lcom/android/internal/telephony/GsmCdmaConnection;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    .line 225
    iget-object p1, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mAddress:Ljava/lang/String;

    .line 226
    iget p1, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPresentation:I

    iput p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mNumberPresentation:I

    .line 227
    iget-object p1, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCnapName:Ljava/lang/String;

    .line 228
    iget p1, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->namePresentation:I

    iput p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCnapNamePresentation:I

    const/4 p1, -0x1

    .line 229
    iput p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    const/4 p1, 0x1

    .line 230
    iput-boolean p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIsIncoming:Z

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCreateTime:J

    const-wide/16 p1, 0x0

    .line 232
    iput-wide p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mConnectTime:J

    .line 233
    iput-object p4, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 234
    sget-object p1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, p1}, Lcom/android/internal/telephony/GsmCdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 236
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCsCallRadioTech()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->setCallRadioTech(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/GsmCdmaCallTracker;I)V
    .locals 2

    .line 131
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Connection;-><init>(I)V

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPreciseCause:I

    .line 80
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDtmfToneDelay:I

    .line 83
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mAudioCodec:I

    .line 85
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 132
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->createWakeLock(Landroid/content/Context;)V

    .line 133
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->acquireWakeLock()V

    .line 135
    iput-object p3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    .line 136
    new-instance p3, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;-><init>(Lcom/android/internal/telephony/GsmCdmaConnection;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    .line 138
    iget-object p3, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mAddress:Ljava/lang/String;

    .line 139
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->setEmergencyCallInfo()V

    .line 141
    iget-boolean p3, p2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    iput-boolean p3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIsIncoming:Z

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCreateTime:J

    .line 143
    iget-object p3, p2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCnapName:Ljava/lang/String;

    .line 144
    iget p3, p2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput p3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCnapNamePresentation:I

    .line 145
    iget p3, p2, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput p3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mNumberPresentation:I

    .line 146
    iget-object p3, p2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    iput-object p3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 148
    iput p4, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    .line 150
    iget-object p3, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/GsmCdmaConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 151
    iget-object p3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {p3, p0, p2}, Lcom/android/internal/telephony/GsmCdmaCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    .line 153
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->fetchDtmfToneDelay(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    .line 155
    iget p1, p2, Lcom/android/internal/telephony/DriverCall;->audioQuality:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAudioQualityFromDC(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->setAudioQuality(I)V

    .line 157
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCsCallRadioTech()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->setCallRadioTech(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;Z)V
    .locals 3

    .line 163
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Connection;-><init>(I)V

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPreciseCause:I

    .line 80
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDtmfToneDelay:I

    .line 83
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mAudioCodec:I

    .line 85
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 164
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->createWakeLock(Landroid/content/Context;)V

    .line 165
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->acquireWakeLock()V

    .line 167
    iput-object p3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    .line 168
    new-instance p3, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p3, p0, v1}, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;-><init>(Lcom/android/internal/telephony/GsmCdmaConnection;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    .line 170
    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDialString:Ljava/lang/String;

    .line 171
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result p3

    if-nez p3, :cond_0

    .line 172
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "[GsmCdmaConn] GsmCdmaConnection: dialString="

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/GsmCdmaConnection;->maskDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "GsmCdmaConnection"

    .line 172
    invoke-static {v1, p3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {p2}, Lcom/android/internal/telephony/GsmCdmaConnection;->formatDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 175
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "[GsmCdmaConn] GsmCdmaConnection:formated dialString="

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/GsmCdmaConnection;->maskDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 175
    invoke-static {v1, p3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mAddress:Ljava/lang/String;

    if-eqz p5, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->setEmergencyCallInfo()V

    .line 185
    :cond_1
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialString:Ljava/lang/String;

    const/4 p2, -0x1

    .line 187
    iput p2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    .line 189
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIsIncoming:Z

    const/4 p2, 0x0

    .line 190
    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCnapName:Ljava/lang/String;

    const/4 p2, 0x1

    .line 191
    iput p2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCnapNamePresentation:I

    .line 192
    iput p2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mNumberPresentation:I

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCreateTime:J

    if-eqz p4, :cond_3

    .line 196
    iput-object p4, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 197
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result p2

    if-nez p2, :cond_2

    .line 201
    iget-object p2, p4, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object p3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne p2, p3, :cond_2

    .line 202
    sget-object p2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, p2}, Lcom/android/internal/telephony/GsmCdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    goto :goto_0

    .line 204
    :cond_2
    sget-object p2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, p2}, Lcom/android/internal/telephony/GsmCdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 210
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->fetchDtmfToneDelay(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    .line 212
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCsCallRadioTech()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->setCallRadioTech(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/GsmCdmaConnection;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->processNextPostDialChar()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/GsmCdmaConnection;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDtmfToneDelay:I

    return p0
.end method

.method private acquireWakeLock()V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1158
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 1159
    monitor-enter v0

    :try_start_0
    const-string v1, "acquireWakeLock"

    .line 1160
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 1161
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1162
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    return-void
.end method

.method private createWakeLock(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-string v0, "power"

    .line 1152
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 v0, 0x1

    const-string v1, "GsmCdmaConnection"

    .line 1153
    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private doDisconnect()V
    .locals 4

    const/4 v0, -0x1

    .line 926
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    .line 927
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnectTime:J

    .line 928
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mConnectTimeReal:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDuration:J

    const/4 v0, 0x1

    .line 929
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnected:Z

    .line 930
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->clearPostDialListeners()V

    return-void
.end method

.method static equalsBaseDialString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    .line 254
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 249
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private fetchDtmfToneDelay(Lcom/android/internal/telephony/GsmCdmaPhone;)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1270
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1271
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1273
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getDtmfToneDelayKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDtmfToneDelay:I

    :cond_0
    return-void
.end method

.method private static findNextPCharOrNonPOrNonWCharIndex(Ljava/lang/String;I)I
    .locals 6
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1207
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isWait(C)Z

    move-result v0

    add-int/lit8 v1, p1, 0x1

    .line 1209
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v3, v0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_2

    .line 1211
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1213
    invoke-static {v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->isWait(C)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    .line 1218
    :cond_0
    invoke-static {v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->isWait(C)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPause(C)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-ge v0, v2, :cond_3

    if-le v0, v1, :cond_3

    if-nez v3, :cond_3

    .line 1227
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPause(C)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method private static findPOrWCharToAppend(Ljava/lang/String;II)C
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1240
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 1244
    invoke-static {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPause(C)Z

    move-result p0

    const/16 v0, 0x3b

    if-eqz p0, :cond_0

    const/16 p0, 0x2c

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-le p2, p1, :cond_1

    move p0, v0

    :cond_1
    return p0
.end method

.method public static formatDialString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 280
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    .line 286
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 287
    invoke-static {v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPause(C)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->isWait(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 307
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_4

    .line 290
    invoke-static {p0, v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->findNextPCharOrNonPOrNonWCharIndex(Ljava/lang/String;I)I

    move-result v4

    if-ge v4, v0, :cond_3

    .line 293
    invoke-static {p0, v2, v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->findPOrWCharToAppend(Ljava/lang/String;II)C

    move-result v3

    .line 294
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x1

    if-le v4, v3, :cond_4

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    goto :goto_2

    :cond_3
    if-ne v4, v0, :cond_4

    move v2, v3

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 311
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getAudioQualityFromDC(I)I
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/16 v1, 0x9

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method private isConnectingInOrOut()Z
    .locals 2

    .line 1086
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static isPause(C)Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isPhoneTypeGsm()Z
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1279
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isWait(C)Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/16 v0, 0x3b

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isWild(C)Z
    .locals 1

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1284
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[GsmCdmaConn] "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GsmCdmaConnection"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private maskDialString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-string p1, "<MASKED>"

    return-object p1
.end method

.method private parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/GsmCdmaCall;
    .locals 2

    .line 1093
    sget-object v0, Lcom/android/internal/telephony/GsmCdmaConnection$1;->$SwitchMap$com$android$internal$telephony$DriverCall$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1110
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "illegal call state: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1106
    :pswitch_0
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    return-object p1

    .line 1101
    :pswitch_1
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    return-object p1

    .line 1097
    :pswitch_2
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private processNextPostDialChar()V
    .locals 4

    .line 1026
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v0, v1, :cond_0

    .line 1027
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseWakeLock()V

    return-void

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialString:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialString:Ljava/lang/String;

    .line 1032
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mNextPostDialChar:I

    if-gt v0, v1, :cond_1

    goto :goto_0

    .line 1043
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 1045
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialString:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mNextPostDialChar:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mNextPostDialChar:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1047
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->processPostDialChar(C)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1051
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1053
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "processNextPostDialChar: c="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, " isn\'t valid!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GsmCdmaConnection"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1033
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 1036
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseWakeLock()V

    const/4 v0, 0x0

    .line 1058
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->notifyPostDialListenersNextChar(C)V

    .line 1061
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPostDialHandler()Landroid/os/Registrant;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1066
    invoke-virtual {v1}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1068
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 1069
    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    .line 1070
    iput-object p0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1071
    iput-object v2, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 1074
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1077
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    return-void
.end method

.method private processPostDialChar(C)Z
    .locals 4

    .line 945
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    goto :goto_1

    .line 947
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPause(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 948
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result p1

    if-nez p1, :cond_1

    .line 949
    sget-object p1, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 963
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 964
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0xbb8

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x7d0

    .line 963
    :goto_0
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 965
    :cond_3
    invoke-static {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->isWait(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 966
    sget-object p1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_1

    .line 967
    :cond_4
    invoke-static {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->isWild(C)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 968
    sget-object p1, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    :goto_1
    return v1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method private releaseAllWakeLocks()V
    .locals 2

    .line 1178
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 1179
    monitor-enter v0

    .line 1180
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1181
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 1183
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    return-void
.end method

.method private setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V
    .locals 5

    .line 1131
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    const/4 v1, 0x4

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1143
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1144
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseWakeLock()V

    goto :goto_2

    .line 1133
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 1134
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1135
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    .line 1137
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->acquireWakeLock()V

    .line 1139
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1140
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1141
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1146
    :goto_2
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 1147
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->notifyPostDialListeners()V

    return-void

    :catchall_0
    move-exception p1

    .line 1141
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public cancelPostDial()V
    .locals 1

    .line 434
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    return-void
.end method

.method compareTo(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 3

    .line 321
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIsIncoming:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-nez v0, :cond_0

    return v1

    .line 326
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_1

    return v1

    .line 331
    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v2, p1, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 332
    iget-boolean v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIsIncoming:Z

    iget-boolean p1, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-ne v2, p1, :cond_2

    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mAddress:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public deflect(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 382
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    const-string v0, "deflect is not supported for CS"

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method disconnectCauseFromCode(I)I
    .locals 6
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_14

    const/4 v1, 0x3

    if-eq p1, v1, :cond_13

    const/4 v2, 0x6

    if-eq p1, v2, :cond_12

    const/16 v2, 0x31

    if-eq p1, v2, :cond_11

    const/16 v2, 0x32

    if-eq p1, v2, :cond_10

    const/16 v2, 0x39

    if-eq p1, v2, :cond_f

    const/16 v2, 0x3a

    if-eq p1, v2, :cond_e

    const/16 v3, 0x57

    if-eq p1, v3, :cond_d

    const/16 v3, 0x58

    if-eq p1, v3, :cond_d

    const/16 v3, 0xf0

    if-eq p1, v3, :cond_c

    const/16 v3, 0xf1

    if-eq p1, v3, :cond_b

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    .line 667
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v2

    .line 668
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 669
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 670
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v4

    goto :goto_0

    .line 671
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    :goto_0
    if-ne v3, v1, :cond_1

    const/16 p1, 0x11

    return p1

    .line 675
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isEmergencyCall()Z

    move-result v1

    const/4 v5, 0x2

    if-nez v1, :cond_5

    if-eq v3, v0, :cond_4

    if-ne v3, v5, :cond_2

    goto :goto_1

    .line 686
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v4, v0, :cond_5

    .line 687
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result v0

    const/16 v1, 0x13

    if-eqz v0, :cond_3

    return v1

    .line 690
    :cond_3
    iget v0, v2, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    if-nez v0, :cond_5

    return v1

    :cond_4
    :goto_1
    const/16 p1, 0x12

    return p1

    .line 697
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0xffff

    if-eq p1, v0, :cond_6

    const/16 v0, 0x104

    if-ne p1, v0, :cond_9

    .line 700
    :cond_6
    iget-object v0, v2, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 p1, 0x16

    return p1

    .line 702
    :cond_7
    iget-object v0, v2, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p1, 0x18

    return p1

    .line 704
    :cond_8
    iget-object v0, v2, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p1, 0x17

    return p1

    :cond_9
    const/16 v0, 0x10

    if-ne p1, v0, :cond_a

    return v5

    :cond_a
    const/16 p1, 0x24

    return p1

    :pswitch_0
    const/16 p1, 0x30

    return p1

    :pswitch_1
    const/16 p1, 0x2f

    return p1

    :pswitch_2
    const/16 p1, 0x2e

    return p1

    :pswitch_3
    return v2

    :pswitch_4
    const/16 p1, 0x54

    return p1

    :pswitch_5
    const/16 p1, 0x53

    return p1

    :pswitch_6
    const/16 p1, 0xf

    return p1

    :pswitch_7
    const/16 p1, 0x76

    return p1

    :pswitch_8
    const/16 p1, 0x75

    return p1

    :pswitch_9
    const/16 p1, 0x74

    return p1

    :pswitch_a
    const/16 p1, 0x73

    return p1

    :pswitch_b
    const/16 p1, 0x41

    return p1

    :pswitch_c
    const/16 p1, 0x71

    return p1

    :pswitch_d
    const/16 p1, 0x70

    return p1

    :pswitch_e
    const/4 p1, 0x7

    return p1

    :pswitch_f
    const/16 p1, 0x6a

    return p1

    :pswitch_10
    const/16 p1, 0x79

    return p1

    :pswitch_11
    const/16 p1, 0x6f

    return p1

    :pswitch_12
    const/16 p1, 0x6e

    return p1

    :pswitch_13
    const/16 p1, 0x6d

    return p1

    :pswitch_14
    const/16 p1, 0x69

    return p1

    :pswitch_15
    const/16 p1, 0xd

    return p1

    :pswitch_16
    const/16 p1, 0x68

    return p1

    :pswitch_17
    const/4 p1, 0x4

    return p1

    :sswitch_0
    const/16 p1, 0x23

    return p1

    :sswitch_1
    const/16 p1, 0x22

    return p1

    :sswitch_2
    const/16 p1, 0x21

    return p1

    :sswitch_3
    const/16 p1, 0x20

    return p1

    :sswitch_4
    const/16 p1, 0x1f

    return p1

    :sswitch_5
    const/16 p1, 0x1e

    return p1

    :sswitch_6
    const/16 p1, 0x1d

    return p1

    :sswitch_7
    const/16 p1, 0x1c

    return p1

    :sswitch_8
    const/16 p1, 0x1b

    return p1

    :sswitch_9
    const/16 p1, 0x1a

    return p1

    :sswitch_a
    const/16 p1, 0x40

    return p1

    :sswitch_b
    const/16 p1, 0x3f

    return p1

    :sswitch_c
    const/16 p1, 0x63

    return p1

    :sswitch_d
    const/16 p1, 0x62

    return p1

    :sswitch_e
    const/16 p1, 0x61

    return p1

    :sswitch_f
    const/16 p1, 0x60

    return p1

    :sswitch_10
    const/16 p1, 0x5f

    return p1

    :sswitch_11
    const/16 p1, 0x5e

    return p1

    :sswitch_12
    const/16 p1, 0x5d

    return p1

    :sswitch_13
    const/16 p1, 0x5c

    return p1

    :sswitch_14
    const/16 p1, 0x5b

    return p1

    :sswitch_15
    const/16 p1, 0x5a

    return p1

    :sswitch_16
    const/16 p1, 0x59

    return p1

    :sswitch_17
    const/16 p1, 0x56

    return p1

    :sswitch_18
    const/16 p1, 0x55

    return p1

    :sswitch_19
    const/16 p1, 0x52

    return p1

    :sswitch_1a
    const/16 p1, 0x51

    return p1

    :sswitch_1b
    const/16 p1, 0x4f

    return p1

    :sswitch_1c
    const/16 p1, 0x77

    return p1

    :sswitch_1d
    const/16 p1, 0x72

    return p1

    :sswitch_1e
    const/16 p1, 0x65

    return p1

    :sswitch_1f
    const/16 p1, 0x67

    return p1

    :cond_b
    const/16 p1, 0x15

    return p1

    :cond_c
    const/16 p1, 0x14

    return p1

    :cond_d
    return v3

    :cond_e
    const/16 p1, 0x50

    return p1

    :cond_f
    const/16 p1, 0x6b

    return p1

    :cond_10
    const/16 p1, 0x4e

    return p1

    :cond_11
    const/16 p1, 0x4d

    return p1

    :cond_12
    :sswitch_20
    const/16 p1, 0x6c

    return p1

    :cond_13
    const/16 p1, 0x66

    return p1

    :cond_14
    const/16 p1, 0x19

    return p1

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_20
        0x8 -> :sswitch_1f
        0x22 -> :sswitch_1e
        0x26 -> :sswitch_1d
        0x2f -> :sswitch_1c
        0x37 -> :sswitch_1b
        0x3f -> :sswitch_1a
        0x41 -> :sswitch_19
        0x4f -> :sswitch_18
        0x51 -> :sswitch_17
        0x5b -> :sswitch_16
        0x5f -> :sswitch_15
        0x60 -> :sswitch_14
        0x61 -> :sswitch_13
        0x62 -> :sswitch_12
        0x63 -> :sswitch_11
        0x64 -> :sswitch_10
        0x65 -> :sswitch_f
        0x66 -> :sswitch_e
        0x6f -> :sswitch_d
        0x7f -> :sswitch_c
        0x145 -> :sswitch_b
        0x146 -> :sswitch_a
        0x3e8 -> :sswitch_9
        0x3e9 -> :sswitch_8
        0x3ea -> :sswitch_7
        0x3eb -> :sswitch_6
        0x3ec -> :sswitch_5
        0x3ed -> :sswitch_4
        0x3ee -> :sswitch_3
        0x3ef -> :sswitch_2
        0x3f0 -> :sswitch_1
        0x3f1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x29
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x44
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xf3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispose()V
    .locals 1

    .line 241
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->clearPostDialListeners()V

    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCall;->detach(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    .line 245
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseAllWakeLocks()V

    return-void
.end method

.method fakeHoldBeforeDial()V
    .locals 2

    .line 869
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eqz v0, :cond_0

    .line 870
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCall;->detach(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 874
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/GsmCdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 876
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->onStartedHolding()V

    return-void
.end method

.method protected finalize()V
    .locals 2

    .line 1014
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GsmCdmaConnection"

    const-string v1, "UNEXPECTED; mPartialWakeLock is held when finalizing."

    .line 1015
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->clearPostDialListeners()V

    .line 1018
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseWakeLock()V

    return-void
.end method

.method public bridge synthetic getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v0

    return-object v0
.end method

.method public getCall()Lcom/android/internal/telephony/GsmCdmaCall;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    return-object v0
.end method

.method public getDisconnectTime()J
    .locals 2

    .line 347
    iget-wide v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnectTime:J

    return-wide v0
.end method

.method getGsmCdmaIndex()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 881
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 884
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "GsmCdma index not yet assigned"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHoldDurationMillis()J
    .locals 4

    .line 352
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 356
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHoldingStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getNumberPresentation()I
    .locals 1

    .line 1289
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mNumberPresentation:I

    return v0
.end method

.method public getOrigConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    .line 1319
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    return-object v0
.end method

.method public getOrigDialString()Ljava/lang/String;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDialString:Ljava/lang/String;

    return-object v0
.end method

.method public getPreciseDisconnectCause()I
    .locals 1

    .line 1298
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPreciseCause:I

    return v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .locals 4

    .line 979
    invoke-super {p0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v0

    .line 980
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x3b

    .line 981
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x2c

    .line 982
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    if-lez v1, :cond_1

    if-lt v1, v2, :cond_0

    if-gtz v2, :cond_1

    .line 985
    :cond_0
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-lez v2, :cond_2

    .line 987
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 363
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnected:Z

    if-eqz v0, :cond_0

    .line 364
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    return-object v0

    .line 366
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    return-object v0
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 1

    .line 1294
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    return-object v0
.end method

.method public getVendorDisconnectCause()Ljava/lang/String;
    .locals 1

    .line 1303
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mVendorCause:Ljava/lang/String;

    return-object v0
.end method

.method public hangup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 372
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnected:Z

    if-nez v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    return-void

    .line 375
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isMultiparty()Z
    .locals 1

    .line 1324
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_0

    .line 1325
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isMultiparty()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOtaspCall()Z
    .locals 2

    .line 1335
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mAddress:Ljava/lang/String;

    const-string v1, "*22899"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public migrateFrom(Lcom/android/internal/telephony/Connection;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1310
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Connection;->migrateFrom(Lcom/android/internal/telephony/Connection;)V

    .line 1312
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUUSInfo()Lcom/android/internal/telephony/UUSInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 1314
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->setUserData(Ljava/lang/Object;)V

    return-void
.end method

.method onConnectedConnectionMigrated()V
    .locals 0

    .line 921
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseWakeLock()V

    return-void
.end method

.method onConnectedInOrOut()V
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 894
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mConnectTime:J

    .line 895
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mConnectTimeReal:J

    const-wide/16 v0, 0x0

    .line 896
    iput-wide v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDuration:J

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConnectedInOrOut: connectTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mConnectTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 904
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIsIncoming:Z

    if-nez v0, :cond_0

    .line 906
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->processNextPostDialChar()V

    return-void

    .line 910
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseWakeLock()V

    return-void
.end method

.method public onDisconnect(I)Z
    .locals 3

    .line 733
    iput p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    .line 735
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnected:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 736
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->doDisconnect()V

    .line 738
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onDisconnect: cause="

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "GsmCdmaConnection"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    .line 741
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->notifyDisconnect(I)V

    .line 743
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eqz p1, :cond_0

    .line 744
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/GsmCdmaCall;->connectionDisconnected(Lcom/android/internal/telephony/GsmCdmaConnection;)Z

    move-result p1

    move v1, p1

    :cond_0
    const/4 p1, 0x0

    .line 747
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    .line 749
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->clearPostDialListeners()V

    .line 750
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseWakeLock()V

    return v1
.end method

.method onHangupLocal()V
    .locals 1

    const/4 v0, 0x3

    .line 444
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    const/4 v0, 0x0

    .line 445
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPreciseCause:I

    const/4 v0, 0x0

    .line 446
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mVendorCause:Ljava/lang/String;

    return-void
.end method

.method onLocalDisconnect()V
    .locals 1

    .line 758
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnected:Z

    if-nez v0, :cond_0

    .line 759
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->doDisconnect()V

    .line 762
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eqz v0, :cond_0

    .line 763
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCall;->detach(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    .line 766
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseWakeLock()V

    return-void
.end method

.method onRemoteDisconnect(ILjava/lang/String;)V
    .locals 0

    .line 720
    iput p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPreciseCause:I

    .line 721
    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mVendorCause:Ljava/lang/String;

    .line 722
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->disconnectCauseFromCode(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->onDisconnect(I)Z

    return-void
.end method

.method onStartedHolding()V
    .locals 2

    .line 935
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHoldingStartTime:J

    return-void
.end method

.method public proceedAfterWaitChar()V
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GsmCdmaConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WAIT but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GsmCdmaConnection"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 402
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 404
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->processNextPostDialChar()V

    return-void
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    .line 410
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "GsmCdmaConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WILD but was "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GsmCdmaConnection"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 415
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 421
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialString:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mNextPostDialChar:I

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialString:Ljava/lang/String;

    const/4 p1, 0x0

    .line 423
    iput p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mNextPostDialChar:I

    .line 425
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "proceedAfterWildChar: new postDialString is "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 429
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->processNextPostDialChar()V

    return-void
.end method

.method releaseWakeLock()V
    .locals 2

    .line 1167
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 1168
    monitor-enter v0

    .line 1169
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "releaseWakeLock"

    .line 1170
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 1171
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1173
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    return-void
.end method

.method public separate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 387
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnected:Z

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->separate(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    return-void

    .line 390
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public update(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 9

    .line 774
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isConnectingInOrOut()Z

    move-result v0

    .line 775
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    .line 777
    :goto_0
    iget-object v2, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v2

    .line 779
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "parent= "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", newParent= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 782
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isPhoneTypeGsm()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v5, :cond_1

    const-string/jumbo v5, "update: mOrigConnection is not null"

    .line 783
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 784
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isIncoming()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 785
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mAddress:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->equalsBaseDialString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mNumberConverted:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mConvertedNumber:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 786
    invoke-static {v5, v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->equalsBaseDialString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    const-string/jumbo v5, "update: phone # changed!"

    .line 787
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 788
    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mAddress:Ljava/lang/String;

    move v5, v4

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v3

    .line 793
    :goto_2
    iget v6, p1, Lcom/android/internal/telephony/DriverCall;->audioQuality:I

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAudioQualityFromDC(I)I

    move-result v6

    .line 794
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAudioQuality()I

    move-result v7

    if-eq v7, v6, :cond_5

    .line 796
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "update: audioQuality # changed!:  "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    const-string v7, "high"

    goto :goto_3

    :cond_4
    const-string v7, "standard"

    .line 798
    :goto_3
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 796
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 800
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->setAudioQuality(I)V

    move v5, v4

    .line 805
    :cond_5
    iget v6, p1, Lcom/android/internal/telephony/DriverCall;->audioQuality:I

    iget v7, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mAudioCodec:I

    if-eq v6, v7, :cond_6

    .line 806
    iget v6, p1, Lcom/android/internal/telephony/DriverCall;->audioQuality:I

    iput v6, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mAudioCodec:I

    .line 807
    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v7

    iget v8, p1, Lcom/android/internal/telephony/DriverCall;->audioQuality:I

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeAudioCodecGsmCdma(II)V

    .line 811
    :cond_6
    iget-object v6, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 812
    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCnapName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v5, ""

    .line 814
    iput-object v5, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCnapName:Ljava/lang/String;

    goto :goto_4

    .line 816
    :cond_7
    iget-object v6, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCnapName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 818
    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCnapName:Ljava/lang/String;

    :goto_4
    move v5, v4

    .line 821
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "--dssds----"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCnapName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    .line 822
    iget v6, p1, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v6, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCnapNamePresentation:I

    .line 823
    iget v6, p1, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v6, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mNumberPresentation:I

    .line 825
    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eq v2, v6, :cond_a

    if-eqz v6, :cond_9

    .line 827
    invoke-virtual {v6, p0}, Lcom/android/internal/telephony/GsmCdmaCall;->detach(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    .line 829
    :cond_9
    invoke-virtual {v2, p0, p1}, Lcom/android/internal/telephony/GsmCdmaCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    .line 830
    iput-object v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    goto :goto_5

    .line 834
    :cond_a
    invoke-virtual {v6, p0, p1}, Lcom/android/internal/telephony/GsmCdmaCall;->update(Lcom/android/internal/telephony/GsmCdmaConnection;Lcom/android/internal/telephony/DriverCall;)Z

    move-result p1

    if-nez v5, :cond_c

    if-eqz p1, :cond_b

    goto :goto_5

    :cond_b
    move p1, v3

    goto :goto_6

    :cond_c
    :goto_5
    move p1, v4

    .line 840
    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "update: parent="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", hasNewParent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eq v2, v6, :cond_d

    move v3, v4

    :cond_d
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", wasConnectingInOrOut="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", wasHolding="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isConnectingInOrOut="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isConnectingInOrOut()Z

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", changed="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 840
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_e

    .line 849
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isConnectingInOrOut()Z

    move-result v0

    if-nez v0, :cond_e

    .line 850
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->onConnectedInOrOut()V

    :cond_e
    if-eqz p1, :cond_f

    if-nez v1, :cond_f

    .line 853
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_f

    .line 855
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->onStartedHolding()V

    :cond_f
    return p1
.end method

.method public updateParent(Lcom/android/internal/telephony/GsmCdmaCall;Lcom/android/internal/telephony/GsmCdmaCall;)V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    if-eq p2, p1, :cond_1

    if-eqz p1, :cond_0

    .line 998
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/GsmCdmaCall;->detach(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    .line 1000
    :cond_0
    sget-object p1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p2, p0, p1}, Lcom/android/internal/telephony/GsmCdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 1001
    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaConnection;->mParent:Lcom/android/internal/telephony/GsmCdmaCall;

    :cond_1
    return-void
.end method
