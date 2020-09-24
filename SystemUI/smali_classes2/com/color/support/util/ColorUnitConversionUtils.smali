.class public Lcom/color/support/util/ColorUnitConversionUtils;
.super Ljava/lang/Object;
.source "ColorUnitConversionUtils.java"


# static fields
.field private static final HUNDRED:D = 100.0

.field private static final MILLION:D = 1000000.0

.field private static final NOPOINT:Ljava/lang/String; = "0"

.field private static final ONEPOINT:Ljava/lang/String; = "0.0"

.field private static final SIXPOINT:Ljava/lang/String; = "0.00000"

.field private static final SPECIAL:D = 1024.0

.field private static final SQUARE_FIVE:I = 0x5

.field private static final SQUARE_FOUR:I = 0x4

.field private static final SQUARE_THREE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ColorUnitConversionUtils"

.field private static final TEN:D = 10.0

.field private static final THOUSAND:D = 1000.0

.field private static final TWOPOINT:Ljava/lang/String; = "0.00"


# instance fields
.field private mByteShort:Ljava/lang/String;

.field private mByteSpeed:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mGigaByteShort:Ljava/lang/String;

.field private mGigaByteSpeed:Ljava/lang/String;

.field private mKiloByteShort:Ljava/lang/String;

.field private mKiloByteSpeed:Ljava/lang/String;

.field private mMegaByteShort:Ljava/lang/String;

.field private mMegaByteSpeed:Ljava/lang/String;

.field private mMoreDownLoad:Ljava/lang/String;

.field private mMostDownLoad:Ljava/lang/String;

.field private mPetaByteShort:Ljava/lang/String;

.field private mPetaByteSpeed:Ljava/lang/String;

.field private mSpecialPoint:Ljava/lang/String;

.field private mTeraByteShort:Ljava/lang/String;

.field private mTeraByteSpeed:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mMoreDownLoad:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mMostDownLoad:Ljava/lang/String;

    const-string v0, "0.98"

    .line 51
    iput-object v0, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mSpecialPoint:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$string;->more_time_download:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mMoreDownLoad:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$string;->most_time_download:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mMostDownLoad:Ljava/lang/String;

    const-wide v0, 0x3fef5c28f5c28f5cL    # 0.98

    const-string p1, "0.00"

    .line 78
    invoke-direct {p0, v0, v1, p1}, Lcom/color/support/util/ColorUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mSpecialPoint:Ljava/lang/String;

    .line 80
    iget-object p1, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$string;->byteShort:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mByteShort:Ljava/lang/String;

    .line 81
    iget-object p1, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$string;->kilobyteShort:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mKiloByteShort:Ljava/lang/String;

    .line 82
    iget-object p1, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$string;->megabyteShort:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mMegaByteShort:Ljava/lang/String;

    .line 83
    iget-object p1, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$string;->gigabyteShort:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mGigaByteShort:Ljava/lang/String;

    .line 84
    iget-object p1, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$string;->terabyteShort:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mTeraByteShort:Ljava/lang/String;

    .line 85
    iget-object p1, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$string;->petabyteShort:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mPetaByteShort:Ljava/lang/String;

    .line 86
    iget-object p1, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$string;->byteSpeed:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mByteSpeed:Ljava/lang/String;

    .line 87
    iget-object p1, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$string;->kiloByteSpeed:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mKiloByteSpeed:Ljava/lang/String;

    .line 88
    iget-object p1, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$string;->megaByteSpeed:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mMegaByteSpeed:Ljava/lang/String;

    .line 89
    iget-object p1, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$string;->gigaByteSpeed:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mGigaByteSpeed:Ljava/lang/String;

    .line 90
    iget-object p1, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$string;->teraByteSpeed:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mTeraByteSpeed:Ljava/lang/String;

    .line 91
    iget-object p1, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$string;->petaByteSpeed:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mPetaByteSpeed:Ljava/lang/String;

    return-void
.end method

