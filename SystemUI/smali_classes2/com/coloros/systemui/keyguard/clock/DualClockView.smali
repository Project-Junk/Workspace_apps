.class public Lcom/coloros/systemui/keyguard/clock/DualClockView;
.super Landroid/widget/RelativeLayout;
.source "DualClockView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DualClockView"


# instance fields
.field private final CLOCK_MODE_IMG:I

.field private final CLOCK_MODE_TEXT:I

.field private mChargingView:Landroid/widget/TextView;

.field private mClockMode:I

.field private mLastFont:I

.field private mLastLocale:Ljava/lang/String;

.field private mLocatedCity:Landroid/widget/TextView;

.field private mLocatedDate:Landroid/widget/TextView;

.field private mLocatedTimeAmpm:Landroid/widget/TextView;

.field private mLocatedTimeHour:Landroid/widget/TextView;

.field private mLocatedTimeInfo:Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;

.field private mLocatedTimeMinute:Landroid/widget/TextView;

.field private mLocatedWeatherInfo:Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;

.field private mResidentCity:Landroid/widget/TextView;

.field private mResidentDate:Landroid/widget/TextView;

.field private mResidentTimeAmpm:Landroid/widget/TextView;

.field private mResidentTimeHour:Landroid/widget/TextView;

.field private mResidentTimeInfo:Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;

.field private mResidentTimeMinute:Landroid/widget/TextView;

.field private mResidentWeatherInfo:Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;

.field private final mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/keyguard/clock/DualClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 60
    iput p1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->CLOCK_MODE_TEXT:I

    const/4 p2, 0x1

    .line 61
    iput p2, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->CLOCK_MODE_IMG:I

    .line 63
    iput p1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mClockMode:I

    .line 170
    new-instance p1, Lcom/coloros/systemui/keyguard/clock/DualClockView$1;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/keyguard/clock/DualClockView$1;-><init>(Lcom/coloros/systemui/keyguard/clock/DualClockView;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 73
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    .line 74
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    .line 75
    invoke-virtual {p2, p1}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 76
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mContext:Landroid/content/Context;

    .line 78
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0039

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mClockMode:I

    .line 79
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 80
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLastLocale:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/clock/DualClockView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {p1}, Lcom/color/compat/content/res/ConfigurationNative;->getFlipFont(Landroid/content/res/Configuration;)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLastFont:I

    .line 83
    const-class p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/clock/DualClockView;)Landroid/widget/TextView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLocatedTimeHour:Landroid/widget/TextView;

    return-object p0
.end method

.method private initView()V
    .locals 3

    const v0, 0x7f0a0229

    .line 93
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/DualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mResidentCity:Landroid/widget/TextView;

    const v0, 0x7f0a022c

    .line 94
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/DualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mResidentTimeHour:Landroid/widget/TextView;

    const v0, 0x7f0a022d

    .line 95
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/DualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mResidentTimeMinute:Landroid/widget/TextView;

    const v0, 0x7f0a022b

    .line 96
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/DualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mResidentTimeAmpm:Landroid/widget/TextView;

    const v0, 0x7f0a0230

    .line 97
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/DualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mResidentDate:Landroid/widget/TextView;

    const v0, 0x7f0a0224

    .line 99
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/DualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLocatedCity:Landroid/widget/TextView;

    const v0, 0x7f0a0227

    .line 100
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/DualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLocatedTimeHour:Landroid/widget/TextView;

    const v0, 0x7f0a0228

    .line 101
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/DualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLocatedTimeMinute:Landroid/widget/TextView;

    const v0, 0x7f0a0226

    .line 102
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/DualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLocatedTimeAmpm:Landroid/widget/TextView;

    const v0, 0x7f0a022f

    .line 103
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/DualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLocatedDate:Landroid/widget/TextView;

    const v0, 0x7f0a0223

    .line 105
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/DualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mChargingView:Landroid/widget/TextView;

    const-string v0, "OPPOSANS_Number_Regular.ttf"

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mResidentTimeHour:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 112
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mResidentTimeMinute:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 113
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLocatedTimeHour:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 114
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLocatedTimeMinute:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t find the typeface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DualClockView"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/DualClockView;->setTextColor(I)V

    return-void
.end method

