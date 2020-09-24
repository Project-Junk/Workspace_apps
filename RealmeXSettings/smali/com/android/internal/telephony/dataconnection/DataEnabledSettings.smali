.class public Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;
.super Ljava/lang/Object;
.source "DataEnabledSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DataEnabledSettings$DataEnabledChangedReason;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DataEnabledSettings"

.field public static final REASON_DATA_ENABLED_BY_CARRIER:I = 0x4

.field public static final REASON_INTERNAL_DATA_ENABLED:I = 0x1

.field public static final REASON_POLICY_DATA_ENABLED:I = 0x3

.field public static final REASON_PROVISIONED_CHANGED:I = 0x5

.field public static final REASON_PROVISIONING_DATA_ENABLED_CHANGED:I = 0x6

.field public static final REASON_REGISTERED:I = 0x0

.field public static final REASON_USER_DATA_ENABLED:I = 0x2


# instance fields
.field private mCarrierDataEnabled:Z

.field private mInternalDataEnabled:Z

.field private mIsDataEnabled:Z

.field private final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private final mOverallDataEnabledChangedRegistrants:Landroid/os/RegistrantList;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private mPolicyDataEnabled:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private final mSettingChangeLocalLog:Landroid/util/LocalLog;

.field private mSubId:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 2

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mInternalDataEnabled:Z

    .line 91
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPolicyDataEnabled:Z

    .line 97
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mCarrierDataEnabled:Z

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mIsDataEnabled:Z

    const/4 v0, -0x1

    .line 103
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mSubId:I

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mResolver:Landroid/content/ContentResolver;

    .line 107
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mOverallDataEnabledChangedRegistrants:Landroid/os/RegistrantList;

    .line 109
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mSettingChangeLocalLog:Landroid/util/LocalLog;

    .line 112
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings$1;-><init>(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 136
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 137
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mResolver:Landroid/content/ContentResolver;

    .line 138
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "telephony_subscription_service"

    .line 139
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {p1, v0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 141
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->updateDataEnabled()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mSubId:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mSubId:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->updateDataEnabledAndNotify(I)V

    return-void
.end method

.method private getMobileDataSettingName()Ljava/lang/String;
    .locals 4

    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 186
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    const-string v2, "mobile_data"

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    .line 187
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v2
.end method

.method private static isStandAloneOpportunistic(ILandroid/content/Context;)Z
    .locals 1

    .line 346
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 347
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p1

    .line 346
    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfo(ILjava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 348
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private localLog(Ljava/lang/String;Z)V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mSettingChangeLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " change to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DataEnabledSettings"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyDataEnabledChanged(ZI)V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mOverallDataEnabledChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized updateDataEnabled()V
    .locals 1

    monitor-enter p0

    .line 263
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isProvisioning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isProvisioningDataEnabled()Z

    move-result v0

    goto :goto_0

    .line 266
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mInternalDataEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isUserDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPolicyDataEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mCarrierDataEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mIsDataEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateDataEnabledAndNotify(I)V
    .locals 2

    monitor-enter p0

    .line 253
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mIsDataEnabled:Z

    .line 255
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->updateDataEnabled()V

    .line 257
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mIsDataEnabled:Z

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 258
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->notifyDataEnabledChanged(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, " DataEnabledSettings="

    .line 360
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mSettingChangeLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized getDataRoamingEnabled()Z
    .locals 4

    monitor-enter p0

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "data_roaming"

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 313
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->getDefaultDataRoamingEnabled()Z

    move-result v3

    .line 312
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultDataRoamingEnabled()Z
    .locals 4

    monitor-enter p0

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 324
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    const-string/jumbo v1, "true"

    const-string v2, "ro.com.android.dataroaming"

    const-string v3, "false"

    .line 325
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 327
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v2, "carrier_default_data_roaming_enabled_bool"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    or-int/2addr v0, v1

    .line 329
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCarrierDataEnabled()Z
    .locals 1

    monitor-enter p0

    .line 237
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mCarrierDataEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDataEnabled()Z
    .locals 1

    monitor-enter p0

    .line 249
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mIsDataEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isInternalDataEnabled()Z
    .locals 1

    monitor-enter p0

    .line 152
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mInternalDataEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPolicyDataEnabled()Z
    .locals 1

    monitor-enter p0

    .line 225
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPolicyDataEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isProvisioning()Z
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public isProvisioningDataEnabled()Z
    .locals 5

    const-string v0, "ro.com.android.prov_mobiledata"

    const-string v1, "false"

    .line 281
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    .line 283
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 285
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "device_provisioning_mobile_data"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 289
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getDataEnabled during provisioning retVal="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " - ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->log(Ljava/lang/String;)V

    return v2
.end method

.method public declared-synchronized isUserDataEnabled()Z
    .locals 4

    monitor-enter p0

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isStandAloneOpportunistic(ILandroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "true"

    const-string v1, "ro.com.android.mobiledata"

    const-string/jumbo v2, "true"

    .line 173
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 176
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mobile_data"

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 177
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    .line 176
    invoke-static {v1, v2, v3, v0}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerForDataEnabledChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mOverallDataEnabledChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 338
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->notifyDataEnabledChanged(ZI)V

    return-void
.end method

.method public declared-synchronized setCarrierDataEnabled(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "CarrierDataEnabled"

    .line 229
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->localLog(Ljava/lang/String;Z)V

    .line 230
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mCarrierDataEnabled:Z

    if-eq v0, p1, :cond_0

    .line 231
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mCarrierDataEnabled:Z

    const/4 p1, 0x4

    .line 232
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->updateDataEnabledAndNotify(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDataRoamingEnabled(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "setDataRoamingEnabled"

    .line 296
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->localLog(Ljava/lang/String;Z)V

    .line 299
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "data_roaming"

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 300
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    .line 299
    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/telephony/GlobalSettingsHelper;->setBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    invoke-static {}, Lcom/android/internal/telephony/MultiSimSettingController;->getInstance()Lcom/android/internal/telephony/MultiSimSettingController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 304
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->onRoamingDataEnabled(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDefaultMobileDataEnabled()V
    .locals 4

    .line 199
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->getMobileDataSettingName()Ljava/lang/String;

    move-result-object v0

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    const-string/jumbo v1, "true"

    const-string v2, "ro.com.android.mobiledata"

    .line 209
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "etDefaultMobileDataEnabled "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "default value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->log(Ljava/lang/String;)V

    .line 212
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized setInternalDataEnabled(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "InternalDataEnabled"

    .line 145
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->localLog(Ljava/lang/String;Z)V

    .line 146
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mInternalDataEnabled:Z

    if-eq v0, p1, :cond_0

    .line 147
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mInternalDataEnabled:Z

    const/4 p1, 0x1

    .line 148
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->updateDataEnabledAndNotify(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPolicyDataEnabled(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "PolicyDataEnabled"

    .line 217
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->localLog(Ljava/lang/String;Z)V

    .line 218
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPolicyDataEnabled:Z

    if-eq v0, p1, :cond_0

    .line 219
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPolicyDataEnabled:Z

    const/4 p1, 0x3

    .line 220
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->updateDataEnabledAndNotify(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUserDataEnabled(Z)V
    .locals 4

    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isStandAloneOpportunistic(ILandroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "UserDataEnabled"

    .line 159
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->localLog(Ljava/lang/String;Z)V

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mobile_data"

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 161
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 160
    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GlobalSettingsHelper;->setInt(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->notifyUserMobileDataStateChanged(Z)V

    const/4 v0, 0x2

    .line 164
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->updateDataEnabledAndNotify(I)V

    .line 165
    invoke-static {}, Lcom/android/internal/telephony/MultiSimSettingController;->getInstance()Lcom/android/internal/telephony/MultiSimSettingController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->onUserDataEnabled(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[mInternalDataEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mInternalDataEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isUserDataEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isUserDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isProvisioningDataEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isProvisioningDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPolicyDataEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPolicyDataEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCarrierDataEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mCarrierDataEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterForDataEnabledChanged(Landroid/os/Handler;)V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mOverallDataEnabledChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public declared-synchronized updateProvisionedChanged()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x5

    .line 241
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->updateDataEnabledAndNotify(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateProvisioningDataEnabled()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x6

    .line 245
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->updateDataEnabledAndNotify(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
