.class public Lcom/coloros/settings/utils/bf;
.super Ljava/lang/Object;
.source "StorageSizeUtils.java"


# static fields
.field private static final a:Ljava/lang/String; = "bf"

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Lcom/coloros/settings/utils/bf$1;

    invoke-direct {v0}, Lcom/coloros/settings/utils/bf$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/utils/bf;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(FLjava/lang/String;)F
    .locals 0

    .line 150
    invoke-static {p0, p1}, Lcom/coloros/settings/utils/bf;->b(FLjava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static a(J)F
    .locals 3

    .line 1103
    invoke-static {p0, p1}, Lcom/coloros/settings/utils/bf;->c(J)Ljava/lang/String;

    move-result-object v0

    .line 1104
    invoke-static {v0}, Lcom/coloros/settings/utils/bf;->b(Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    return v1

    .line 95
    :cond_0
    invoke-static {p0, p1}, Lcom/coloros/settings/utils/bf;->b(J)Ljava/lang/String;

    move-result-object p0

    .line 96
    invoke-static {p0}, Lcom/coloros/settings/utils/bf;->b(Ljava/lang/String;)F

    move-result p0

    sub-float/2addr v0, p0

    const/high16 p0, 0x41200000    # 10.0f

    mul-float/2addr v0, p0

    .line 98
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p0

    return p1
.end method

.method public static a(Ljava/lang/String;)F
    .locals 3

    .line 1180
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1181
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1182
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    .line 1183
    invoke-static {p0, v0}, Lcom/coloros/settings/utils/bf;->b(FLjava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;F)J
    .locals 2

    const-string v0, "GB"

    .line 380
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    float-to-long p0, p1

    const-wide/32 v0, 0x3b9aca00

    mul-long/2addr p0, v0

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static a(DLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 354
    new-instance v0, Ljava/text/DecimalFormat;

    new-instance v1, Ljava/text/DecimalFormatSymbols;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v0, p2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 358
    sget-object p2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, p2}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 361
    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(JD)Ljava/lang/String;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-wide/from16 v0, p2

    move-wide/from16 v2, p0

    :goto_0
    const-wide v5, 0x3fef5c28f5c28f5cL    # 0.98

    const-string v7, "0.00"

    .line 191
    invoke-static {v5, v6, v7}, Lcom/coloros/settings/utils/bf;->b(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v8, 0x0

    cmp-long v6, v8, v2

    const-string v8, "0"

    const-wide v9, 0x408f400000000000L    # 1000.0

    const-wide/high16 v11, 0x4090000000000000L    # 1024.0

    if-gtz v6, :cond_1

    long-to-double v13, v2

    cmpg-double v6, v13, v9

    if-gez v6, :cond_1

    .line 193
    invoke-static {v13, v14, v8}, Lcom/coloros/settings/utils/bf;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 195
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4, v8}, Lcom/coloros/settings/utils/bf;->b(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    long-to-double v3, v1

    cmpg-double v5, v9, v3

    if-gtz v5, :cond_0

    cmpg-double v3, v3, v11

    if-gez v3, :cond_0

    .line 197
    invoke-static {v1, v2}, Lcom/coloros/settings/utils/bf;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 200
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " B"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    :cond_1
    long-to-double v2, v2

    cmpg-double v6, v9, v2

    const-wide v13, 0x412f400000000000L    # 1024000.0

    move-object/from16 p1, v5

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/high16 v15, 0x4059000000000000L    # 100.0

    if-gtz v6, :cond_3

    cmpg-double v6, v2, v13

    if-gez v6, :cond_3

    div-double/2addr v2, v0

    .line 202
    invoke-static {v2, v3, v8}, Lcom/coloros/settings/utils/bf;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    double-to-long v9, v0

    mul-long/2addr v6, v9

    .line 204
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3, v8}, Lcom/coloros/settings/utils/bf;->b(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    long-to-double v8, v6

    cmpg-double v3, v13, v8

    if-gtz v3, :cond_2

    .line 205
    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v3, v15

    cmpg-double v3, v8, v3

    if-gez v3, :cond_2

    :goto_1
    move-wide v2, v6

    goto/16 :goto_0

    .line 209
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    :cond_3
    cmpg-double v6, v13, v2

    const-string v13, "0.0"

    if-gtz v6, :cond_5

    .line 210
    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    mul-double v17, v17, v15

    cmpg-double v6, v2, v17

    if-gez v6, :cond_5

    .line 211
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double/2addr v2, v6

    invoke-static {v2, v3, v13}, Lcom/coloros/settings/utils/bf;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    mul-double v6, v6, v17

    double-to-long v6, v6

    .line 213
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3, v13}, Lcom/coloros/settings/utils/bf;->b(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    mul-double/2addr v13, v15

    long-to-double v9, v6

    cmpg-double v3, v13, v9

    if-gtz v3, :cond_4

    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    const-wide v11, 0x408f400000000000L    # 1000.0

    mul-double/2addr v3, v11

    cmpg-double v3, v9, v3

    if-gez v3, :cond_4

    goto :goto_1

    .line 218
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    .line 219
    :cond_5
    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double/2addr v9, v15

    cmpg-double v6, v9, v2

    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    if-gtz v6, :cond_7

    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v19

    const-wide v17, 0x408f400000000000L    # 1000.0

    mul-double v19, v19, v17

    cmpg-double v6, v2, v19

    if-gez v6, :cond_7

    .line 220
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double/2addr v2, v6

    invoke-static {v2, v3, v8}, Lcom/coloros/settings/utils/bf;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 221
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    mul-double/2addr v6, v13

    double-to-long v6, v6

    .line 222
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3, v8}, Lcom/coloros/settings/utils/bf;->b(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 223
    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    const-wide v13, 0x408f400000000000L    # 1000.0

    mul-double/2addr v3, v13

    long-to-double v13, v6

    cmpg-double v3, v3, v13

    if-gtz v3, :cond_6

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    cmpg-double v3, v13, v3

    if-gez v3, :cond_6

    goto/16 :goto_1

    .line 227
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    .line 230
    :cond_7
    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v19

    const-wide v17, 0x408f400000000000L    # 1000.0

    mul-double v19, v19, v17

    cmpg-double v6, v19, v2

    const-string v14, " GB"

    if-gtz v6, :cond_a

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v19

    cmpg-double v6, v2, v19

    if-gez v6, :cond_a

    cmpl-double v6, v0, v17

    if-nez v6, :cond_8

    .line 232
    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-static {v2, v3, v7}, Lcom/coloros/settings/utils/bf;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 233
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 234
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1, v7}, Lcom/coloros/settings/utils/bf;->b(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    :cond_8
    cmpl-double v0, v0, v11

    if-nez v0, :cond_1d

    const-wide v0, 0x408ff80000000000L    # 1023.0

    .line 237
    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_9

    .line 238
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/bf;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 241
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    :cond_a
    move-object/from16 v4, p1

    .line 243
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    cmpg-double v5, v5, v2

    const-wide/high16 v19, 0x4024000000000000L    # 10.0

    if-gtz v5, :cond_c

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double v5, v5, v19

    cmpg-double v5, v2, v5

    if-gez v5, :cond_c

    .line 244
    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-static {v2, v3, v7}, Lcom/coloros/settings/utils/bf;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-long v3, v3

    .line 246
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6, v7}, Lcom/coloros/settings/utils/bf;->b(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double v5, v5, v19

    long-to-double v7, v3

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_b

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v5, v15

    cmpg-double v5, v7, v5

    if-gez v5, :cond_b

    :goto_2
    move-wide v2, v3

    goto/16 :goto_0

    .line 251
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    .line 252
    :cond_c
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double v5, v5, v19

    cmpg-double v5, v5, v2

    if-gtz v5, :cond_e

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v5, v15

    cmpg-double v5, v2, v5

    if-gez v5, :cond_e

    .line 253
    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-static {v2, v3, v13}, Lcom/coloros/settings/utils/bf;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-long v3, v3

    .line 255
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6, v13}, Lcom/coloros/settings/utils/bf;->b(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v5, v15

    long-to-double v7, v3

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_d

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    const-wide v9, 0x408f400000000000L    # 1000.0

    mul-double/2addr v5, v9

    cmpg-double v5, v7, v5

    if-gez v5, :cond_d

    goto :goto_2

    .line 260
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    .line 261
    :cond_e
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v5, v15

    cmpg-double v5, v5, v2

    move-object/from16 p1, v7

    if-gtz v5, :cond_10

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    const-wide v17, 0x408f400000000000L    # 1000.0

    mul-double v21, v21, v17

    cmpg-double v5, v2, v21

    if-gez v5, :cond_10

    .line 262
    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-static {v2, v3, v8}, Lcom/coloros/settings/utils/bf;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    mul-double/2addr v3, v15

    double-to-long v3, v3

    .line 264
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7, v8}, Lcom/coloros/settings/utils/bf;->b(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    mul-double/2addr v5, v7

    long-to-double v7, v3

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_f

    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    cmpg-double v5, v7, v5

    if-gez v5, :cond_f

    :goto_3
    goto/16 :goto_2

    .line 269
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    .line 270
    :cond_10
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    const-wide v17, 0x408f400000000000L    # 1000.0

    mul-double v5, v5, v17

    cmpg-double v5, v5, v2

    const-string v6, " TB"

    if-gtz v5, :cond_14

    const-wide/high16 v9, 0x4010000000000000L    # 4.0

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    cmpg-double v5, v2, v21

    if-gez v5, :cond_13

    cmpl-double v5, v0, v17

    if-nez v5, :cond_11

    .line 272
    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v2, v4

    move-object/from16 v5, p1

    invoke-static {v2, v3, v5}, Lcom/coloros/settings/utils/bf;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 273
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 274
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1, v5}, Lcom/coloros/settings/utils/bf;->b(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    :cond_11
    cmpl-double v0, v0, v11

    if-nez v0, :cond_1d

    const-wide v0, 0x408ff80000000000L    # 1023.0

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    .line 277
    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v7, v0

    cmpl-double v0, v2, v7

    if-lez v0, :cond_12

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    .line 278
    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/bf;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 281
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    :cond_13
    move-object/from16 v5, p1

    goto :goto_4

    :cond_14
    move-object/from16 v5, p1

    const-wide/high16 v9, 0x4010000000000000L    # 4.0

    .line 283
    :goto_4
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    cmpg-double v7, v21, v2

    if-gtz v7, :cond_16

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    mul-double v21, v21, v19

    cmpg-double v7, v2, v21

    if-gez v7, :cond_16

    .line 284
    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    div-double/2addr v2, v7

    invoke-static {v2, v3, v5}, Lcom/coloros/settings/utils/bf;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 285
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v3, v7

    double-to-long v3, v3

    .line 286
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8, v5}, Lcom/coloros/settings/utils/bf;->b(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 287
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double v7, v7, v19

    long-to-double v13, v3

    cmpg-double v5, v7, v13

    if-gtz v5, :cond_15

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v7, v15

    cmpg-double v5, v13, v7

    if-gez v5, :cond_15

    goto/16 :goto_2

    .line 291
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    .line 292
    :cond_16
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    mul-double v21, v21, v19

    cmpg-double v7, v21, v2

    if-gtz v7, :cond_18

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    mul-double v21, v21, v15

    cmpg-double v7, v2, v21

    if-gez v7, :cond_18

    .line 293
    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-static {v2, v3, v13}, Lcom/coloros/settings/utils/bf;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 294
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v3, v7

    double-to-long v3, v3

    .line 295
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8, v13}, Lcom/coloros/settings/utils/bf;->b(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 296
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v7, v15

    long-to-double v13, v3

    cmpg-double v5, v7, v13

    if-gtz v5, :cond_17

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    const-wide v9, 0x408f400000000000L    # 1000.0

    mul-double/2addr v7, v9

    cmpg-double v5, v13, v7

    if-gez v5, :cond_17

    goto/16 :goto_3

    .line 300
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    .line 301
    :cond_18
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    mul-double v21, v21, v15

    cmpg-double v7, v21, v2

    move-object/from16 p1, v13

    if-gtz v7, :cond_1a

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    const-wide v17, 0x408f400000000000L    # 1000.0

    mul-double v21, v21, v17

    cmpg-double v7, v2, v21

    if-gez v7, :cond_1a

    .line 302
    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-static {v2, v3, v8}, Lcom/coloros/settings/utils/bf;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 303
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    mul-double/2addr v3, v15

    double-to-long v3, v3

    .line 304
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-static {v13, v14, v8}, Lcom/coloros/settings/utils/bf;->b(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 305
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    const-wide v9, 0x408f400000000000L    # 1000.0

    mul-double/2addr v7, v9

    long-to-double v9, v3

    cmpg-double v5, v7, v9

    if-gtz v5, :cond_19

    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    cmpg-double v5, v9, v7

    if-gez v5, :cond_19

    goto/16 :goto_2

    .line 309
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    :cond_1a
    move-wide v6, v9

    .line 310
    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v9, v6

    cmpg-double v9, v9, v2

    const-string v10, " PB"

    if-gtz v9, :cond_1f

    const-wide/high16 v13, 0x4014000000000000L    # 5.0

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    cmpg-double v9, v2, v17

    if-gez v9, :cond_1e

    cmpl-double v6, v0, v6

    if-nez v6, :cond_1b

    .line 312
    invoke-static {v0, v1, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double/2addr v2, v6

    invoke-static {v2, v3, v5}, Lcom/coloros/settings/utils/bf;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 313
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    invoke-static {v0, v1, v13, v14}, Ljava/lang/Math;->pow(DD)D

    .line 314
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1, v5}, Lcom/coloros/settings/utils/bf;->b(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    :cond_1b
    cmpl-double v0, v0, v11

    if-nez v0, :cond_1d

    const-wide v0, 0x408ff80000000000L    # 1023.0

    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    .line 317
    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v5, v0

    cmpl-double v0, v2, v5

    if-lez v0, :cond_1c

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    .line 318
    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/bf;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 321
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    :cond_1d
    const/4 v4, 0x0

    goto/16 :goto_6

    :cond_1e
    move-wide v0, v13

    goto :goto_5

    :cond_1f
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    .line 323
    :goto_5
    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    cmpg-double v4, v6, v2

    if-gtz v4, :cond_21

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double v6, v6, v19

    cmpg-double v4, v2, v6

    if-gez v4, :cond_21

    .line 324
    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double/2addr v2, v6

    invoke-static {v2, v3, v5}, Lcom/coloros/settings/utils/bf;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 325
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v3, v6

    double-to-long v3, v3

    .line 326
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7, v5}, Lcom/coloros/settings/utils/bf;->b(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 327
    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double v5, v5, v19

    long-to-double v7, v3

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_20

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v15

    cmpg-double v0, v7, v0

    if-gez v0, :cond_20

    .line 328
    invoke-static {v3, v4}, Lcom/coloros/settings/utils/bf;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 331
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    .line 332
    :cond_21
    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double v4, v4, v19

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_23

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v15

    cmpg-double v4, v2, v4

    if-gez v4, :cond_23

    .line 333
    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v2, v4

    move-object/from16 v4, p1

    invoke-static {v2, v3, v4}, Lcom/coloros/settings/utils/bf;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 334
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-long v5, v5

    .line 335
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3, v4}, Lcom/coloros/settings/utils/bf;->b(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v3, v15

    long-to-double v7, v5

    cmpg-double v3, v3, v7

    if-gtz v3, :cond_22

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v3

    cmpg-double v0, v7, v0

    if-gez v0, :cond_22

    .line 337
    invoke-static {v5, v6}, Lcom/coloros/settings/utils/bf;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 340
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 342
    :cond_23
    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v15

    cmpl-double v4, v4, v2

    if-gtz v4, :cond_24

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    cmpl-double v4, v2, v4

    if-gez v4, :cond_24

    .line 346
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    div-double/2addr v2, v0

    invoke-static {v2, v3, v8}, Lcom/coloros/settings/utils/bf;->b(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_6
    return-object v4

    .line 343
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the value of the incoming is wrong"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;DLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 372
    new-instance v0, Ljava/text/DecimalFormat;

    new-instance v1, Ljava/text/DecimalFormatSymbols;

    .line 373
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v1, p0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v0, p3, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 374
    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;DLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 428
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 429
    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2, p3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v2, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    .line 431
    invoke-static {v0}, Landroid/text/BidiFormatter;->getInstance(Ljava/util/Locale;)Landroid/text/BidiFormatter;

    move-result-object p2

    const-string p3, "com.android.internal.R.string.fileSizeSuffix"

    .line 432
    invoke-static {p3}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 1391
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    const-string p4, ""

    goto/16 :goto_3

    :cond_0
    if-nez p0, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 p1, 0x0

    const/4 v4, -0x1

    .line 1399
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x42

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-eq v5, v6, :cond_7

    const/16 v1, 0x8db

    if-eq v5, v1, :cond_6

    const/16 v1, 0x957

    if-eq v5, v1, :cond_5

    const/16 v1, 0x995

    if-eq v5, v1, :cond_4

    const/16 v1, 0x9f2

    if-eq v5, v1, :cond_3

    const/16 v1, 0xa6e

    if-eq v5, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "TB"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v8

    goto :goto_1

    :cond_3
    const-string v1, "PB"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v7

    goto :goto_1

    :cond_4
    const-string v1, "MB"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v0

    goto :goto_1

    :cond_5
    const-string v1, "KB"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v3

    goto :goto_1

    :cond_6
    const-string v1, "GB"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v9

    goto :goto_1

    :cond_7
    const-string v5, "B"

    invoke-virtual {p4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_1

    :cond_8
    :goto_0
    move v1, v4

    :goto_1
    if-eqz v1, :cond_e

    if-eq v1, v3, :cond_d

    if-eq v1, v0, :cond_c

    if-eq v1, v9, :cond_b

    if-eq v1, v8, :cond_a

    if-eq v1, v7, :cond_9

    goto :goto_2

    :cond_9
    const p1, 0x7f12101b

    .line 1416
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_a
    const p1, 0x7f121683

    .line 1413
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_b
    const p1, 0x7f120a52

    .line 1410
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_c
    const p1, 0x7f120d57

    .line 1407
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_d
    const p1, 0x7f120bd3

    .line 1404
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_e
    const p1, 0x7f120462

    .line 1401
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    if-nez p1, :cond_f

    goto :goto_3

    :cond_f
    move-object p4, p1

    :goto_3
    aput-object p4, v2, v3

    .line 431
    invoke-virtual {p0, p3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(FLjava/lang/String;)F
    .locals 3

    const-string v0, "GB"

    .line 154
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "MB"

    if-nez v1, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return p0

    .line 157
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x3e4ccccd    # 0.2f

    :goto_0
    add-float/2addr p0, p1

    goto :goto_1

    .line 164
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/high16 p1, 0x43480000    # 200.0f

    goto :goto_0

    :cond_2
    :goto_1
    return p0
.end method

.method private static b(Ljava/lang/String;)F
    .locals 5

    .line 109
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 110
    sget-object v0, Lcom/coloros/settings/utils/bf;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 112
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "B"

    .line 113
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    .line 116
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    if-nez v0, :cond_3

    return v1

    .line 125
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    sget-object v1, Lcom/coloros/settings/utils/bf;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 127
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 128
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    :cond_4
    return v1
.end method

.method private static b(DLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 366
    new-instance v0, Ljava/text/DecimalFormat;

    new-instance v1, Ljava/text/DecimalFormatSymbols;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v0, p2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 367
    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(J)Ljava/lang/String;
    .locals 2

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    .line 135
    :try_start_0
    invoke-static {p0, p1, v0, v1}, Lcom/coloros/settings/utils/bf;->a(JD)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-wide/16 p0, 0x0

    .line 137
    invoke-static {p0, p1, v0, v1}, Lcom/coloros/settings/utils/bf;->a(JD)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(J)Ljava/lang/String;
    .locals 2

    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 143
    :try_start_0
    invoke-static {p0, p1, v0, v1}, Lcom/coloros/settings/utils/bf;->a(JD)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-wide/16 p0, 0x0

    .line 145
    invoke-static {p0, p1, v0, v1}, Lcom/coloros/settings/utils/bf;->a(JD)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