.method private is24HoursFormat()Z
    .locals 0

    .line 274
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private updateLocatedTime()V
    .locals 4

    .line 245
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->getLocatedWeatherInfo()Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLocatedWeatherInfo:Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;

    .line 246
    invoke-static {}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->getInstance()Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->getLocalTimeInfo(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLocatedTimeInfo:Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;

    .line 248
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLocatedWeatherInfo:Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLocatedTimeInfo:Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 252
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/DualClockView;->is24HoursFormat()Z

    move-result v0

    .line 253
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLocatedCity:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLocatedWeatherInfo:Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;

    invoke-virtual {v2}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->getLocalCityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_1

    .line 255
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLocatedTimeAmpm:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 257
    :cond_1
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLocatedTimeAmpm:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLocatedTimeInfo:Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;

    invoke-virtual {v2}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->getAmpm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :goto_0
    iget v1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mClockMode:I

    if-nez v1, :cond_2

    .line 260
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLocatedTimeHour:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLocatedTimeInfo:Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;

    invoke-virtual {v2}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->getHour()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLocatedTimeMinute:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLocatedTimeInfo:Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;

    invoke-virtual {v2}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->getMinute()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 263
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLocatedTimeHour:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLocatedTimeInfo:Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;

    invoke-virtual {v3}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->getHour()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->setTextImg(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLocatedTimeMinute:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLocatedTimeInfo:Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;

    invoke-virtual {v3}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->getMinute()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->setTextImg(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 267
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLocatedDate:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLocatedTimeInfo:Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;

    invoke-virtual {v2}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->getDateInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLocatedTime, 24hfmt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", str="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLocatedTimeInfo:Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;

    .line 270
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->getShortTime()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DualClockView"

    .line 269
    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private updateResidentTime()V
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->getResidentWeatherInfo()Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mResidentWeatherInfo:Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;

    .line 212
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mResidentWeatherInfo:Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;

    if-nez v0, :cond_0

    return-void

    .line 216
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->getInstance()Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mResidentWeatherInfo:Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;

    .line 217
    invoke-virtual {v2}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->getTimeZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->getResidentTimeInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mResidentTimeInfo:Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;

    .line 218
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mResidentTimeInfo:Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;

    if-nez v0, :cond_1

    return-void

    .line 222
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/DualClockView;->is24HoursFormat()Z

    move-result v0

    .line 223
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mResidentCity:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mResidentWeatherInfo:Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;

    invoke-virtual {v2}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$WeatherInfo;->getLocalCityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_2

    .line 225
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mResidentTimeAmpm:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 227
    :cond_2
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mResidentTimeAmpm:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mResidentTimeInfo:Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;

    invoke-virtual {v2}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->getAmpm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    :goto_0
    iget v1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mClockMode:I

    if-nez v1, :cond_3

    .line 231
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mResidentTimeHour:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mResidentTimeInfo:Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;

    invoke-virtual {v2}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->getHour()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mResidentTimeMinute:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mResidentTimeInfo:Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;

    invoke-virtual {v2}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->getMinute()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 234
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mResidentTimeHour:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mResidentTimeInfo:Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;

    invoke-virtual {v3}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->getHour()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->setTextImg(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mResidentTimeMinute:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mResidentTimeInfo:Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;

    invoke-virtual {v3}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->getMinute()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->setTextImg(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 238
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mResidentDate:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mResidentTimeInfo:Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;

    invoke-virtual {v2}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->getDateInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateResidentTime, 24hfmt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", str="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mResidentTimeInfo:Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;

    .line 241
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->getShortTime()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DualClockView"

    .line 240
    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 158
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 159
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/DualClockView;->updateLocatedTime()V

    .line 160
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/DualClockView;->updateResidentTime()V

    .line 161
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 125
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 126
    invoke-static {p1}, Lcom/color/compat/content/res/ConfigurationNative;->getFlipFont(Landroid/content/res/Configuration;)I

    move-result v0

    .line 127
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p1

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastFont = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLastFont:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newFont = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DualClockView"

    invoke-static {v2, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget v1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLastFont:I

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    .line 132
    iput v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLastFont:I

    .line 134
    invoke-static {}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getSansMediumFont()Landroid/graphics/Typeface;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mResidentCity:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 136
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mResidentTimeAmpm:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 137
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mResidentDate:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 139
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLocatedCity:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 140
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLocatedTimeAmpm:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 141
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLocatedDate:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 145
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLastLocale = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLastLocale:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " newLocale = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLastLocale:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 147
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLastLocale:Ljava/lang/String;

    move v0, v3

    :cond_1
    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/clock/DualClockView;->refresh()V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 166
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 167
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 88
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 89
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/DualClockView;->initView()V

    return-void
.end method

.method public refresh()V
    .locals 2

    const-string v0, "DualClockView"

    const-string v1, "refresh date and time"

    .line 189
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/DualClockView;->updateLocatedTime()V

    .line 191
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/DualClockView;->updateResidentTime()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mResidentCity:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mResidentTimeHour:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mResidentTimeMinute:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mResidentTimeAmpm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mResidentDate:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLocatedCity:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLocatedTimeHour:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLocatedTimeMinute:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLocatedTimeAmpm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mLocatedDate:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/DualClockView;->mChargingView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
