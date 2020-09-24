.class public Lcom/android/internal/telephony/ImsSmsDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "ImsSmsDispatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsSmsDispacher"


# instance fields
.field private mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

.field private final mImsManagerConnector:Lcom/android/ims/e$a;

.field private final mImsSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

.field private volatile mIsImsServiceUp:Z

.field private volatile mIsRegistered:Z

.field private volatile mIsSmsCapable:Z

.field private final mLock:Ljava/lang/Object;

.field private mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field public mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

.field public mTrackers:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;)V
    .locals 2

    .line 220
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;)V

    .line 58
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    .line 60
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 62
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mLock:Ljava/lang/Object;

    .line 68
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 74
    new-instance p1, Lcom/android/internal/telephony/ImsSmsDispatcher$1;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/ImsSmsDispatcher$1;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V

    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    .line 103
    new-instance p1, Lcom/android/internal/telephony/ImsSmsDispatcher$2;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/ImsSmsDispatcher$2;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V

    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    .line 115
    new-instance p1, Lcom/android/internal/telephony/ImsSmsDispatcher$3;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/ImsSmsDispatcher$3;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V

    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mImsSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 222
    new-instance p1, Lcom/android/ims/e$a;

    iget-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    new-instance v1, Lcom/android/internal/telephony/ImsSmsDispatcher$4;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ImsSmsDispatcher$4;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V

    invoke-direct {p1, p2, v0, v1}, Lcom/android/ims/e$a;-><init>(Landroid/content/Context;ILcom/android/ims/e$a$a;)V

    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mImsManagerConnector:Lcom/android/ims/e$a;

    .line 241
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mImsManagerConnector:Lcom/android/ims/e$a;

    invoke-virtual {p1}, Lcom/android/ims/e$a;->a()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/lang/Object;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsRegistered:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsSmsCapable:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/ImsSmsDispatcher;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/ImsSmsDispatcher;)Lcom/android/ims/e;
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/e;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/ImsSmsDispatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->setListeners()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsImsServiceUp:Z

    return p1
.end method

.method private getImsManager()Lcom/android/ims/e;
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/ims/e;->a(Landroid/content/Context;I)Lcom/android/ims/e;

    move-result-object v0

    return-object v0
.end method

