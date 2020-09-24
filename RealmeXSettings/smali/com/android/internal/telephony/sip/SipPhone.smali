.class public Lcom/android/internal/telephony/sip/SipPhone;
.super Lcom/android/internal/telephony/sip/SipPhoneBase;
.source "SipPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;,
        Lcom/android/internal/telephony/sip/SipPhone$SipConnection;,
        Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "SipPhone"

.field private static final TIMEOUT_ANSWER_CALL:I = 0x8

.field private static final TIMEOUT_HOLD_CALL:I = 0xf

.field private static final TIMEOUT_HOLD_PROCESSING:J = 0x3e8L

.field private static final TIMEOUT_MAKE_CALL:I = 0xf

.field private static final VDBG:Z = false


# instance fields
.field private mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

.field private mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

.field private mProfile:Landroid/net/sip/SipProfile;

.field private mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

.field private mSipManager:Landroid/net/sip/SipManager;

.field private mTimeOfLastValidHoldRequest:J


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Landroid/net/sip/SipProfile;)V
    .locals 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SIP:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/sip/SipPhoneBase;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 61
    new-instance p2, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    iput-object p2, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 62
    new-instance p2, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {p2, p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    iput-object p2, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 63
    new-instance p2, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {p2, p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    iput-object p2, p0, Lcom/android/internal/telephony/sip/SipPhone;->mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->mTimeOfLastValidHoldRequest:J

    .line 73
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "new SipPhone: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/sip/SipPhone;->hidePii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 74
    new-instance p2, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {p2, p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    iput-object p2, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 75
    new-instance p2, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {p2, p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    iput-object p2, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 76
    new-instance p2, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {p2, p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    iput-object p2, p0, Lcom/android/internal/telephony/sip/SipPhone;->mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 77
    iput-object p3, p0, Lcom/android/internal/telephony/sip/SipPhone;->mProfile:Landroid/net/sip/SipProfile;

    .line 78
    invoke-static {p1}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone;->mSipManager:Landroid/net/sip/SipManager;

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/sip/SipPhone;)Landroid/net/sip/SipProfile;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mProfile:Landroid/net/sip/SipProfile;

    return-object p0
.end method

.method static synthetic access$1100(Landroid/net/sip/SipAudioCall;)Lcom/android/internal/telephony/Call$State;
    .locals 0

    .line 50
    invoke-static {p0}, Lcom/android/internal/telephony/sip/SipPhone;->getCallStateFrom(Landroid/net/sip/SipAudioCall;)Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/sip/SipPhone;Landroid/net/sip/SipProfile;)Ljava/lang/String;
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->getUriString(Landroid/net/sip/SipProfile;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/sip/SipPhone;)Landroid/net/sip/SipManager;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mSipManager:Landroid/net/sip/SipManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/sip/SipPhone;)Landroid/content/Context;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/Connection;)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->notifyDisconnectP(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method private dialInternal(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 194
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "dialInternal: dialString="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/internal/telephony/sip/SipPhone;->hidePii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone;->clearDisconnected()V

    .line 197
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone;->canDial()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 200
    iget-object p2, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {p2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p2

    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone;->switchHoldingAndActive()V

    .line 203
    :cond_0
    iget-object p2, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {p2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p2

    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v0, :cond_1

    .line 208
    iget-object p2, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setMute(Z)V

    .line 210
    :try_start_0
    iget-object p2, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object p1
    :try_end_0
    .catch Landroid/net/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "dialInternal: "

    .line 213
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/sip/SipPhone;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 214
    new-instance p2, Lcom/android/internal/telephony/CallStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "dial error: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 205
    :cond_1
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    const-string p2, "cannot dial in current state"

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 198
    :cond_2
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    const-string p2, "dialInternal: cannot dial in current state"

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static getCallStateFrom(Landroid/net/sip/SipAudioCall;)Lcom/android/internal/telephony/Call$State;
    .locals 1

    .line 409
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->isOnHold()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    return-object p0

    .line 410
    :cond_0
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->getState()I

    move-result p0

    if-eqz p0, :cond_1

    packed-switch p0, :pswitch_data_0

    .line 420
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "illegal connection state: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/sip/SipPhone;->slog(Ljava/lang/String;)V

    .line 421
    sget-object p0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    return-object p0

    .line 418
    :pswitch_0
    sget-object p0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    return-object p0

    .line 417
    :pswitch_1
    sget-object p0, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    return-object p0

    .line 416
    :pswitch_2
    sget-object p0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    return-object p0

    .line 415
    :pswitch_3
    sget-object p0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    return-object p0

    .line 414
    :pswitch_4
    sget-object p0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    return-object p0

    .line 412
    :cond_1
    sget-object p0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSipDomain(Landroid/net/sip/SipProfile;)Ljava/lang/String;
    .locals 2

    .line 399
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getSipDomain()Ljava/lang/String;

    move-result-object p1

    const-string v0, ":5060"

    .line 401
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 402
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private getUriString(Landroid/net/sip/SipProfile;)Ljava/lang/String;
    .locals 2

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->getSipDomain(Landroid/net/sip/SipProfile;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static hidePii(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "xxxxx"

    return-object p0
.end method

.method private declared-synchronized isHoldTimeoutExpired()Z
    .locals 6

    monitor-enter p0

    .line 426
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 427
    iget-wide v2, p0, Lcom/android/internal/telephony/sip/SipPhone;->mTimeOfLastValidHoldRequest:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 428
    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mTimeOfLastValidHoldRequest:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 429
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 431
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SipPhone"

    .line 435
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SipPhone"

    .line 443
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "SipPhone"

    .line 447
    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static slog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SipPhone"

    .line 439
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public acceptCall(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 152
    const-class p1, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter p1

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 154
    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "acceptCall: throw CallStateException(\"phone not ringing\")"

    .line 161
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 164
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "phone not ringing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const-string v0, "acceptCall: accepting"

    .line 155
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setMute(Z)V

    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->acceptCall()V

    .line 166
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/sip/SipPhoneBase;->activateCellBroadcastSms(ILandroid/os/Message;)V

    return-void
.end method

.method public canConference()Z
    .locals 1

    const-string v0, "canConference: ret=true"

    .line 237
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic canDial()Z
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->canDial()Z

    move-result v0

    return v0
.end method

.method public canTransfer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public clearDisconnected()V
    .locals 2

    .line 277
    const-class v0, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v0

    .line 278
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->clearDisconnected()V

    .line 279
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->clearDisconnected()V

    .line 280
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->clearDisconnected()V

    .line 282
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone;->updatePhoneState()V

    .line 283
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone;->notifyPreciseCallStateChanged()V

    .line 284
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public conference()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 243
    const-class v0, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v0

    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 245
    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    const-string v1, "conference: merge fg & bg"

    .line 250
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone;->mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->merge(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V

    .line 252
    monitor-exit v0

    return-void

    .line 246
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "wrong state to merge calls: fg="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 247
    invoke-virtual {v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", bg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone;->mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 248
    invoke-virtual {v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 252
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public conference(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 256
    const-class v0, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v0

    .line 257
    :try_start_0
    instance-of v1, p1, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    check-cast p1, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->merge(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V

    .line 262
    monitor-exit v0

    return-void

    .line 258
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expect "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", cannot merge with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p1

    .line 262
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 187
    const-class v0, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v0

    .line 188
    :try_start_0
    iget p2, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->videoState:I

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/sip/SipPhone;->dialInternal(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 189
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic disableDataConnectivity()Z
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->disableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic disableLocationUpdates()V
    .locals 0

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->disableLocationUpdates()V

    return-void
.end method

.method public bridge synthetic enableDataConnectivity()Z
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic enableLocationUpdates()V
    .locals 0

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->enableLocationUpdates()V

    return-void
.end method

.method public equals(Lcom/android/internal/telephony/sip/SipPhone;)Z
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone;->getSipUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/sip/SipPhone;->getSipUri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 84
    :cond_0
    instance-of v0, p1, Lcom/android/internal/telephony/sip/SipPhone;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 85
    :cond_1
    check-cast p1, Lcom/android/internal/telephony/sip/SipPhone;

    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v0}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/android/internal/telephony/sip/SipPhone;->mProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public explicitCallTransfer()V
    .locals 0

    return-void
.end method

.method public bridge synthetic getAvailableNetworks(Landroid/os/Message;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getAvailableNetworks(Landroid/os/Message;)V

    return-void
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method public bridge synthetic getCallBarring(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getCallBarring(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    return-void
.end method

.method public bridge synthetic getCallForwardingIndicator()Z
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getCallForwardingIndicator()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getCallForwardingOption(ILandroid/os/Message;)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getCallForwardingOption(ILandroid/os/Message;)V

    return-void
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    .line 334
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 335
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public bridge synthetic getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic getDataActivityState()Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getDataActivityState()Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataRoamingEnabled()Z
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getDeviceId()Ljava/lang/String;
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeviceSvn()Ljava/lang/String;
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEsn()Ljava/lang/String;
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method public bridge synthetic getGroupIdLevel1()Ljava/lang/String;
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGroupIdLevel2()Ljava/lang/String;
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getGroupIdLevel2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccRecordsLoaded()Z
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getIccRecordsLoaded()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImei()Ljava/lang/String;
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLine1Number()Ljava/lang/String;
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMeid()Ljava/lang/String;
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMessageWaitingIndicator()Z
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getMessageWaitingIndicator()Z

    move-result v0

    return v0
.end method

.method public getMute()Z
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getMute()Z

    move-result v0

    return v0

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getMute()Z

    move-result v0

    return v0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    .line 319
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 320
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public bridge synthetic getPendingMmiCodes()Ljava/util/List;
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPhoneType()I
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .line 390
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method public getSipUri()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v0}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSubscriberId()Ljava/lang/String;
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic handlePinMmi(Ljava/lang/String;)Z
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->handlePinMmi(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic handleUssdRequest(Ljava/lang/String;Landroid/os/ResultReceiver;)Z
    .locals 0

    .line 50
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/sip/SipPhoneBase;->handleUssdRequest(Ljava/lang/String;Landroid/os/ResultReceiver;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isDataAllowed(I)Z
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->isDataAllowed(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isUserDataEnabled()Z
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->isUserDataEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isVideoEnabled()Z
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->isVideoEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic needsOtaServiceProvisioning()Z
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic notifyCallForwardingIndicator()V
    .locals 0

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->notifyCallForwardingIndicator()V

    return-void
.end method

.method public bridge synthetic registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/sip/SipPhoneBase;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/sip/SipPhoneBase;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public rejectCall()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 171
    const-class v0, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v0

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "rejectCall: rejecting"

    .line 173
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->rejectCall()V

    .line 182
    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "rejectCall: throw CallStateException(\"phone not ringing\")"

    .line 177
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 180
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "phone not ringing"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 182
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic saveClirSetting(I)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->saveClirSetting(I)V

    return-void
.end method

.method public bridge synthetic selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;ZLandroid/os/Message;)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/sip/SipPhoneBase;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;ZLandroid/os/Message;)V

    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;)V
    .locals 0

    const-string p1, "sendBurstDtmf() is a CDMA method"

    .line 313
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public sendDtmf(C)V
    .locals 2

    .line 289
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendDtmf called with invalid character \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    const-class v0, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v0

    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->sendDtmf(C)V

    .line 294
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-void
.end method

.method public bridge synthetic sendEmergencyCallStateChange(Z)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->sendEmergencyCallStateChange(Z)V

    return-void
.end method

.method public bridge synthetic sendUssdResponse(Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->sendUssdResponse(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setBroadcastEmergencyCallStateChanges(Z)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setBroadcastEmergencyCallStateChanges(Z)V

    return-void
.end method

.method public bridge synthetic setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V
    .locals 0

    .line 50
    invoke-super/range {p0 .. p5}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V

    return-void
.end method

.method public bridge synthetic setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 0

    .line 50
    invoke-super/range {p0 .. p5}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 0

    const-string p1, "call waiting not supported"

    .line 341
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic setDataRoamingEnabled(Z)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setDataRoamingEnabled(Z)V

    return-void
.end method

.method public setEchoSuppressionEnabled()V
    .locals 3

    .line 348
    const-class v0, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v0

    .line 349
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const-string v2, "ec_supported"

    .line 350
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    .line 351
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setAudioGroupMode()V

    .line 354
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 0

    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public setMute(Z)V
    .locals 2

    .line 359
    const-class v0, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v0

    .line 360
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setMute(Z)V

    .line 361
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 0

    const/4 p1, 0x0

    .line 327
    invoke-static {p2, p1, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 328
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public bridge synthetic setRadioPower(Z)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setRadioPower(Z)V

    return-void
.end method

.method public bridge synthetic setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public startDtmf(C)V
    .locals 2

    .line 300
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startDtmf called with invalid character \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 303
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->sendDtmf(C)V

    return-void
.end method

.method public bridge synthetic startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/sip/SipPhoneBase;->startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic startRingbackTone()V
    .locals 0

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->startRingbackTone()V

    return-void
.end method

.method public stopDtmf()V
    .locals 0

    return-void
.end method

.method public bridge synthetic stopNetworkScan(Landroid/os/Message;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->stopNetworkScan(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic stopRingbackTone()V
    .locals 0

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->stopRingbackTone()V

    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 222
    invoke-direct {p0}, Lcom/android/internal/telephony/sip/SipPhone;->isHoldTimeoutExpired()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "switchHoldingAndActive: Disregarded! Under 1000 ms..."

    .line 223
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "switchHoldingAndActive: switch fg and bg"

    .line 227
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 228
    const-class v0, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v0

    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone;->mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->switchWith(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V

    .line 230
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->hold()V

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->unhold()V

    .line 232
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public takeIncomingCall(Ljava/lang/Object;)Lcom/android/internal/telephony/Connection;
    .locals 4

    .line 101
    const-class v0, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v0

    .line 102
    :try_start_0
    instance-of v1, p1, Landroid/net/sip/SipAudioCall;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string/jumbo p1, "takeIncomingCall: ret=null, not a SipAudioCall"

    .line 103
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 104
    monitor-exit v0

    return-object v2

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo p1, "takeIncomingCall: ret=null, ringingCall not alive"

    .line 107
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 108
    monitor-exit v0

    return-object v2

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 114
    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo p1, "takeIncomingCall: ret=null, foreground and background both alive"

    .line 116
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 118
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 122
    :cond_2
    :try_start_1
    check-cast p1, Landroid/net/sip/SipAudioCall;

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "takeIncomingCall: taking call from: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Landroid/net/sip/SipAudioCall;->getPeerProfile()Landroid/net/sip/SipProfile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/sip/SipPhone;->hidePii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Landroid/net/sip/SipAudioCall;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    .line 126
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone;->mProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v3}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 127
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    .line 128
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v3, p1, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->initIncomingCall(Landroid/net/sip/SipAudioCall;Z)Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    move-result-object v1

    .line 130
    invoke-virtual {p1}, Landroid/net/sip/SipAudioCall;->getState()I

    move-result p1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_3

    const-string p1, "    takeIncomingCall: call cancelled !!"

    .line 132
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 133
    iget-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->reset()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    .line 136
    :cond_3
    :try_start_2
    monitor-exit v0

    return-object v1

    :catch_0
    move-exception p1

    const-string v1, "    takeIncomingCall: exception e="

    .line 142
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 143
    iget-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->reset()V

    :cond_4
    const-string/jumbo p1, "takeIncomingCall: NOT taking !!"

    .line 145
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 146
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    .line 147
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public bridge synthetic unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->unregisterForRingbackTone(Landroid/os/Handler;)V

    return-void
.end method

.method public bridge synthetic unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    return-void
.end method

.method public bridge synthetic updateServiceLocation()V
    .locals 0

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->updateServiceLocation()V

    return-void
.end method
