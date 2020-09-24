.class public Lcom/color/support/widget/ColorTimePicker;
.super Landroid/widget/FrameLayout;
.source "ColorTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorTimePicker$Format;,
        Lcom/color/support/widget/ColorTimePicker$OnTimeChangeListener;
    }
.end annotation


# static fields
.field private static final HOURS_OF_A_DAY:I = 0x17

.field private static final HOURS_OF_HALF_DAY:I = 0xc

.field private static final LEAPYEAR_STEP_FOUR:I = 0x4

.field private static final LEAPYEAR_STEP_FOUR_HUN:I = 0x190

.field private static final LEAPYEAR_STEP_HUN:I = 0x64

.field private static final MILLISECOND_A_DAY:J = 0x5265c00L

.field private static final MINUTES_OF_A_HOUR:I = 0x3b

.field private static final MINUTES_STEP:I = 0x5

.field private static final START_YEAR:I = 0x76c

.field private static final TAG:Ljava/lang/String; = "ColorTimePicker"

.field private static final TOTAL_YEAR:I = 0x64

.field private static final YEAR_AMOUNT_LEAP:I = 0x16e

.field private static final YEAR_AMOUNT_NOT_LEAP:I = 0x16d


# instance fields
.field private mAmPm:I

.field private mCalendar:Ljava/util/Calendar;

.field private mContext:Landroid/content/Context;

