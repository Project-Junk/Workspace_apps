.class public Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
.super Lcom/android/internal/telephony/Connection;
.source "ImsPhoneConnection.java"

# interfaces
.implements Lcom/android/ims/internal/b$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_DTMF_DELAY_DONE:I = 0x5

.field private static final EVENT_DTMF_DONE:I = 0x1

.field private static final EVENT_NEXT_POST_DIAL:I = 0x3

.field private static final EVENT_PAUSE_DONE:I = 0x2

.field private static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "ImsPhoneConnection"

.field private static final PAUSE_DELAY_MILLIS:I = 0xbb8

.field private static final WAKE_LOCK_TIMEOUT_MILLIS:I = 0xea60


# instance fields
.field private mAudioCodec:I

.field private mConferenceConnectTime:J

.field private mDisconnectTime:J

.field private mDisconnected:Z
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mDtmfToneDelay:I

.field private mExtras:Landroid/os/Bundle;

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerMessenger:Landroid/os/Messenger;

.field private mImsCall:Lcom/android/ims/a;

.field private mImsVideoCallProviderWrapper:Lcom/android/ims/internal/b;

.field private mIsEmergency:Z

.field private mIsLocalVideoCapable:Z

.field private mIsMergeInProcess:Z

.field private mIsRttEnabledForCall:Z

.field private mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field private mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPreciseDisconnectCause:I

.field private mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

.field private mRttTextStream:Landroid/telecom/Connection$RttTextStream;

.field private mShouldIgnoreVideoStateChanges:Z

