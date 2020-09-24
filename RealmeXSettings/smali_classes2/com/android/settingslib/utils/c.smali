.class public final Lcom/android/settingslib/utils/c;
.super Ljava/lang/Object;
.source "StringUtil.java"


# direct methods
.method public static a(Landroid/content/Context;D)Ljava/lang/CharSequence;
    .locals 6

    .line 54
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-wide v1, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v1

    .line 55
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    add-int/lit8 p1, p1, 0x1e

    const p2, 0x15180

    const/4 v1, 0x0

    if-lt p1, p2, :cond_0

    .line 63
    div-int v2, p1, p2

    mul-int/2addr p2, v2

    sub-int/2addr p1, p2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/16 p2, 0xe10

    if-lt p1, p2, :cond_1

    .line 67
    div-int/lit16 p2, p1, 0xe10

    mul-int/lit16 v3, p2, 0xe10

    sub-int/2addr p1, v3

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_1
    const/16 v3, 0x3c

    if-lt p1, v3, :cond_2

    .line 71
    div-int/2addr p1, v3

    goto :goto_2

    :cond_2
    move p1, v1

    .line 75
    :goto_2
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    if-lez v2, :cond_3

    .line 77
    new-instance v4, Landroid/icu/util/Measure;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v5, Landroid/icu/util/MeasureUnit;->DAY:Landroid/icu/util/TimeUnit;

    invoke-direct {v4, v2, v5}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-lez p2, :cond_4

    .line 80
    new-instance v2, Landroid/icu/util/Measure;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v4, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {v2, p2, v4}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-lez p1, :cond_5

    .line 83
    new-instance p2, Landroid/icu/util/Measure;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v4, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {p2, v2, v4}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_6

    .line 90
    new-instance p2, Landroid/icu/util/Measure;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v4, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {p2, v2, v4}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Landroid/icu/util/Measure;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/icu/util/Measure;

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 95
    sget-object v2, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {p0, v2}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object p0

    .line 97
    invoke-virtual {p0, p2}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 99
    array-length p0, p2

    const/4 v2, 0x1

    if-ne p0, v2, :cond_7

    sget-object p0, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    aget-object p2, p2, v1

    invoke-virtual {p2}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/icu/util/TimeUnit;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 101
    new-instance p0, Landroid/text/style/TtsSpan$MeasureBuilder;

    invoke-direct {p0}, Landroid/text/style/TtsSpan$MeasureBuilder;-><init>()V

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Landroid/text/style/TtsSpan$MeasureBuilder;->setNumber(J)Landroid/text/style/TtsSpan$MeasureBuilder;

    move-result-object p0

    const-string p1, "minute"

    .line 102
    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$MeasureBuilder;->setUnit(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/style/TtsSpan$MeasureBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object p0

    .line 103
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    const/16 p2, 0x21

    invoke-virtual {v0, p0, v1, p1, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    return-object v0
.end method

.method public static a(Landroid/content/Context;DZ)Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 173
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/settingslib/utils/c;->a(Landroid/content/Context;DZLandroid/icu/text/RelativeDateTimeFormatter$Style;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;DZLandroid/icu/text/RelativeDateTimeFormatter$Style;)Ljava/lang/CharSequence;
    .locals 2

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    .line 126
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    if-eqz p3, :cond_0

    const/16 p2, 0x78

    if-ge p1, p2, :cond_0

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settingslib/e$h;->time_unit_just_now:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p2, 0x1c20

    if-ge p1, p2, :cond_1

    .line 132
    sget-object p2, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MINUTES:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    add-int/lit8 p1, p1, 0x1e

    .line 133
    div-int/lit8 p1, p1, 0x3c

    goto :goto_0

    :cond_1
    const p2, 0x2a300

    if-ge p1, p2, :cond_2

    .line 136
    sget-object p2, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->HOURS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    add-int/lit16 p1, p1, 0x708

    .line 137
    div-int/lit16 p1, p1, 0xe10

    goto :goto_0

    .line 140
    :cond_2
    sget-object p2, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->DAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const p3, 0xa8c0

    add-int/2addr p1, p3

    const p3, 0x15180

    .line 141
    div-int/2addr p1, p3

    .line 145
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 147
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    const/4 p3, 0x0

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    .line 146
    invoke-static {p0, p3, p4, v0}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object p0

    int-to-double p3, p1

    .line 152
    sget-object p1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    invoke-virtual {p0, p3, p4, p1, p2}, Landroid/icu/text/RelativeDateTimeFormatter;->format(DLandroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
