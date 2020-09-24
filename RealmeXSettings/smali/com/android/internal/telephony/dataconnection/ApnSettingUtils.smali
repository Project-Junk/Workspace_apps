.class public Lcom/android/internal/telephony/dataconnection/ApnSettingUtils;
.super Ljava/lang/Object;
.source "ApnSettingUtils.java"


# static fields
.field private static final DBG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "ApnSetting"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static iccidMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string v0, ","

    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 46
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 47
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p0, "ApnSetting"

    const-string p1, "mvno icc id match found"

    .line 48
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 65
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_1

    return v1

    :cond_1
    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 68
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x78

    if-eq v3, v4, :cond_2

    const/16 v4, 0x58

    if-eq v3, v4, :cond_2

    .line 69
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static isMetered(Landroid/telephony/data/ApnSetting;Lcom/android/internal/telephony/Phone;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    .line 207
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result p0

    .line 206
    invoke-static {p0}, Landroid/telephony/data/ApnSetting;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, ","

    .line 207
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 209
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    .line 211
    invoke-static {v4, p1}, Lcom/android/internal/telephony/dataconnection/ApnSettingUtils;->isMeteredApnType(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v0
.end method

.method public static isMeteredApnType(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_a

    .line 122
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 126
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v1

    .line 127
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    const/16 v3, 0x12

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v4

    .line 129
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    if-eqz v2, :cond_2

    const-string v1, "carrier_metered_iwlan_apn_types_strings"

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    const-string v1, "carrier_metered_roaming_apn_types_strings"

    goto :goto_1

    :cond_3
    const-string v1, "carrier_metered_apn_types_strings"

    .line 148
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "carrier_config"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    const-string v2, "ApnSetting"

    if-nez p1, :cond_4

    const-string p0, "Carrier config service is not available"

    .line 150
    invoke-static {v2, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 154
    :cond_4
    invoke-virtual {p1, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    if-nez p1, :cond_5

    .line 156
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Can\'t get the config. subId = "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 160
    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    .line 162
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not available. subId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 166
    :cond_6
    new-instance v1, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string p1, "*"

    .line 173
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    return v0

    .line 178
    :cond_7
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    return v0

    .line 181
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 184
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result p0

    if-lez p0, :cond_9

    return v0

    :cond_9
    return v4

    :cond_a
    :goto_2
    return v0
.end method

.method public static mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;ILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 89
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_0
    if-ne p1, v1, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 94
    invoke-static {p2, p0}, Lcom/android/internal/telephony/dataconnection/ApnSettingUtils;->imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid1()Ljava/lang/String;

    move-result-object p0

    .line 99
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p0, :cond_3

    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, p1, :cond_3

    .line 101
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 105
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 106
    invoke-static {p2, p0}, Lcom/android/internal/telephony/dataconnection/ApnSettingUtils;->iccidMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v0
.end method
