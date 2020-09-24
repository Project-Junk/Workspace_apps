.class public Lcom/android/internal/telephony/CarrierActionAgent;
.super Landroid/os/Handler;
.source "CarrierActionAgent.java"


# static fields
.field public static final CARRIER_ACTION_REPORT_DEFAULT_NETWORK_STATUS:I = 0x3

.field public static final CARRIER_ACTION_RESET:I = 0x2

.field public static final CARRIER_ACTION_SET_METERED_APNS_ENABLED:I = 0x0

.field public static final CARRIER_ACTION_SET_RADIO_ENABLED:I = 0x1

.field private static final DBG:Z = true

.field public static final EVENT_APM_SETTINGS_CHANGED:I = 0x4

.field public static final EVENT_APN_SETTINGS_CHANGED:I = 0x8

.field public static final EVENT_DATA_ROAMING_OFF:I = 0x6

.field public static final EVENT_MOBILE_DATA_SETTINGS_CHANGED:I = 0x5

.field public static final EVENT_SIM_STATE_CHANGED:I = 0x7

.field private static final LOG_TAG:Ljava/lang/String; = "CarrierActionAgent"

.field private static final VDBG:Z


# instance fields
.field private mCarrierActionOnMeteredApnEnabled:Ljava/lang/Boolean;

.field private mCarrierActionOnRadioEnabled:Ljava/lang/Boolean;

.field private mCarrierActionReportDefaultNetworkStatus:Ljava/lang/Boolean;

.field private mDefaultNetworkReportRegistrants:Landroid/os/RegistrantList;

.field private mMeteredApnEnableRegistrants:Landroid/os/RegistrantList;

.field private mMeteredApnEnabledLog:Landroid/util/LocalLog;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private mRadioEnableRegistrants:Landroid/os/RegistrantList;

.field private mRadioEnabledLog:Landroid/util/LocalLog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReportDefaultNetworkStatusLog:Landroid/util/LocalLog;

