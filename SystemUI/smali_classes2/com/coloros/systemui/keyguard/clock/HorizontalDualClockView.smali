.class public Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;
.super Landroid/widget/RelativeLayout;
.source "HorizontalDualClockView.java"


# static fields
.field private static final SYMBOL_DIRECTION:Ljava/lang/String; = " \u200e"

.field private static final TAG:Ljava/lang/String; = "HorizontalDualClockView"

.field private static final TEXT_FONT:Ljava/lang/String; = "OPPOSANS_Number_Regular.ttf"


# instance fields
.field private final CLOCK_MODE_IMG:I

.field private final CLOCK_MODE_TEXT:I

.field private mClockMode:I

.field private mLastFont:I

.field private mLastLocale:Ljava/lang/String;

.field private mTvDualExtraContent:Landroid/widget/TextView;

.field private mTvHorizontalLocateClockHour:Landroid/widget/TextView;

.field private mTvHorizontalLocateClockMinute:Landroid/widget/TextView;

.field private mTvHorizontalLocateClockPoint:Landroid/widget/TextView;

.field private mTvHorizontalResidentClockHour:Landroid/widget/TextView;

.field private mTvHorizontalResidentClockMinute:Landroid/widget/TextView;

.field private mTvHorizontalResidentClockPoint:Landroid/widget/TextView;

.field private mTvLocateCity:Landroid/widget/TextView;

.field private mTvLocateDate:Landroid/widget/TextView;

.field private mTvLocateWeather:Landroid/widget/TextView;

.field private mTvResidentCity:Landroid/widget/TextView;

.field private mTvResidentDate:Landroid/widget/TextView;

.field private mTvresidentWeather:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 64
    iput p1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->CLOCK_MODE_TEXT:I

    const/4 p2, 0x1

    .line 65
    iput p2, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->CLOCK_MODE_IMG:I

    .line 67
    iput p1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mClockMode:I

    .line 75
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    .line 76
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    .line 77
    invoke-virtual {p2, p1}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 78
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mContext:Landroid/content/Context;

    .line 80
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0039

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mClockMode:I

    .line 81
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mLastLocale:Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {p1}, Lcom/color/compat/content/res/ConfigurationNative;->getFlipFont(Landroid/content/res/Configuration;)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mLastFont:I

    return-void
.end method

