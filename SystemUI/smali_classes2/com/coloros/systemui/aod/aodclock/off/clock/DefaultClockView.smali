.class public Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;
.super Landroid/widget/RelativeLayout;
.source "DefaultClockView.java"


# static fields
.field private static final CLOCK_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "DefaultClockView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomClockView:Landroid/widget/TextClock;

.field private mDefaultHorizontal:Landroid/widget/RelativeLayout;

.field private mDefaultVertical:Landroid/widget/RelativeLayout;

.field private mGlobalHorizontal:Landroid/widget/LinearLayout;

.field private mGlobalVertical:Landroid/widget/LinearLayout;

.field private mHorizontalClock:[I

.field private mHorizontalColon:Landroid/widget/ImageView;

.field private mHorizontalHourOne:Landroid/widget/ImageView;

.field private mHorizontalHourTwo:Landroid/widget/ImageView;

.field private mHorizontalMinuteOne:Landroid/widget/ImageView;

.field private mHorizontalMinuteTwo:Landroid/widget/ImageView;

.field private mHour:Landroid/widget/TextClock;

.field private mHour1:I

.field private mHour2:I

.field private mIs24HourFormat:Z

.field private mIsMyMmLanguage:Z

.field private mIsSupportRamLessAod:Z

.field private mMin:Landroid/widget/TextClock;

.field private mMin1:I

.field private mMin2:I

.field private mVerticalClock:[I

.field private mVerticalHourOne:Landroid/widget/ImageView;

.field private mVerticalHourTwo:Landroid/widget/ImageView;

.field private mVerticalMinuteOne:Landroid/widget/ImageView;

.field private mVerticalMinuteTwo:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mContext:Landroid/content/Context;

    .line 80
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportRamLessAod()Z

    move-result p2

    iput-boolean p2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mIsSupportRamLessAod:Z

    .line 81
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mIs24HourFormat:Z

    .line 82
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    const p3, 0x7f0d003a

    invoke-virtual {p1, p3, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 83
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f03000f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 84
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f030010

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 p3, 0xa

    .line 85
    new-array v0, p3, [I

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHorizontalClock:[I

    .line 86
    new-array v0, p3, [I

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mVerticalClock:[I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 88
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHorizontalClock:[I

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v1, v0

    .line 89
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mVerticalClock:[I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->initGlobalClock()V

    .line 94
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->initDefaultClock()V

    return-void
.end method

.method private getTime()V
    .locals 4

    .line 184
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mIs24HourFormat:Z

    const/16 v1, 0xc

    const/16 v2, 0xa

    if-eqz v0, :cond_0

    .line 185
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    goto :goto_0

    .line 187
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 192
    :cond_1
    :goto_0
    div-int/lit8 v3, v0, 0xa

    iput v3, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHour1:I

    .line 193
    rem-int/2addr v0, v2

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHour2:I

    .line 194
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 195
    div-int/lit8 v1, v0, 0xa

    iput v1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mMin1:I

    .line 196
    rem-int/2addr v0, v2

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mMin2:I

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": Hour = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHour1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHour2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " minute = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mMin1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mMin2:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Aod"

    const-string v1, "DefaultClockView"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initDefaultClock()V
    .locals 2

    const v0, 0x7f0a008e

    .line 113
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mDefaultHorizontal:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a008f

    .line 114
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mDefaultVertical:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00a8

    .line 115
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHour:Landroid/widget/TextClock;

    const v0, 0x7f0a00aa

    .line 116
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mMin:Landroid/widget/TextClock;

    const v0, 0x7f0a00ab

    .line 117
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mCustomClockView:Landroid/widget/TextClock;

    .line 118
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHour:Landroid/widget/TextClock;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->getClockNumFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 119
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mMin:Landroid/widget/TextClock;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->getClockNumFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 120
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mCustomClockView:Landroid/widget/TextClock;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->getClockNumFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 121
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHour:Landroid/widget/TextClock;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setGravity(I)V

    .line 122
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mMin:Landroid/widget/TextClock;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setGravity(I)V

    .line 123
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mCustomClockView:Landroid/widget/TextClock;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setGravity(I)V

    .line 124
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isMyMmLanguage()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mIsMyMmLanguage:Z

    return-void
.end method

.method private initGlobalClock()V
    .locals 1

    const v0, 0x7f0a0097

    .line 98
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mGlobalHorizontal:Landroid/widget/LinearLayout;

    const v0, 0x7f0a009a

    .line 99
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHorizontalHourOne:Landroid/widget/ImageView;

    const v0, 0x7f0a009b

    .line 100
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHorizontalHourTwo:Landroid/widget/ImageView;

    const v0, 0x7f0a0099

    .line 101
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHorizontalColon:Landroid/widget/ImageView;

    const v0, 0x7f0a009c

    .line 102
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHorizontalMinuteOne:Landroid/widget/ImageView;

    const v0, 0x7f0a009d

    .line 103
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHorizontalMinuteTwo:Landroid/widget/ImageView;

    const v0, 0x7f0a0098

    .line 105
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mGlobalVertical:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00a3

    .line 106
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mVerticalHourOne:Landroid/widget/ImageView;

    const v0, 0x7f0a00a4

    .line 107
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mVerticalHourTwo:Landroid/widget/ImageView;

    const v0, 0x7f0a00a5

    .line 108
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mVerticalMinuteOne:Landroid/widget/ImageView;

    const v0, 0x7f0a00a6

    .line 109
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mVerticalMinuteTwo:Landroid/widget/ImageView;

    return-void
.end method

.method private updateDefaultClock(Z)V
    .locals 10

    const-string v0, "DefaultClockView"

    const-string v1, "Aod"

    const/high16 v2, 0x41f00000    # 30.0f

    const/high16 v3, 0x42480000    # 50.0f

    const/4 v4, 0x1

    const v5, 0x7f0700c1

    const v6, 0x7f0700c2

    const/4 v7, 0x0

    const/16 v8, 0x8

    if-eqz p1, :cond_3

    .line 145
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHour:Landroid/widget/TextClock;

    invoke-virtual {p1, v8}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 146
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mMin:Landroid/widget/TextClock;

    invoke-virtual {p1, v8}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 147
    iget-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mIsMyMmLanguage:Z

    if-eqz p1, :cond_2

    .line 148
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mCustomClockView:Landroid/widget/TextClock;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-boolean v9, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mIsSupportRamLessAod:Z

    if-eqz v9, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/TextClock;->setHeight(I)V

    .line 149
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mCustomClockView:Landroid/widget/TextClock;

    iget-boolean v5, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mIsSupportRamLessAod:Z

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {p1, v4, v2}, Landroid/widget/TextClock;->setTextSize(IF)V

    .line 151
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mCustomClockView:Landroid/widget/TextClock;

    invoke-virtual {p1, v7}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 152
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mCustomClockView:Landroid/widget/TextClock;

    invoke-virtual {p1}, Landroid/widget/TextClock;->refresh()V

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTime: mCustomClockView is "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mCustomClockView:Landroid/widget/TextClock;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 155
    :cond_3
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mCustomClockView:Landroid/widget/TextClock;

    invoke-virtual {p1, v8}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 156
    iget-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mIsMyMmLanguage:Z

    if-eqz p1, :cond_8

    .line 157
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHour:Landroid/widget/TextClock;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-boolean v9, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mIsSupportRamLessAod:Z

    if-eqz v9, :cond_4

    move v9, v5

    goto :goto_2

    :cond_4
    move v9, v6

    :goto_2
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/widget/TextClock;->setHeight(I)V

    .line 158
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mMin:Landroid/widget/TextClock;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-boolean v9, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mIsSupportRamLessAod:Z

    if-eqz v9, :cond_5

    goto :goto_3

    :cond_5
    move v5, v6

    :goto_3
    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/TextClock;->setHeight(I)V

    .line 159
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHour:Landroid/widget/TextClock;

    iget-boolean v5, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mIsSupportRamLessAod:Z

    if-eqz v5, :cond_6

    move v5, v2

    goto :goto_4

    :cond_6
    move v5, v3

    :goto_4
    invoke-virtual {p1, v4, v5}, Landroid/widget/TextClock;->setTextSize(IF)V

    .line 160
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mMin:Landroid/widget/TextClock;

    iget-boolean v5, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mIsSupportRamLessAod:Z

    if-eqz v5, :cond_7

    goto :goto_5

    :cond_7
    move v2, v3

    :goto_5
    invoke-virtual {p1, v4, v2}, Landroid/widget/TextClock;->setTextSize(IF)V

    .line 162
    :cond_8
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHour:Landroid/widget/TextClock;

    invoke-virtual {p1, v7}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 163
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mMin:Landroid/widget/TextClock;

    invoke-virtual {p1, v7}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 164
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHour:Landroid/widget/TextClock;

    invoke-virtual {p1}, Landroid/widget/TextClock;->refresh()V

    .line 165
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mMin:Landroid/widget/TextClock;

    invoke-virtual {p1}, Landroid/widget/TextClock;->refresh()V

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTime: mHour is "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHour:Landroid/widget/TextClock;

    invoke-virtual {v2}, Landroid/widget/TextClock;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mMin is "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mMin:Landroid/widget/TextClock;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    return-void
.end method

.method private updateGlobalClock(Z)V
    .locals 2

    .line 171
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->getTime()V

    if-eqz p1, :cond_0

    .line 173
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHorizontalColon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHorizontalColon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0804cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->updateGlobalHorizontalTime()V

    goto :goto_0

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHorizontalColon:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->updateGlobalVerticalTime()V

    :goto_0
    return-void
.end method

.method private updateGlobalHorizontalTime()V
    .locals 3

    .line 203
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mIs24HourFormat:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHour1:I

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHorizontalHourOne:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHorizontalHourOne:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHorizontalHourOne:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHorizontalClock:[I

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHour1:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 209
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHorizontalHourTwo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHorizontalClock:[I

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHour2:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 210
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHorizontalMinuteOne:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHorizontalClock:[I

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mMin1:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 211
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHorizontalMinuteTwo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHorizontalClock:[I

    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mMin2:I

    aget p0, v1, p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private updateGlobalVerticalTime()V
    .locals 3

    .line 215
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mIs24HourFormat:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHour1:I

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mVerticalHourOne:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mVerticalHourOne:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mVerticalHourOne:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mVerticalClock:[I

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHour1:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 221
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mVerticalHourTwo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mVerticalClock:[I

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mHour2:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 222
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mVerticalMinuteOne:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mVerticalClock:[I

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mMin1:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 223
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mVerticalMinuteTwo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mVerticalClock:[I

    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mMin2:I

    aget p0, v1, p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public updateTime(ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    .line 129
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mDefaultHorizontal:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 130
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mDefaultVertical:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 131
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mGlobalHorizontal:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 132
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mGlobalVertical:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 133
    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->updateDefaultClock(Z)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mDefaultHorizontal:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 136
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mDefaultVertical:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 137
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mGlobalHorizontal:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->mGlobalVertical:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 139
    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->updateGlobalClock(Z)V

    :goto_0
    return-void
.end method
