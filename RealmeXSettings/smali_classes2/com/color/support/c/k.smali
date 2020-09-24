.class public final Lcom/color/support/c/k;
.super Ljava/lang/Object;
.source "ColorUnitConversionUtils.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/color/support/c/k;->a:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/color/support/c/k;->b:Ljava/lang/String;

    const-string v0, "0.98"

    .line 51
    iput-object v0, p0, Lcom/color/support/c/k;->c:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/color/support/c/k;->d:Landroid/content/Context;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$string;->more_time_download:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/c/k;->a:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$string;->most_time_download:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/c/k;->b:Ljava/lang/String;

    const-wide v0, 0x3fef5c28f5c28f5cL    # 0.98

    const-string p1, "0.00"

    .line 78
    invoke-direct {p0, v0, v1, p1}, Lcom/color/support/c/k;->b(DLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/c/k;->c:Ljava/lang/String;

    .line 80
    iget-object p1, p0, Lcom/color/support/c/k;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$string;->byteShort:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/c/k;->e:Ljava/lang/String;

    .line 81
    iget-object p1, p0, Lcom/color/support/c/k;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$string;->kilobyteShort:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/c/k;->f:Ljava/lang/String;

    .line 82
    iget-object p1, p0, Lcom/color/support/c/k;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$string;->megabyteShort:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/c/k;->g:Ljava/lang/String;

    .line 83
    iget-object p1, p0, Lcom/color/support/c/k;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$string;->gigabyteShort:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/c/k;->h:Ljava/lang/String;

    .line 84
    iget-object p1, p0, Lcom/color/support/c/k;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$string;->terabyteShort:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/c/k;->i:Ljava/lang/String;

    .line 85
    iget-object p1, p0, Lcom/color/support/c/k;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$string;->petabyteShort:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/c/k;->j:Ljava/lang/String;

    .line 86
    iget-object p1, p0, Lcom/color/support/c/k;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$string;->byteSpeed:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/c/k;->k:Ljava/lang/String;

    .line 87
    iget-object p1, p0, Lcom/color/support/c/k;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$string;->kiloByteSpeed:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/c/k;->l:Ljava/lang/String;

    .line 88
    iget-object p1, p0, Lcom/color/support/c/k;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$string;->megaByteSpeed:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/c/k;->m:Ljava/lang/String;

    .line 89
    iget-object p1, p0, Lcom/color/support/c/k;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$string;->gigaByteSpeed:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/c/k;->n:Ljava/lang/String;

    .line 90
    iget-object p1, p0, Lcom/color/support/c/k;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$string;->teraByteSpeed:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/c/k;->o:Ljava/lang/String;

    .line 91
    iget-object p1, p0, Lcom/color/support/c/k;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$string;->petaByteSpeed:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/c/k;->p:Ljava/lang/String;

    return-void
.end method

.method private static a(DLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 105
    new-instance v0, Ljava/text/DecimalFormat;

    new-instance v1, Ljava/text/DecimalFormatSymbols;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v0, p2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 109
    sget-object p2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, p2}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 111
    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(JD)Ljava/lang/String;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, p1

    :goto_0
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    cmp-long v6, v6, v3

    const-string v7, "0"

    const-wide v8, 0x408f400000000000L    # 1000.0

    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    if-gtz v6, :cond_1

    long-to-double v12, v3

    cmpg-double v6, v12, v8

    if-gez v6, :cond_1

    .line 287
    invoke-static {v12, v13, v7}, Lcom/color/support/c/k;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 288
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 289
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v0, v4, v5, v7}, Lcom/color/support/c/k;->b(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    long-to-double v4, v2

    cmpg-double v6, v8, v4

    if-gtz v6, :cond_0

    cmpg-double v4, v4, v10

    if-gez v4, :cond_0

    .line 291
    invoke-virtual {v0, v2, v3}, Lcom/color/support/c/k;->a(J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 293
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/color/support/c/k;->e:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    :cond_1
    long-to-double v3, v3

    cmpg-double v6, v8, v3

    const-wide v12, 0x412f400000000000L    # 1024000.0

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    if-gtz v6, :cond_3

    cmpg-double v6, v3, v12

    if-gez v6, :cond_3

    div-double/2addr v3, v1

    .line 297
    invoke-static {v3, v4, v7}, Lcom/color/support/c/k;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 298
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    double-to-long v8, v1

    mul-long/2addr v4, v8

    .line 299
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-direct {v0, v8, v9, v7}, Lcom/color/support/c/k;->b(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    long-to-double v6, v4

    cmpg-double v8, v12, v6

    if-gtz v8, :cond_2

    .line 300
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double v8, v8, v16

    cmpg-double v6, v6, v8

    if-gez v6, :cond_2

    :goto_1
    move-wide v3, v4

    goto/16 :goto_0

    .line 303
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/color/support/c/k;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    :cond_3
    cmpg-double v6, v12, v3

    const-string v12, "0.0"

    if-gtz v6, :cond_5

    .line 306
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    mul-double v18, v18, v16

    cmpg-double v6, v3, v18

    if-gez v6, :cond_5

    .line 308
    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-static {v3, v4, v12}, Lcom/color/support/c/k;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 309
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-long v4, v4

    .line 310
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v0, v6, v7, v12}, Lcom/color/support/c/k;->b(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 311
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double v6, v6, v16

    long-to-double v12, v4

    cmpg-double v6, v6, v12

    if-gtz v6, :cond_4

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v6, v8

    cmpg-double v6, v12, v6

    if-gez v6, :cond_4

    goto :goto_1

    .line 314
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/color/support/c/k;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 317
    :cond_5
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    mul-double v18, v18, v16

    cmpg-double v6, v18, v3

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    if-gtz v6, :cond_7

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    const-wide v20, 0x408f400000000000L    # 1000.0

    mul-double v18, v18, v20

    cmpg-double v6, v3, v18

    if-gez v6, :cond_7

    .line 319
    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-static {v3, v4, v7}, Lcom/color/support/c/k;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 320
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double/2addr v4, v12

    double-to-long v4, v4

    .line 321
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-direct {v0, v12, v13, v7}, Lcom/color/support/c/k;->b(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 322
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v12

    long-to-double v12, v4

    cmpg-double v6, v6, v12

    if-gtz v6, :cond_6

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    cmpg-double v6, v12, v6

    if-gez v6, :cond_6

    goto/16 :goto_1

    .line 325
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/color/support/c/k;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 328
    :cond_7
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    const-wide v20, 0x408f400000000000L    # 1000.0

    mul-double v18, v18, v20

    cmpg-double v6, v18, v3

    const-wide v18, 0x408ff80000000000L    # 1023.0

    const-string v13, "0.00"

    if-gtz v6, :cond_a

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    cmpg-double v6, v3, v22

    if-gez v6, :cond_a

    cmpl-double v6, v1, v20

    if-nez v6, :cond_8

    .line 330
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-static {v3, v4, v13}, Lcom/color/support/c/k;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 331
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 332
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2, v13}, Lcom/color/support/c/k;->b(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/color/support/c/k;->h:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    :cond_8
    cmpl-double v1, v1, v10

    if-nez v1, :cond_21

    .line 335
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double v1, v1, v18

    cmpl-double v1, v3, v1

    if-lez v1, :cond_9

    .line 336
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/color/support/c/k;->a(J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 338
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/color/support/c/k;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/color/support/c/k;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 342
    :cond_a
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    cmpg-double v6, v14, v3

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    if-gtz v6, :cond_c

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    mul-double v20, v20, v14

    cmpg-double v6, v3, v20

    if-gez v6, :cond_c

    .line 344
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-static {v3, v4, v13}, Lcom/color/support/c/k;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 345
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-long v4, v4

    .line 346
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v0, v6, v7, v13}, Lcom/color/support/c/k;->b(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 347
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v6, v14

    long-to-double v12, v4

    cmpg-double v6, v6, v12

    if-gtz v6, :cond_b

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double v6, v6, v16

    cmpg-double v6, v12, v6

    if-gez v6, :cond_b

    goto/16 :goto_1

    .line 350
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/color/support/c/k;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 353
    :cond_c
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    mul-double v20, v20, v14

    cmpg-double v6, v20, v3

    if-gtz v6, :cond_e

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    mul-double v20, v20, v16

    cmpg-double v6, v3, v20

    if-gez v6, :cond_e

    .line 355
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-static {v3, v4, v12}, Lcom/color/support/c/k;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 356
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-long v4, v4

    .line 357
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v0, v6, v7, v12}, Lcom/color/support/c/k;->b(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 358
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double v6, v6, v16

    long-to-double v12, v4

    cmpg-double v6, v6, v12

    if-gtz v6, :cond_d

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v8

    cmpg-double v6, v12, v6

    if-gez v6, :cond_d

    goto/16 :goto_1

    .line 361
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/color/support/c/k;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 364
    :cond_e
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    mul-double v20, v20, v16

    cmpg-double v6, v20, v3

    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    if-gtz v6, :cond_10

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    const-wide v24, 0x408f400000000000L    # 1000.0

    mul-double v22, v22, v24

    cmpg-double v6, v3, v22

    if-gez v6, :cond_10

    .line 368
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-static {v3, v4, v7}, Lcom/color/support/c/k;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 369
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double/2addr v4, v12

    double-to-long v4, v4

    .line 370
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-direct {v0, v12, v13, v7}, Lcom/color/support/c/k;->b(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 371
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v8

    long-to-double v8, v4

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_f

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    cmpg-double v6, v8, v6

    if-gez v6, :cond_f

    goto/16 :goto_1

    .line 374
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/color/support/c/k;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 377
    :cond_10
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    const-wide v24, 0x408f400000000000L    # 1000.0

    mul-double v22, v22, v24

    cmpg-double v6, v22, v3

    if-gtz v6, :cond_13

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    cmpg-double v6, v3, v22

    if-gez v6, :cond_13

    cmpl-double v6, v1, v24

    if-nez v6, :cond_11

    .line 380
    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-static {v3, v4, v13}, Lcom/color/support/c/k;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 381
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->pow(DD)D

    .line 382
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2, v13}, Lcom/color/support/c/k;->b(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/color/support/c/k;->i:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    :cond_11
    cmpl-double v1, v1, v10

    if-nez v1, :cond_21

    .line 385
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double v1, v1, v18

    cmpl-double v1, v3, v1

    if-lez v1, :cond_12

    .line 386
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/color/support/c/k;->a(J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 388
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/color/support/c/k;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/color/support/c/k;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 392
    :cond_13
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    cmpg-double v6, v8, v3

    if-gtz v6, :cond_15

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    const-wide/high16 v20, 0x4024000000000000L    # 10.0

    mul-double v8, v8, v20

    cmpg-double v6, v3, v8

    if-gez v6, :cond_15

    .line 394
    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-static {v3, v4, v13}, Lcom/color/support/c/k;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 395
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-long v4, v4

    .line 396
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v0, v6, v7, v13}, Lcom/color/support/c/k;->b(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 397
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    mul-double/2addr v6, v8

    long-to-double v8, v4

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_14

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double v6, v6, v16

    cmpg-double v6, v8, v6

    if-gez v6, :cond_14

    goto/16 :goto_1

    .line 400
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/color/support/c/k;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 403
    :cond_15
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    const-wide/high16 v20, 0x4024000000000000L    # 10.0

    mul-double v8, v8, v20

    cmpg-double v6, v8, v3

    if-gtz v6, :cond_17

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double v8, v8, v16

    cmpg-double v6, v3, v8

    if-gez v6, :cond_17

    .line 405
    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-static {v3, v4, v12}, Lcom/color/support/c/k;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 406
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-long v4, v4

    .line 407
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v0, v6, v7, v12}, Lcom/color/support/c/k;->b(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 408
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double v6, v6, v16

    long-to-double v8, v4

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_16

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v10

    cmpg-double v6, v8, v6

    if-gez v6, :cond_16

    goto/16 :goto_1

    .line 411
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/color/support/c/k;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 414
    :cond_17
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double v8, v8, v16

    cmpg-double v6, v8, v3

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    if-gtz v6, :cond_19

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    const-wide v24, 0x408f400000000000L    # 1000.0

    mul-double v22, v22, v24

    cmpg-double v6, v3, v22

    if-gez v6, :cond_19

    .line 416
    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-static {v3, v4, v7}, Lcom/color/support/c/k;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 417
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double/2addr v4, v12

    double-to-long v4, v4

    .line 418
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-direct {v0, v12, v13, v7}, Lcom/color/support/c/k;->b(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 419
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v12

    long-to-double v12, v4

    cmpg-double v6, v6, v12

    if-gtz v6, :cond_18

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    cmpg-double v6, v12, v6

    if-gez v6, :cond_18

    goto/16 :goto_1

    .line 422
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/color/support/c/k;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 425
    :cond_19
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    const-wide v24, 0x408f400000000000L    # 1000.0

    mul-double v22, v22, v24

    cmpg-double v6, v22, v3

    if-gtz v6, :cond_1c

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    cmpg-double v6, v3, v22

    if-gez v6, :cond_1c

    cmpl-double v6, v1, v24

    if-nez v6, :cond_1a

    .line 427
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-static {v3, v4, v13}, Lcom/color/support/c/k;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 428
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 429
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2, v13}, Lcom/color/support/c/k;->b(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/color/support/c/k;->j:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    :cond_1a
    cmpl-double v1, v1, v10

    if-nez v1, :cond_21

    .line 432
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double v1, v1, v18

    cmpl-double v1, v3, v1

    if-lez v1, :cond_1b

    .line 433
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/color/support/c/k;->a(J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 435
    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/color/support/c/k;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/color/support/c/k;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 439
    :cond_1c
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_1e

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    mul-double/2addr v1, v5

    cmpg-double v1, v3, v1

    if-gez v1, :cond_1e

    .line 441
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    div-double/2addr v3, v1

    invoke-static {v3, v4, v13}, Lcom/color/support/c/k;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 442
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    .line 443
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v0, v4, v5, v13}, Lcom/color/support/c/k;->b(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 444
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double/2addr v4, v6

    long-to-double v6, v2

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_1d

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double v4, v4, v16

    cmpg-double v4, v6, v4

    if-gez v4, :cond_1d

    .line 445
    invoke-virtual {v0, v2, v3}, Lcom/color/support/c/k;->a(J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 447
    :cond_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/color/support/c/k;->j:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 450
    :cond_1e
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    mul-double/2addr v1, v5

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_20

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double v1, v1, v16

    cmpg-double v1, v3, v1

    if-gez v1, :cond_20

    .line 452
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    div-double/2addr v3, v1

    invoke-static {v3, v4, v12}, Lcom/color/support/c/k;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 453
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    .line 454
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v0, v4, v5, v12}, Lcom/color/support/c/k;->b(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 455
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double v4, v4, v16

    long-to-double v6, v2

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_1f

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v8

    cmpg-double v4, v6, v4

    if-gez v4, :cond_1f

    .line 456
    invoke-virtual {v0, v2, v3}, Lcom/color/support/c/k;->a(J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 458
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/color/support/c/k;->j:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 461
    :cond_20
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double v1, v1, v16

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_22

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, v5

    cmpg-double v1, v3, v1

    if-gez v1, :cond_22

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-direct {v0, v3, v4, v7}, Lcom/color/support/c/k;->b(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/color/support/c/k;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_21
    :goto_2
    return-object v5

    .line 466
    :cond_22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "the value of the incoming is wrong"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private b(DLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 116
    new-instance v0, Ljava/text/DecimalFormat;

    new-instance v1, Ljava/text/DecimalFormatSymbols;

    iget-object v2, p0, Lcom/color/support/c/k;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v0, p3, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 118
    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(J)Ljava/lang/String;
    .locals 2

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    .line 262
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/color/support/c/k;->a(JD)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(J)Ljava/lang/String;
    .locals 2

    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 272
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/color/support/c/k;->a(JD)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