.method private initView()V
    .locals 3

    const v0, 0x7f0a05e6

    .line 93
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvHorizontalLocateClockHour:Landroid/widget/TextView;

    const v0, 0x7f0a05e8

    .line 94
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvHorizontalLocateClockPoint:Landroid/widget/TextView;

    const v0, 0x7f0a05e7

    .line 95
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvHorizontalLocateClockMinute:Landroid/widget/TextView;

    const v0, 0x7f0a05ec

    .line 96
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvLocateCity:Landroid/widget/TextView;

    const v0, 0x7f0a05ed

    .line 97
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvLocateDate:Landroid/widget/TextView;

    const v0, 0x7f0a05ee

    .line 98
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvLocateWeather:Landroid/widget/TextView;

    const v0, 0x7f0a05e9

    .line 100
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvHorizontalResidentClockHour:Landroid/widget/TextView;

    const v0, 0x7f0a05eb

    .line 101
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvHorizontalResidentClockPoint:Landroid/widget/TextView;

    const v0, 0x7f0a05ea

    .line 102
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvHorizontalResidentClockMinute:Landroid/widget/TextView;

    const v0, 0x7f0a05f2

    .line 103
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvResidentCity:Landroid/widget/TextView;

    const v0, 0x7f0a05f3

    .line 104
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvResidentDate:Landroid/widget/TextView;

    const v0, 0x7f0a05f4

    .line 105
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvresidentWeather:Landroid/widget/TextView;

    const v0, 0x7f0a05df

    .line 107
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvDualExtraContent:Landroid/widget/TextView;

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "OPPOSANS_Number_Regular.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvHorizontalLocateClockHour:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 113
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvHorizontalLocateClockPoint:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 114
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvHorizontalLocateClockMinute:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 116
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvHorizontalResidentClockHour:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 117
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvHorizontalResidentClockPoint:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 118
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvHorizontalResidentClockMinute:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HorizontalDualClockView"

    const-string v2, "can\'t find the typeface:OPPOSANS_Number_Regular.ttf,"

    .line 121
    invoke-static {v1, v2, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->setTextColor(I)V

    return-void
.end method

.method private updateLocateTime()V
    .locals 5

    .line 192
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->getLocatedWeatherInfo()Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;

    move-result-object v0

    .line 193
    invoke-static {}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->getInstance()Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->getLocalTimeInfo(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;

    move-result-object v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 199
    :cond_0
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvLocateCity:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->getLocalCityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget v2, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mClockMode:I

    if-nez v2, :cond_1

    .line 201
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvHorizontalLocateClockHour:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->getHour()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvHorizontalLocateClockPoint:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110442

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvHorizontalLocateClockMinute:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->getMinute()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 205
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0703ca

    .line 206
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 205
    invoke-virtual {v2, v3}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->setNumHeight(F)V

    .line 207
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvHorizontalLocateClockHour:Landroid/widget/TextView;

    .line 208
    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->getHour()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->setTextImg(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 210
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvHorizontalLocateClockPoint:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvHorizontalLocateClockPoint:Landroid/widget/TextView;

    .line 212
    invoke-virtual {v2, v3}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->setTextPoint(Landroid/widget/TextView;)V

    .line 213
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvHorizontalLocateClockMinute:Landroid/widget/TextView;

    .line 214
    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->getMinute()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->setTextImg(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 217
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvLocateDate:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->getDateInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->getWeather()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u200e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->getDegree()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->getUnit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvLocateWeather:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateResidentTime()V
    .locals 5

    .line 224
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->getResidentWeatherInfo()Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 229
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->getInstance()Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mContext:Landroid/content/Context;

    .line 230
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->getTimeZone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->getResidentTimeInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 234
    :cond_1
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvResidentCity:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->getLocalCityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget v2, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mClockMode:I

    if-nez v2, :cond_2

    .line 237
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvHorizontalResidentClockHour:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->getHour()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvHorizontalResidentClockPoint:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110442

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvHorizontalResidentClockMinute:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->getMinute()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 241
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0703ca

    .line 242
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 241
    invoke-virtual {v2, v3}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->setNumHeight(F)V

    .line 243
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvHorizontalResidentClockHour:Landroid/widget/TextView;

    .line 244
    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->getHour()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->setTextImg(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 245
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvHorizontalResidentClockPoint:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvHorizontalResidentClockPoint:Landroid/widget/TextView;

    .line 247
    invoke-virtual {v2, v3}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->setTextPoint(Landroid/widget/TextView;)V

    .line 248
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvHorizontalResidentClockMinute:Landroid/widget/TextView;

    .line 249
    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->getMinute()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->setTextImg(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 251
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvResidentDate:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->getDateInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->getWeather()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u200e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->getDegree()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->getUnit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvresidentWeather:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 157
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 158
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->updateLocateTime()V

    .line 159
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->updateResidentTime()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 128
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 129
    invoke-static {p1}, Lcom/color/compat/content/res/ConfigurationNative;->getFlipFont(Landroid/content/res/Configuration;)I

    move-result v0

    .line 130
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p1

    .line 133
    iget v1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mLastFont:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 134
    iput v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mLastFont:I

    .line 136
    invoke-static {}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getSansMediumFont()Landroid/graphics/Typeface;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvLocateCity:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 138
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvLocateDate:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 140
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvResidentCity:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 141
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvResidentDate:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 145
    :goto_0
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mLastLocale:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mLastLocale:Ljava/lang/String;

    move v0, v2

    :cond_1
    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->refresh()V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 164
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 88
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 89
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->initView()V

    return-void
.end method

.method public refresh()V
    .locals 2

    const-string v0, "HorizontalDualClockView"

    const-string v1, "refresh date and time"

    .line 168
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->updateLocateTime()V

    .line 170
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->updateResidentTime()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvHorizontalLocateClockHour:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvHorizontalLocateClockPoint:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvHorizontalLocateClockMinute:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvLocateCity:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvLocateDate:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvLocateWeather:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvHorizontalResidentClockHour:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvHorizontalResidentClockPoint:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvHorizontalResidentClockMinute:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvResidentCity:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvResidentDate:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 186
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvresidentWeather:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/HorizontalDualClockView;->mTvDualExtraContent:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