.field private mDateNamesTemp:[Ljava/lang/String;

.field private mDefaultCalendar:Ljava/util/Calendar;

.field private mEndDate:Ljava/util/Date;

.field private mIsMinuteFiveStep:Z

.field private mOnTimeChangeListener:Lcom/color/support/widget/ColorTimePicker$OnTimeChangeListener;

.field private mOutformatter:Ljava/text/SimpleDateFormat;

.field private mPickerAmPm:Lcom/color/support/widget/ColorNumberPicker;

.field private mPickerDate:Lcom/color/support/widget/ColorNumberPicker;

.field private mPickerHour:Lcom/color/support/widget/ColorNumberPicker;

.field private mPickerMinute:Lcom/color/support/widget/ColorNumberPicker;

.field private mStartTime:J

.field private mTextAMPM:[Ljava/lang/String;

.field private mTextDates:[Ljava/lang/String;

.field private mTextDay:Ljava/lang/String;

.field private mTextToday:Ljava/lang/String;

.field private mTodayCalendar:Ljava/util/Calendar;

.field private mTodayDate:I

.field private mTodayIndex:I

.field private mTodayMonth:I

.field private mTodayYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/ColorTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 122
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 64
    iput p2, p0, Lcom/color/support/widget/ColorTimePicker;->mTodayIndex:I

    .line 77
    iput p2, p0, Lcom/color/support/widget/ColorTimePicker;->mAmPm:I

    const/4 p2, 0x0

    .line 123
    invoke-static {p0, p2}, Lcom/color/support/util/ColorDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 124
    iput-object p1, p0, Lcom/color/support/widget/ColorTimePicker;->mContext:Landroid/content/Context;

    .line 125
    iget-object p2, p0, Lcom/color/support/widget/ColorTimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$array;->oppo_time_picker_ampm:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/widget/ColorTimePicker;->mTextAMPM:[Ljava/lang/String;

    .line 126
    iget-object p2, p0, Lcom/color/support/widget/ColorTimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$string;->color_time_picker_today:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/widget/ColorTimePicker;->mTextToday:Ljava/lang/String;

    .line 127
    iget-object p2, p0, Lcom/color/support/widget/ColorTimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$string;->color_time_picker_day:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/widget/ColorTimePicker;->mTextDay:Ljava/lang/String;

    .line 128
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/widget/ColorTimePicker;->mCalendar:Ljava/util/Calendar;

    .line 129
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/widget/ColorTimePicker;->mTodayCalendar:Ljava/util/Calendar;

    .line 130
    iget-object p2, p0, Lcom/color/support/widget/ColorTimePicker;->mTodayCalendar:Ljava/util/Calendar;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorTimePicker;->mTodayYear:I

    .line 131
    iget-object p2, p0, Lcom/color/support/widget/ColorTimePicker;->mTodayCalendar:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorTimePicker;->mTodayMonth:I

    .line 132
    iget-object p2, p0, Lcom/color/support/widget/ColorTimePicker;->mTodayCalendar:Ljava/util/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorTimePicker;->mTodayDate:I

    .line 133
    new-instance p2, Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yyyy MMM dd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/color/support/widget/ColorTimePicker;->mTextDay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " E"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p2, p0, Lcom/color/support/widget/ColorTimePicker;->mOutformatter:Ljava/text/SimpleDateFormat;

    .line 134
    iget-object p2, p0, Lcom/color/support/widget/ColorTimePicker;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcolor/support/v7/appcompat/R$layout;->color_time_picker:I

    invoke-virtual {p2, v0, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 136
    sget p3, Lcolor/support/v7/appcompat/R$id;->color_time_picker_date:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/color/support/widget/ColorNumberPicker;

    iput-object p3, p0, Lcom/color/support/widget/ColorTimePicker;->mPickerDate:Lcom/color/support/widget/ColorNumberPicker;

    .line 137
    sget p3, Lcolor/support/v7/appcompat/R$id;->color_time_picker_hour:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/color/support/widget/ColorNumberPicker;

    iput-object p3, p0, Lcom/color/support/widget/ColorTimePicker;->mPickerHour:Lcom/color/support/widget/ColorNumberPicker;

    .line 138
    sget p3, Lcolor/support/v7/appcompat/R$id;->color_time_picker_minute:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/color/support/widget/ColorNumberPicker;

    iput-object p3, p0, Lcom/color/support/widget/ColorTimePicker;->mPickerMinute:Lcom/color/support/widget/ColorNumberPicker;

    .line 139
    sget p3, Lcolor/support/v7/appcompat/R$id;->color_time_picker_ampm:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/color/support/widget/ColorNumberPicker;

    iput-object p2, p0, Lcom/color/support/widget/ColorTimePicker;->mPickerAmPm:Lcom/color/support/widget/ColorNumberPicker;

    .line 141
    invoke-direct {p0}, Lcom/color/support/widget/ColorTimePicker;->reorderSpinners()V

    .line 143
    iget-object p2, p0, Lcom/color/support/widget/ColorTimePicker;->mPickerHour:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p2}, Lcom/color/support/widget/ColorNumberPicker;->isAccessibilityEnable()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$string;->picker_talkback_tip:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 145
    iget-object p3, p0, Lcom/color/support/widget/ColorTimePicker;->mPickerDate:Lcom/color/support/widget/ColorNumberPicker;

    if-eqz p3, :cond_0

    .line 146
    invoke-virtual {p3, p2}, Lcom/color/support/widget/ColorNumberPicker;->addTalkbackSuffix(Ljava/lang/String;)V

    .line 148
    :cond_0
    iget-object p3, p0, Lcom/color/support/widget/ColorTimePicker;->mPickerHour:Lcom/color/support/widget/ColorNumberPicker;

    if-eqz p3, :cond_1

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$string;->color_hour:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/color/support/widget/ColorNumberPicker;->addTalkbackSuffix(Ljava/lang/String;)V

    .line 151
    :cond_1
    iget-object p3, p0, Lcom/color/support/widget/ColorTimePicker;->mPickerMinute:Lcom/color/support/widget/ColorNumberPicker;

    if-eqz p3, :cond_2

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$string;->color_minute:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/color/support/widget/ColorNumberPicker;->addTalkbackSuffix(Ljava/lang/String;)V

    .line 154
    :cond_2
    iget-object p0, p0, Lcom/color/support/widget/ColorTimePicker;->mPickerAmPm:Lcom/color/support/widget/ColorNumberPicker;

    if-eqz p0, :cond_3

    .line 155
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$string;->color_minute:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorNumberPicker;->addTalkbackSuffix(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/color/support/widget/ColorTimePicker;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/color/support/widget/ColorTimePicker;->mAmPm:I

    return p0
.end method

.method static synthetic access$002(Lcom/color/support/widget/ColorTimePicker;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/color/support/widget/ColorTimePicker;->mAmPm:I

    return p1
.end method

.method static synthetic access$100(Lcom/color/support/widget/ColorTimePicker;)Ljava/util/Calendar;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/color/support/widget/ColorTimePicker;->mCalendar:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/color/support/widget/ColorTimePicker;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/color/support/widget/ColorTimePicker;->mTodayIndex:I

    return p0
.end method

.method static synthetic access$1100(Lcom/color/support/widget/ColorTimePicker;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/color/support/widget/ColorTimePicker;->mTextToday:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/color/support/widget/ColorTimePicker;)Lcom/color/support/widget/ColorTimePicker$OnTimeChangeListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/color/support/widget/ColorTimePicker;->mOnTimeChangeListener:Lcom/color/support/widget/ColorTimePicker$OnTimeChangeListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/color/support/widget/ColorTimePicker;)Z
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/color/support/widget/ColorTimePicker;->is24Hours()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/color/support/widget/ColorTimePicker;)Lcom/color/support/widget/ColorNumberPicker;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/color/support/widget/ColorTimePicker;->mPickerAmPm:Lcom/color/support/widget/ColorNumberPicker;

    return-object p0
.end method

.method static synthetic access$500(Lcom/color/support/widget/ColorTimePicker;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/color/support/widget/ColorTimePicker;->mIsMinuteFiveStep:Z

    return p0
.end method

.method static synthetic access$600(Lcom/color/support/widget/ColorTimePicker;I)Ljava/util/Date;
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorTimePicker;->getDateFromValue(I)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/color/support/widget/ColorTimePicker;I)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorTimePicker;->getDateYMDW(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/color/support/widget/ColorTimePicker;)[Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/color/support/widget/ColorTimePicker;->mDateNamesTemp:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/color/support/widget/ColorTimePicker;)[Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/color/support/widget/ColorTimePicker;->mTextDates:[Ljava/lang/String;

    return-object p0
.end method

.method private getDateFromValue(I)Ljava/util/Date;
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/color/support/widget/ColorTimePicker;->mDateNamesTemp:[Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    .line 447
    :try_start_0
    iget-object p0, p0, Lcom/color/support/widget/ColorTimePicker;->mOutformatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 449
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getDateYMDW(I)Ljava/lang/String;
    .locals 7

    .line 421
    iget-object v0, p0, Lcom/color/support/widget/ColorTimePicker;->mEndDate:Ljava/util/Date;

    iget-wide v1, p0, Lcom/color/support/widget/ColorTimePicker;->mStartTime:J

    int-to-long v3, p1

    const-wide/32 v5, 0x5265c00

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 422
    iget-object v0, p0, Lcom/color/support/widget/ColorTimePicker;->mEndDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x76c

    .line 423
    iget-object v1, p0, Lcom/color/support/widget/ColorTimePicker;->mEndDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v1

    .line 424
    iget-object v2, p0, Lcom/color/support/widget/ColorTimePicker;->mEndDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v2

    .line 425
    invoke-direct {p0, v0, v1, v2}, Lcom/color/support/widget/ColorTimePicker;->isToday(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iput p1, p0, Lcom/color/support/widget/ColorTimePicker;->mTodayIndex:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 428
    iput p1, p0, Lcom/color/support/widget/ColorTimePicker;->mTodayIndex:I

    .line 430
    :goto_0
    iget-object p1, p0, Lcom/color/support/widget/ColorTimePicker;->mOutformatter:Ljava/text/SimpleDateFormat;

    iget-object p0, p0, Lcom/color/support/widget/ColorTimePicker;->mEndDate:Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDaysAmountOfYear(I)I
    .locals 0

    .line 390
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorTimePicker;->isLeapYear(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x16e

    goto :goto_0

    :cond_0
    const/16 p0, 0x16d

    :goto_0
    return p0
.end method

.method private is24Hours()Z
    .locals 1

    .line 384
    iget-object p0, p0, Lcom/color/support/widget/ColorTimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "time_12_24"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "24"

    .line 386
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLeapYear(I)Z
    .locals 0

    .line 439
    rem-int/lit8 p0, p1, 0x4

    if-nez p0, :cond_0

    rem-int/lit8 p0, p1, 0x64

    if-nez p0, :cond_1

    :cond_0
    rem-int/lit16 p1, p1, 0x190

    if-nez p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isToday(III)Z
    .locals 1

    .line 434
    iget v0, p0, Lcom/color/support/widget/ColorTimePicker;->mTodayYear:I

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/color/support/widget/ColorTimePicker;->mTodayMonth:I

    if-ne p2, p1, :cond_0

    iget p0, p0, Lcom/color/support/widget/ColorTimePicker;->mTodayDate:I

    if-ne p3, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private reorderSpinners()V
    .locals 2

    .line 161
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorTimePicker;->mPickerAmPm:Lcom/color/support/widget/ColorNumberPicker;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 163
    iget-object v1, p0, Lcom/color/support/widget/ColorTimePicker;->mPickerAmPm:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 164
    iget-object v1, p0, Lcom/color/support/widget/ColorTimePicker;->mPickerAmPm:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 165
    invoke-direct {p0}, Lcom/color/support/widget/ColorTimePicker;->is24Hours()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/color/support/widget/ColorTimePicker;->mPickerMinute:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    .line 167
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 168
    iget-object v1, p0, Lcom/color/support/widget/ColorTimePicker;->mPickerMinute:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v1, v0}, Lcom/color/support/widget/ColorNumberPicker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-object v0, p0, Lcom/color/support/widget/ColorTimePicker;->mPickerMinute:Lcom/color/support/widget/ColorNumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setAlignPosition(I)V

    .line 170
    iget-object v0, p0, Lcom/color/support/widget/ColorTimePicker;->mPickerAmPm:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 171
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 172
    iget-object v1, p0, Lcom/color/support/widget/ColorTimePicker;->mPickerAmPm:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v1, v0}, Lcom/color/support/widget/ColorNumberPicker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object p0, p0, Lcom/color/support/widget/ColorTimePicker;->mPickerAmPm:Lcom/color/support/widget/ColorNumberPicker;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorNumberPicker;->setAlignPosition(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getColorTimePicker()Landroid/view/View;
    .locals 18

    move-object/from16 v0, p0

    .line 208
    iget-object v1, v0, Lcom/color/support/widget/ColorTimePicker;->mDefaultCalendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    goto :goto_0

    .line 212
    :cond_0
    iget-object v1, v0, Lcom/color/support/widget/ColorTimePicker;->mTodayCalendar:Ljava/util/Calendar;

    .line 213
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    :goto_0
    move v9, v3

    const/4 v10, 0x2

    .line 215
    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v11, v3, 0x1

    const/4 v12, 0x5

    .line 216
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v13

    const/16 v14, 0xb

    .line 217
    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v15

    const/16 v3, 0x9

    .line 218
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v7, 0xc

    .line 219
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 220
    iget-object v3, v0, Lcom/color/support/widget/ColorTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 221
    iget-object v3, v0, Lcom/color/support/widget/ColorTimePicker;->mOutformatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 223
    iget-object v3, v0, Lcom/color/support/widget/ColorTimePicker;->mCalendar:Ljava/util/Calendar;

    add-int/lit8 v5, v11, -0x1

    move v4, v9

    move/from16 v16, v6

    move v6, v13

    move v14, v7

    move v7, v15

    move/from16 v17, v8

    move/from16 v8, v16

    invoke-virtual/range {v3 .. v8}, Ljava/util/Calendar;->set(IIIII)V

    const v3, 0x8e94

    const/4 v4, 0x0

    move v5, v3

    move v3, v4

    :goto_1
    const/16 v6, 0x64

    if-ge v3, v6, :cond_1

    add-int/lit8 v6, v9, -0x32

    add-int/2addr v6, v3

    .line 228
    invoke-direct {v0, v6}, Lcom/color/support/widget/ColorTimePicker;->getDaysAmountOfYear(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v4

    move v6, v3

    :goto_2
    const/16 v7, 0x32

    if-ge v3, v7, :cond_2

    add-int/lit8 v7, v9, -0x32

    add-int/2addr v7, v3

    .line 232
    invoke-direct {v0, v7}, Lcom/color/support/widget/ColorTimePicker;->getDaysAmountOfYear(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 235
    :cond_2
    new-array v3, v5, [Ljava/lang/String;

    iput-object v3, v0, Lcom/color/support/widget/ColorTimePicker;->mTextDates:[Ljava/lang/String;

    .line 236
    iget-object v3, v0, Lcom/color/support/widget/ColorTimePicker;->mTextDates:[Ljava/lang/String;

    invoke-virtual {v3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, v0, Lcom/color/support/widget/ColorTimePicker;->mDateNamesTemp:[Ljava/lang/String;

    if-le v11, v10, :cond_3

    add-int/lit8 v3, v9, -0x32

    .line 238
    invoke-direct {v0, v3}, Lcom/color/support/widget/ColorTimePicker;->isLeapYear(I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {v0, v9}, Lcom/color/support/widget/ColorTimePicker;->isLeapYear(I)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v6, v6, 0x1

    :cond_3
    if-le v11, v10, :cond_4

    add-int/lit8 v3, v9, -0x32

    .line 242
    invoke-direct {v0, v3}, Lcom/color/support/widget/ColorTimePicker;->isLeapYear(I)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v6, v6, -0x1

    .line 247
    :cond_4
    invoke-direct {v0, v9}, Lcom/color/support/widget/ColorTimePicker;->isLeapYear(I)Z

    move-result v3

    if-eqz v3, :cond_5

    if-ne v11, v10, :cond_5

    const/16 v3, 0x1d

    if-ne v13, v3, :cond_5

    .line 248
    invoke-virtual {v1, v12, v2}, Ljava/util/Calendar;->add(II)V

    :cond_5
    const/16 v3, -0x32

    .line 250
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 251
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/color/support/widget/ColorTimePicker;->mStartTime:J

    .line 252
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lcom/color/support/widget/ColorTimePicker;->mEndDate:Ljava/util/Date;

    .line 255
    invoke-direct/range {p0 .. p0}, Lcom/color/support/widget/ColorTimePicker;->is24Hours()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 256
    iget-object v1, v0, Lcom/color/support/widget/ColorTimePicker;->mPickerHour:Lcom/color/support/widget/ColorNumberPicker;

    const/16 v3, 0x17

    invoke-virtual {v1, v3}, Lcom/color/support/widget/ColorNumberPicker;->setMaxValue(I)V

    .line 257
    iget-object v1, v0, Lcom/color/support/widget/ColorTimePicker;->mPickerHour:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v1, v4}, Lcom/color/support/widget/ColorNumberPicker;->setMinValue(I)V

    .line 258
    iget-object v1, v0, Lcom/color/support/widget/ColorTimePicker;->mPickerAmPm:Lcom/color/support/widget/ColorNumberPicker;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/color/support/widget/ColorNumberPicker;->setVisibility(I)V

    goto :goto_3

    .line 260
    :cond_6
    iget-object v1, v0, Lcom/color/support/widget/ColorTimePicker;->mPickerHour:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v1, v14}, Lcom/color/support/widget/ColorNumberPicker;->setMaxValue(I)V

    .line 261
    iget-object v1, v0, Lcom/color/support/widget/ColorTimePicker;->mPickerHour:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v1, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMinValue(I)V

    .line 262
    iget-object v1, v0, Lcom/color/support/widget/ColorTimePicker;->mPickerAmPm:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v3, v0, Lcom/color/support/widget/ColorTimePicker;->mTextAMPM:[Ljava/lang/String;

    array-length v3, v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/color/support/widget/ColorNumberPicker;->setMaxValue(I)V

    .line 263
    iget-object v1, v0, Lcom/color/support/widget/ColorTimePicker;->mPickerAmPm:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v1, v4}, Lcom/color/support/widget/ColorNumberPicker;->setMinValue(I)V

    .line 264
    iget-object v1, v0, Lcom/color/support/widget/ColorTimePicker;->mPickerAmPm:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v3, v0, Lcom/color/support/widget/ColorTimePicker;->mTextAMPM:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/color/support/widget/ColorNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 265
    iget-object v1, v0, Lcom/color/support/widget/ColorTimePicker;->mPickerAmPm:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v1, v4}, Lcom/color/support/widget/ColorNumberPicker;->setVisibility(I)V

    .line 266
    iget-object v1, v0, Lcom/color/support/widget/ColorTimePicker;->mPickerAmPm:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v1, v4}, Lcom/color/support/widget/ColorNumberPicker;->setWrapSelectorWheel(Z)V

    .line 269
    :goto_3
    iget-object v1, v0, Lcom/color/support/widget/ColorTimePicker;->mPickerHour:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorNumberPicker;->setTwoDigitFormatter()V

    .line 270
    iget-object v1, v0, Lcom/color/support/widget/ColorTimePicker;->mPickerHour:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v1, v2}, Lcom/color/support/widget/ColorNumberPicker;->setWrapSelectorWheel(Z)V

    .line 272
    invoke-direct/range {p0 .. p0}, Lcom/color/support/widget/ColorTimePicker;->is24Hours()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 273
    iget-object v1, v0, Lcom/color/support/widget/ColorTimePicker;->mPickerHour:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v1, v15}, Lcom/color/support/widget/ColorNumberPicker;->setValue(I)V

    goto :goto_5

    :cond_7
    move/from16 v1, v17

    if-lez v1, :cond_8

    .line 276
    iget-object v3, v0, Lcom/color/support/widget/ColorTimePicker;->mPickerHour:Lcom/color/support/widget/ColorNumberPicker;

    sub-int/2addr v15, v14

    invoke-virtual {v3, v15}, Lcom/color/support/widget/ColorNumberPicker;->setValue(I)V

    goto :goto_4

    .line 278
    :cond_8
    iget-object v3, v0, Lcom/color/support/widget/ColorTimePicker;->mPickerHour:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v3, v15}, Lcom/color/support/widget/ColorNumberPicker;->setValue(I)V

    .line 280
    :goto_4
    iget-object v3, v0, Lcom/color/support/widget/ColorTimePicker;->mPickerAmPm:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v3, v1}, Lcom/color/support/widget/ColorNumberPicker;->setValue(I)V

    .line 281
    iput v1, v0, Lcom/color/support/widget/ColorTimePicker;->mAmPm:I

    .line 284
    :goto_5
    iget-object v1, v0, Lcom/color/support/widget/ColorTimePicker;->mPickerAmPm:Lcom/color/support/widget/ColorNumberPicker;

    new-instance v3, Lcom/color/support/widget/ColorTimePicker$1;

    invoke-direct {v3, v0}, Lcom/color/support/widget/ColorTimePicker$1;-><init>(Lcom/color/support/widget/ColorTimePicker;)V

    invoke-virtual {v1, v3}, Lcom/color/support/widget/ColorNumberPicker;->setOnValueChangedListener(Lcom/color/support/widget/ColorNumberPicker$OnValueChangeListener;)V

    .line 296
    iget-object v1, v0, Lcom/color/support/widget/ColorTimePicker;->mPickerHour:Lcom/color/support/widget/ColorNumberPicker;

    new-instance v3, Lcom/color/support/widget/ColorTimePicker$2;

    invoke-direct {v3, v0}, Lcom/color/support/widget/ColorTimePicker$2;-><init>(Lcom/color/support/widget/ColorTimePicker;)V

    invoke-virtual {v1, v3}, Lcom/color/support/widget/ColorNumberPicker;->setOnValueChangedListener(Lcom/color/support/widget/ColorNumberPicker$OnValueChangeListener;)V

    .line 322
    iget-object v1, v0, Lcom/color/support/widget/ColorTimePicker;->mPickerMinute:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v1, v4}, Lcom/color/support/widget/ColorNumberPicker;->setMinValue(I)V

    .line 323
    iget-boolean v1, v0, Lcom/color/support/widget/ColorTimePicker;->mIsMinuteFiveStep:Z

    if-eqz v1, :cond_b

    .line 325
    iget-object v1, v0, Lcom/color/support/widget/ColorTimePicker;->mPickerMinute:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v1, v4}, Lcom/color/support/widget/ColorNumberPicker;->setMinValue(I)V

    .line 326
    iget-object v1, v0, Lcom/color/support/widget/ColorTimePicker;->mPickerMinute:Lcom/color/support/widget/ColorNumberPicker;

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Lcom/color/support/widget/ColorNumberPicker;->setMaxValue(I)V

    .line 327
    new-array v1, v14, [Ljava/lang/String;

    move v3, v4

    :goto_6
    if-ge v3, v14, :cond_a

    mul-int/lit8 v7, v3, 0x5

    const/16 v8, 0xa

    if-ge v7, v8, :cond_9

    .line 329
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 331
    :cond_a
    iget-object v3, v0, Lcom/color/support/widget/ColorTimePicker;->mPickerMinute:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v3, v1}, Lcom/color/support/widget/ColorNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 332
    iget-object v3, v0, Lcom/color/support/widget/ColorTimePicker;->mPickerMinute:Lcom/color/support/widget/ColorNumberPicker;

    move/from16 v7, v16

    div-int/2addr v7, v12

    invoke-virtual {v3, v7}, Lcom/color/support/widget/ColorNumberPicker;->setValue(I)V

    .line 333
    iget-object v3, v0, Lcom/color/support/widget/ColorTimePicker;->mCalendar:Ljava/util/Calendar;

    aget-object v1, v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v14, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_8

    :cond_b
    move/from16 v7, v16

    .line 335
    iget-object v1, v0, Lcom/color/support/widget/ColorTimePicker;->mPickerMinute:Lcom/color/support/widget/ColorNumberPicker;

    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Lcom/color/support/widget/ColorNumberPicker;->setMaxValue(I)V

    .line 336
    iget-object v1, v0, Lcom/color/support/widget/ColorTimePicker;->mPickerMinute:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v1, v7}, Lcom/color/support/widget/ColorNumberPicker;->setValue(I)V

    .line 339
    :goto_8
    iget-object v1, v0, Lcom/color/support/widget/ColorTimePicker;->mPickerMinute:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorNumberPicker;->setTwoDigitFormatter()V

    .line 340
    iget-object v1, v0, Lcom/color/support/widget/ColorTimePicker;->mPickerMinute:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v1, v2}, Lcom/color/support/widget/ColorNumberPicker;->setWrapSelectorWheel(Z)V

    .line 342
    iget-object v1, v0, Lcom/color/support/widget/ColorTimePicker;->mPickerMinute:Lcom/color/support/widget/ColorNumberPicker;

    new-instance v3, Lcom/color/support/widget/ColorTimePicker$3;

    invoke-direct {v3, v0}, Lcom/color/support/widget/ColorTimePicker$3;-><init>(Lcom/color/support/widget/ColorTimePicker;)V

    invoke-virtual {v1, v3}, Lcom/color/support/widget/ColorNumberPicker;->setOnValueChangedListener(Lcom/color/support/widget/ColorNumberPicker$OnValueChangeListener;)V

    .line 358
    iget-object v1, v0, Lcom/color/support/widget/ColorTimePicker;->mPickerDate:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v1, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMinValue(I)V

    .line 359
    iget-object v1, v0, Lcom/color/support/widget/ColorTimePicker;->mPickerDate:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v1, v5}, Lcom/color/support/widget/ColorNumberPicker;->setMaxValue(I)V

    .line 360
    iget-object v1, v0, Lcom/color/support/widget/ColorTimePicker;->mPickerDate:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v1, v4}, Lcom/color/support/widget/ColorNumberPicker;->setWrapSelectorWheel(Z)V

    .line 361
    iget-object v1, v0, Lcom/color/support/widget/ColorTimePicker;->mPickerDate:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v1, v6}, Lcom/color/support/widget/ColorNumberPicker;->setValue(I)V

    .line 362
    new-instance v1, Lcom/color/support/widget/ColorTimePicker$Format;

    invoke-direct {v1, v0}, Lcom/color/support/widget/ColorTimePicker$Format;-><init>(Lcom/color/support/widget/ColorTimePicker;)V

    .line 363
    iget-object v2, v0, Lcom/color/support/widget/ColorTimePicker;->mPickerDate:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v2, v1}, Lcom/color/support/widget/ColorNumberPicker;->setFormatter(Lcom/color/support/widget/ColorNumberPicker$Formatter;)V

    .line 365
    iget-object v1, v0, Lcom/color/support/widget/ColorTimePicker;->mPickerDate:Lcom/color/support/widget/ColorNumberPicker;

    new-instance v2, Lcom/color/support/widget/ColorTimePicker$4;

    invoke-direct {v2, v0}, Lcom/color/support/widget/ColorTimePicker$4;-><init>(Lcom/color/support/widget/ColorTimePicker;)V

    invoke-virtual {v1, v2}, Lcom/color/support/widget/ColorNumberPicker;->setOnValueChangedListener(Lcom/color/support/widget/ColorNumberPicker$OnValueChangeListener;)V

    return-object v0
