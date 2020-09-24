.class public final Lcom/android/settings/network/telephony/a;
.super Ljava/lang/Object;
.source "CellInfoUtil.java"


# direct methods
.method public static a(Landroid/telephony/CellInfo;)Ljava/lang/String;
    .locals 2

    .line 83
    invoke-static {p0}, Lcom/android/settings/network/telephony/a;->b(Landroid/telephony/CellInfo;)Lcom/android/internal/telephony/OperatorInfo;

    move-result-object p0

    .line 85
    invoke-virtual {p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 90
    :cond_1
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v0, p0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 168
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/settings/network/telephony/-$$Lambda$a$QBgdboAGcCJJxaq5aEi-ER7voyo;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$a$QBgdboAGcCJJxaq5aEi-ER7voyo;

    .line 169
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, ", "

    .line 170
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static b(Landroid/telephony/CellInfo;)Lcom/android/internal/telephony/OperatorInfo;
    .locals 3

    .line 100
    instance-of v0, p0, Landroid/telephony/CellInfoLte;

    if-eqz v0, :cond_0

    .line 101
    check-cast p0, Landroid/telephony/CellInfoLte;

    .line 102
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo;

    .line 103
    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getOperatorAlphaLong()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getOperatorAlphaShort()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getMobileNetworkOperator()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 106
    :cond_0
    instance-of v0, p0, Landroid/telephony/CellInfoWcdma;

    if-eqz v0, :cond_1

    .line 107
    check-cast p0, Landroid/telephony/CellInfoWcdma;

    .line 108
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo;

    .line 109
    invoke-virtual {p0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getOperatorAlphaLong()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getOperatorAlphaShort()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getMobileNetworkOperator()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_1
    instance-of v0, p0, Landroid/telephony/CellInfoGsm;

    if-eqz v0, :cond_2

    .line 113
    check-cast p0, Landroid/telephony/CellInfoGsm;

    .line 114
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo;

    .line 115
    invoke-virtual {p0}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getOperatorAlphaLong()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellIdentityGsm;->getOperatorAlphaShort()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getMobileNetworkOperator()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_2
    instance-of v0, p0, Landroid/telephony/CellInfoCdma;

    const-string v1, ""

    if-eqz v0, :cond_3

    .line 119
    check-cast p0, Landroid/telephony/CellInfoCdma;

    .line 120
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo;

    .line 121
    invoke-virtual {p0}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellIdentityCdma;->getOperatorAlphaLong()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityCdma;->getOperatorAlphaShort()Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, v2, p0, v1}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p0, "NetworkSelectSetting"

    const-string v0, "Invalid CellInfo type"

    .line 125
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo;

    invoke-direct {v0, v1, v1, v1}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private static synthetic c(Landroid/telephony/CellInfo;)Ljava/lang/String;
    .locals 4

    .line 1175
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 1176
    invoke-virtual {p0}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v1

    const/4 v2, 0x6

    .line 1177
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 1179
    invoke-virtual {p0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, v2, v0

    invoke-virtual {v1}, Landroid/telephony/CellIdentity;->getMccString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    aput-object p0, v2, v0

    invoke-virtual {v1}, Landroid/telephony/CellIdentity;->getMncString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    aput-object p0, v2, v0

    .line 1180
    invoke-virtual {v1}, Landroid/telephony/CellIdentity;->getOperatorAlphaLong()Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v0, 0x4

    aput-object p0, v2, v0

    invoke-virtual {v1}, Landroid/telephony/CellIdentity;->getOperatorAlphaShort()Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v0, 0x5

    aput-object p0, v2, v0

    const-string p0, "{CellType = %s, isRegistered = %b, mcc = %s, mnc = %s, alphaL = %s, alphaS = %s}"

    .line 1177
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$QBgdboAGcCJJxaq5aEi-ER7voyo(Landroid/telephony/CellInfo;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/telephony/a;->c(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
