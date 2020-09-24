.class abstract Lcom/android/internal/telephony/sip/SipConnectionBase;
.super Lcom/android/internal/telephony/Connection;
.source "SipConnectionBase.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "SipConnBase"

.field private static final VDBG:Z = false


# instance fields
.field private mConnectTime:J

.field private mConnectTimeReal:J

.field private mCreateTime:J

.field private mDisconnectTime:J

.field private mDuration:J

.field private mHoldingStartTime:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    .line 54
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Connection;-><init>(I)V

    const-wide/16 v0, -0x1

    .line 49
    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mDuration:J

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SipConnectionBase: ctor dialString="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/internal/telephony/sip/SipPhone;->hidePii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->log(Ljava/lang/String;)V

    .line 56
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mPostDialString:Ljava/lang/String;

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mCreateTime:J

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SipConnBase"

    .line 156
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public cancelPostDial()V
    .locals 1

    const-string v0, "cancelPostDial: ignore"

    .line 150
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->log(Ljava/lang/String;)V

    return-void
.end method

.method public getConnectTime()J
    .locals 2

    .line 92
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mConnectTime:J

    return-wide v0
.end method

.method public getConnectTimeReal()J
    .locals 2

    .line 185
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mConnectTimeReal:J

    return-wide v0
.end method

.method public getCreateTime()J
    .locals 2

    .line 86
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mCreateTime:J

    return-wide v0
.end method

.method public getDisconnectTime()J
    .locals 2

    .line 98
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mDisconnectTime:J

    return-wide v0
.end method

.method public getDurationMillis()J
    .locals 4

    .line 104
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mConnectTimeReal:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mDuration:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mConnectTimeReal:J

    sub-long v2, v0, v2

    goto :goto_0

    :cond_1
    move-wide v2, v0

    :goto_0
    return-wide v2
.end method

.method public getHoldDurationMillis()J
    .locals 4

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 122
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mHoldingStartTime:J

    sub-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public getHoldingStartTime()J
    .locals 2

    .line 180
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mHoldingStartTime:J

    return-wide v0
.end method

.method public getNumberPresentation()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getOrigConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getPhone()Lcom/android/internal/telephony/Phone;
.end method

.method public getPreciseDisconnectCause()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVendorDisconnectCause()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isMultiparty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public proceedAfterWaitChar()V
    .locals 1

    const-string v0, "proceedAfterWaitChar: ignore"

    .line 140
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->log(Ljava/lang/String;)V

    return-void
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 0

    const-string p1, "proceedAfterWildChar: ignore"

    .line 145
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipConnectionBase;->log(Ljava/lang/String;)V

    return-void
.end method

.method setDisconnectCause(I)V
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setDisconnectCause: prev="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " new="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->log(Ljava/lang/String;)V

    .line 130
    iput p1, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mCause:I

    return-void
.end method

.method protected setState(Lcom/android/internal/telephony/Call$State;)V
    .locals 4

    .line 62
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setState: state="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->log(Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/android/internal/telephony/sip/SipConnectionBase$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mHoldingStartTime:J

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipConnectionBase;->getDurationMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mDuration:J

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mDisconnectTime:J

    return-void

    .line 65
    :cond_2
    iget-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mConnectTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mConnectTimeReal:J

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/sip/SipConnectionBase;->mConnectTime:J

    :cond_3
    :goto_0
    return-void
.end method
