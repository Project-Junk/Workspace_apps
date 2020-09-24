.class public Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;
.super Ljava/lang/Object;
.source "WeatherInfoParseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;,
        Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;,
        Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$HolderInnerClass;
    }
.end annotation


# static fields
.field private static final AM_PM_FORMAT:Ljava/lang/String; = "a"

.field private static final HOUR_FORMAT_12:Ljava/lang/String; = "h"

.field private static final HOUR_FORMAT_24:Ljava/lang/String; = "H"

.field private static final INDEX_CITY_CODE:I = 0x4

.field private static final INDEX_DEGREE:I = 0x0

.field private static final INDEX_ENGLISH_NAME:I = 0x6

.field private static final INDEX_LOCAL_NAME:I = 0x5

.field private static final INDEX_TIME_ZONE:I = 0x7

.field private static final INDEX_TYPE:I = 0x1

.field private static final INDEX_UNIT:I = 0x3

.field private static final INDEX_WEATHER:I = 0x2

.field private static final MINUTE_FORMAT:Ljava/lang/String; = "mm"

.field private static final NUM_10:I = 0xa

.field private static final NUM_60:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "WeatherInfoParseHelper"

.field private static final WEATHER_INFO_UNITS:I = 0x8


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mFormat:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$1;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;-><init>()V

    return-void
.end method

