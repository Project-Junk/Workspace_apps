.class public Lcom/coloros/systemui/common/util/NetworkServiceProxy;
.super Ljava/lang/Object;
.source "NetworkServiceProxy.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "NetworkServiceProxy"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColorOSLevel(Landroid/telephony/SignalStrength;)[I
    .locals 4

    .line 177
    :try_start_0
    const-class v0, Landroid/telephony/SignalStrength;

    const-string v1, "getColorOSLevel"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 179
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    check-cast p0, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 182
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NetworkServiceProxy"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDataConnectedSlotId(Landroid/content/Context;)I
    .locals 0

    .line 125
    invoke-static {p0}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ColorOSTelephonyManager;->colorGetDataSubscription()I

    move-result p0

    return p0
.end method

.method public static getNetworkCountryIso(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "gsm.operator.iso-country"

    .line 120
    invoke-static {p0, v0, p1}, Lcom/coloros/systemui/common/util/NetworkServiceProxy;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNetworkOperator(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    .line 116
    invoke-static {p0}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/ColorOSTelephonyManager;->getNetworkOperatorGemini(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNetworkType(Landroid/content/Context;I)I
    .locals 1

    .line 84
    invoke-static {p0}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object p0

    .line 87
    invoke-virtual {p0, p1}, Landroid/telephony/ColorOSTelephonyManager;->getNetworkTypeGemini(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0, p1}, Landroid/telephony/ColorOSTelephonyManager;->getVoiceNetworkTypeGemini(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static getPhoneCount()I
    .locals 1

    .line 38
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public static getSignalStrengthLevel(Landroid/content/Context;Landroid/telephony/SignalStrength;II)I
    .locals 5

    .line 151
    invoke-static {p1}, Lcom/coloros/systemui/common/util/NetworkServiceProxy;->getColorOSLevel(Landroid/telephony/SignalStrength;)[I

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSignalStrengthLevel: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] cardType: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Statusbar"

    const-string v4, "NetworkServiceProxy"

    invoke-static {v3, v4, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-ne p3, v2, :cond_0

    .line 155
    invoke-static {p0, p2}, Lcom/coloros/systemui/common/util/NetworkServiceProxy;->isMainCard(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 156
    aget p0, p1, v2

    goto :goto_0

    .line 158
    :cond_0
    aget p0, p1, v0

    :goto_0
    if-nez p0, :cond_2

    .line 162
    aget p0, p1, v0

    if-eqz p0, :cond_1

    aget p0, p1, v0

    goto :goto_1

    :cond_1
    aget p0, p1, v2

    :cond_2
    :goto_1
    move v0, p0

    :cond_3
    return v0
.end method

.method public static getSimInserted(Landroid/content/Context;I)Z
    .locals 0

    .line 49
    invoke-static {p0}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/ColorOSTelephonyManager;->hasIccCardGemini(I)Z

    move-result p0

    return p0
.end method

.method public static getSlotBySubId(Landroid/content/Context;I)I
    .locals 0

    .line 63
    invoke-static {p0, p1}, Landroid/telephony/ColorOSTelephonyManager;->colorgetSlotId(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getSpn(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    .line 53
    invoke-static {p0}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/ColorOSTelephonyManager;->colorGetOemSpn(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSubIdBySlot(Landroid/content/Context;I)I
    .locals 0

    .line 58
    invoke-static {p0, p1}, Landroid/telephony/ColorOSTelephonyManager;->colorgetSubId(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method private static getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 130
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ","

    .line 132
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 133
    array-length v0, p1

    if-ge p0, v0, :cond_0

    .line 134
    aget-object p0, p1, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    move-object p0, p2

    :cond_1
    return-object p0
.end method

.method public static isMainCard(Landroid/content/Context;I)Z
    .locals 5

    .line 197
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    .line 198
    invoke-virtual {v0}, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->getSimInsertedStatus()[Z

    move-result-object v0

    .line 201
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "oppo_multi_sim_network_primary_slot"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 203
    aget-boolean v2, v0, p1

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    rsub-int/lit8 v2, p1, 0x1

    .line 204
    aget-boolean v2, v0, v2

    if-nez v2, :cond_0

    :goto_0
    move p1, v3

    goto :goto_1

    :cond_0
    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    .line 210
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMainCard: simInsert: ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v1, v0, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "] mMainCard: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NetworkServiceProxy"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public static isRoaming(Landroid/content/Context;I)Z
    .locals 0

    .line 95
    invoke-static {p0}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/ColorOSTelephonyManager;->isNetworkRoamingGemini(I)Z

    move-result p0

    return p0
.end method

.method public static isSimInserted(Landroid/content/Context;I)Z
    .locals 1

    .line 43
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p0

    const-class v0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    .line 44
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->isSimInserted(I)Z

    move-result p0

    return p0
.end method

.method public static isSingleSimcard(Landroid/content/Context;)Z
    .locals 0

    .line 221
    invoke-static {p0}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ColorOSTelephonyManager;->isOppoSingleSimCard()Z

    move-result p0

    return p0
.end method

.method public static isSlotForbidden(Landroid/content/Context;I)Z
    .locals 0

    .line 76
    :try_start_0
    invoke-static {p0}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/ColorOSTelephonyManager;->colorIsQcomSubActive(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p0, p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSoftSimCard(Landroid/content/Context;I)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 109
    :cond_0
    invoke-static {p0}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ColorOSTelephonyManager;->colorGetSoftSimCardSlotId()I

    move-result p0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSoftSimCard softSlotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Statusbar"

    const-string v3, "NetworkServiceProxy"

    invoke-static {v2, v3, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isUsableSubIdValue(I)Z
    .locals 0

    .line 68
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result p0

    return p0
.end method
