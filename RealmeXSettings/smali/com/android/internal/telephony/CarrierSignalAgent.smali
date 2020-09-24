.class public Lcom/android/internal/telephony/CarrierSignalAgent;
.super Landroid/os/Handler;
.source "CarrierSignalAgent.java"


# static fields
.field private static final CARRIER_SIGNAL_DELIMITER:Ljava/lang/String; = "\\s*,\\s*"

.field private static final COMPONENT_NAME_DELIMITER:Ljava/lang/String; = "\\s*:\\s*"

.field private static final DBG:Z = true

.field private static final EVENT_REGISTER_DEFAULT_NETWORK_AVAIL:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "CarrierSignalAgent"

.field private static final NO_WAKE:Z = false

.field private static final VDBG:Z

.field private static final WAKE:Z = true


# instance fields
.field private mCachedNoWakeSignalConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCachedWakeSignalConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCarrierSignalList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultNetworkAvail:Z

.field private final mErrorLocalLog:Landroid/util/LocalLog;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    const-class v0, Lcom/android/internal/telephony/CarrierSignalAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 63
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/CarrierSignalAgent;->VDBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 6

    .line 122
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedWakeSignalConfigs:Ljava/util/Map;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedNoWakeSignalConfigs:Ljava/util/Map;

    .line 100
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "com.android.internal.telephony.CARRIER_SIGNAL_PCO_VALUE"

    const-string v2, "com.android.internal.telephony.CARRIER_SIGNAL_REDIRECTED"

    const-string v3, "com.android.internal.telephony.CARRIER_SIGNAL_REQUEST_NETWORK_FAILED"

    const-string v4, "com.android.internal.telephony.CARRIER_SIGNAL_RESET"

    const-string v5, "com.android.internal.telephony.CARRIER_SIGNAL_DEFAULT_NETWORK_AVAILABLE"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCarrierSignalList:Ljava/util/Set;

    .line 107
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mErrorLocalLog:Landroid/util/LocalLog;

    .line 109
    new-instance v0, Lcom/android/internal/telephony/CarrierSignalAgent$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CarrierSignalAgent$1;-><init>(Lcom/android/internal/telephony/CarrierSignalAgent;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 124
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierSignalAgent;->loadCarrierConfig()V

    .line 126
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getCarrierActionAgent()Lcom/android/internal/telephony/CarrierActionAgent;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/CarrierActionAgent;->registerForCarrierAction(ILandroid/os/Handler;ILjava/lang/Object;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/CarrierSignalAgent;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierSignalAgent;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/CarrierSignalAgent;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierSignalAgent;->loadCarrierConfig()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/CarrierSignalAgent;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mDefaultNetworkAvail:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/CarrierSignalAgent;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mDefaultNetworkAvail:Z

    return p1
.end method

.method private broadcast(Landroid/content/Intent;Ljava/util/Set;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;Z)V"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 301
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 302
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 303
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000

    if-eqz p3, :cond_0

    .line 305
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 306
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Carrier signal receivers are configured but unavailable: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierSignalAgent;->loge(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 311
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 312
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Runtime signals shouldn\'t be configured in Manifest: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierSignalAgent;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    const-string v3, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 319
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    const-string v3, "subscription"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 320
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-nez p3, :cond_2

    const/16 v1, 0x10

    .line 321
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 324
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Sending signal "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 327
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " to the carrier signal receiver: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    const-string v2, ""

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 326
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierSignalAgent;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .line 330
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Send broadcast failed: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierSignalAgent;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private loadCarrierConfig()V
    .locals 5

    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    .line 190
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 196
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedWakeSignalConfigs:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    const-string v2, "Loading carrier config: carrier_app_wake_signal_config"

    .line 197
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/CarrierSignalAgent;->log(Ljava/lang/String;)V

    const-string v2, "carrier_app_wake_signal_config"

    .line 199
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/CarrierSignalAgent;->parseAndCache([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 206
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedWakeSignalConfigs:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedWakeSignalConfigs:Ljava/util/Map;

    .line 207
    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 208
    sget-boolean v3, Lcom/android/internal/telephony/CarrierSignalAgent;->VDBG:Z

    if-eqz v3, :cond_1

    const-string v3, "carrier config changed, reset receivers from old config"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/CarrierSignalAgent;->log(Ljava/lang/String;)V

    .line 209
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getCarrierActionAgent()Lcom/android/internal/telephony/CarrierActionAgent;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/CarrierActionAgent;->sendEmptyMessage(I)Z

    .line 212
    :cond_2
    iput-object v2, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedWakeSignalConfigs:Ljava/util/Map;

    .line 213
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 215
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedNoWakeSignalConfigs:Ljava/util/Map;

    monitor-enter v2

    :try_start_1
    const-string v1, "Loading carrier config: carrier_app_no_wake_signal_config"

    .line 216
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierSignalAgent;->log(Ljava/lang/String;)V

    const-string v1, "carrier_app_no_wake_signal_config"

    .line 219
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierSignalAgent;->parseAndCache([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedNoWakeSignalConfigs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedNoWakeSignalConfigs:Ljava/util/Map;

    .line 221
    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 222
    sget-boolean v1, Lcom/android/internal/telephony/CarrierSignalAgent;->VDBG:Z

    if-eqz v1, :cond_3

    const-string v1, "carrier config changed, reset receivers from old config"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierSignalAgent;->log(Ljava/lang/String;)V

    .line 223
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCarrierActionAgent()Lcom/android/internal/telephony/CarrierActionAgent;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/CarrierActionAgent;->sendEmptyMessage(I)Z

    .line 226
    :cond_4
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedNoWakeSignalConfigs:Ljava/util/Map;

    .line 227
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 213
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_5
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    .line 360
    sget-object v0, Lcom/android/internal/telephony/CarrierSignalAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mErrorLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 365
    sget-object v0, Lcom/android/internal/telephony/CarrierSignalAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 3

    .line 369
    sget-object v0, Lcom/android/internal/telephony/CarrierSignalAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parseAndCache([Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 240
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 241
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v4, p1, v3

    .line 242
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 243
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    const-string v7, "\\s*:\\s*"

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 244
    array-length v7, v5

    if-ne v7, v6, :cond_4

    .line 245
    aget-object v4, v5, v2

    .line 246
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_0

    .line 248
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Invalid component name: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/CarrierSignalAgent;->loge(Ljava/lang/String;)V

    goto :goto_3

    :cond_0
    const/4 v6, 0x1

    .line 251
    aget-object v5, v5, v6

    const-string v6, "\\s*,\\s*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 252
    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_5

    aget-object v8, v5, v7

    .line 253
    iget-object v9, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCarrierSignalList:Ljava/util/Set;

    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 254
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Invalid signal name: "

    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/CarrierSignalAgent;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 257
    :cond_1
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    if-nez v9, :cond_2

    .line 259
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 260
    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_2
    invoke-interface {v9, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 263
    sget-boolean v9, Lcom/android/internal/telephony/CarrierSignalAgent;->VDBG:Z

    if-eqz v9, :cond_3

    .line 264
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Add config {signal: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " componentName: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "}"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/CarrierSignalAgent;->logv(Ljava/lang/String;)V

    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 269
    :cond_4
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "invalid config format: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/CarrierSignalAgent;->loge(Ljava/lang/String;)V

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 373
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string v1, "mCachedWakeSignalConfigs:"

    .line 374
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 376
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedWakeSignalConfigs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, " componentName list: "

    const-string v4, "signal: "

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 377
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "mCachedNoWakeSignalConfigs:"

    .line 381
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 383
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedNoWakeSignalConfigs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 384
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 386
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mDefaultNetworkAvail: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mDefaultNetworkAvail:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "error log:"

    .line 390
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 392
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mErrorLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 393
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 138
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 139
    sget-object v0, Lcom/android/internal/telephony/CarrierSignalAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Register default network exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 143
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 144
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 145
    new-instance p1, Lcom/android/internal/telephony/CarrierSignalAgent$2;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/CarrierSignalAgent$2;-><init>(Lcom/android/internal/telephony/CarrierSignalAgent;)V

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 170
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    const-string p1, "Register default network"

    .line 171
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierSignalAgent;->log(Ljava/lang/String;)V

    return-void

    .line 173
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz p1, :cond_3

    .line 174
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 p1, 0x0

    .line 175
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/4 p1, 0x0

    .line 176
    iput-boolean p1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mDefaultNetworkAvail:Z

    const-string/jumbo p1, "unregister default network"

    .line 177
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierSignalAgent;->log(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public hasRegisteredReceivers(Ljava/lang/String;)Z
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedWakeSignalConfigs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedNoWakeSignalConfigs:Ljava/util/Map;

    .line 282
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public notifyCarrierSignalReceivers(Landroid/content/Intent;)V
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedWakeSignalConfigs:Ljava/util/Map;

    monitor-enter v0

    .line 345
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedWakeSignalConfigs:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 346
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 347
    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/telephony/CarrierSignalAgent;->broadcast(Landroid/content/Intent;Ljava/util/Set;Z)V

    .line 349
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 351
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedNoWakeSignalConfigs:Ljava/util/Map;

    monitor-enter v1

    .line 352
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedNoWakeSignalConfigs:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 353
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 354
    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/telephony/CarrierSignalAgent;->broadcast(Landroid/content/Intent;Ljava/util/Set;Z)V

    .line 356
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 349
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