.method private formateTimeZone(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string p0, "WeatherInfoParseHelper"

    .line 367
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 368
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/4 v2, 0x0

    .line 374
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 377
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "formateTimeZone error, timeZone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "   zone="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    :goto_1
    cmpl-float v0, p1, v2

    const/high16 v2, 0x42700000    # 60.0f

    if-lez v0, :cond_2

    float-to-double v3, p1

    .line 382
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-float v4, v3

    sub-float v4, p1, v4

    mul-float/2addr v4, v2

    float-to-int v2, v4

    goto :goto_2

    :cond_2
    float-to-double v3, p1

    .line 385
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-float v4, v3

    sub-float v4, p1, v4

    mul-float/2addr v4, v2

    .line 386
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    :goto_2
    const-string v4, "00"

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    const/16 v5, 0xa

    if-ge v2, v5, :cond_4

    .line 393
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_4
    const/16 v5, 0x3c

    if-ge v2, v5, :cond_5

    .line 395
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_5
    :goto_3
    if-ltz v0, :cond_6

    const-string v1, "+"

    .line 402
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GMT"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 403
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "formateTimeZone  hour = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -- minutes:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -- mun ="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  symbol:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",fullTime:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " time:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getChineseDateInfo(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const p0, 0x7f110004

    .line 301
    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/high16 v0, 0x7f110000

    .line 302
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 303
    invoke-static {p2, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 304
    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 305
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDateFormat(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 295
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const v1, 0x7f110003

    .line 296
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 297
    invoke-static {v0, p0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;
    .locals 1

    .line 219
    invoke-static {}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$HolderInnerClass;->access$100()Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;

    move-result-object v0

    return-object v0
.end method

.method private initDateFormat(Landroid/content/Context;)V
    .locals 2

    .line 258
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->mFormat:Ljava/lang/String;

    .line 260
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->mFormat:Ljava/lang/String;

    const-string v0, ""

    const-string v1, "a"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->mFormat:Ljava/lang/String;

    .line 261
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->mFormat:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->mFormat:Ljava/lang/String;

    return-void
.end method

.method public static isZh(Landroid/content/Context;)Z
    .locals 1

    .line 309
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 310
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "zh"

    .line 311
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private packageTimeInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;
    .locals 11

    .line 319
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->initDateFormat(Landroid/content/Context;)V

    .line 320
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->mFormat:Ljava/lang/String;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 323
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isClockGlobalThemeEnable()Z

    move-result v1

    const/4 v2, -0x2

    const-string v3, "%02d"

    const-string v4, "WeatherInfoParseHelper"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, ""

    if-eqz v1, :cond_1

    .line 325
    :try_start_0
    invoke-static {p1, v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->mCalendar:Ljava/util/Calendar;

    const/16 v9, 0xb

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v5

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 328
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d"

    new-array v8, v6, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->mCalendar:Ljava/util/Calendar;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v1, v2, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    :try_start_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->mCalendar:Ljava/util/Calendar;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v5

    invoke-static {v2, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-object v1, v7

    :catch_1
    const-string v2, "fail to parse time while global theme enable"

    .line 332
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v7

    goto :goto_2

    .line 335
    :cond_1
    invoke-static {p1, v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 336
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->mCalendar:Ljava/util/Calendar;

    const-string v2, "H"

    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 338
    :try_start_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 339
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v5

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 341
    :catch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to parse hour string to int, hour = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 344
    :cond_2
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->mCalendar:Ljava/util/Calendar;

    const-string v2, "h"

    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 346
    :goto_1
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->mCalendar:Ljava/util/Calendar;

    const-string v3, "mm"

    invoke-static {v3, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 348
    :goto_2
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->mCalendar:Ljava/util/Calendar;

    const-string v5, "a"

    invoke-static {v5, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 349
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->getDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 351
    new-instance v6, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;

    invoke-direct {v6}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;-><init>()V

    .line 352
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v9, "0"

    if-eqz v8, :cond_3

    move-object v0, v9

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v6, v0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->setShortTime(Ljava/lang/String;)V

    .line 353
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v9

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v6, v0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->setHour(Ljava/lang/String;)V

    .line 354
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    :goto_5
    invoke-virtual {v6, v9}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->setMinute(Ljava/lang/String;)V

    .line 355
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v7

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v6, v0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->setAmpm(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->isZh(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 357
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->mCalendar:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->getChineseDateInfo(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->setDateInfo(Ljava/lang/String;)V

    goto :goto_8

    .line 359
    :cond_7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    :goto_7
    invoke-virtual {v6, v7}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->setDateInfo(Ljava/lang/String;)V

    .line 361
    :goto_8
    invoke-virtual {v6, p2}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->setTimeZone(Ljava/lang/String;)V

    .line 362
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "packageTimeInfo "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public getLocalTimeInfo(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 272
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->mCalendar:Ljava/util/Calendar;

    .line 273
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 274
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->packageTimeInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;

    move-result-object p0

    return-object p0
.end method

.method public getResidentTimeInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 286
    :cond_0
    invoke-direct {p0, p2}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->formateTimeZone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    return-object v0

    .line 290
    :cond_1
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->mCalendar:Ljava/util/Calendar;

    .line 291
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->packageTimeInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;

    move-result-object p0

    return-object p0
.end method

.method public parseWeatherInfo(Ljava/lang/String;)Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;
    .locals 5

    const-string p0, "WeatherInfoParseHelper"

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "weatherStr = null, return"

    .line 225
    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 229
    :cond_0
    new-instance v1, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;

    invoke-direct {v1}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;-><init>()V

    const-string v2, "::"

    .line 230
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 231
    array-length v3, v2

    const/16 v4, 0x8

    if-ge v3, v4, :cond_1

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "units.length = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  weatherStr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and return null"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    .line 237
    aget-object p0, v2, p0

    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->access$202(Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    const/4 p0, 0x1

    .line 238
    aget-object p0, v2, p0

    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->access$302(Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    const/4 p0, 0x2

    .line 239
    aget-object p0, v2, p0

    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->access$402(Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    const/4 p0, 0x3

    .line 240
    aget-object p0, v2, p0

    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->access$502(Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    const/4 p0, 0x4

    .line 242
    aget-object p0, v2, p0

    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->access$602(Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    const/4 p0, 0x5

    .line 243
    aget-object p0, v2, p0

    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->access$702(Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    const/4 p0, 0x6

    .line 244
    aget-object p0, v2, p0

    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->access$802(Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    const/4 p0, 0x7

    .line 245
    aget-object p0, v2, p0

    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->access$902(Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 247
    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->isWeatherInfoValid()Z

    move-result p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    return-object v1
.end method
