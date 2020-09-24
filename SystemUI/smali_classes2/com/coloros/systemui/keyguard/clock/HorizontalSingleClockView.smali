.class public Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;
.super Landroid/widget/LinearLayout;
.source "HorizontalSingleClockView.java"


# static fields
.field private static final AM_PM_FORMAT:Ljava/lang/String; = "a"

.field private static final HOUR_FORMAT_12:Ljava/lang/String; = "h"

.field private static final HOUR_FORMAT_24:Ljava/lang/String; = "H"

.field private static final MINUTE_FORMAT:Ljava/lang/String; = "mm"

.field private static final TAG:Ljava/lang/String; = "HorizontalSingleClockView"

.field private static final TEXT_FONT:Ljava/lang/String; = "OPPOSANS_Number_Regular.ttf"


# instance fields
.field private final CLOCK_MODE_IMG:I

.field private final CLOCK_MODE_TEXT:I

.field private mAmpm:Ljava/lang/String;

.field private mCalendar:Ljava/util/Calendar;

.field private mClockMode:I

.field private mFormat:Ljava/lang/String;

.field private mHour:Ljava/lang/String;

.field private mIs24HourFormat:Z

.field private mLastFont:I

.field private mLastLocale:Ljava/lang/String;

.field private mMinute:Ljava/lang/String;

.field private mTimeZone:Ljava/util/TimeZone;

.field private mTvDate:Landroid/widget/TextView;

.field private mTvExtraContent:Landroid/widget/TextView;

.field private mTvHorizontalClockHour:Landroid/widget/TextView;

.field private mTvHorizontalClockMinute:Landroid/widget/TextView;

.field private mTvHorizontalClockPoint:Landroid/widget/TextView;

.field private mTvLunarCalendar:Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 50
    iput p1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->CLOCK_MODE_TEXT:I

    const/4 p2, 0x1

    .line 54
    iput p2, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->CLOCK_MODE_IMG:I

    .line 56
    iput p1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mClockMode:I

    .line 91
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    .line 92
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    .line 93
    invoke-virtual {p2, p1}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 94
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mContext:Landroid/content/Context;

    .line 95
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0039

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mClockMode:I

    .line 96
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mLastLocale:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {p1}, Lcom/color/compat/content/res/ConfigurationNative;->getFlipFont(Landroid/content/res/Configuration;)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mLastFont:I

    return-void
.end method

.method private initDateFormat(Landroid/content/Context;)V
    .locals 2

    .line 249
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mFormat:Ljava/lang/String;

    .line 250
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mFormat:Ljava/lang/String;

    const-string v0, ""

    const-string v1, "a"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mFormat:Ljava/lang/String;

    .line 251
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mFormat:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mFormat:Ljava/lang/String;

    return-void
.end method

