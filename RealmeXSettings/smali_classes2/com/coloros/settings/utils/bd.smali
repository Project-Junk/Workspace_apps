.class public final Lcom/coloros/settings/utils/bd;
.super Ljava/lang/Object;
.source "SimUtils.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 73
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 74
    sput-object v0, Lcom/coloros/settings/utils/bd;->a:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "connected_mmwave"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/coloros/settings/utils/bd;->a:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "connected"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/coloros/settings/utils/bd;->a:Ljava/util/Map;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "not_restricted"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/coloros/settings/utils/bd;->a:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "restricted"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "5ge"

    const-string v4, "lte"

    const-string v5, "lte+"

    const-string v6, "5g"

    const-string v7, "5g_plus"

    const-string v8, "5guwb"

    .line 79
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/bd;->b:Ljava/util/List;

    return-void
.end method

.method public static a(IZZ)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    const-string p0, "LTE & NR"

    return-object p0

    :cond_0
    const/4 p2, 0x0

    if-eqz p0, :cond_1

    .line 161
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    if-eqz p1, :cond_2

    const-string p0, "LTE"

    .line 163
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "4G"

    return-object p0

    :cond_2
    return-object p2
.end method

.method public static a(IZZLandroid/telephony/ServiceState;)Ljava/lang/String;
    .locals 4

    if-eqz p2, :cond_0

    const-string p0, "LTE & NR"

    return-object p0

    :cond_0
    const/4 p2, 0x0

    const/16 v0, 0xd

    const/16 v1, 0x13

    if-eq p0, v0, :cond_1

    if-ne p0, v1, :cond_3

    :cond_1
    if-eqz p3, :cond_3

    .line 128
    :try_start_0
    invoke-virtual {p3}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result p0

    const-string p3, "SimUtils"

    const-string v2, "isUsringCarrierAggreation = "

    .line 129
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    move v1, p0

    :catch_0
    :goto_0
    if-eqz v1, :cond_4

    .line 142
    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object p2

    :cond_4
    if-eqz p1, :cond_5

    const-string p0, "LTE"

    .line 144
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "4G"

    return-object p0

    :cond_5
    return-object p2
.end method

