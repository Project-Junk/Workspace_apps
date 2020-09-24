.class public Lcom/android/internal/telephony/util/QtiImsUtils;
.super Ljava/lang/Object;
.source "QtiImsUtils.java"


# static fields
.field public static final ACTION_RTT_OPERATION:Ljava/lang/String; = "org.codeaurora.intent.action.send.rtt.operation"

.field public static final ACTION_SEND_RTT_TEXT:Ljava/lang/String; = "org.codeaurora.intent.action.send.rtt.text"

.field public static final CODE_RETRY_ON_IMS_WITHOUT_RTT:I = 0xbb9

.field public static final DOMAIN_AUTOMATIC:I = 0x0

.field public static final DOMAIN_CS:I = 0x1

.field public static final DOMAIN_PS:I = 0x2

.field public static final EXTRA_CALL_DOMAIN:Ljava/lang/String; = "org.codeaurora.extra.CALL_DOMAIN"

.field public static final EXTRA_RETRY_ON_IMS_WITHOUT_RTT:Ljava/lang/String; = "retryOnImsWithoutRTT"

.field public static final HIDE_RTT_KEYBOARD:I = 0x6

.field public static final KEY_CARRIER_RTT_SUPPORTED_ON_VTCALLS:Ljava/lang/String; = "carrier_rtt_supported_on_vtcalls"

.field public static final KEY_SHOW_RTT_VISIBILITY_SETTING:Ljava/lang/String; = "show_rtt_visibility_setting_bool"

.field private static final LOG_TAG:Ljava/lang/String; = "QtiImsUtils"

.field public static final PROPERTY_RTT_OPERATING_MODE:Ljava/lang/String; = "persist.vendor.radio.rtt.operval"

.field public static final RETRY_ON_IMS_WITHOUT_RTT:I = 0x12d

.field public static final RTT_DOWNGRADE_INITIATE:I = 0x4

.field public static final RTT_MODE_DISABLED:I = 0x0

.field public static final RTT_OPERATION_TYPE:Ljava/lang/String; = "org.codeaurora.intent.action.rtt.operation.type"

.field public static final RTT_TEXT_VALUE:Ljava/lang/String; = "org.codeaurora.intent.action.rtt.textvalue"

.field public static final RTT_UPGRADE_CONFIRM:I = 0x2

.field public static final RTT_UPGRADE_INITIATE:I = 0x1

.field public static final RTT_UPGRADE_REJECT:I = 0x3

.field public static final SHOW_RTT_KEYBOARD:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getConfigForPhoneId(Landroid/content/Context;I)Landroid/os/PersistableBundle;
    .locals 3

    const-string/jumbo v0, "telephony_subscription_service"

    .line 167
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x0

    const-string v2, "QtiImsUtils"

    if-nez v0, :cond_0

    const-string p0, "getConfigForPhoneId SubscriptionManager is null"

    .line 170
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 174
    :cond_0
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "getConfigForPhoneId subInfo is null"

    .line 176
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 180
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    .line 181
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "getConfigForPhoneId subscription is not active"

    .line 182
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    const-string v0, "carrier_config"

    .line 186
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    if-nez p0, :cond_3

    const-string p0, "getConfigForPhoneId CarrierConfigManager is null"

    .line 189
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 193
    :cond_3
    invoke-virtual {p0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method

.method public static getRttMode(Landroid/content/Context;)I
    .locals 2

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "rtt_calling_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getRttOperatingMode(Landroid/content/Context;)I
    .locals 1

    const-string p0, "persist.vendor.radio.rtt.operval"

    const/4 v0, 0x0

    .line 199
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static isRttOn(Landroid/content/Context;)Z
    .locals 0

    .line 126
    invoke-static {p0}, Lcom/android/internal/telephony/util/QtiImsUtils;->getRttMode(Landroid/content/Context;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isRttSupported(ILandroid/content/Context;)Z
    .locals 0

    .line 158
    invoke-static {p1, p0}, Lcom/android/internal/telephony/util/QtiImsUtils;->getConfigForPhoneId(Landroid/content/Context;I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "rtt_supported_bool"

    .line 160
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isRttSupportedOnVtCalls(ILandroid/content/Context;)Z
    .locals 0

    .line 138
    invoke-static {p1, p0}, Lcom/android/internal/telephony/util/QtiImsUtils;->getConfigForPhoneId(Landroid/content/Context;I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "carrier_rtt_supported_on_vtcalls"

    .line 140
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static shallShowRttVisibilitySetting(ILandroid/content/Context;)Z
    .locals 0

    .line 148
    invoke-static {p1, p0}, Lcom/android/internal/telephony/util/QtiImsUtils;->getConfigForPhoneId(Landroid/content/Context;I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "show_rtt_visibility_setting_bool"

    .line 150
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