.method private formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 116
    new-instance v0, Ljava/text/DecimalFormat;

    new-instance v1, Ljava/text/DecimalFormatSymbols;

    iget-object p0, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v1, p0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v0, p3, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 118
    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private formatNumber(DLjava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 105
    new-instance p0, Ljava/text/DecimalFormat;

    new-instance v0, Ljava/text/DecimalFormatSymbols;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {p0, p3, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    if-nez p4, :cond_0

    .line 107
    sget-object p3, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {p0, p3}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    goto :goto_0

    .line 109
    :cond_0
    sget-object p3, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p0, p3}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 111
    :goto_0
    invoke-virtual {p0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getChineseDownloadValue(J)Ljava/lang/String;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, v0, p1

    const-wide v3, 0x40c3880000000000L    # 10000.0

    if-gtz v2, :cond_1

    long-to-double v5, p1

    cmpg-double v2, v5, v3

    if-gez v2, :cond_1

    cmp-long p0, p1, v0

    if-nez p0, :cond_0

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    .line 128
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_1
    long-to-double p1, p1

    cmpg-double v0, v3, p1

    const-wide v1, 0x40f86a0000000000L    # 100000.0

    const-string v5, "0.0"

    const/4 v6, 0x1

    if-gtz v0, :cond_3

    cmpg-double v0, p1, v1

    if-gez v0, :cond_3

    div-double/2addr p1, v3

    .line 131
    invoke-direct {p0, p1, p2, v5, v6}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    double-to-int v0, p1

    int-to-double v1, v0

    cmpl-double v1, p1, v1

    if-nez v1, :cond_2

    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mMoreDownLoad:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 136
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mMoreDownLoad:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_3
    cmpg-double v0, v1, p1

    const-wide v1, 0x412e848000000000L    # 1000000.0

    if-gtz v0, :cond_5

    cmpg-double v0, p1, v1

    if-gez v0, :cond_5

    div-double/2addr p1, v3

    .line 140
    invoke-direct {p0, p1, p2, v5, v6}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    double-to-int v0, p1

    int-to-double v1, v0

    cmpl-double v1, p1, v1

    if-nez v1, :cond_4

    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mMoreDownLoad:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 145
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mMoreDownLoad:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_5
    cmpg-double v0, v1, p1

    const-string v1, "0.00"

    const-wide v7, 0x416312d000000000L    # 1.0E7

    if-gtz v0, :cond_6

    cmpg-double v0, p1, v7

    if-gez v0, :cond_6

    div-double/2addr p1, v3

    .line 149
    invoke-direct {p0, p1, p2, v1, v6}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    double-to-int p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mMoreDownLoad:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_6
    cmpg-double v0, v7, p1

    const-wide v7, 0x4197d78400000000L    # 1.0E8

    if-gtz v0, :cond_7

    cmpg-double v0, p1, v7

    if-gez v0, :cond_7

    div-double/2addr p1, v3

    .line 153
    invoke-direct {p0, p1, p2, v1, v6}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    double-to-int p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mMoreDownLoad:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_7
    cmpl-double v0, p1, v7

    if-ltz v0, :cond_8

    div-double/2addr p1, v7

    const-string v0, "0.00000"

    .line 157
    invoke-direct {p0, p1, p2, v0, v6}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v5, v1}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mMostDownLoad:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    .line 161
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "the value of the incoming is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getChineseStripValue(J)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, v0, p1

    const-wide v1, 0x40c3880000000000L    # 10000.0

    if-gtz v0, :cond_0

    long-to-double v3, p1

    cmpg-double v0, v3, v1

    if-gez v0, :cond_0

    .line 215
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    long-to-double p1, p1

    cmpg-double v0, v1, p1

    const/4 v3, 0x1

    const-wide v4, 0x412e848000000000L    # 1000000.0

    if-gtz v0, :cond_2

    cmpg-double v0, p1, v4

    if-gez v0, :cond_2

    div-double/2addr p1, v1

    const-string v0, "0.0"

    .line 218
    invoke-direct {p0, p1, p2, v0, v3}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    double-to-int v0, p1

    int-to-double v1, v0

    cmpl-double v1, p1, v1

    if-nez v1, :cond_1

    .line 221
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mMoreDownLoad:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 223
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mMoreDownLoad:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    cmpg-double v0, v4, p1

    if-gtz v0, :cond_3

    const-wide v4, 0x4197d78400000000L    # 1.0E8

    cmpg-double v0, p1, v4

    if-gez v0, :cond_3

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-double/2addr p1, v1

    const-string v1, "0"

    invoke-direct {p0, p1, p2, v1, v3}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mMoreDownLoad:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    .line 230
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "the value of the incoming is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getEnglishDownloadValue(J)Ljava/lang/String;
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v2, v0, p1

    const-wide v3, 0x40c3880000000000L    # 10000.0

    if-gtz v2, :cond_1

    long-to-double v5, p1

    cmpg-double v2, v5, v3

    if-gez v2, :cond_1

    cmp-long p0, p1, v0

    if-nez p0, :cond_0

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    .line 172
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_1
    long-to-double p1, p1

    cmpg-double v0, v3, p1

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    const-wide v5, 0x40f86a0000000000L    # 100000.0

    const-string v7, "0.0"

    const/4 v8, 0x1

    if-gtz v0, :cond_2

    cmpg-double v0, p1, v5

    if-gez v0, :cond_2

    div-double/2addr p1, v3

    .line 175
    invoke-direct {p0, p1, p2, v7, v8}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    mul-double/2addr p1, v1

    double-to-int p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mMoreDownLoad:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_2
    cmpg-double v0, v5, p1

    const-wide v5, 0x412e848000000000L    # 1000000.0

    if-gtz v0, :cond_3

    cmpg-double v0, p1, v5

    if-gez v0, :cond_3

    div-double/2addr p1, v3

    .line 179
    invoke-direct {p0, p1, p2, v7, v8}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    mul-double/2addr p1, v1

    double-to-int p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mMoreDownLoad:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_3
    cmpg-double v0, v5, p1

    const-string v1, "0.00"

    const-wide v5, 0x416312d000000000L    # 1.0E7

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    if-gtz v0, :cond_5

    cmpg-double v0, p1, v5

    if-gez v0, :cond_5

    div-double/2addr p1, v3

    .line 183
    invoke-direct {p0, p1, p2, v1, v8}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 184
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    div-double/2addr v0, v9

    double-to-int p2, v0

    int-to-double v2, p2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_4

    .line 187
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mMostDownLoad:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 189
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mMostDownLoad:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_5
    cmpg-double v0, v5, p1

    const-wide v5, 0x4197d78400000000L    # 1.0E8

    if-gtz v0, :cond_7

    cmpg-double v0, p1, v5

    if-gez v0, :cond_7

    div-double/2addr p1, v3

    .line 193
    invoke-direct {p0, p1, p2, v1, v8}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 194
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    div-double/2addr v0, v9

    double-to-int p2, v0

    int-to-double v2, p2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_6

    .line 197
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mMostDownLoad:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 199
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mMostDownLoad:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_7
    cmpl-double v0, p1, v5

    if-ltz v0, :cond_8

    div-double/2addr p1, v5

    const-string v0, "0.00000"

    .line 203
    invoke-direct {p0, p1, p2, v0, v8}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v7, v1}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    mul-double/2addr p1, v9

    double-to-int p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mMostDownLoad:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    .line 207
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "the value of the incoming is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getEnglishStripValue(J)Ljava/lang/String;
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, v0, p1

    const-wide v1, 0x40c3880000000000L    # 10000.0

    if-gtz v0, :cond_0

    long-to-double v3, p1

    cmpg-double v0, v3, v1

    if-gez v0, :cond_0

    .line 238
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    long-to-double p1, p1

    cmpg-double v0, v1, p1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    const/4 v5, 0x1

    const-wide v6, 0x412e848000000000L    # 1000000.0

    if-gtz v0, :cond_1

    cmpg-double v0, p1, v6

    if-gez v0, :cond_1

    div-double/2addr p1, v1

    const-string v0, "0.0"

    .line 241
    invoke-direct {p0, p1, p2, v0, v5}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    mul-double/2addr p1, v3

    double-to-int p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mMoreDownLoad:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    cmpg-double v0, v6, p1

    if-gtz v0, :cond_2

    const-wide v6, 0x4197d78400000000L    # 1.0E8

    cmpg-double v0, p1, v6

    if-gez v0, :cond_2

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-double/2addr p1, v1

    const-string v1, "0"

    invoke-direct {p0, p1, p2, v1, v5}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    mul-double/2addr p1, v3

    double-to-int p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mMoreDownLoad:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    .line 248
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "the value of the incoming is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private isChinese()Z
    .locals 1

    .line 95
    iget-object p0, p0, Lcom/color/support/util/ColorUnitConversionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "CN"

    .line 97
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getDownLoadValue(J)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 652
    invoke-direct {p0}, Lcom/color/support/util/ColorUnitConversionUtils;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    invoke-direct {p0, p1, p2}, Lcom/color/support/util/ColorUnitConversionUtils;->getChineseDownloadValue(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 655
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/color/support/util/ColorUnitConversionUtils;->getEnglishDownloadValue(J)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getDownLoadValue(JLjava/util/Locale;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 691
    invoke-virtual {p3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    if-eqz p3, :cond_2

    const-string v1, "CN"

    .line 693
    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "TW"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "HK"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 694
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/color/support/util/ColorUnitConversionUtils;->getChineseDownloadValue(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    .line 696
    invoke-direct {p0, p1, p2}, Lcom/color/support/util/ColorUnitConversionUtils;->getEnglishDownloadValue(J)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public getSpeedValue(J)Ljava/lang/String;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-wide/16 v3, 0x0

    cmp-long v3, v3, v1

    const-string v4, "0"

    const/4 v5, 0x1

    const-wide v6, 0x408f400000000000L    # 1000.0

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    if-gtz v3, :cond_1

    long-to-double v10, v1

    cmpg-double v3, v10, v6

    if-gez v3, :cond_1

    .line 483
    invoke-direct {v0, v10, v11, v4, v5}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 484
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 485
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-direct {v0, v10, v11, v4}, Lcom/color/support/util/ColorUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    long-to-double v4, v2

    cmpg-double v6, v6, v4

    if-gtz v6, :cond_0

    cmpg-double v4, v4, v8

    if-gez v4, :cond_0

    .line 487
    invoke-virtual {v0, v2, v3}, Lcom/color/support/util/ColorUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 489
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mByteSpeed:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    long-to-double v1, v1

    cmpg-double v3, v6, v1

    const-wide v10, 0x412f400000000000L    # 1024000.0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    if-gtz v3, :cond_3

    cmpg-double v3, v1, v10

    if-gez v3, :cond_3

    div-double/2addr v1, v8

    .line 493
    invoke-direct {v0, v1, v2, v4, v5}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 494
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v5, 0x400

    mul-long/2addr v2, v5

    .line 495
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-direct {v0, v5, v6, v4}, Lcom/color/support/util/ColorUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    long-to-double v4, v2

    cmpg-double v6, v10, v4

    if-gtz v6, :cond_2

    .line 496
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v6, v14

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    .line 497
    invoke-virtual {v0, v2, v3}, Lcom/color/support/util/ColorUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 499
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mKiloByteSpeed:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    cmpg-double v3, v10, v1

    const-string v10, "0.0"

    if-gtz v3, :cond_5

    .line 502
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v16, v16, v14

    cmpg-double v3, v1, v16

    if-gez v3, :cond_5

    .line 504
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-direct {v0, v1, v2, v10, v5}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 505
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    .line 506
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v0, v4, v5, v10}, Lcom/color/support/util/ColorUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 507
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v14

    long-to-double v10, v2

    cmpg-double v4, v4, v10

    if-gtz v4, :cond_4

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v6

    cmpg-double v4, v10, v4

    if-gez v4, :cond_4

    .line 508
    invoke-virtual {v0, v2, v3}, Lcom/color/support/util/ColorUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 510
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mMegaByteSpeed:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 513
    :cond_5
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v16, v16, v14

    cmpg-double v3, v16, v1

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    if-gtz v3, :cond_7

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v16, v16, v6

    cmpg-double v3, v1, v16

    if-gez v3, :cond_7

    .line 515
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    div-double/2addr v1, v10

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 516
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v2, v10

    double-to-long v2, v2

    .line 517
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-direct {v0, v10, v11, v4}, Lcom/color/support/util/ColorUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 518
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v6

    long-to-double v6, v2

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_6

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    cmpg-double v4, v6, v4

    if-gez v4, :cond_6

    .line 519
    invoke-virtual {v0, v2, v3}, Lcom/color/support/util/ColorUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 521
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mMegaByteSpeed:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 524
    :cond_7
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v16, v16, v6

    cmpg-double v3, v16, v1

    const-wide v16, 0x408ff80000000000L    # 1023.0

    if-gtz v3, :cond_9

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    cmpg-double v3, v1, v18

    if-gez v3, :cond_9

    .line 525
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double v3, v3, v16

    cmpl-double v1, v1, v3

    if-lez v1, :cond_8

    .line 526
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/color/support/util/ColorUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 528
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mSpecialPoint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mGigaByteSpeed:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 531
    :cond_9
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    cmpg-double v3, v11, v1

    const-string v11, "0.00"

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    if-gtz v3, :cond_b

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    mul-double v18, v18, v12

    cmpg-double v3, v1, v18

    if-gez v3, :cond_b

    .line 533
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-direct {v0, v1, v2, v11, v5}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 534
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    .line 535
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v0, v4, v5, v11}, Lcom/color/support/util/ColorUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 536
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v12

    long-to-double v6, v2

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_a

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v8

    cmpg-double v4, v6, v4

    if-gez v4, :cond_a

    .line 537
    invoke-virtual {v0, v2, v3}, Lcom/color/support/util/ColorUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 539
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mGigaByteSpeed:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 542
    :cond_b
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    mul-double v18, v18, v12

    cmpg-double v3, v18, v1

    if-gtz v3, :cond_d

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    mul-double v18, v18, v20

    cmpg-double v3, v1, v18

    if-gez v3, :cond_d

    .line 543
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-direct {v0, v1, v2, v10, v5}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 544
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    .line 545
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v0, v4, v5, v10}, Lcom/color/support/util/ColorUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 546
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v10

    long-to-double v10, v2

    cmpg-double v4, v4, v10

    if-gtz v4, :cond_c

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v6

    cmpg-double v4, v10, v4

    if-gez v4, :cond_c

    .line 547
    invoke-virtual {v0, v2, v3}, Lcom/color/support/util/ColorUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 549
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mGigaByteSpeed:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 552
    :cond_d
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    mul-double v18, v18, v20

    cmpg-double v3, v18, v1

    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    if-gtz v3, :cond_f

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    mul-double v20, v20, v6

    cmpg-double v3, v1, v20

    if-gez v3, :cond_f

    .line 556
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    div-double/2addr v1, v10

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 557
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v2, v10

    double-to-long v2, v2

    .line 558
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-direct {v0, v10, v11, v4}, Lcom/color/support/util/ColorUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 559
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v6

    long-to-double v6, v2

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_e

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    cmpg-double v4, v6, v4

    if-gez v4, :cond_e

    .line 560
    invoke-virtual {v0, v2, v3}, Lcom/color/support/util/ColorUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 562
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mGigaByteSpeed:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 565
    :cond_f
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    mul-double v20, v20, v6

    cmpg-double v3, v20, v1

    if-gtz v3, :cond_11

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    cmpg-double v3, v1, v20

    if-gez v3, :cond_11

    .line 567
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double v3, v3, v16

    cmpl-double v1, v1, v3

    if-lez v1, :cond_10

    .line 568
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/color/support/util/ColorUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 570
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mSpecialPoint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mTeraByteSpeed:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 573
    :cond_11
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    cmpg-double v3, v14, v1

    if-gtz v3, :cond_13

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    const-wide/high16 v18, 0x4024000000000000L    # 10.0

    mul-double v14, v14, v18

    cmpg-double v3, v1, v14

    if-gez v3, :cond_13

    .line 575
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-direct {v0, v1, v2, v11, v5}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 576
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    .line 577
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v0, v4, v5, v11}, Lcom/color/support/util/ColorUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 578
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double/2addr v4, v6

    long-to-double v6, v2

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_12

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v8

    cmpg-double v4, v6, v4

    if-gez v4, :cond_12

    .line 579
    invoke-virtual {v0, v2, v3}, Lcom/color/support/util/ColorUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 581
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mTeraByteSpeed:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 584
    :cond_13
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    const-wide/high16 v18, 0x4024000000000000L    # 10.0

    mul-double v14, v14, v18

    cmpg-double v3, v14, v1

    if-gtz v3, :cond_15

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    mul-double v14, v14, v20

    cmpg-double v3, v1, v14

    if-gez v3, :cond_15

    .line 586
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-direct {v0, v1, v2, v10, v5}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 587
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    .line 588
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v0, v4, v5, v10}, Lcom/color/support/util/ColorUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 589
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v10

    long-to-double v10, v2

    cmpg-double v4, v4, v10

    if-gtz v4, :cond_14

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v6

    cmpg-double v4, v10, v4

    if-gez v4, :cond_14

    .line 590
    invoke-virtual {v0, v2, v3}, Lcom/color/support/util/ColorUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 592
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mTeraByteSpeed:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 595
    :cond_15
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    mul-double v14, v14, v20

    cmpg-double v3, v14, v1

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    if-gtz v3, :cond_17

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    mul-double v20, v20, v6

    cmpg-double v3, v1, v20

    if-gez v3, :cond_17

    .line 597
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    div-double/2addr v1, v10

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 598
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    .line 599
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v6

    long-to-double v6, v2

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_16

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    cmpg-double v4, v6, v4

    if-gez v4, :cond_16

    .line 600
    invoke-virtual {v0, v2, v3}, Lcom/color/support/util/ColorUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 602
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mTeraByteSpeed:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 605
    :cond_17
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    mul-double v20, v20, v6

    cmpg-double v3, v20, v1

    if-gtz v3, :cond_19

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    cmpg-double v3, v1, v20

    if-gez v3, :cond_19

    .line 606
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double v3, v3, v16

    cmpl-double v1, v1, v3

    if-lez v1, :cond_18

    .line 607
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/color/support/util/ColorUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 609
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mSpecialPoint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mPetaByteSpeed:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 612
    :cond_19
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    cmpg-double v3, v12, v1

    if-gtz v3, :cond_1b

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    const-wide/high16 v16, 0x4024000000000000L    # 10.0

    mul-double v12, v12, v16

    cmpg-double v3, v1, v12

    if-gez v3, :cond_1b

    .line 614
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-direct {v0, v1, v2, v11, v5}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 615
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    .line 616
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v0, v4, v5, v11}, Lcom/color/support/util/ColorUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 617
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double/2addr v4, v6

    long-to-double v6, v2

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_1a

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v8

    cmpg-double v4, v6, v4

    if-gez v4, :cond_1a

    .line 618
    invoke-virtual {v0, v2, v3}, Lcom/color/support/util/ColorUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 620
    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mPetaByteSpeed:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 623
    :cond_1b
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    const-wide/high16 v16, 0x4024000000000000L    # 10.0

    mul-double v11, v11, v16

    cmpg-double v3, v11, v1

    if-gtz v3, :cond_1d

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v11, v11, v16

    cmpg-double v3, v1, v11

    if-gez v3, :cond_1d

    .line 625
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-direct {v0, v1, v2, v10, v5}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 626
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    .line 627
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v0, v4, v5, v10}, Lcom/color/support/util/ColorUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 628
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v10

    long-to-double v10, v2

    cmpg-double v4, v4, v10

    if-gtz v4, :cond_1c

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v6

    cmpg-double v4, v10, v4

    if-gez v4, :cond_1c

    .line 629
    invoke-virtual {v0, v2, v3}, Lcom/color/support/util/ColorUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 631
    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mPetaByteSpeed:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 634
    :cond_1d
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v12

    cmpg-double v3, v10, v1

    if-gtz v3, :cond_1e

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v10, v6

    cmpg-double v3, v1, v10

    if-gez v3, :cond_1e

    .line 636
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v1, v5

    invoke-direct {v0, v1, v2, v4}, Lcom/color/support/util/ColorUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mPetaByteSpeed:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 639
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the value of the incoming is wrong"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStripValue(J)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 671
    invoke-direct {p0}, Lcom/color/support/util/ColorUnitConversionUtils;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    invoke-direct {p0, p1, p2}, Lcom/color/support/util/ColorUnitConversionUtils;->getChineseStripValue(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 674
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/color/support/util/ColorUnitConversionUtils;->getEnglishStripValue(J)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getStripValue(JLjava/util/Locale;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 714
    invoke-virtual {p3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    if-eqz p3, :cond_2

    const-string v1, "CN"

    .line 716
    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "TW"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "HK"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 717
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/color/support/util/ColorUnitConversionUtils;->getChineseStripValue(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    .line 719
    invoke-direct {p0, p1, p2}, Lcom/color/support/util/ColorUnitConversionUtils;->getEnglishStripValue(J)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public getTransformUnitValue(JD)Ljava/lang/String;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    const-wide/16 v5, 0x0

    cmp-long v5, v5, v1

    const-string v6, "0"

    const/4 v7, 0x1

    const-wide v8, 0x408f400000000000L    # 1000.0

    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    if-gtz v5, :cond_1

    long-to-double v12, v1

    cmpg-double v5, v12, v8

    if-gez v5, :cond_1

    .line 287
    invoke-direct {v0, v12, v13, v6, v7}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

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

    invoke-direct {v0, v4, v5, v6}, Lcom/color/support/util/ColorUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    long-to-double v4, v2

    cmpg-double v6, v8, v4

    if-gtz v6, :cond_0

    cmpg-double v4, v4, v10

    if-gez v4, :cond_0

    .line 291
    invoke-virtual {v0, v2, v3}, Lcom/color/support/util/ColorUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 293
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mByteShort:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_1
    long-to-double v1, v1

    cmpg-double v5, v8, v1

    const-wide v12, 0x412f400000000000L    # 1024000.0

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    if-gtz v5, :cond_3

    cmpg-double v5, v1, v12

    if-gez v5, :cond_3

    div-double/2addr v1, v3

    .line 297
    invoke-direct {v0, v1, v2, v6, v7}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    double-to-long v10, v3

    mul-long/2addr v7, v10

    .line 299
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2, v6}, Lcom/color/support/util/ColorUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    long-to-double v5, v7

    cmpg-double v2, v12, v5

    if-gtz v2, :cond_2

    const-wide/high16 v9, 0x4090000000000000L    # 1024.0

    .line 300
    invoke-static {v9, v10, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double v9, v9, v16

    cmpg-double v2, v5, v9

    if-gez v2, :cond_2

    .line 301
    invoke-virtual {v0, v7, v8, v3, v4}, Lcom/color/support/util/ColorUnitConversionUtils;->getTransformUnitValue(JD)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 303
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mKiloByteShort:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    cmpg-double v5, v12, v1

    const-string v10, "0.0"

    if-gtz v5, :cond_5

    const-wide/high16 v11, 0x4090000000000000L    # 1024.0

    .line 306
    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    mul-double v20, v20, v16

    cmpg-double v5, v1, v20

    if-gez v5, :cond_5

    .line 308
    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v1, v5

    invoke-direct {v0, v1, v2, v10, v7}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 309
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    mul-double/2addr v5, v11

    double-to-long v5, v5

    .line 310
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2, v10}, Lcom/color/support/util/ColorUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    .line 311
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double v12, v12, v16

    long-to-double v8, v5

    cmpg-double v2, v12, v8

    if-gtz v2, :cond_4

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double/2addr v10, v12

    cmpg-double v2, v8, v10

    if-gez v2, :cond_4

    .line 312
    invoke-virtual {v0, v5, v6, v3, v4}, Lcom/color/support/util/ColorUnitConversionUtils;->getTransformUnitValue(JD)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 314
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mMegaByteShort:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 317
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    mul-double v11, v11, v16

    cmpg-double v5, v11, v1

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    if-gtz v5, :cond_8

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double v22, v22, v8

    cmpg-double v5, v1, v22

    if-gez v5, :cond_7

    .line 319
    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v1, v8

    invoke-direct {v0, v1, v2, v6, v7}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double/2addr v7, v9

    double-to-long v7, v7

    .line 321
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2, v6}, Lcom/color/support/util/ColorUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/high16 v5, 0x4090000000000000L    # 1024.0

    .line 322
    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    const-wide v13, 0x408f400000000000L    # 1000.0

    mul-double/2addr v9, v13

    long-to-double v13, v7

    cmpg-double v2, v9, v13

    if-gtz v2, :cond_6

    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    cmpg-double v2, v13, v5

    if-gez v2, :cond_6

    .line 323
    invoke-virtual {v0, v7, v8, v3, v4}, Lcom/color/support/util/ColorUnitConversionUtils;->getTransformUnitValue(JD)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 325
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mMegaByteShort:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 328
    :cond_8
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    const-wide v20, 0x408f400000000000L    # 1000.0

    mul-double v18, v18, v20

    cmpg-double v5, v18, v1

    const-wide v22, 0x408ff80000000000L    # 1023.0

    const-string v13, "0.00"

    if-gtz v5, :cond_c

    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    cmpg-double v5, v1, v24

    if-gez v5, :cond_b

    cmpl-double v5, v3, v20

    if-nez v5, :cond_9

    .line 330
    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v1, v5

    invoke-direct {v0, v1, v2, v13, v7}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 332
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2, v13}, Lcom/color/support/util/ColorUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mGigaByteShort:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_9
    const-wide/high16 v5, 0x4090000000000000L    # 1024.0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_25

    .line 335
    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double v3, v3, v22

    cmpl-double v1, v1, v3

    if-lez v1, :cond_a

    .line 336
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/color/support/util/ColorUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 338
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mSpecialPoint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mGigaByteShort:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_b
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 342
    :cond_c
    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    cmpg-double v5, v14, v1

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    if-gtz v5, :cond_f

    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    mul-double v24, v24, v14

    cmpg-double v5, v1, v24

    if-gez v5, :cond_e

    .line 344
    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v1, v5

    invoke-direct {v0, v1, v2, v13, v7}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 345
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-long v5, v5

    .line 346
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2, v13}, Lcom/color/support/util/ColorUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/high16 v7, 0x4090000000000000L    # 1024.0

    .line 347
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double/2addr v9, v14

    long-to-double v13, v5

    cmpg-double v2, v9, v13

    if-gtz v2, :cond_d

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double v7, v7, v16

    cmpg-double v2, v13, v7

    if-gez v2, :cond_d

    .line 348
    invoke-virtual {v0, v5, v6, v3, v4}, Lcom/color/support/util/ColorUnitConversionUtils;->getTransformUnitValue(JD)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 350
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mGigaByteShort:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_e
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 353
    :cond_f
    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    mul-double v18, v18, v14

    cmpg-double v5, v18, v1

    if-gtz v5, :cond_12

    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    mul-double v24, v24, v16

    cmpg-double v5, v1, v24

    if-gez v5, :cond_11

    .line 355
    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v1, v5

    invoke-direct {v0, v1, v2, v10, v7}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 356
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-long v5, v5

    .line 357
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2, v10}, Lcom/color/support/util/ColorUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/high16 v7, 0x4090000000000000L    # 1024.0

    .line 358
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double v9, v9, v16

    long-to-double v13, v5

    cmpg-double v2, v9, v13

    if-gtz v2, :cond_10

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    const-wide v9, 0x408f400000000000L    # 1000.0

    mul-double/2addr v7, v9

    cmpg-double v2, v13, v7

    if-gez v2, :cond_10

    .line 359
    invoke-virtual {v0, v5, v6, v3, v4}, Lcom/color/support/util/ColorUnitConversionUtils;->getTransformUnitValue(JD)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 361
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mGigaByteShort:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_11
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 364
    :cond_12
    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    mul-double v18, v18, v16

    cmpg-double v5, v18, v1

    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    if-gtz v5, :cond_15

    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double v24, v24, v8

    cmpg-double v5, v1, v24

    if-gez v5, :cond_14

    .line 368
    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v1, v8

    invoke-direct {v0, v1, v2, v6, v7}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 369
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double/2addr v7, v9

    double-to-long v7, v7

    .line 370
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2, v6}, Lcom/color/support/util/ColorUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/high16 v5, 0x4090000000000000L    # 1024.0

    .line 371
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    const-wide v11, 0x408f400000000000L    # 1000.0

    mul-double/2addr v9, v11

    long-to-double v11, v7

    cmpg-double v2, v9, v11

    if-gtz v2, :cond_13

    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    cmpg-double v2, v11, v5

    if-gez v2, :cond_13

    .line 372
    invoke-virtual {v0, v7, v8, v3, v4}, Lcom/color/support/util/ColorUnitConversionUtils;->getTransformUnitValue(JD)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 374
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mGigaByteShort:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_14
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 377
    :cond_15
    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    const-wide v20, 0x408f400000000000L    # 1000.0

    mul-double v18, v18, v20

    cmpg-double v5, v18, v1

    if-gtz v5, :cond_19

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    cmpg-double v5, v1, v24

    if-gez v5, :cond_18

    cmpl-double v5, v3, v20

    if-nez v5, :cond_16

    .line 380
    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v1, v5

    invoke-direct {v0, v1, v2, v13, v7}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 381
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->pow(DD)D

    .line 382
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2, v13}, Lcom/color/support/util/ColorUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mTeraByteShort:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_16
    const-wide/high16 v5, 0x4090000000000000L    # 1024.0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_25

    .line 385
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double v3, v3, v22

    cmpl-double v1, v1, v3

    if-lez v1, :cond_17

    .line 386
    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/color/support/util/ColorUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 388
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mSpecialPoint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mTeraByteShort:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_18
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 392
    :cond_19
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    cmpg-double v5, v11, v1

    if-gtz v5, :cond_1c

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    mul-double/2addr v11, v8

    cmpg-double v5, v1, v11

    if-gez v5, :cond_1b

    .line 394
    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v1, v5

    invoke-direct {v0, v1, v2, v13, v7}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 395
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-long v5, v5

    .line 396
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2, v13}, Lcom/color/support/util/ColorUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/high16 v7, 0x4090000000000000L    # 1024.0

    .line 397
    invoke-static {v7, v8, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    mul-double/2addr v9, v11

    long-to-double v11, v5

    cmpg-double v2, v9, v11

    if-gtz v2, :cond_1a

    invoke-static {v7, v8, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double v7, v7, v16

    cmpg-double v2, v11, v7

    if-gez v2, :cond_1a

    .line 398
    invoke-virtual {v0, v5, v6, v3, v4}, Lcom/color/support/util/ColorUnitConversionUtils;->getTransformUnitValue(JD)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 400
    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mTeraByteShort:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_1b
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 403
    :cond_1c
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    const-wide/high16 v18, 0x4024000000000000L    # 10.0

    mul-double v11, v11, v18

    cmpg-double v5, v11, v1

    if-gtz v5, :cond_1f

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    mul-double v11, v11, v16

    cmpg-double v5, v1, v11

    if-gez v5, :cond_1e

    .line 405
    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v1, v5

    invoke-direct {v0, v1, v2, v10, v7}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 406
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-long v5, v5

    .line 407
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2, v10}, Lcom/color/support/util/ColorUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/high16 v7, 0x4090000000000000L    # 1024.0

    .line 408
    invoke-static {v7, v8, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double v9, v9, v16

    long-to-double v11, v5

    cmpg-double v2, v9, v11

    if-gtz v2, :cond_1d

    invoke-static {v7, v8, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    const-wide v9, 0x408f400000000000L    # 1000.0

    mul-double/2addr v7, v9

    cmpg-double v2, v11, v7

    if-gez v2, :cond_1d

    .line 409
    invoke-virtual {v0, v5, v6, v3, v4}, Lcom/color/support/util/ColorUnitConversionUtils;->getTransformUnitValue(JD)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 411
    :cond_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mTeraByteShort:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_1e
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 414
    :cond_1f
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    mul-double v11, v11, v16

    cmpg-double v5, v11, v1

    const-wide/high16 v11, 0x4014000000000000L    # 5.0

    if-gtz v5, :cond_22

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double v24, v24, v8

    cmpg-double v5, v1, v24

    if-gez v5, :cond_21

    .line 416
    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v1, v8

    invoke-direct {v0, v1, v2, v6, v7}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 417
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double/2addr v7, v9

    double-to-long v7, v7

    .line 418
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2, v6}, Lcom/color/support/util/ColorUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/high16 v5, 0x4090000000000000L    # 1024.0

    .line 419
    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    const-wide v13, 0x408f400000000000L    # 1000.0

    mul-double/2addr v9, v13

    long-to-double v13, v7

    cmpg-double v2, v9, v13

    if-gtz v2, :cond_20

    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    cmpg-double v2, v13, v5

    if-gez v2, :cond_20

    .line 420
    invoke-virtual {v0, v7, v8, v3, v4}, Lcom/color/support/util/ColorUnitConversionUtils;->getTransformUnitValue(JD)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 422
    :cond_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mTeraByteShort:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_21
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 425
    :cond_22
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    const-wide v20, 0x408f400000000000L    # 1000.0

    mul-double v18, v18, v20

    cmpg-double v5, v18, v1

    if-gtz v5, :cond_27

    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    cmpg-double v5, v1, v24

    if-gez v5, :cond_26

    cmpl-double v5, v3, v20

    if-nez v5, :cond_23

    .line 427
    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v1, v5

    invoke-direct {v0, v1, v2, v13, v7}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 428
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 429
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2, v13}, Lcom/color/support/util/ColorUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mPetaByteShort:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_23
    const-wide/high16 v5, 0x4090000000000000L    # 1024.0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_25

    .line 432
    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double v3, v3, v22

    cmpl-double v1, v1, v3

    if-lez v1, :cond_24

    .line 433
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/color/support/util/ColorUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 435
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mSpecialPoint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mPetaByteShort:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_25
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_26
    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    goto :goto_0

    :cond_27
    move-wide v3, v8

    .line 439
    :goto_0
    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    cmpg-double v5, v8, v1

    if-gtz v5, :cond_29

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    mul-double/2addr v8, v14

    cmpg-double v5, v1, v8

    if-gez v5, :cond_29

    .line 441
    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v1, v5

    invoke-direct {v0, v1, v2, v13, v7}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 442
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-long v5, v5

    .line 443
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2, v13}, Lcom/color/support/util/ColorUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 444
    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    mul-double/2addr v7, v9

    long-to-double v9, v5

    cmpg-double v2, v7, v9

    if-gtz v2, :cond_28

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v2, v2, v16

    cmpg-double v2, v9, v2

    if-gez v2, :cond_28

    .line 445
    invoke-virtual {v0, v5, v6}, Lcom/color/support/util/ColorUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 447
    :cond_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mPetaByteShort:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 450
    :cond_29
    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    const-wide/high16 v13, 0x4024000000000000L    # 10.0

    mul-double/2addr v8, v13

    cmpg-double v5, v8, v1

    if-gtz v5, :cond_2b

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double v8, v8, v16

    cmpg-double v5, v1, v8

    if-gez v5, :cond_2b

    .line 452
    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v1, v5

    invoke-direct {v0, v1, v2, v10, v7}, Lcom/color/support/util/ColorUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 453
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-long v5, v5

    .line 454
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2, v10}, Lcom/color/support/util/ColorUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 455
    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double v7, v7, v16

    long-to-double v9, v5

    cmpg-double v2, v7, v9

    if-gtz v2, :cond_2a

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v7, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v7

    cmpg-double v2, v9, v2

    if-gez v2, :cond_2a

    .line 456
    invoke-virtual {v0, v5, v6}, Lcom/color/support/util/ColorUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 458
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mPetaByteShort:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 461
    :cond_2b
    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double v7, v7, v16

    cmpg-double v5, v7, v1

    if-gtz v5, :cond_2c

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    const-wide v9, 0x408f400000000000L    # 1000.0

    mul-double/2addr v7, v9

    cmpg-double v5, v1, v7

    if-gez v5, :cond_2c

    .line 463
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-direct {v0, v1, v2, v6}, Lcom/color/support/util/ColorUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/color/support/util/ColorUnitConversionUtils;->mPetaByteShort:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 466
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the value of the incoming is wrong"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUnitThousandValue(J)Ljava/lang/String;
    .locals 2

    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 272
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/color/support/util/ColorUnitConversionUtils;->getTransformUnitValue(JD)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUnitValue(J)Ljava/lang/String;
    .locals 2

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    .line 262
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/color/support/util/ColorUnitConversionUtils;->getTransformUnitValue(JD)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