.method private is24HoursFormat()Z
    .locals 1

    .line 240
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mContext:Landroid/content/Context;

    const/4 v0, -0x2

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method private updateDate()V
    .locals 3

    .line 231
    invoke-static {}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->getInstance()Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->getLocalTimeInfo(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mTvDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->getDateInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mTvLunarCalendar:Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;

    move-result-object p0

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->getDateToString(J)Ljava/lang/String;

    move-result-object p0

    .line 234
    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateStandardTime()V
    .locals 10

    .line 184
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isClockGlobalThemeEnable()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "HorizontalSingleClockView"

    const-string v3, "a"

    const-string v4, "%02d"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_1

    .line 186
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mCalendar:Ljava/util/Calendar;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v0, v4, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mMinute:Ljava/lang/String;

    .line 187
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mIs24HourFormat:Z

    if-eqz v0, :cond_0

    .line 188
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mHour:Ljava/lang/String;

    .line 189
    iput-object v1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mAmpm:Ljava/lang/String;

    goto/16 :goto_1

    .line 191
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mHour:Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mAmpm:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to parse time while global theme enable:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mCalendar:Ljava/util/Calendar;

    const-string v7, "mm"

    invoke-static {v7, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mMinute:Ljava/lang/String;

    .line 199
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mIs24HourFormat:Z

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mCalendar:Ljava/util/Calendar;

    const-string v3, "H"

    invoke-static {v3, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mHour:Ljava/lang/String;

    .line 202
    :try_start_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mHour:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 203
    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mHour:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 205
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to parse hour string to int, mHour = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mHour:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_0
    iput-object v1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mAmpm:Ljava/lang/String;

    goto :goto_1

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mCalendar:Ljava/util/Calendar;

    const-string v1, "h"

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mHour:Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mAmpm:Ljava/lang/String;

    .line 214
    :goto_1
    iget v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mClockMode:I

    if-nez v0, :cond_3

    .line 215
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mTvHorizontalClockPoint:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110442

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mTvHorizontalClockHour:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mHour:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mTvHorizontalClockMinute:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mMinute:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    if-ne v0, v6, :cond_4

    .line 219
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703cf

    .line 220
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 219
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->setNumHeight(F)V

    .line 221
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mTvHorizontalClockHour:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mHour:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->setTextImg(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mTvHorizontalClockPoint:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mTvHorizontalClockPoint:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->setTextPoint(Landroid/widget/TextView;)V

    .line 225
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mTvHorizontalClockMinute:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mMinute:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->setTextImg(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private updateTime()V
    .locals 3

    .line 175
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->is24HoursFormat()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mIs24HourFormat:Z

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 177
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 178
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->initDateFormat(Landroid/content/Context;)V

    .line 179
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->updateStandardTime()V

    .line 180
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->updateDate()V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 152
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 153
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mTimeZone:Ljava/util/TimeZone;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mCalendar:Ljava/util/Calendar;

    .line 154
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->updateTime()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 127
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 128
    invoke-static {p1}, Lcom/color/compat/content/res/ConfigurationNative;->getFlipFont(Landroid/content/res/Configuration;)I

    move-result v0

    .line 129
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p1

    .line 132
    iget v1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mLastFont:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 133
    iput v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mLastFont:I

    .line 134
    invoke-static {}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getSansMediumFont()Landroid/graphics/Typeface;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mTvLunarCalendar:Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 136
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mTvDate:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 137
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mTvExtraContent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 140
    :goto_0
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mLastLocale:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 141
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mLastLocale:Ljava/lang/String;

    move v0, v2

    :cond_1
    if-eqz v0, :cond_2

    .line 146
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->refresh()V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 159
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 103
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a05e3

    .line 104
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mTvHorizontalClockHour:Landroid/widget/TextView;

    const v0, 0x7f0a05e5

    .line 105
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mTvHorizontalClockPoint:Landroid/widget/TextView;

    const v0, 0x7f0a05e4

    .line 106
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mTvHorizontalClockMinute:Landroid/widget/TextView;

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "OPPOSANS_Number_Regular.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mTvHorizontalClockHour:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 112
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mTvHorizontalClockPoint:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 113
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mTvHorizontalClockMinute:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HorizontalSingleClockView"

    const-string v2, "can\'t find the typeface:OPPOSANS_Number_Regular.ttf,"

    .line 116
    invoke-static {v1, v2, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    :cond_0
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mCalendar:Ljava/util/Calendar;

    const v0, 0x7f0a05ef

    .line 119
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mTvLunarCalendar:Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;

    const v0, 0x7f0a05e0

    .line 120
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mTvExtraContent:Landroid/widget/TextView;

    const v0, 0x7f0a05dc

    .line 121
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mTvDate:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->setTextColor(I)V

    return-void
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mTimeZone:Ljava/util/TimeZone;

    if-eq v0, p1, :cond_0

    .line 168
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mTimeZone:Ljava/util/TimeZone;

    .line 169
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->updateTime()V

    return-void
.end method

.method public refresh()V
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->updateTime()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mTvHorizontalClockHour:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 256
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mTvHorizontalClockPoint:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 257
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mTvHorizontalClockMinute:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 258
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mTvDate:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mTvLunarCalendar:Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;->setTextColor(I)V

    .line 260
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalSingleClockView;->mTvExtraContent:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
