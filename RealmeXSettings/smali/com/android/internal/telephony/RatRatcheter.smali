.class public Lcom/android/internal/telephony/RatRatcheter;
.super Ljava/lang/Object;
.source "RatRatcheter.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RilRatcheter"


# instance fields
.field private mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mDataRatchetEnabled:Z

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private final mRatFamilyMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceRatchetEnabled:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 7

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/android/internal/telephony/RatRatcheter;->mVoiceRatchetEnabled:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/internal/telephony/RatRatcheter;->mDataRatchetEnabled:Z

    .line 163
    new-instance v0, Lcom/android/internal/telephony/RatRatcheter$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/RatRatcheter$1;-><init>(Lcom/android/internal/telephony/RatRatcheter;)V

    iput-object v0, p0, Lcom/android/internal/telephony/RatRatcheter;->mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    iput-object p1, p0, Lcom/android/internal/telephony/RatRatcheter;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 82
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 83
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/RatRatcheter;->mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 86
    invoke-direct {p0}, Lcom/android/internal/telephony/RatRatcheter;->resetRatFamilyMap()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/RatRatcheter;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/internal/telephony/RatRatcheter;->resetRatFamilyMap()V

    return-void
.end method

.method private isSameRatFamily(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Z
    .locals 4

    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 156
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return v3

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    monitor-exit v0

    return v2

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    .line 159
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    move v2, v3

    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 160
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private ratchetRat(II)I
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseIntArray;

    if-nez v1, :cond_0

    .line 92
    monitor-exit v0

    return p2

    .line 94
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseIntArray;

    if-eq v2, v1, :cond_1

    .line 95
    monitor-exit v0

    return p2

    :cond_1
    const/4 v1, -0x1

    .line 98
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 99
    invoke-virtual {v2, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-le v3, v1, :cond_2

    goto :goto_0

    :cond_2
    move p1, p2

    .line 100
    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 101
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private resetRatFamilyMap()V
    .locals 13

    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 177
    iget-object v1, p0, Lcom/android/internal/telephony/RatRatcheter;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 178
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    if-nez v1, :cond_0

    .line 179
    monitor-exit v0

    return-void

    .line 180
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    if-nez v1, :cond_1

    .line 181
    monitor-exit v0

    return-void

    :cond_1
    const-string v2, "ratchet_rat_families"

    .line 188
    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 189
    monitor-exit v0

    return-void

    .line 190
    :cond_2
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v5, v1, v4

    const-string v6, ","

    .line 191
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 192
    array-length v6, v5

    const/4 v7, 0x2

    if-lt v6, v7, :cond_4

    .line 193
    new-instance v6, Landroid/util/SparseIntArray;

    array-length v7, v5

    invoke-direct {v6, v7}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 195
    array-length v7, v5

    move v8, v3

    move v9, v8

    :goto_1
    if-ge v8, v7, :cond_4

    aget-object v10, v5, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    :try_start_2
    iget-object v12, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_3

    const-string v5, "RilRatcheter"

    const-string v6, "RAT listed twice: "

    .line 204
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    add-int/lit8 v10, v9, 0x1

    .line 207
    invoke-virtual {v6, v11, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 208
    iget-object v9, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    invoke-virtual {v9, v11, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    move v9, v10

    goto :goto_1

    :catch_0
    const-string v5, "RilRatcheter"

    const-string v6, "NumberFormatException on "

    .line 200
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 211
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static updateBandwidths([ILandroid/telephony/ServiceState;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 67
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCellBandwidths()[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->sum()I

    move-result v1

    .line 68
    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->sum()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 71
    invoke-virtual {p1, p0}, Landroid/telephony/ServiceState;->setCellBandwidths([I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method


# virtual methods
.method public ratchet(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;Z)V
    .locals 3

    if-nez p3, :cond_0

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RatRatcheter;->isSameRatFamily(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCellBandwidths()[I

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/internal/telephony/RatRatcheter;->updateBandwidths([ILandroid/telephony/ServiceState;)Z

    :cond_0
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 111
    iput-boolean v0, p0, Lcom/android/internal/telephony/RatRatcheter;->mVoiceRatchetEnabled:Z

    .line 112
    iput-boolean v0, p0, Lcom/android/internal/telephony/RatRatcheter;->mDataRatchetEnabled:Z

    return-void

    .line 116
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result p3

    const/4 v1, 0x1

    if-nez p3, :cond_2

    .line 117
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result p3

    if-nez p3, :cond_2

    .line 118
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getCellBandwidths()[I

    move-result-object p3

    array-length p3, p3

    if-le p3, v1, :cond_3

    :cond_2
    move v0, v1

    .line 119
    :cond_3
    iget-boolean p3, p0, Lcom/android/internal/telephony/RatRatcheter;->mVoiceRatchetEnabled:Z

    if-eqz p3, :cond_4

    .line 120
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result p3

    .line 121
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    .line 120
    invoke-direct {p0, p3, v2}, Lcom/android/internal/telephony/RatRatcheter;->ratchetRat(II)I

    move-result p3

    .line 122
    invoke-virtual {p2, v1, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 126
    invoke-static {p3}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result p3

    .line 125
    invoke-virtual {v2, p3}, Landroid/telephony/NetworkRegistrationInfo;->setAccessNetworkTechnology(I)V

    .line 127
    invoke-virtual {p2, v2}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    goto :goto_0

    .line 129
    :cond_4
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result p3

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    if-eq p3, v2, :cond_5

    .line 131
    iput-boolean v1, p0, Lcom/android/internal/telephony/RatRatcheter;->mVoiceRatchetEnabled:Z

    .line 134
    :cond_5
    :goto_0
    iget-boolean p3, p0, Lcom/android/internal/telephony/RatRatcheter;->mDataRatchetEnabled:Z

    if-eqz p3, :cond_6

    .line 135
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result p1

    .line 136
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result p3

    .line 135
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/RatRatcheter;->ratchetRat(II)I

    move-result p1

    const/4 p3, 0x2

    .line 137
    invoke-virtual {p2, p3, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 141
    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result p1

    .line 140
    invoke-virtual {p3, p1}, Landroid/telephony/NetworkRegistrationInfo;->setAccessNetworkTechnology(I)V

    .line 142
    invoke-virtual {p2, p3}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    goto :goto_1

    .line 144
    :cond_6
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result p1

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result p3

    if-eq p1, p3, :cond_7

    .line 146
    iput-boolean v1, p0, Lcom/android/internal/telephony/RatRatcheter;->mDataRatchetEnabled:Z

    .line 149
    :cond_7
    :goto_1
    invoke-virtual {p2, v0}, Landroid/telephony/ServiceState;->setIsUsingCarrierAggregation(Z)V

    return-void
.end method