.field private mUusInfo:Lcom/android/internal/telephony/UUSInfo;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/ims/a;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V
    .locals 4

    const/4 v0, 0x5

    .line 180
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Connection;-><init>(I)V

    .line 71
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    .line 72
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    const-wide/16 v0, 0x0

    .line 95
    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    const/4 v0, 0x0

    .line 98
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDtmfToneDelay:I

    .line 100
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsEmergency:Z

    .line 109
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    .line 113
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPreciseDisconnectCause:I

    .line 118
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsRttEnabledForCall:Z

    .line 123
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsMergeInProcess:Z

    const/4 v1, 0x1

    .line 131
    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsLocalVideoCapable:Z

    .line 134
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAudioCodec:I

    .line 181
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->createWakeLock(Landroid/content/Context;)V

    .line 182
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->acquireWakeLock()V

    .line 184
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 185
    new-instance p3, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    .line 186
    new-instance p3, Landroid/os/Messenger;

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    invoke-direct {p3, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandlerMessenger:Landroid/os/Messenger;

    .line 187
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/a;

    if-eqz p2, :cond_0

    .line 189
    invoke-virtual {p2}, Lcom/android/ims/a;->b()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 190
    invoke-virtual {p2}, Lcom/android/ims/a;->b()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p3

    const-string v0, "oi"

    invoke-virtual {p3, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAddress:Ljava/lang/String;

    .line 191
    invoke-virtual {p2}, Lcom/android/ims/a;->b()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p3

    const-string v0, "cna"

    invoke-virtual {p3, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    .line 193
    invoke-virtual {p2}, Lcom/android/ims/a;->b()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p3

    const-string v0, "oir"

    invoke-virtual {p3, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result p3

    .line 192
    invoke-static {p3}, Landroid/telephony/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result p3

    iput p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    .line 195
    invoke-virtual {p2}, Lcom/android/ims/a;->b()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p3

    const-string v0, "cnap"

    invoke-virtual {p3, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result p3

    .line 194
    invoke-static {p3}, Landroid/telephony/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result p3

    iput p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    .line 196
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateMediaCapabilities(Lcom/android/ims/a;)Z

    goto :goto_0

    :cond_0
    const/4 p3, 0x3

    .line 198
    iput p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    .line 199
    iput p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    :goto_0
    xor-int/lit8 p3, p5, 0x1

    .line 202
    iput-boolean p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsIncoming:Z

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCreateTime:J

    const/4 p3, 0x0

    .line 204
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 209
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateExtras(Lcom/android/ims/a;)Z

    .line 211
    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 212
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 213
    iget-boolean p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsIncoming:Z

    if-eqz p3, :cond_1

    sget-object p3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    goto :goto_1

    :cond_1
    sget-object p3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    .line 212
    :goto_1
    invoke-virtual {p2, p0, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 215
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->fetchDtmfToneDelay(Lcom/android/internal/telephony/Phone;)V

    .line 217
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x11100eb

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 219
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setAudioModeIsVoip(Z)V

    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 226
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;ZLandroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x5

    .line 232
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Connection;-><init>(I)V

    .line 71
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    .line 72
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    const-wide/16 v0, 0x0

    .line 95
    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    const/4 v0, 0x0

    .line 98
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDtmfToneDelay:I

    .line 100
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsEmergency:Z

    .line 109
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    .line 113
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPreciseDisconnectCause:I

    .line 118
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsRttEnabledForCall:Z

    .line 123
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsMergeInProcess:Z

    const/4 v1, 0x1

    .line 131
    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsLocalVideoCapable:Z

    .line 134
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAudioCodec:I

    .line 233
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->createWakeLock(Landroid/content/Context;)V

    .line 234
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->acquireWakeLock()V

    if-eqz p6, :cond_0

    const-string v2, "org.codeaurora.extra.DIAL_CONFERENCE_URI"

    .line 239
    invoke-virtual {p6, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "org.codeaurora.extra.SKIP_SCHEMA_PARSING"

    .line 241
    invoke-virtual {p6, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p6

    goto :goto_0

    :cond_0
    move p6, v0

    move v2, p6

    .line 245
    :goto_0
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 246
    new-instance p3, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {p3, p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    .line 247
    new-instance p3, Landroid/os/Messenger;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    invoke-direct {p3, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandlerMessenger:Landroid/os/Messenger;

    .line 249
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDialString:Ljava/lang/String;

    if-nez v2, :cond_2

    if-eqz p6, :cond_1

    goto :goto_1

    .line 255
    :cond_1
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAddress:Ljava/lang/String;

    .line 256
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    goto :goto_2

    .line 252
    :cond_2
    :goto_1
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAddress:Ljava/lang/String;

    const-string p2, ""

    .line 253
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    .line 261
    :goto_2
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsIncoming:Z

    const/4 p2, 0x0

    .line 262
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    .line 263
    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    .line 264
    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCreateTime:J

    .line 267
    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 268
    sget-object p2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 270
    iput-boolean p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsEmergency:Z

    if-eqz p5, :cond_3

    .line 272
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setEmergencyCallInfo()V

    .line 275
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->fetchDtmfToneDelay(Lcom/android/internal/telephony/Phone;)V

    .line 277
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x11100eb

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 279
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setAudioModeIsVoip(Z)V

    :cond_4
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Landroid/os/Handler;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDtmfToneDelay:I

    return p0
.end method

.method private acquireWakeLock()V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-string v0, "ImsPhoneConnection"

    const-string v1, "acquireWakeLock"

    .line 701
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method private applyLocalCallCapabilities(Landroid/telephony/ims/ImsCallProfile;I)I
    .locals 4

    .line 297
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "applyLocalCallCapabilities - localProfile = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhoneConnection"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    .line 298
    invoke-static {p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->removeCapability(II)I

    move-result p2

    const/4 v2, 0x1

    .line 300
    invoke-static {p2, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->removeCapability(II)I

    move-result p2

    .line 303
    iget p1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    invoke-static {p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->addCapability(II)I

    move-result p2

    goto :goto_0

    .line 305
    :cond_1
    invoke-static {p2, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->addCapability(II)I

    move-result p1

    .line 307
    invoke-static {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->addCapability(II)I

    move-result p2

    goto :goto_0

    .line 315
    :cond_2
    invoke-static {p2, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->addCapability(II)I

    move-result p2

    .line 326
    :goto_0
    iget-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsLocalVideoCapable:Z

    if-nez p1, :cond_3

    const-string p1, "applyLocalCallCapabilities - disabling video (overidden)"

    .line 327
    invoke-static {v1, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-static {p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->removeCapability(II)I

    move-result p2

    :cond_3
    return p2
.end method

.method private static applyRemoteCallCapabilities(Landroid/telephony/ims/ImsCallProfile;I)I
    .locals 4

    .line 335
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "applyRemoteCallCapabilities - remoteProfile = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhoneConnection"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    .line 336
    invoke-static {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->removeCapability(II)I

    move-result p1

    const/4 v1, 0x2

    .line 338
    invoke-static {p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->removeCapability(II)I

    move-result p1

    .line 341
    iget v2, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-eq v2, v1, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v1, 0x4

    if-eq v2, v1, :cond_0

    goto :goto_0

    .line 349
    :cond_0
    invoke-static {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->addCapability(II)I

    move-result p1

    goto :goto_0

    .line 343
    :cond_1
    invoke-static {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->addCapability(II)I

    move-result p1

    .line 353
    :cond_2
    invoke-static {p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->addCapability(II)I

    move-result p1

    .line 364
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    const/16 p0, 0x40

    .line 365
    invoke-static {p1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->addCapability(II)I

    move-result p1

    :cond_3
    return p1
.end method

.method private static areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 1240
    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    return v1

    .line 1244
    :cond_1
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1246
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1247
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1248
    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    if-ne p0, p1, :cond_5

    return v0

    :cond_5
    return v1
.end method

.method private createRttTextHandler()V
    .locals 3

    .line 1170
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/imsphone/-$$Lambda$ImsPhoneConnection$gXYXXIQcibrbO2gQqP7d18avaBI;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/imsphone/-$$Lambda$ImsPhoneConnection$gXYXXIQcibrbO2gQqP7d18avaBI;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;-><init>(Landroid/os/Looper;Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$NetworkWriter;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    .line 1177
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->initialize(Landroid/telecom/Connection$RttTextStream;)V

    return-void
.end method

.method private createWakeLock(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-string v0, "power"

    .line 694
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 v0, 0x1

    const-string v1, "ImsPhoneConnection"

    .line 695
    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

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

    .line 293
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

    .line 288
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private fetchDtmfToneDelay(Lcom/android/internal/telephony/Phone;)V
    .locals 2

    .line 719
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 720
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "ims_dtmf_tone_delay_int"

    .line 722
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDtmfToneDelay:I

    :cond_0
    return-void
.end method

.method private getAudioQualityFromCallProfile(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallProfile;)I
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 1268
    iget-object v1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    if-nez v1, :cond_0

    goto :goto_2

    .line 1273
    :cond_0
    iget-object v1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    iget-object v1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    const/16 v2, 0x13

    if-eq v1, v2, :cond_2

    iget-object v1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v0

    .line 1280
    :goto_1
    iget-object v2, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v2, v2, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget p1, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    const/4 v2, 0x6

    if-eq p1, v2, :cond_3

    if-eqz v1, :cond_4

    .line 1285
    :cond_3
    invoke-virtual {p2}, Landroid/telephony/ims/ImsCallProfile;->getRestrictCause()I

    move-result p1

    if-nez p1, :cond_4

    move v3, v0

    :cond_4
    if-eqz v3, :cond_5

    return v4

    :cond_5
    :goto_2
    return v0
.end method

.method private processNextPostDialChar()V
    .locals 4

    .line 618
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v0, v1, :cond_0

    return-void

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    if-gt v0, v1, :cond_1

    goto :goto_0

    .line 631
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 633
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 635
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processPostDialChar(C)Z

    move-result v1

    if-nez v1, :cond_3

    .line 639
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 641
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "processNextPostDialChar: c="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, " isn\'t valid!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhoneConnection"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 624
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    const/4 v0, 0x0

    .line 646
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->notifyPostDialListenersNextChar(C)V

    .line 649
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPostDialHandler()Landroid/os/Registrant;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 654
    invoke-virtual {v1}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 656
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 657
    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    .line 658
    iput-object p0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 659
    iput-object v2, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 662
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 666
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    return-void
.end method

.method private processPostDialChar(C)Z
    .locals 4

    .line 578
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 580
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandlerMessenger:Landroid/os/Messenger;

    iput-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 581
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendDtmf(CLandroid/os/Message;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x2c

    if-ne p1, v0, :cond_1

    .line 595
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    const/16 v0, 0x3b

    if-ne p1, v0, :cond_2

    .line 598
    sget-object p1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x4e

    if-ne p1, v0, :cond_3

    .line 600
    sget-object p1, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    :goto_0
    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V
    .locals 4

    .line 677
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    const/4 v2, 0x4

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne p1, v0, :cond_0

    .line 679
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->acquireWakeLock()V

    .line 680
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 681
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq p1, v0, :cond_1

    .line 684
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 685
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    .line 687
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 688
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->notifyPostDialListeners()V

    return-void
.end method

.method private updateEmergencyCallFromExtras(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "e_call"

    .line 1201
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1202
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setIsNetworkIdentifiedEmergencyCall(Z)V

    :cond_0
    return-void
.end method

.method private updateImsCallRatFromExtras(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "CallRadioTech"

    .line 1186
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "callRadioTech"

    .line 1187
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1189
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/a;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1192
    invoke-virtual {p1}, Lcom/android/ims/a;->t()I

    move-result v0

    .line 1196
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setCallRadioTech(I)V

    :cond_2
    return-void
.end method

.method private updateVideoState(I)V
    .locals 6

    .line 1066
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/b;

    if-eqz v0, :cond_1

    .line 2578
    iget v1, v0, Lcom/android/ims/internal/b;->f:I

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2580
    new-array v1, v4, [Ljava/lang/Object;

    iget v4, v0, Lcom/android/ims/internal/b;->f:I

    .line 2582
    invoke-static {v4}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 2583
    invoke-static {p1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "onVideoStateChanged: currentVideoState=%s, newVideoState=%s, clearing pending pause requests."

    .line 2580
    invoke-static {v0, v2, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2584
    iget-object v1, v0, Lcom/android/ims/internal/b;->d:Lcom/android/ims/internal/c;

    .line 3160
    iget-object v5, v1, Lcom/android/ims/internal/c;->b:Ljava/lang/Object;

    monitor-enter v5

    .line 3161
    :try_start_0
    iget-object v1, v1, Lcom/android/ims/internal/c;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 3162
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 2586
    :cond_0
    new-array v1, v4, [Ljava/lang/Object;

    iget v4, v0, Lcom/android/ims/internal/b;->f:I

    .line 2587
    invoke-static {v4}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 2588
    invoke-static {p1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "onVideoStateChanged: currentVideoState=%s, newVideoState=%s"

    .line 2586
    invoke-static {v0, v2, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2590
    :goto_0
    iput p1, v0, Lcom/android/ims/internal/b;->f:I

    .line 1069
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setVideoState(I)V

    return-void
.end method


# virtual methods
.method public cancelPostDial()V
    .locals 1

    .line 495
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    return-void
.end method

.method public changeParent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 0

    .line 774
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    return-void
.end method

.method public changeToPausedState()V
    .locals 3

    .line 1436
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    .line 1437
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ImsPhoneConnection: changeToPausedState - setting paused bit; newVideoState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1438
    invoke-static {v0}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsPhoneConnection"

    .line 1437
    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateVideoState(I)V

    const/4 v0, 0x1

    .line 1440
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    return-void
.end method

.method public changeToUnPausedState()V
    .locals 3

    .line 1444
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    move-result v0

    and-int/lit8 v0, v0, -0x5

    .line 1445
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ImsPhoneConnection: changeToUnPausedState - unsetting paused bit; newVideoState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1446
    invoke-static {v0}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsPhoneConnection"

    .line 1445
    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateVideoState(I)V

    const/4 v0, 0x0

    .line 1448
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    return-void
.end method

.method public deflect(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/a;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/a;

    invoke-virtual {v0, p1}, Lcom/android/ims/a;->a(Ljava/lang/String;)V

    return-void

    .line 431
    :cond_0
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    const-string v0, "no valid ims call to deflect"

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    :catch_0
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    const-string v0, "cannot deflect call"

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 437
    :cond_1
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    const-string v0, "phone not ringing"

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method protected finalize()V
    .locals 0

    .line 610
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    return-void
.end method

.method public bridge synthetic getCall()Lcom/android/internal/telephony/Call;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 58
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    return-object v0
.end method

.method public getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    return-object v0
.end method

.method public getConferenceConnectTime()J
    .locals 2

    .line 861
    iget-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    return-wide v0
.end method

.method public getDisconnectTime()J
    .locals 2

    .line 383
    iget-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnectTime:J

    return-wide v0
.end method

.method public getHoldDurationMillis()J
    .locals 4

    .line 393
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 397
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHoldingStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getHoldingStartTime()J
    .locals 2

    .line 388
    iget-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHoldingStartTime:J

    return-wide v0
.end method

.method public declared-synchronized getImsCall()Lcom/android/ims/a;
    .locals 1

    monitor-enter p0

    .line 766
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNumberPresentation()I
    .locals 1

    .line 728
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    return v0
.end method

.method public getOrigConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrigDialString()Ljava/lang/String;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDialString:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 412
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    return-object v0
.end method

.method public getPreciseDisconnectCause()I
    .locals 1

    .line 819
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPreciseDisconnectCause:I

    return v0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .line 417
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    if-eqz v0, :cond_0

    .line 418
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    return-object v0

    .line 420
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    return-object v0
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 1

    .line 733
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    return-object v0
.end method

.method public getVendorDisconnectCause()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public handleMergeComplete()V
    .locals 2

    const/4 v0, 0x0

    .line 1431
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsMergeInProcess:Z

    const-string v0, "android.telecom.event.MERGE_COMPLETE"

    const/4 v1, 0x0

    .line 1432
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public handleMergeStart()V
    .locals 2

    const/4 v0, 0x1

    .line 1423
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsMergeInProcess:Z

    const-string v0, "android.telecom.event.MERGE_START"

    const/4 v1, 0x0

    .line 1424
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public hangup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 443
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    if-nez v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    return-void

    .line 446
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasRttTextStream()Z
    .locals 1

    .line 1147
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized isConferenceHost()Z
    .locals 1

    monitor-enter p0

    .line 757
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/a;

    invoke-virtual {v0}, Lcom/android/ims/a;->i()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected isEmergency()Z
    .locals 1

    .line 1330
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsEmergency:Z

    return v0
.end method

.method public isMemberOfPeerConference()Z
    .locals 1

    .line 762
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isConferenceHost()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized isMultiparty()Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    monitor-enter p0

    .line 744
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/a;

    invoke-virtual {v0}, Lcom/android/ims/a;->h()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isRttEnabledForCall()Z
    .locals 1

    .line 1151
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsRttEnabledForCall:Z

    return v0
.end method

.method public synthetic lambda$createRttTextHandler$0$ImsPhoneConnection(Ljava/lang/String;)V
    .locals 1

    .line 1172
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1174
    invoke-virtual {v0, p1}, Lcom/android/ims/a;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method onConnectedInOrOut()V
    .locals 3

    .line 552
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConnectTime:J

    .line 553
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConnectTimeReal:J

    const-wide/16 v0, 0x0

    .line 554
    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDuration:J

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConnectedInOrOut: connectTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConnectTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhoneConnection"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsIncoming:Z

    if-nez v0, :cond_0

    .line 562
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    .line 564
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    return-void
.end method

.method public onDisconnect()Z
    .locals 6
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 520
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 523
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnectTime:J

    .line 524
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConnectTimeReal:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDuration:J

    const/4 v0, 0x1

    .line 525
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    .line 527
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    .line 528
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->notifyDisconnect(I)V

    .line 530
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->connectionDisconnected(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Z

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_0
    const-string v0, "ImsPhoneConnection"

    const-string v2, "onDisconnect: no parent"

    .line 533
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :goto_0
    monitor-enter p0

    .line 536
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->tearDown()V

    .line 539
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/a;

    invoke-virtual {v0}, Lcom/android/ims/a;->a()V

    :cond_2
    const/4 v0, 0x0

    .line 540
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/a;

    .line 541
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 543
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    return v1
.end method

.method public onDisconnect(I)Z
    .locals 2

    .line 509
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDisconnect: cause="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhoneConnection"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    .line 511
    :cond_0
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    .line 513
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect()Z

    move-result p1

    return p1
.end method

.method public onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .locals 4

    .line 834
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 839
    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/ims/a;->a([Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 842
    :catch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onDisconnectConferenceParticipant: no session in place. Failed to disconnect endpoint = "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsPhoneConnection"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method onHangupLocal()V
    .locals 1

    const/4 v0, 0x3

    .line 503
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    return-void
.end method

.method public onReceiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1344
    iget-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    if-eqz p1, :cond_1

    .line 1346
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    move-result p1

    .line 1347
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    xor-int v1, p1, v0

    and-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_0

    return-void

    :cond_0
    and-int v2, v1, p1

    not-int v2, v2

    and-int/2addr p1, v2

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    .line 1367
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceiveSessionModifyResponse : received "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1368
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p2

    invoke-static {p2}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " / "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1370
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p2

    invoke-static {p2}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " while paused ; sending new videoState = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1372
    invoke-static {p1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ImsPhoneConnection"

    .line 1367
    invoke-static {p3, p2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setVideoState(I)V

    :cond_1
    return-void
.end method

.method public onRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 2

    .line 1129
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1131
    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->isReceivingRttAudio()Z

    move-result p1

    const-string v1, "android.telecom.extra.IS_RTT_AUDIO_PRESENT"

    .line 1130
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "android.telecom.event.RTT_AUDIO_INDICATION_CHANGED"

    .line 1132
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onRttMessageReceived(Ljava/lang/String;)V
    .locals 2

    .line 1113
    monitor-enter p0

    .line 1114
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    if-nez v0, :cond_1

    const-string v0, "ImsPhoneConnection"

    const-string v1, "onRttMessageReceived: RTT text handler not available. Attempting to create one."

    .line 1115
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    if-nez v0, :cond_0

    const-string p1, "ImsPhoneConnection"

    const-string v0, "onRttMessageReceived: Unable to process incoming message. No textstream available"

    .line 1118
    invoke-static {p1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    monitor-exit p0

    return-void

    .line 1122
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->createRttTextHandler()V

    .line 1124
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1125
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->sendToInCall(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 1124
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method onStartedHolding()V
    .locals 2

    .line 569
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHoldingStartTime:J

    return-void
.end method

.method public pauseVideo(I)V
    .locals 6

    .line 1384
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/b;

    if-nez v0, :cond_0

    return-void

    .line 1388
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    move-result v1

    .line 3514
    iget-object v2, v0, Lcom/android/ims/internal/b;->d:Lcom/android/ims/internal/c;

    invoke-virtual {v2, p1}, Lcom/android/ims/internal/c;->a(I)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 3516
    new-instance p1, Landroid/telecom/VideoProfile;

    invoke-direct {p1, v1}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 3517
    new-instance v3, Landroid/telecom/VideoProfile;

    or-int/lit8 v1, v1, 0x4

    invoke-direct {v3, v1}, Landroid/telecom/VideoProfile;-><init>(I)V

    :try_start_0
    const-string v1, "pauseVideo: fromVideoState=%s, toVideoState=%s"

    const/4 v4, 0x2

    .line 3520
    new-array v4, v4, [Ljava/lang/Object;

    .line 3521
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v5

    invoke-static {v5}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x1

    .line 3522
    invoke-virtual {v3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v5

    invoke-static {v5}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 3520
    invoke-static {v0, v1, v4}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3523
    iget-object v0, v0, Lcom/android/ims/internal/b;->a:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0, p1, v3}, Lcom/android/ims/internal/IImsVideoCallProvider;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 3527
    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "pauseVideo: video already paused"

    invoke-static {v0, v1, p1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public proceedAfterWaitChar()V
    .locals 2

    .line 457
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImsPhoneConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WAIT but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhoneConnection"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 463
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 465
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    return-void
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 3

    .line 470
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    const-string v2, "ImsPhoneConnection"

    if-eq v0, v1, :cond_0

    .line 471
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ImsPhoneConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WILD but was "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 476
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 482
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    const/4 p1, 0x0

    .line 484
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    .line 486
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "proceedAfterWildChar: new postDialString is "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    return-void
.end method

.method releaseWakeLock()V
    .locals 3

    .line 707
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 708
    monitor-enter v0

    .line 709
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ImsPhoneConnection"

    const-string v2, "releaseWakeLock"

    .line 710
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 713
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

.method public resumeVideo(I)V
    .locals 6

    .line 1398
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/b;

    if-nez v0, :cond_0

    return-void

    .line 1402
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    move-result v1

    .line 3539
    iget-object v2, v0, Lcom/android/ims/internal/b;->d:Lcom/android/ims/internal/c;

    invoke-virtual {v2, p1}, Lcom/android/ims/internal/c;->b(I)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 3541
    new-instance p1, Landroid/telecom/VideoProfile;

    invoke-direct {p1, v1}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 3542
    new-instance v3, Landroid/telecom/VideoProfile;

    and-int/lit8 v1, v1, -0x5

    invoke-direct {v3, v1}, Landroid/telecom/VideoProfile;-><init>(I)V

    :try_start_0
    const-string v1, "resumeVideo: fromVideoState=%s, toVideoState=%s"

    const/4 v4, 0x2

    .line 3545
    new-array v4, v4, [Ljava/lang/Object;

    .line 3546
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v5

    invoke-static {v5}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x1

    .line 3547
    invoke-virtual {v3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v5

    invoke-static {v5}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 3545
    invoke-static {v0, v1, v4}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3548
    iget-object v0, v0, Lcom/android/ims/internal/b;->a:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0, p1, v3}, Lcom/android/ims/internal/IImsVideoCallProvider;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 3552
    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "resumeVideo: remaining paused (paused from other sources)"

    invoke-static {v0, v1, p1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public sendRttModifyResponse(Landroid/telecom/Connection$RttTextStream;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1100
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/a;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1103
    invoke-virtual {v1, v0}, Lcom/android/ims/a;->c(Z)V

    if-eqz v0, :cond_1

    .line 1105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setCurrentRttTextStream(Landroid/telecom/Connection$RttTextStream;)V

    return-void

    :cond_1
    const-string p1, "ImsPhoneConnection"

    const-string v0, "sendRttModifyResponse: foreground call has no connections"

    .line 1107
    invoke-static {p1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public separate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 452
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setConferenceConnectTime(J)V
    .locals 0

    .line 854
    iput-wide p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    return-void
.end method

.method public setCurrentRttTextStream(Landroid/telecom/Connection$RttTextStream;)V
    .locals 1

    .line 1137
    monitor-enter p0

    .line 1138
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    .line 1139
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsRttEnabledForCall:Z

    if-eqz p1, :cond_0

    const-string p1, "ImsPhoneConnection"

    const-string v0, "setCurrentRttTextStream: Creating a text handler"

    .line 1140
    invoke-static {p1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->createRttTextHandler()V

    .line 1143
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setDisconnectCause(I)V
    .locals 0

    .line 402
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    return-void
.end method

.method public declared-synchronized setImsCall(Lcom/android/ims/a;)V
    .locals 0

    monitor-enter p0

    .line 770
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setLocalVideoCapable(Z)V
    .locals 1

    .line 1452
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsLocalVideoCapable:Z

    .line 1453
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setLocalVideoCapable: mIsLocalVideoCapable = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsLocalVideoCapable:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "; updating local video availability."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsPhoneConnection"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateMediaCapabilities(Lcom/android/ims/a;)Z

    return-void
.end method

.method public setPreciseDisconnectCause(I)V
    .locals 0

    .line 823
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPreciseDisconnectCause:I

    return-void
.end method

.method public setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    .locals 1

    .line 1318
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Connection;->setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V

    .line 1320
    instance-of v0, p1, Lcom/android/ims/internal/b;

    if-eqz v0, :cond_0

    .line 1321
    check-cast p1, Lcom/android/ims/internal/b;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/b;

    :cond_0
    return-void
.end method

.method public startRtt(Landroid/telecom/Connection$RttTextStream;)V
    .locals 2

    .line 1078
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1080
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ims/a;->b(Z)V

    .line 1081
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setCurrentRttTextStream(Landroid/telecom/Connection$RttTextStream;)V

    :cond_0
    return-void
.end method

.method public startRttTextProcessing()V
    .locals 2

    .line 1155
    monitor-enter p0

    .line 1156
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    if-nez v0, :cond_0

    const-string v0, "ImsPhoneConnection"

    const-string v1, "startRttTextProcessing: no RTT text stream. Ignoring."

    .line 1157
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    monitor-exit p0

    return-void

    .line 1160
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    if-eqz v0, :cond_1

    const-string v0, "ImsPhoneConnection"

    const-string v1, "startRttTextProcessing: RTT text handler already exists"

    .line 1161
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    monitor-exit p0

    return-void

    .line 1164
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->createRttTextHandler()V

    .line 1165
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopRtt()V
    .locals 2

    .line 1089
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ims/a;->b(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ImsPhoneConnection objId: "

    .line 1298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " telecomCallID: "

    .line 1300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1301
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " address: "

    .line 1302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsPhoneConnection"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ImsCall: "

    .line 1304
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1305
    monitor-enter p0

    .line 1306
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/a;

    if-nez v1, :cond_0

    const-string v1, "null"

    .line 1307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1309
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1311
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "]"

    .line 1312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1313
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1311
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public update(Lcom/android/ims/a;Lcom/android/internal/telephony/Call$State;)Z
    .locals 3

    .line 782
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_4

    .line 787
    invoke-virtual {p1}, Lcom/android/ims/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "ImsPhoneConnection"

    const-string/jumbo p2, "update : state is ACTIVE, but call is pending hold, skipping"

    .line 788
    invoke-static {p1, p2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 793
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectedInOrOut()V

    .line 796
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne v0, v2, :cond_5

    .line 801
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 802
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 803
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attach(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    .line 805
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v0, :cond_5

    .line 806
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onStartedHolding()V

    .line 809
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->update(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/a;Lcom/android/internal/telephony/Call$State;)Z

    move-result p2

    .line 810
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateAddressDisplay(Lcom/android/ims/a;)Z

    move-result v0

    .line 811
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateMediaCapabilities(Lcom/android/ims/a;)Z

    move-result v2

    .line 812
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateExtras(Lcom/android/ims/a;)Z

    move-result p1

    if-nez p2, :cond_7

    if-nez v0, :cond_7

    if-nez v2, :cond_7

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    return v1

    :cond_7
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public updateAddressDisplay(Lcom/android/ims/a;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 877
    :cond_0
    invoke-virtual {p1}, Lcom/android/ims/a;->b()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    .line 878
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "oi"

    .line 882
    invoke-virtual {p1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cna"

    .line 883
    invoke-virtual {p1, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "oir"

    .line 885
    invoke-virtual {p1, v4}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v4

    .line 884
    invoke-static {v4}, Landroid/telephony/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result v4

    const-string v5, "cnap"

    .line 887
    invoke-virtual {p1, v5}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result p1

    .line 886
    invoke-static {p1}, Landroid/telephony/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result p1

    .line 889
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "updateAddressDisplay: callId = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " address = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "ImsPhoneConnection"

    .line 890
    invoke-static {v6, v2}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " name = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    invoke-static {v6, v3}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " nump = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " namep = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 889
    invoke-static {v6, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iget-boolean v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsMergeInProcess:Z

    if-nez v5, :cond_5

    .line 902
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAddress:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->equalsBaseDialString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 903
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAddress:Ljava/lang/String;

    move v0, v1

    .line 906
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 907
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v0, ""

    .line 908
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    goto :goto_0

    .line 911
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 912
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    :goto_0
    move v0, v1

    .line 915
    :cond_3
    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    if-eq v2, v4, :cond_4

    .line 916
    iput v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    move v0, v1

    .line 919
    :cond_4
    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    if-eq v2, p1, :cond_5

    .line 920
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    move v0, v1

    :cond_5
    return v0
.end method

.method updateExtras(Lcom/android/ims/a;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1218
    :cond_0
    invoke-virtual {p1}, Lcom/android/ims/a;->b()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1219
    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    const-string v0, "ImsPhoneConnection"

    const-string v1, "Call profile extras are null."

    .line 1221
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 1226
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateImsCallRatFromExtras(Landroid/os/Bundle;)V

    .line 1227
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateEmergencyCallFromExtras(Landroid/os/Bundle;)V

    .line 1228
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    .line 1229
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1230
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setConnectionExtras(Landroid/os/Bundle;)V

    :cond_3
    return v0
.end method

.method public updateMediaCapabilities(Lcom/android/ims/a;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 944
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/android/ims/a;->b()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    const-string v3, "ImsPhoneConnection"

    if-eqz v1, :cond_5

    .line 947
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    move-result v4

    .line 949
    invoke-static {v1}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 958
    invoke-static {v4}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 959
    invoke-static {v5}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 963
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    .line 966
    :cond_1
    iget-boolean v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    if-nez v6, :cond_2

    .line 967
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateVideoState(I)V

    move v0, v2

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "updateMediaCapabilities - ignoring video state change due to paused state."

    .line 970
    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :goto_0
    invoke-static {v4}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 975
    invoke-static {v5}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 979
    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    .line 983
    :cond_3
    iget-object v4, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    if-eqz v4, :cond_5

    .line 984
    iget-object v4, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v4}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsRttEnabledForCall:Z

    .line 986
    iget-boolean v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsRttEnabledForCall:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    if-nez v4, :cond_4

    const-string/jumbo v4, "updateMediaCapabilities -- turning RTT on, profile="

    .line 987
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->startRttTextProcessing()V

    .line 990
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onRttInitiated()V

    :goto_1
    move v0, v2

    goto :goto_2

    .line 992
    :cond_4
    iget-boolean v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsRttEnabledForCall:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    if-eqz v4, :cond_5

    const-string/jumbo v4, "updateMediaCapabilities -- turning RTT off, profile="

    .line 993
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->tearDown()V

    const/4 v1, 0x0

    .line 996
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    .line 997
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onRttTerminated()V

    goto :goto_1

    .line 1005
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getConnectionCapabilities()I

    move-result v1

    .line 1008
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isCarrierDowngradeOfVtCallSupported()Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_6

    .line 1009
    invoke-static {v1, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->addCapability(II)I

    move-result v1

    goto :goto_3

    .line 1013
    :cond_6
    invoke-static {v1, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->removeCapability(II)I

    move-result v1

    .line 1019
    :goto_3
    invoke-virtual {p1}, Lcom/android/ims/a;->c()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    const-string/jumbo v5, "update localCallProfile="

    .line 1020
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_7

    .line 1022
    invoke-direct {p0, v4, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->applyLocalCallCapabilities(Landroid/telephony/ims/ImsCallProfile;I)I

    move-result v1

    .line 1026
    :cond_7
    invoke-virtual {p1}, Lcom/android/ims/a;->d()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v5

    const-string/jumbo v6, "update remoteCallProfile="

    .line 1027
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_8

    .line 1029
    invoke-static {v5, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->applyRemoteCallCapabilities(Landroid/telephony/ims/ImsCallProfile;I)I

    move-result v1

    .line 1031
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getConnectionCapabilities()I

    move-result v6

    if-eq v6, v1, :cond_9

    .line 1032
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setConnectionCapabilities(I)V

    move v0, v2

    .line 1036
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isViLteDataMetered()Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "data is not metered"

    .line 1037
    invoke-static {v3, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1039
    :cond_a
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/b;

    if-eqz v1, :cond_b

    .line 1040
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/b;

    const/4 v3, 0x4

    .line 1041
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->hasCapabilities(I)Z

    move-result v3

    .line 1600
    iput-boolean v3, v1, Lcom/android/ims/internal/b;->g:Z

    :cond_b
    :goto_4
    if-eqz v4, :cond_c

    .line 1046
    iget-object v1, v4, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    iget v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAudioCodec:I

    if-eq v1, v3, :cond_c

    .line 1048
    iget-object v1, v4, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAudioCodec:I

    .line 1049
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/ims/a;->f()Landroid/telephony/ims/ImsCallSession;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeAudioCodecIms(ILandroid/telephony/ims/ImsCallSession;)V

    .line 1053
    :cond_c
    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAudioQualityFromCallProfile(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallProfile;)I

    move-result p1

    .line 1054
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAudioQuality()I

    move-result v1

    if-eq v1, p1, :cond_d

    .line 1055
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setAudioQuality(I)V
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v2

    :catch_0
    :cond_d
    return v0
.end method

.method public wasVideoPausedFromSource(I)Z
    .locals 1

    .line 1412
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/b;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3563
    :cond_0
    iget-object v0, v0, Lcom/android/ims/internal/b;->d:Lcom/android/ims/internal/c;

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/c;->c(I)Z

    move-result p1

    return p1
.end method
