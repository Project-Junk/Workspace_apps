.class public Lcom/coloros/systemui/keyguard/clock/SingleClockView;
.super Landroid/widget/LinearLayout;
.source "SingleClockView.java"


# static fields
.field private static final AM_PM_FORMAT:Ljava/lang/String; = "a"

.field public static final DEFAULT_COLOR:I = -0x1

.field private static final HOUR_12:I = 0xc

.field private static final HOUR_FORMAT_12:Ljava/lang/String; = "h"

.field private static final HOUR_FORMAT_24:Ljava/lang/String; = "H"

.field private static final MINUTE_FORMAT:Ljava/lang/String; = "mm"

.field private static final TAG:Ljava/lang/String; = "SingleClockView"

.field private static final TIME_VECTOR:I = 0xa

.field public static final WHITE:I = -0x1


# instance fields
.field private final CLOCK_MODE_IMG:I

.field private final CLOCK_MODE_TEXT:I

.field private mAmpm:Ljava/lang/String;

.field private mCalendar:Ljava/util/Calendar;

.field private mClockMode:I

.field private mColor:I

.field private final mCustomizeNumberLocales:[Ljava/lang/String;

.field private mDate:Landroid/widget/TextView;

.field private mFormat:Ljava/lang/String;

.field private mHour:Ljava/lang/String;

.field private mIs24HourFormat:Z

.field private mLastFont:I

.field private mLastLocale:Ljava/lang/String;

.field private mMinutes:Ljava/lang/String;

.field private mShortTime:Ljava/lang/String;

.field private mShowCustomNumber:Z

.field private final mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mTimeAmPm:Landroid/widget/TextView;

.field private mTimeHour:Landroid/widget/TextView;

.field private mTimeMinute:Landroid/widget/TextView;

.field private mTimeZone:Ljava/util/TimeZone;

.field private mTvExtraContent:Landroid/widget/TextView;

.field private mTvTraditionalCalendar:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/keyguard/clock/SingleClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "ar-EG"

    const-string v1, "as-IN"

    const-string v2, "bn-BD"

    const-string v3, "fa-IR"

    const-string v4, "mr-IN"

    const-string v5, "ne-NP"

    .line 51
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mCustomizeNumberLocales:[Ljava/lang/String;

    const/4 p1, -0x1

    .line 54
    iput p1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mColor:I

    const/4 p1, 0x0

    .line 70
    iput p1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->CLOCK_MODE_TEXT:I

    const/4 p2, 0x1

    .line 71
    iput p2, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->CLOCK_MODE_IMG:I

    .line 73
    iput p1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mClockMode:I

    .line 166
    new-instance p1, Lcom/coloros/systemui/keyguard/clock/SingleClockView$1;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/keyguard/clock/SingleClockView$1;-><init>(Lcom/coloros/systemui/keyguard/clock/SingleClockView;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 88
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    .line 89
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    .line 90
    invoke-virtual {p2, p1}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 91
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mContext:Landroid/content/Context;

    .line 93
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0039

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mClockMode:I

    .line 94
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mLastLocale:Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {p1}, Lcom/color/compat/content/res/ConfigurationNative;->getFlipFont(Landroid/content/res/Configuration;)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mLastFont:I

    .line 97
    const-class p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/clock/SingleClockView;)Landroid/widget/TextView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mTimeHour:Landroid/widget/TextView;

    return-object p0
.end method

.method private initDateFormat(Landroid/content/Context;)V
    .locals 2

    .line 270
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mFormat:Ljava/lang/String;

    .line 271
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mFormat:Ljava/lang/String;

    const-string v0, ""

    const-string v1, "a"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mFormat:Ljava/lang/String;

    .line 272
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mFormat:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mFormat:Ljava/lang/String;

    return-void
.end method

.method private is24HoursFormat()Z
    .locals 1

    .line 261
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mContext:Landroid/content/Context;

    const/4 v0, -0x2

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method private updateDate()V
    .locals 3

    .line 252
    invoke-static {}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->getInstance()Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->getLocalTimeInfo(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->getDateInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mTvTraditionalCalendar:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;

    move-result-object p0

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->getDateToString(J)Ljava/lang/String;

    move-result-object p0

    .line 256
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateStandardTime()V
    .locals 10

    .line 207
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isClockGlobalThemeEnable()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "a"

    const-string v3, "SingleClockView"

    const-string v4, "%02d"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_1

    .line 209
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mCalendar:Ljava/util/Calendar;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v0, v4, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mMinutes:Ljava/lang/String;

    .line 210
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mIs24HourFormat:Z

    if-eqz v0, :cond_0

    .line 211
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v5

    invoke-static {v0, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mHour:Ljava/lang/String;

    .line 212
    iput-object v1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mAmpm:Ljava/lang/String;

    goto/16 :goto_1

    .line 214
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mHour:Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v2, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mAmpm:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "fail to parse time while global theme enable"

    .line 218
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mCalendar:Ljava/util/Calendar;

    const-string v7, "mm"

    invoke-static {v7, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mMinutes:Ljava/lang/String;

    .line 222
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mIs24HourFormat:Z

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mCalendar:Ljava/util/Calendar;

    const-string v2, "H"

    invoke-static {v2, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mHour:Ljava/lang/String;

    .line 225
    :try_start_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mHour:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 226
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mHour:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 228
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to parse hour string to int, mHour = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mHour:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :goto_0
    iput-object v1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mAmpm:Ljava/lang/String;

    goto :goto_1

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mCalendar:Ljava/util/Calendar;

    const-string v1, "h"

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mHour:Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v2, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mAmpm:Ljava/lang/String;

    .line 237
    :goto_1
    iget v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mClockMode:I

    if-nez v0, :cond_3

    .line 238
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mTimeHour:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mHour:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mTimeMinute:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mMinutes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    if-ne v0, v6, :cond_4

    .line 241
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mTimeHour:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mHour:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->setTextImg(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mTimeMinute:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mMinutes:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->setTextImg(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 245
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mTimeAmPm:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mAmpm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTime,  24hfmt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mIs24HourFormat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mHour:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mMinutes:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateTime()V
    .locals 3

    .line 198
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->is24HoursFormat()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mIs24HourFormat:Z

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 200
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 201
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->initDateFormat(Landroid/content/Context;)V

    .line 202
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->updateStandardTime()V

    .line 203
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->updateDate()V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 154
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 155
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mTimeZone:Ljava/util/TimeZone;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mCalendar:Ljava/util/Calendar;

    .line 156
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->updateTime()V

    .line 157
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

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
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastFont = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mLastFont:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newFont = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SingleClockView"

    invoke-static {v2, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget v1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mLastFont:I

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    .line 134
    iput v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mLastFont:I

    .line 135
    invoke-static {}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getSansMediumFont()Landroid/graphics/Typeface;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mTimeAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 137
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mDate:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 141
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLastLocale = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mLastLocale:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " newLocale = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mLastLocale:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mLastLocale:Ljava/lang/String;

    move v0, v3

    :cond_1
    if-eqz v0, :cond_2

    .line 148
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->refresh()V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 162
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 163
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 102
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 103
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mCalendar:Ljava/util/Calendar;

    const v0, 0x7f0a0175

    .line 104
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mTimeHour:Landroid/widget/TextView;

    const v0, 0x7f0a0176

    .line 105
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mTimeMinute:Landroid/widget/TextView;

    const v0, 0x7f0a0174

    .line 106
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mTimeAmPm:Landroid/widget/TextView;

    const v0, 0x7f0a05e0

    .line 108
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mTvExtraContent:Landroid/widget/TextView;

    const v0, 0x7f0a01dd

    .line 109
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mDate:Landroid/widget/TextView;

    const v0, 0x7f0a05f6

    .line 111
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mTvTraditionalCalendar:Landroid/widget/TextView;

    const-string v0, "OPPOSANS_Number_Regular.ttf"

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 116
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mTimeHour:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 117
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mTimeMinute:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t find the typeface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SingleClockView"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->setTextColor(I)V

    return-void
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mTimeZone:Ljava/util/TimeZone;

    if-eq v0, p1, :cond_0

    .line 191
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mTimeZone:Ljava/util/TimeZone;

    .line 192
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 194
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->updateTime()V

    return-void
.end method

.method public refresh()V
    .locals 0

    .line 186
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->updateTime()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mTimeHour:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 277
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mTimeMinute:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 278
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mTimeAmPm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 279
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mDate:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 280
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mTvExtraContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 281
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/SingleClockView;->mTvTraditionalCalendar:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
