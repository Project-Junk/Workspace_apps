.class public Lcom/android/internal/telephony/CellularNetworkValidator;
.super Ljava/lang/Object;
.source "CellularNetworkValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CellularNetworkValidator$ConnectivityNetworkCallback;,
        Lcom/android/internal/telephony/CellularNetworkValidator$ValidationCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NetworkValidator"

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_VALIDATED:I = 0x2

.field private static final STATE_VALIDATING:I = 0x1

.field private static sInstance:Lcom/android/internal/telephony/CellularNetworkValidator;


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mNetworkCallback:Lcom/android/internal/telephony/CellularNetworkValidator$ConnectivityNetworkCallback;

.field private mNetworkRequest:Landroid/net/NetworkRequest;

.field private mReleaseAfterValidation:Z

.field private mState:I

.field private mSubId:I

.field private mTimeoutInMs:I

.field private mValidationCallback:Lcom/android/internal/telephony/CellularNetworkValidator$ValidationCallback;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mState:I

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mHandler:Landroid/os/Handler;

    .line 103
    iput-object p1, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mContext:Landroid/content/Context;

    .line 104
    iget-object p1, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 105
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/android/internal/telephony/CellularNetworkValidator;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/CellularNetworkValidator;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mSubId:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/CellularNetworkValidator;ZI)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CellularNetworkValidator;->reportValidationResult(ZI)V

    return-void
.end method

.method private createNetworkRequest()Landroid/net/NetworkRequest;
    .locals 2

    .line 171
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    .line 172
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 173
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mSubId:I

    .line 174
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/CellularNetworkValidator;
    .locals 1

    .line 91
    sget-object v0, Lcom/android/internal/telephony/CellularNetworkValidator;->sInstance:Lcom/android/internal/telephony/CellularNetworkValidator;

    return-object v0
.end method

.method public static isValidationFeatureSupported()Z
    .locals 1

    .line 98
    invoke-static {}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getInstance()Lcom/android/internal/telephony/PhoneConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getCurrentPhoneCapability()Landroid/telephony/PhoneCapability;

    move-result-object v0

    iget-boolean v0, v0, Landroid/telephony/PhoneCapability;->validationBeforeSwitchSupported:Z

    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "NetworkValidator"

    .line 248
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static make(Landroid/content/Context;)Lcom/android/internal/telephony/CellularNetworkValidator;
    .locals 1

    .line 78
    sget-object v0, Lcom/android/internal/telephony/CellularNetworkValidator;->sInstance:Lcom/android/internal/telephony/CellularNetworkValidator;

    if-eqz v0, :cond_0

    const-string p0, "createCellularNetworkValidator failed. Instance already exists."

    .line 79
    invoke-static {p0}, Lcom/android/internal/telephony/CellularNetworkValidator;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CellularNetworkValidator;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CellularNetworkValidator;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/CellularNetworkValidator;->sInstance:Lcom/android/internal/telephony/CellularNetworkValidator;

    .line 84
    :goto_0
    sget-object p0, Lcom/android/internal/telephony/CellularNetworkValidator;->sInstance:Lcom/android/internal/telephony/CellularNetworkValidator;

    return-object p0
.end method

.method private declared-synchronized reportValidationResult(ZI)V
    .locals 2

    monitor-enter p0

    .line 180
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mSubId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p2, :cond_0

    monitor-exit p0

    return-void

    .line 184
    :cond_0
    :try_start_1
    iget p2, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mState:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 185
    iget-object p2, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mValidationCallback:Lcom/android/internal/telephony/CellularNetworkValidator$ValidationCallback;

    iget v0, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mSubId:I

    invoke-interface {p2, p1, v0}, Lcom/android/internal/telephony/CellularNetworkValidator$ValidationCallback;->onValidationResult(ZI)V

    .line 186
    iget-boolean p2, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mReleaseAfterValidation:Z

    const/4 v0, 0x2

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 187
    iput v0, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mState:I

    goto :goto_0

    .line 189
    :cond_1
    iget-object p2, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mNetworkCallback:Lcom/android/internal/telephony/CellularNetworkValidator$ConnectivityNetworkCallback;

    invoke-virtual {p2, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 p2, 0x0

    .line 190
    iput p2, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mState:I

    .line 193
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object p2

    if-eqz p1, :cond_2

    const/4 v0, 0x3

    :cond_2
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeNetworkValidate(I)V

    :cond_3
    const/4 p1, -0x1

    .line 198
    iput p1, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mSubId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized getSubIdInValidation()I
    .locals 1

    monitor-enter p0

    .line 160
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mSubId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isValidating()Z
    .locals 1

    monitor-enter p0

    .line 167
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mState:I
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

.method public declared-synchronized stopValidation()V
    .locals 2

    monitor-enter p0

    .line 147
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CellularNetworkValidator;->isValidating()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "No need to stop validation."

    .line 148
    invoke-static {v0}, Lcom/android/internal/telephony/CellularNetworkValidator;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mNetworkCallback:Lcom/android/internal/telephony/CellularNetworkValidator$ConnectivityNetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    .line 151
    iput v0, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mState:I

    :goto_0
    const/4 v0, -0x1

    .line 153
    iput v0, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mSubId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized validate(IIZLcom/android/internal/telephony/CellularNetworkValidator$ValidationCallback;)V
    .locals 1

    monitor-enter p0

    .line 114
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mSubId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    monitor-exit p0

    return-void

    .line 116
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p2, "Failed to start validation. Inactive subId "

    .line 118
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/telephony/CellularNetworkValidator;->logd(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 119
    invoke-interface {p4, p2, p1}, Lcom/android/internal/telephony/CellularNetworkValidator$ValidationCallback;->onValidationResult(ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    .line 123
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/CellularNetworkValidator;->isValidating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {p0}, Lcom/android/internal/telephony/CellularNetworkValidator;->stopValidation()V

    :cond_2
    const/4 v0, 0x1

    .line 127
    iput v0, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mState:I

    .line 128
    iput p1, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mSubId:I

    .line 129
    iput p2, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mTimeoutInMs:I

    .line 130
    iput-object p4, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mValidationCallback:Lcom/android/internal/telephony/CellularNetworkValidator$ValidationCallback;

    .line 131
    iput-boolean p3, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mReleaseAfterValidation:Z

    .line 132
    invoke-direct {p0}, Lcom/android/internal/telephony/CellularNetworkValidator;->createNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 134
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Start validating subId "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mSubId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " mTimeoutInMs "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mTimeoutInMs:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " mReleaseAfterValidation "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mReleaseAfterValidation:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/telephony/CellularNetworkValidator;->logd(Ljava/lang/String;)V

    .line 137
    new-instance p2, Lcom/android/internal/telephony/CellularNetworkValidator$ConnectivityNetworkCallback;

    invoke-direct {p2, p0, p1}, Lcom/android/internal/telephony/CellularNetworkValidator$ConnectivityNetworkCallback;-><init>(Lcom/android/internal/telephony/CellularNetworkValidator;I)V

    iput-object p2, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mNetworkCallback:Lcom/android/internal/telephony/CellularNetworkValidator$ConnectivityNetworkCallback;

    .line 139
    iget-object p1, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p2, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object p3, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mNetworkCallback:Lcom/android/internal/telephony/CellularNetworkValidator$ConnectivityNetworkCallback;

    iget-object p4, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mHandler:Landroid/os/Handler;

    iget v0, p0, Lcom/android/internal/telephony/CellularNetworkValidator;->mTimeoutInMs:I

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