.end method

.method public scrollForceFinished()V
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/color/support/widget/ColorTimePicker;->mPickerDate:Lcom/color/support/widget/ColorNumberPicker;

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker;->scrollForceFinished()V

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorTimePicker;->mPickerHour:Lcom/color/support/widget/ColorNumberPicker;

    if-eqz v0, :cond_1

    .line 469
    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker;->scrollForceFinished()V

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorTimePicker;->mPickerMinute:Lcom/color/support/widget/ColorNumberPicker;

    if-eqz v0, :cond_2

    .line 472
    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker;->scrollForceFinished()V

    .line 474
    :cond_2
    iget-object v0, p0, Lcom/color/support/widget/ColorTimePicker;->mPickerAmPm:Lcom/color/support/widget/ColorNumberPicker;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/color/support/widget/ColorTimePicker;->is24Hours()Z

    move-result v0

    if-nez v0, :cond_3

    .line 475
    iget-object p0, p0, Lcom/color/support/widget/ColorTimePicker;->mPickerAmPm:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->scrollForceFinished()V

    :cond_3
    return-void
.end method

.method public setColorTimePicker(ILjava/util/Calendar;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 181
    iput-object p2, p0, Lcom/color/support/widget/ColorTimePicker;->mDefaultCalendar:Ljava/util/Calendar;

    .line 182
    invoke-virtual {p0}, Lcom/color/support/widget/ColorTimePicker;->getColorTimePicker()Landroid/view/View;

    return-void
.end method

.method public setColorTimePicker(Ljava/util/Calendar;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/color/support/widget/ColorTimePicker;->mDefaultCalendar:Ljava/util/Calendar;

    .line 192
    invoke-virtual {p0}, Lcom/color/support/widget/ColorTimePicker;->getColorTimePicker()Landroid/view/View;

    return-void
.end method

.method public setMinuteStepToFive()V
    .locals 1

    const/4 v0, 0x1

    .line 458
    iput-boolean v0, p0, Lcom/color/support/widget/ColorTimePicker;->mIsMinuteFiveStep:Z

    return-void
.end method

.method public setOnTimeChangeListener(Lcom/color/support/widget/ColorTimePicker$OnTimeChangeListener;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/color/support/widget/ColorTimePicker;->mOnTimeChangeListener:Lcom/color/support/widget/ColorTimePicker$OnTimeChangeListener;

    return-void
.end method