.field private final mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "CarrierActionAgent"

    const/4 v1, 0x2

    .line 56
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/CarrierActionAgent;->VDBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 3

    .line 102
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 72
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mMeteredApnEnableRegistrants:Landroid/os/RegistrantList;

    .line 73
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mRadioEnableRegistrants:Landroid/os/RegistrantList;

    .line 74
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mDefaultNetworkReportRegistrants:Landroid/os/RegistrantList;

    .line 76
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mMeteredApnEnabledLog:Landroid/util/LocalLog;

    .line 77
    new-instance v0, Landroid/util/LocalLog;

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mRadioEnabledLog:Landroid/util/LocalLog;

    .line 78
    new-instance v0, Landroid/util/LocalLog;

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mReportDefaultNetworkStatusLog:Landroid/util/LocalLog;

    .line 80
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnMeteredApnEnabled:Ljava/lang/Boolean;

    .line 81
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnRadioEnabled:Ljava/lang/Boolean;

    .line 82
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionReportDefaultNetworkStatus:Ljava/lang/Boolean;

    .line 86
    new-instance v0, Lcom/android/internal/telephony/CarrierActionAgent$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CarrierActionAgent$1;-><init>(Lcom/android/internal/telephony/CarrierActionAgent;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 104
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    new-instance p1, Lcom/android/internal/telephony/SettingsObserver;

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/android/internal/telephony/SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    const-string p1, "Creating CarrierActionAgent"

    .line 107
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->log(Ljava/lang/String;)V

    return-void
.end method

.method private getCarrierActionEnabled(I)Ljava/lang/Boolean;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 256
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unsupported action: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->loge(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 254
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionReportDefaultNetworkStatus:Ljava/lang/Boolean;

    return-object p1

    .line 252
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnRadioEnabled:Ljava/lang/Boolean;

    return-object p1

    .line 250
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnMeteredApnEnabled:Ljava/lang/Boolean;

    return-object p1
.end method

.method private getRegistrantsFromAction(I)Landroid/os/RegistrantList;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 242
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unsupported action: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->loge(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 240
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mDefaultNetworkReportRegistrants:Landroid/os/RegistrantList;

    return-object p1

    .line 238
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mRadioEnableRegistrants:Landroid/os/RegistrantList;

    return-object p1

    .line 236
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mMeteredApnEnableRegistrants:Landroid/os/RegistrantList;

    return-object p1
.end method

.method private log(Ljava/lang/String;)V
    .locals 2

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarrierActionAgent"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarrierActionAgent"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 2

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarrierActionAgent"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public carrierActionReportDefaultNetworkStatus(Z)V
    .locals 1

    .line 221
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public carrierActionReset()V
    .locals 3

    const/4 v0, 0x0

    .line 225
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionReportDefaultNetworkStatus(Z)V

    const/4 v0, 0x1

    .line 226
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionSetMeteredApnsEnabled(Z)V

    .line 227
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionSetRadioEnabled(Z)V

    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCarrierSignalAgent()Lcom/android/internal/telephony/CarrierSignalAgent;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.telephony.CARRIER_SIGNAL_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CarrierSignalAgent;->notifyCarrierSignalReceivers(Landroid/content/Intent;)V

    return-void
.end method

.method public carrierActionSetMeteredApnsEnabled(Z)V
    .locals 1

    .line 214
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public carrierActionSetRadioEnabled(Z)V
    .locals 1

    .line 207
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 311
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string v1, " mCarrierActionOnMeteredApnsEnabled Log:"

    .line 312
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 314
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mMeteredApnEnabledLog:Landroid/util/LocalLog;

    invoke-virtual {v1, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, " mCarrierActionOnRadioEnabled Log:"

    .line 317
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 319
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mRadioEnabledLog:Landroid/util/LocalLog;

    invoke-virtual {v1, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, " mCarrierActionReportDefaultNetworkStatus Log:"

    .line 322
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 324
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mReportDefaultNetworkStatusLog:Landroid/util/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 325
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public getContentObserver()Landroid/database/ContentObserver;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierActionAgent;->getCarrierActionEnabled(I)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 115
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown carrier action: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_0
    const-string p1, "EVENT_APN_SETTINGS_CHANGED"

    .line 194
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->log(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionReset()V

    return-void

    .line 165
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v0, "LOADED"

    .line 166
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v5, "EVENT_SIM_STATE_CHANGED status: "

    if-eqz v0, :cond_3

    .line 167
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->log(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionReset()V

    const-string p1, "mobile_data"

    .line 170
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_1

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 175
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    .line 176
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x4

    .line 175
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 178
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 180
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 181
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, p0, v0, v4, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;Z)V

    :cond_2
    return-void

    :cond_3
    const-string v0, "ABSENT"

    .line 184
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 185
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->log(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionReset()V

    .line 187
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SettingsObserver;->unobserve()V

    .line 188
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 189
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRoamingOff(Landroid/os/Handler;)V

    return-void

    :pswitch_2
    const-string p1, "EVENT_DATA_ROAMING_OFF"

    .line 160
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->log(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionReset()V

    return-void

    :pswitch_3
    const-string p1, "EVENT_MOBILE_DATA_SETTINGS_CHANGED"

    .line 156
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->log(Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->isUserDataEnabled()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionReset()V

    return-void

    :pswitch_4
    const-string p1, "EVENT_APM_SETTINGS_CHANGED"

    .line 149
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->log(Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_5

    .line 152
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionReset()V

    return-void

    .line 136
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionReportDefaultNetworkStatus:Ljava/lang/Boolean;

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "CARRIER_ACTION_REPORT_AT_DEFAULT_NETWORK_STATUS: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionReportDefaultNetworkStatus:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->log(Ljava/lang/String;)V

    .line 139
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mReportDefaultNetworkStatusLog:Landroid/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "REGISTER_DEFAULT_NETWORK_STATUS: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionReportDefaultNetworkStatus:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mDefaultNetworkReportRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionReportDefaultNetworkStatus:Ljava/lang/Boolean;

    invoke-direct {v0, v4, v1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    :pswitch_6
    const-string p1, "CARRIER_ACTION_RESET"

    .line 145
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->log(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionReset()V

    return-void

    .line 129
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnRadioEnabled:Ljava/lang/Boolean;

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "SET_RADIO_ENABLED: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnRadioEnabled:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->log(Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mRadioEnabledLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnRadioEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mRadioEnableRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnRadioEnabled:Ljava/lang/Boolean;

    invoke-direct {v0, v4, v1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 117
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnMeteredApnEnabled:Ljava/lang/Boolean;

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "SET_METERED_APNS_ENABLED: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnMeteredApnEnabled:Ljava/lang/Boolean;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->log(Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mMeteredApnEnabledLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnMeteredApnEnabled:Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 121
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnMeteredApnEnabled:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 122
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getOtasp()I

    move-result v1

    .line 124
    :cond_4
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/Phone;->notifyOtaspChanged(I)V

    .line 125
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mMeteredApnEnableRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnMeteredApnEnabled:Ljava/lang/Boolean;

    invoke-direct {v0, v4, v1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_5
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerForCarrierAction(ILandroid/os/Handler;ILjava/lang/Object;Z)V
    .locals 2

    .line 269
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->getCarrierActionEnabled(I)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 273
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->getRegistrantsFromAction(I)Landroid/os/RegistrantList;

    move-result-object p1

    .line 274
    new-instance v1, Landroid/os/Registrant;

    invoke-direct {v1, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 275
    invoke-virtual {p1, v1}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    if-eqz p5, :cond_0

    .line 277
    new-instance p1, Landroid/os/AsyncResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2, v0, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, p1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void

    .line 271
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "invalid carrier action: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public unregisterForCarrierAction(Landroid/os/Handler;I)V
    .locals 1

    .line 286
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CarrierActionAgent;->getRegistrantsFromAction(I)Landroid/os/RegistrantList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void

    .line 288
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "invalid carrier action: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