.method private isEmergencySmsPossible()Z
    .locals 1

    .line 263
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isLteService()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isLimitedLteService()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isLimitedLteService()Z
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 259
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isLteService()Z
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 253
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setListeners()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 245
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/e;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    invoke-virtual {v0, v1}, Lcom/android/ims/e;->a(Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;)V

    .line 246
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/e;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    invoke-virtual {v0, v1}, Lcom/android/ims/e;->a(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;)V

    .line 247
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getSmsListener()Landroid/telephony/ims/aidl/IImsSmsListener;

    move-result-object v1

    const/16 v2, 0x6a

    .line 3615
    :try_start_0
    iget-object v0, v0, Lcom/android/ims/e;->e:Lcom/android/ims/h;

    invoke-virtual {v0, v1}, Lcom/android/ims/h;->a(Landroid/telephony/ims/aidl/IImsSmsListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 248
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/e;

    move-result-object v0

    .line 3624
    :try_start_1
    iget-object v0, v0, Lcom/android/ims/e;->e:Lcom/android/ims/h;

    invoke-virtual {v0}, Lcom/android/ims/h;->h()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3626
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "onSmsReady()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    :catch_1
    move-exception v0

    .line 3617
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "setSmsListener()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method


# virtual methods
.method protected calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1

    .line 337
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isCdmaMo()Z

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->calculateLength(ZLjava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p1

    return-object p1
.end method

.method public fallbackToPstn(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 394
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/SmsDispatchersController;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 395
    iget-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 3

    .line 306
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/e;->y()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to get sms format. Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSmsDispacher"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "unknown"

    return-object v0
.end method

.method public getSmsListener()Landroid/telephony/ims/aidl/IImsSmsListener;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mImsSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    return-object v0
.end method

.method protected getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .locals 6

    .line 331
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isCdmaMo()Z

    move-result v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPdu(ZLjava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object p1

    return-object p1
.end method

.method protected getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;II)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .locals 8

    .line 324
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isCdmaMo()Z

    move-result v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPdu(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;II)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object p1

    return-object p1
.end method

.method public isAvailable()Z
    .locals 4

    .line 296
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "ImsSmsDispacher"

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isAvailable: up="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsImsServiceUp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", reg= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", cap= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsSmsCapable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-boolean v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsImsServiceUp:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsRegistered:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsSmsCapable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 300
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected isCdmaMo()Z
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEmergencySmsSupport(Ljava/lang/String;)Z
    .locals 6

    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ImsSmsDispacher"

    if-nez v0, :cond_0

    .line 270
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Emergency Sms is not supported for: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "carrier_config"

    .line 274
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-nez v0, :cond_1

    const-string p1, "configManager is null"

    .line 276
    invoke-static {v2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 279
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getSubId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p1, "PersistableBundle is null"

    .line 281
    invoke-static {v2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-string v3, "support_emergency_sms_over_ims_bool"

    .line 284
    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 286
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isEmergencySmsPossible()Z

    move-result v3

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isEmergencySmsSupport emergencySmsCarrierSupport: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " destAddr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mIsImsServiceUp: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsImsServiceUp:Z

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " lteOrLimitedLte: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    .line 291
    iget-boolean p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsImsServiceUp:Z

    if-eqz p1, :cond_3

    if-eqz v3, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 13

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendSms:  mRetryCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mMessageRef="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " SS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 345
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSmsDispacher"

    .line 342
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 349
    iput-boolean v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUsesImsServiceForIms:Z

    .line 351
    invoke-virtual {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "pdu"

    .line 353
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, [B

    const-string v3, "smsc"

    .line 354
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 355
    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    const/4 v4, 0x0

    if-lez v3, :cond_0

    move v9, v0

    goto :goto_0

    :cond_0
    move v9, v4

    .line 356
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v3

    const-string v5, "3gpp"

    .line 358
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v11, 0x4

    if-eqz v5, :cond_1

    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-lez v5, :cond_1

    .line 362
    aget-byte v5, v10, v4

    and-int/2addr v5, v0

    if-ne v5, v0, :cond_1

    .line 363
    aget-byte v5, v10, v4

    or-int/2addr v5, v11

    int-to-byte v5, v5

    aput-byte v5, v10, v4

    .line 364
    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    int-to-byte v4, v4

    aput-byte v4, v10, v0

    .line 368
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v12

    .line 369
    iget-object v4, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/e;

    move-result-object v4

    iget v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    if-eqz v2, :cond_2

    .line 375
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v8, v5

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    move-object v8, v2

    .line 4580
    :goto_1
    :try_start_1
    iget-object v4, v4, Lcom/android/ims/e;->e:Lcom/android/ims/h;

    move v5, v12

    move-object v7, v3

    invoke-virtual/range {v4 .. v10}, Lcom/android/ims/h;->a(IILjava/lang/String;Ljava/lang/String;Z[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 378
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v4, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual {v2, v4, v3, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeImsServiceSendSms(ILjava/lang/String;I)V

    return-void

    :catch_0
    move-exception v0

    .line 4582
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v4, "sendSms()"

    const/16 v5, 0x6a

    invoke-direct {v2, v4, v0, v5}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
    :try_end_2
    .catch Lcom/android/ims/ImsException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "sendSms failed. Falling back to PSTN. Error: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {p0, v12, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->fallbackToPstn(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 383
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1, v0, v3, v11}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeImsServiceSendSms(ILjava/lang/String;I)V

    return-void
.end method

.method protected shouldBlockSmsForEcbm()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