.method public static a(Landroid/telephony/SignalStrength;Landroid/content/res/Resources;Lcom/coloros/settings/feature/deviceinfo/c;II)Ljava/lang/String;
    .locals 11

    .line 266
    const-class v0, Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {p0, v0}, Landroid/telephony/SignalStrength;->getCellSignalStrengths(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 267
    const-class v1, Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {p0, v1}, Landroid/telephony/SignalStrength;->getCellSignalStrengths(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    .line 270
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "SimUtils"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v1, :cond_1

    .line 271
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellSignalStrengthLte;

    .line 272
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->isValid()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 273
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v5

    .line 274
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getAsuLevel()I

    move-result v6

    goto :goto_0

    :cond_0
    move v5, v3

    move v6, v5

    .line 276
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "CellSignalStrengthLte = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", strenhth size = "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-static {v2, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v5, v3

    move v6, v5

    .line 282
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 283
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CellSignalStrengthNr;

    .line 284
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthNr;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthNr;->getDbm()I

    move-result v0

    .line 286
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthNr;->getAsuLevel()I

    move-result v7

    move v8, v0

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v3

    move v7, v0

    move v8, v7

    .line 289
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "CellSignalStrengthNr = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthNr;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move v0, v3

    move v7, v0

    move v8, v7

    :goto_3
    if-nez v0, :cond_4

    const/16 p0, 0x14

    if-ne p3, p0, :cond_4

    if-eqz p2, :cond_4

    .line 292
    invoke-virtual {p2, p4}, Lcom/coloros/settings/feature/deviceinfo/c;->d(I)V

    :cond_4
    const-string p0, "\nNR  "

    const-string p2, "LTE "

    const/4 p3, 0x2

    const p4, 0x7f1214e3

    if-eqz v8, :cond_6

    const v0, 0x7fffffff

    if-ne v8, v0, :cond_5

    goto :goto_4

    .line 300
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-array p2, p3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v1

    invoke-virtual {p1, p4, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p0, p3, [Ljava/lang/Object;

    .line 301
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, v1

    invoke-virtual {p1, p4, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 295
    :cond_6
    :goto_4
    new-array v0, p3, [Ljava/lang/Object;

    aput-object v4, v0, v3

    aput-object v4, v0, v1

    invoke-virtual {p1, p4, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "0"

    const-string v7, "--"

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "Nr strength unavailable, "

    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-array p2, p3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v1

    invoke-virtual {p1, p4, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Landroid/telephony/ServiceState;)Z
    .locals 7

    .line 174
    invoke-static {}, Lcom/coloros/settings/utils/bh;->x()Z

    move-result v0

    const-string v1, "SimUtils"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "System doesn\'t support 5G"

    .line 175
    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    const/16 v0, 0x15

    const/4 v3, 0x1

    if-eq p0, v0, :cond_f

    const/16 v0, 0x14

    if-ne p0, v0, :cond_1

    goto/16 :goto_5

    :cond_1
    if-nez p3, :cond_2

    return v2

    :cond_2
    const/16 v0, 0xd

    const/4 v4, 0x2

    if-ne p0, v0, :cond_5

    .line 1217
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 1218
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 1219
    new-array p1, v4, [Ljava/lang/String;

    invoke-virtual {p3}, Landroid/telephony/ServiceState;->getOperatorAlphaLongRaw()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-virtual {p3}, Landroid/telephony/ServiceState;->getOperatorAlphaShortRaw()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_4

    .line 1220
    aget-object v5, p1, v0

    .line 1221
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1222
    invoke-virtual {p0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 1223
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_3

    move p0, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move p0, v2

    :goto_1
    if-eqz p0, :cond_5

    return v3

    .line 191
    :cond_5
    invoke-virtual {p3}, Landroid/telephony/ServiceState;->getNrState()I

    move-result p0

    .line 192
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "isNr5GNetwork, nrState = "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    sget-object p1, Lcom/coloros/settings/utils/bd;->c:Ljava/util/List;

    if-nez p1, :cond_9

    .line 1237
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sput-object p1, Lcom/coloros/settings/utils/bd;->c:Ljava/util/List;

    .line 1242
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_3

    .line 1245
    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1246
    array-length p2, p1

    move v0, v2

    :goto_2
    if-ge v0, p2, :cond_8

    aget-object v1, p1, v0

    .line 1247
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1248
    array-length v5, v1

    if-ne v5, v4, :cond_7

    .line 1251
    aget-object v5, v1, v2

    .line 1252
    aget-object v1, v1, v3

    const-string v6, "none"

    .line 1253
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1256
    sget-object v6, Lcom/coloros/settings/utils/bd;->a:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Lcom/coloros/settings/utils/bd;->b:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1257
    sget-object v1, Lcom/coloros/settings/utils/bd;->c:Ljava/util/List;

    sget-object v6, Lcom/coloros/settings/utils/bd;->a:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1260
    :cond_8
    sget-object p1, Lcom/coloros/settings/utils/bd;->c:Ljava/util/List;

    :cond_9
    :goto_3
    if-eqz p1, :cond_e

    .line 194
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_a

    goto :goto_4

    :cond_a
    const/4 p2, 0x4

    const/4 v0, 0x3

    if-ne p0, v0, :cond_c

    .line 198
    invoke-virtual {p3}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result p0

    if-ne p0, p2, :cond_b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    return v3

    .line 201
    :cond_b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    return v3

    :cond_c
    if-ne p0, v4, :cond_d

    .line 205
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    return v3

    :cond_d
    if-ne p0, v3, :cond_e

    .line 209
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    return v3

    :cond_e
    :goto_4
    return v2

    :cond_f
    :goto_5
    return v3
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 0

    .line 109
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/content/Context;I)Z
    .locals 1

    .line 88
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

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error occur, e = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SimUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Landroid/content/Context;I)Z
    .locals 1

    .line 306
    invoke-static {p0}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object p0

    .line 308
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/telephony/ColorOSTelephonyManager;->getIccCardTypeGemini(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 310
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "isCTCCCard "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SimUtils"

    invoke-static {v0, p1, p0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, "SIM"

    :goto_0
    const-string p1, "CSIM"

    .line 312
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "RUIM"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0
.end method
