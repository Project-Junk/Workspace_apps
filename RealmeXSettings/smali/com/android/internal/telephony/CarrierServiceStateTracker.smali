.class public Lcom/android/internal/telephony/CarrierServiceStateTracker;
.super Landroid/os/Handler;
.source "CarrierServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;,
        Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;,
        Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;
    }
.end annotation


# static fields
.field protected static final CARRIER_EVENT_BASE:I = 0x64

.field protected static final CARRIER_EVENT_DATA_DEREGISTRATION:I = 0x68

.field protected static final CARRIER_EVENT_DATA_REGISTRATION:I = 0x67

.field protected static final CARRIER_EVENT_IMS_CAPABILITIES_CHANGED:I = 0x69

.field protected static final CARRIER_EVENT_VOICE_DEREGISTRATION:I = 0x66

.field protected static final CARRIER_EVENT_VOICE_REGISTRATION:I = 0x65

.field private static final LOG_TAG:Ljava/lang/String; = "CSST"

.field public static final NOTIFICATION_EMERGENCY_NETWORK:I = 0x3e9

.field public static final NOTIFICATION_PREF_NETWORK:I = 0x3e8

.field private static final UNINITIALIZED_DELAY_VALUE:I = -0x1


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mNotificationTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;",
            ">;"
        }
    .end annotation
.end field

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrefNetworkModeObserver:Landroid/database/ContentObserver;

.field private mPreviousSubId:I

.field private mSST:Lcom/android/internal/telephony/ServiceStateTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mNotificationTypeMap:Ljava/util/Map;

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPreviousSubId:I

    .line 93
    new-instance v0, Lcom/android/internal/telephony/CarrierServiceStateTracker$2;

    invoke-direct {v0, p0, p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker$2;-><init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPrefNetworkModeObserver:Landroid/database/ContentObserver;

    .line 282
    new-instance v0, Lcom/android/internal/telephony/CarrierServiceStateTracker$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker$3;-><init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 73
    iput-object p2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 74
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/CarrierServiceStateTracker$1;

    .line 78
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;Landroid/os/Looper;)V

    .line 77
    invoke-virtual {p1, p2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 89
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->registerNotificationTypes()V

    .line 90
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->registerPrefNetworkModeObserver()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/CarrierServiceStateTracker;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPreviousSubId:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Z
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->isPhoneRegisteredForWifiCalling()Z

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/CarrierServiceStateTracker;I)I
    .locals 0

    .line 54
    iput p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPreviousSubId:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/CarrierServiceStateTracker;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->registerPrefNetworkModeObserver()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/CarrierServiceStateTracker;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->handlePrefNetworkModeChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Ljava/util/Map;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mNotificationTypeMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/CarrierServiceStateTracker;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->handleConfigChanges()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Z
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->isPhoneStillRegistered()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Z
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->isGlobalMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Z
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->isPhoneVoiceRegistered()Z

    move-result p0

    return p0
.end method

.method private evaluateSendingMessageOrCancelNotification(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)V
    .locals 4

    .line 240
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->evaluateSendingMessage(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)Z

    move-result v0

    const-string v1, "CSST"

    if-eqz v0, :cond_0

    .line 241
    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->getTypeId()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "starting timer for notifications."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->getTypeId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->getDelay(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 245
    :cond_0
    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->getTypeId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->cancelNotification(I)V

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "canceling notifications: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->getTypeId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleConfigChanges()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mNotificationTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 219
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;

    .line 220
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->evaluateSendingMessageOrCancelNotification(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleImsCapabilitiesChanged()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mNotificationTypeMap:Ljava/util/Map;

    const/16 v1, 0x3e9

    .line 233
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;

    if-eqz v0, :cond_0

    .line 235
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->evaluateSendingMessageOrCancelNotification(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)V

    :cond_0
    return-void
.end method

.method private handlePrefNetworkModeChanged()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mNotificationTypeMap:Ljava/util/Map;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;

    if-eqz v0, :cond_0

    .line 227
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->evaluateSendingMessageOrCancelNotification(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)V

    :cond_0
    return-void
.end method

.method private isGlobalMode()Z
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    .line 207
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "preferred_network_mode"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 209
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .line 207
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    const-string v0, "CSST"

    const-string v2, "Unable to get PREFERRED_NETWORK_MODE."

    .line 211
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isPhoneRegisteredForWifiCalling()Z
    .locals 2

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isPhoneRegisteredForWifiCalling: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSST"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v0

    return v0
.end method

.method private isPhoneStillRegistered()Z
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 167
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method private isPhoneVoiceRegistered()Z
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private registerNotificationTypes()V
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mNotificationTypeMap:Ljava/util/Map;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;-><init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mNotificationTypeMap:Ljava/util/Map;

    const/16 v1, 0x3e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;-><init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private registerPrefNetworkModeObserver()V
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 110
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->unregisterPrefNetworkModeObserver()V

    .line 111
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "preferred_network_mode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPrefNetworkModeObserver:Landroid/database/ContentObserver;

    .line 112
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private unregisterPrefNetworkModeObserver()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPrefNetworkModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public cancelNotification(I)V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 323
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->removeMessages(I)V

    .line 324
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public dispose()V
    .locals 0

    .line 331
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->unregisterPrefNetworkModeObserver()V

    return-void
.end method

.method public evaluateSendingMessage(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 255
    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->sendMessage()Z

    move-result p1

    return p1
.end method

.method public getContentObserver()Landroid/database/ContentObserver;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPrefNetworkModeObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method public getDelay(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)I
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 263
    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->getDelay()I

    move-result p1

    return p1
.end method

.method public getNotificationBuilder(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)Landroid/app/Notification$Builder;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 271
    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->getNotificationBuilder()Landroid/app/Notification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "notification"

    .line 279
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    return-object p1
.end method

.method public getNotificationTypeMap()Ljava/util/Map;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mNotificationTypeMap:Ljava/util/Map;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 141
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 149
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->handleImsCapabilitiesChanged()V

    return-void

    .line 146
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->handleConfigChanges()V

    return-void

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sending notification after delay: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSST"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mNotificationTypeMap:Ljava/util/Map;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;

    if-eqz p1, :cond_1

    .line 156
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->sendNotification(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isRadioOffOrAirplaneMode()Z
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    .line 190
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->isRadioOn()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    return v1

    :catch_0
    const-string v0, "CSST"

    const-string v2, "Unable to get AIRPLACE_MODE_ON."

    .line 193
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public sendNotification(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 302
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->evaluateSendingMessage(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 307
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->getNotificationBuilder(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 310
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x108008a

    .line 311
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 312
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 315
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->getTypeId()I

    move-result p1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
