.class public Lcom/android/internal/telephony/IccCard;
.super Ljava/lang/Object;
.source "IccCard.java"


# instance fields
.field private mIccCardState:Lcom/android/internal/telephony/IccCardConstants$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardState:Lcom/android/internal/telephony/IccCardConstants$State;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 54
    iput-object p1, p0, Lcom/android/internal/telephony/IccCard;->mIccCardState:Lcom/android/internal/telephony/IccCardConstants$State;

    return-void
.end method

.method private sendMessageWithCardAbsentException(Landroid/os/Message;)V
    .locals 3

    .line 293
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 294
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No valid IccCard"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 295
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 232
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccCard;->sendMessageWithCardAbsentException(Landroid/os/Message;)V

    return-void
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 216
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccCard;->sendMessageWithCardAbsentException(Landroid/os/Message;)V

    return-void
.end method

.method public getIccFdnAvailable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIccFdnEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIccLockEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIccPin2Blocked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIccPuk2Blocked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardState:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method

.method public hasIccCard()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isEmptyProfile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    return-void
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 200
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccCard;->sendMessageWithCardAbsentException(Landroid/os/Message;)V

    return-void
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 184
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccCard;->sendMessageWithCardAbsentException(Landroid/os/Message;)V

    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 137
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/IccCard;->sendMessageWithCardAbsentException(Landroid/os/Message;)V

    return-void
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 107
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/IccCard;->sendMessageWithCardAbsentException(Landroid/os/Message;)V

    return-void
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 122
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/IccCard;->sendMessageWithCardAbsentException(Landroid/os/Message;)V

    return-void
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 115
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccCard;->sendMessageWithCardAbsentException(Landroid/os/Message;)V

    return-void
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 129
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccCard;->sendMessageWithCardAbsentException(Landroid/os/Message;)V

    return-void
.end method

.method public unregisterForNetworkLocked(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method
