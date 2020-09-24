.class public Lcom/color/support/widget/ColorDatePicker;
.super Landroid/widget/FrameLayout;
.source "ColorDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorDatePicker$Format;,
        Lcom/color/support/widget/ColorDatePicker$IncompleteDate;,
        Lcom/color/support/widget/ColorDatePicker$SavedState;,
        Lcom/color/support/widget/ColorDatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final A_LEAP_YEAR:I = 0x7e4

.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DEFAULT_CALENDAR_VIEW_SHOWN:Z = true

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_SPINNERS_SHOWN:Z = true

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final HOURS_OF_HALF_DAY:I = 0xc

.field public static final IGNORED_YEAR:I = -0x80000000

.field private static final LOG_TAG:Ljava/lang/String; = "ColorDatePicker"

.field private static final LONGPRESS_UPDATE_INTERVAL:I = 0x64

.field private static final MD_FORMAT:Ljava/lang/String; = "MM/dd"

.field private static final MONTH_LONGPRESS_UPDATE_INTERVAL:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "ColorDatePicker"

.field private static sOrderEn:[C


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private mDayFormat:Lcom/color/support/widget/ColorDatePicker$Format;

.field private final mDaySpinner:Lcom/color/support/widget/ColorNumberPicker;

.field private mFocusColor:I

.field private mIsEnabled:Z

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mMonthFormat:Lcom/color/support/widget/ColorDatePicker$Format;

.field private final mMonthSpinner:Lcom/color/support/widget/ColorNumberPicker;

.field private mNormalColor:I

.field private mNumberOfMonths:I

.field private mOnDateChangedListener:Lcom/color/support/widget/ColorDatePicker$OnDateChangedListener;

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

.field private mYearFormat:Lcom/color/support/widget/ColorDatePicker$Format;

.field private mYearIgnorable:Z

.field private final mYearSpinner:Lcom/color/support/widget/ColorNumberPicker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 70
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/color/support/widget/ColorDatePicker;->sOrderEn:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x64s
        0x4ds
        0x79s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 109
    sget v0, Lcolor/support/v7/appcompat/R$attr;->oppoDatePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/ColorDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .line 122
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mDateFormat:Ljava/text/DateFormat;

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/color/support/widget/ColorDatePicker;->mIsEnabled:Z

    .line 123
    invoke-static {p0}, Lcom/color/support/c/c;->a(Landroid/view/View;)V

    .line 124
    iput-object p1, p0, Lcom/color/support/widget/ColorDatePicker;->mContext:Landroid/content/Context;

    .line 126
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/color/support/widget/ColorDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 128
    sget-object v1, Lcolor/support/v7/appcompat/R$styleable;->ColorDatePicker:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 130
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorDatePicker_spinnerShown:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 131
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorDatePicker_calendarViewShown:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 133
    sget v3, Lcolor/support/v7/appcompat/R$styleable;->ColorDatePicker_beginYear:I

    const/16 v4, 0x76c

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 134
    sget v4, Lcolor/support/v7/appcompat/R$styleable;->ColorDatePicker_endYear:I

    const/16 v5, 0x834

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 135
    sget v5, Lcolor/support/v7/appcompat/R$styleable;->ColorDatePicker_minDate:I

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 136
    sget v6, Lcolor/support/v7/appcompat/R$styleable;->ColorDatePicker_maxDate:I

    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 137
    invoke-virtual {p0}, Lcom/color/support/widget/ColorDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcolor/support/v7/appcompat/R$array;->color_solor_mounth:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/color/support/widget/ColorDatePicker;->mShortMonths:[Ljava/lang/String;

    .line 138
    sget v7, Lcolor/support/v7/appcompat/R$styleable;->ColorDatePicker_calendarTextColor:I

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Lcom/color/support/widget/ColorDatePicker;->mNormalColor:I

    .line 139
    sget v7, Lcolor/support/v7/appcompat/R$styleable;->ColorDatePicker_calendarSelectedTextColor:I

    invoke-virtual {p2, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Lcom/color/support/widget/ColorDatePicker;->mFocusColor:I

    .line 140
    sget v7, Lcolor/support/v7/appcompat/R$layout;->oppo_date_picker:I

    .line 142
    sget v8, Lcolor/support/v7/appcompat/R$styleable;->ColorDatePicker_colorYearIgnorable:I

    invoke-virtual {p2, v8, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/color/support/widget/ColorDatePicker;->mYearIgnorable:Z

    .line 144
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const-string p2, "layout_inflater"

    .line 147
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 148
    invoke-virtual {p2, v7, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 150
    new-instance p2, Lcom/color/support/widget/ColorDatePicker$1;

    invoke-direct {p2, p0}, Lcom/color/support/widget/ColorDatePicker$1;-><init>(Lcom/color/support/widget/ColorDatePicker;)V

    .line 171
    sget v7, Lcolor/support/v7/appcompat/R$id;->pickers:I

    invoke-virtual {p0, v7}, Lcom/color/support/widget/ColorDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/color/support/widget/ColorDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    .line 173
    new-instance v7, Lcom/color/support/widget/ColorDatePicker$Format;

    sget v8, Lcolor/support/v7/appcompat/R$string;->color_year:I

    const-string v9, ""

    invoke-direct {v7, p0, v8, v9}, Lcom/color/support/widget/ColorDatePicker$Format;-><init>(Lcom/color/support/widget/ColorDatePicker;ILjava/lang/String;)V

    iput-object v7, p0, Lcom/color/support/widget/ColorDatePicker;->mYearFormat:Lcom/color/support/widget/ColorDatePicker$Format;

    .line 174
    new-instance v7, Lcom/color/support/widget/ColorDatePicker$Format;

    sget v8, Lcolor/support/v7/appcompat/R$string;->color_month:I

    const-string v10, "MONTH"

    invoke-direct {v7, p0, v8, v10}, Lcom/color/support/widget/ColorDatePicker$Format;-><init>(Lcom/color/support/widget/ColorDatePicker;ILjava/lang/String;)V

    iput-object v7, p0, Lcom/color/support/widget/ColorDatePicker;->mMonthFormat:Lcom/color/support/widget/ColorDatePicker$Format;

    .line 175
    new-instance v7, Lcom/color/support/widget/ColorDatePicker$Format;

    sget v8, Lcolor/support/v7/appcompat/R$string;->color_day:I

    invoke-direct {v7, p0, v8, v9}, Lcom/color/support/widget/ColorDatePicker$Format;-><init>(Lcom/color/support/widget/ColorDatePicker;ILjava/lang/String;)V

    iput-object v7, p0, Lcom/color/support/widget/ColorDatePicker;->mDayFormat:Lcom/color/support/widget/ColorDatePicker$Format;

    .line 178
    sget v7, Lcolor/support/v7/appcompat/R$id;->day:I

    invoke-virtual {p0, v7}, Lcom/color/support/widget/ColorDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/color/support/widget/ColorNumberPicker;

    iput-object v7, p0, Lcom/color/support/widget/ColorDatePicker;->mDaySpinner:Lcom/color/support/widget/ColorNumberPicker;

    .line 179
    iget-object v7, p0, Lcom/color/support/widget/ColorDatePicker;->mDaySpinner:Lcom/color/support/widget/ColorNumberPicker;

    const-wide/16 v8, 0x64

    invoke-virtual {v7, v8, v9}, Lcom/color/support/widget/ColorNumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 180
    iget-object v7, p0, Lcom/color/support/widget/ColorDatePicker;->mDaySpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v7, p2}, Lcom/color/support/widget/ColorNumberPicker;->setOnValueChangedListener(Lcom/color/support/widget/ColorNumberPicker$OnValueChangeListener;)V

    .line 183
    sget v7, Lcolor/support/v7/appcompat/R$id;->month:I

    invoke-virtual {p0, v7}, Lcom/color/support/widget/ColorDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/color/support/widget/ColorNumberPicker;

    iput-object v7, p0, Lcom/color/support/widget/ColorDatePicker;->mMonthSpinner:Lcom/color/support/widget/ColorNumberPicker;

    .line 184
    iget-object v7, p0, Lcom/color/support/widget/ColorDatePicker;->mMonthSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v7, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMinValue(I)V

    .line 185
    iget-object v7, p0, Lcom/color/support/widget/ColorDatePicker;->mMonthSpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget v10, p0, Lcom/color/support/widget/ColorDatePicker;->mNumberOfMonths:I

    sub-int/2addr v10, v0

    invoke-virtual {v7, v10}, Lcom/color/support/widget/ColorNumberPicker;->setMaxValue(I)V

    .line 187
    iget-object v7, p0, Lcom/color/support/widget/ColorDatePicker;->mMonthSpinner:Lcom/color/support/widget/ColorNumberPicker;

    const-wide/16 v10, 0xc8

    invoke-virtual {v7, v10, v11}, Lcom/color/support/widget/ColorNumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 188
    iget-object v7, p0, Lcom/color/support/widget/ColorDatePicker;->mMonthSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v7, p2}, Lcom/color/support/widget/ColorNumberPicker;->setOnValueChangedListener(Lcom/color/support/widget/ColorNumberPicker$OnValueChangeListener;)V

    .line 191
    sget v7, Lcolor/support/v7/appcompat/R$id;->year:I

    invoke-virtual {p0, v7}, Lcom/color/support/widget/ColorDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/color/support/widget/ColorNumberPicker;

    iput-object v7, p0, Lcom/color/support/widget/ColorDatePicker;->mYearSpinner:Lcom/color/support/widget/ColorNumberPicker;

    .line 192
    iget-object v7, p0, Lcom/color/support/widget/ColorDatePicker;->mYearSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v7, v8, v9}, Lcom/color/support/widget/ColorNumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 193
    iget-object v7, p0, Lcom/color/support/widget/ColorDatePicker;->mYearSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v7, p2}, Lcom/color/support/widget/ColorNumberPicker;->setOnValueChangedListener(Lcom/color/support/widget/ColorNumberPicker$OnValueChangeListener;)V

    .line 194
    iget-object p2, p0, Lcom/color/support/widget/ColorDatePicker;->mYearSpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget-boolean v7, p0, Lcom/color/support/widget/ColorDatePicker;->mYearIgnorable:Z

    invoke-virtual {p2, v7}, Lcom/color/support/widget/ColorNumberPicker;->setIgnorable(Z)V

    .line 195
    invoke-direct {p0}, Lcom/color/support/widget/ColorDatePicker;->updateSpinnerColor()V

    if-nez p3, :cond_0

    if-nez v1, :cond_0

    .line 200
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorDatePicker;->setSpinnersShown(Z)V

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {p0, p3}, Lcom/color/support/widget/ColorDatePicker;->setSpinnersShown(Z)V

    .line 203
    invoke-virtual {p0, v1}, Lcom/color/support/widget/ColorDatePicker;->setCalendarViewShown(Z)V

    .line 207
    :goto_0
    iget-object p2, p0, Lcom/color/support/widget/ColorDatePicker;->mTempDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    invoke-virtual {p2}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->clear()V

    .line 208
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 209
    iget-object p2, p0, Lcom/color/support/widget/ColorDatePicker;->mTempDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    invoke-static {p2}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->access$900(Lcom/color/support/widget/ColorDatePicker$IncompleteDate;)Ljava/util/Calendar;

    move-result-object p2

    invoke-direct {p0, v5, p2}, Lcom/color/support/widget/ColorDatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 213
    :cond_1
    iget-object p2, p0, Lcom/color/support/widget/ColorDatePicker;->mTempDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    invoke-virtual {p2, v3, v2, v0}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->set(III)V

    .line 215
    :cond_2
    iget-object p2, p0, Lcom/color/support/widget/ColorDatePicker;->mTempDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    invoke-static {p2}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->access$900(Lcom/color/support/widget/ColorDatePicker$IncompleteDate;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lcom/color/support/widget/ColorDatePicker;->setMinDate(J)V

    .line 218
    iget-object p2, p0, Lcom/color/support/widget/ColorDatePicker;->mTempDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    invoke-virtual {p2}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->clear()V

    .line 221
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 222
    iget-object p2, p0, Lcom/color/support/widget/ColorDatePicker;->mTempDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    invoke-static {p2}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->access$900(Lcom/color/support/widget/ColorDatePicker$IncompleteDate;)Ljava/util/Calendar;

    move-result-object p2

    invoke-direct {p0, v6, p2}, Lcom/color/support/widget/ColorDatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 226
    :cond_3
    iget-object p2, p0, Lcom/color/support/widget/ColorDatePicker;->mTempDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    const/16 p3, 0xb

    const/16 v1, 0x1f

    invoke-virtual {p2, v4, p3, v1}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->set(III)V

    .line 228
    :cond_4
    iget-object p2, p0, Lcom/color/support/widget/ColorDatePicker;->mTempDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    invoke-static {p2}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->access$900(Lcom/color/support/widget/ColorDatePicker$IncompleteDate;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lcom/color/support/widget/ColorDatePicker;->setMaxDate(J)V

    .line 231
    iget-object p2, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->setTimeInMillis(J)V

    .line 232
    iget-object p2, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    invoke-virtual {p2, v0}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->get(I)I

    move-result p2

    iget-object p3, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->get(I)I

    move-result p3

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    const/4 v1, 0x5

    .line 233
    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->get(I)I

    move-result v0

    const/4 v1, 0x0

    .line 232
    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/color/support/widget/ColorDatePicker;->init(IIILcom/color/support/widget/ColorDatePicker$OnDateChangedListener;)V

    .line 236
    invoke-direct {p0}, Lcom/color/support/widget/ColorDatePicker;->reorderSpinners()V

    .line 238
    iget-object p2, p0, Lcom/color/support/widget/ColorDatePicker;->mYearSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p2}, Lcom/color/support/widget/ColorNumberPicker;->isAccessibilityEnable()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 239
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcolor/support/v7/appcompat/R$string;->picker_talkback_tip:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 240
    iget-object p2, p0, Lcom/color/support/widget/ColorDatePicker;->mYearSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p2, p1}, Lcom/color/support/widget/ColorNumberPicker;->addTalkbackSuffix(Ljava/lang/String;)V

    .line 241
    iget-object p2, p0, Lcom/color/support/widget/ColorDatePicker;->mMonthSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p2, p1}, Lcom/color/support/widget/ColorNumberPicker;->addTalkbackSuffix(Ljava/lang/String;)V

    .line 242
    iget-object p2, p0, Lcom/color/support/widget/ColorDatePicker;->mDaySpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p2, p1}, Lcom/color/support/widget/ColorNumberPicker;->addTalkbackSuffix(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method static synthetic access$000(Lcom/color/support/widget/ColorDatePicker;)Lcom/color/support/widget/ColorDatePicker$IncompleteDate;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    return-object p0
.end method

.method static synthetic access$100(Lcom/color/support/widget/ColorDatePicker;)Lcom/color/support/widget/ColorDatePicker$IncompleteDate;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/color/support/widget/ColorDatePicker;->mTempDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/color/support/widget/ColorDatePicker;)[Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/color/support/widget/ColorDatePicker;->mShortMonths:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/color/support/widget/ColorDatePicker;)Lcom/color/support/widget/ColorNumberPicker;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/color/support/widget/ColorDatePicker;->mDaySpinner:Lcom/color/support/widget/ColorNumberPicker;

    return-object p0
.end method

.method static synthetic access$300(Lcom/color/support/widget/ColorDatePicker;)Lcom/color/support/widget/ColorNumberPicker;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/color/support/widget/ColorDatePicker;->mMonthSpinner:Lcom/color/support/widget/ColorNumberPicker;

    return-object p0
.end method

.method static synthetic access$400(Lcom/color/support/widget/ColorDatePicker;)Lcom/color/support/widget/ColorNumberPicker;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/color/support/widget/ColorDatePicker;->mYearSpinner:Lcom/color/support/widget/ColorNumberPicker;

    return-object p0
.end method

.method static synthetic access$500(Lcom/color/support/widget/ColorDatePicker;Lcom/color/support/widget/ColorDatePicker$IncompleteDate;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorDatePicker;->setDate(Lcom/color/support/widget/ColorDatePicker$IncompleteDate;)V

    return-void
.end method

.method static synthetic access$600(Lcom/color/support/widget/ColorDatePicker;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/color/support/widget/ColorDatePicker;->updateSpinners()V

    return-void
.end method

.method static synthetic access$700(Lcom/color/support/widget/ColorDatePicker;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/color/support/widget/ColorDatePicker;->updateCalendarView()V

    return-void
.end method

.method static synthetic access$800(Lcom/color/support/widget/ColorDatePicker;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/color/support/widget/ColorDatePicker;->notifyDateChanged()V

    return-void
.end method

.method private clampDate()V
    .locals 3

    .line 602
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    iget-object v1, p0, Lcom/color/support/widget/ColorDatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v2}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->clampDate(Ljava/util/Calendar;Ljava/util/Calendar;)V

    return-void
.end method

.method private formatDate()Ljava/lang/String;
    .locals 4

    .line 247
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    invoke-static {v0}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->access$1000(Lcom/color/support/widget/ColorDatePicker$IncompleteDate;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    invoke-static {v1}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->access$900(Lcom/color/support/widget/ColorDatePicker$IncompleteDate;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 v3, 0x14

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    invoke-static {v1}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->access$900(Lcom/color/support/widget/ColorDatePicker$IncompleteDate;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 v3, 0x18

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCalendarForLocale(Lcom/color/support/widget/ColorDatePicker$IncompleteDate;Ljava/util/Locale;)Lcom/color/support/widget/ColorDatePicker$IncompleteDate;
    .locals 1

    if-nez p1, :cond_0

    .line 466
    new-instance p1, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    invoke-direct {p1, p2}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;-><init>(Ljava/util/Locale;)V

    return-object p1

    .line 468
    :cond_0
    new-instance v0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    invoke-direct {v0, p2}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;-><init>(Ljava/util/Locale;)V

    .line 469
    invoke-static {p1}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->access$1000(Lcom/color/support/widget/ColorDatePicker$IncompleteDate;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 470
    invoke-virtual {p1}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->getTimeInMillis()J

    move-result-wide p1

    .line 471
    invoke-virtual {v0, p1, p2}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->setTimeInMillis(J)V

    goto :goto_0

    .line 473
    :cond_1
    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->setWith(Lcom/color/support/widget/ColorDatePicker$IncompleteDate;)V

    :goto_0
    return-object v0
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 2

    if-nez p1, :cond_0

    .line 481
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1

    .line 483
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 484
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    .line 485
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p1
.end method

.method private isNewDate(III)Z
    .locals 2

    .line 583
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->get(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    const/4 v0, 0x2

    .line 584
    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->get(I)I

    move-result p1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    const/4 p2, 0x5

    .line 585
    invoke-virtual {p1, p2}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->get(I)I

    move-result p1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method private notifyDateChanged()V
    .locals 4

    const/4 v0, 0x4

    .line 719
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorDatePicker;->sendAccessibilityEvent(I)V

    .line 720
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mOnDateChangedListener:Lcom/color/support/widget/ColorDatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 721
    invoke-virtual {p0}, Lcom/color/support/widget/ColorDatePicker;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorDatePicker;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorDatePicker;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/color/support/widget/ColorDatePicker$OnDateChangedListener;->onDateChanged(Lcom/color/support/widget/ColorDatePicker;III)V

    :cond_0
    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 1

    .line 574
    :try_start_0
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method private reorderSpinners()V
    .locals 5

    .line 491
    invoke-virtual {p0}, Lcom/color/support/widget/ColorDatePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v0

    .line 492
    array-length v0, v0

    .line 493
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 494
    sget-object v1, Lcom/color/support/widget/ColorDatePicker;->sOrderEn:[C

    .line 495
    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 497
    aget-char v3, v1, v2

    const/16 v4, 0x4d

    if-eq v3, v4, :cond_2

    const/16 v4, 0x64

    if-eq v3, v4, :cond_1

    const/16 v4, 0x79

    if-ne v3, v4, :cond_0

    .line 506
    iget-object v3, p0, Lcom/color/support/widget/ColorDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/color/support/widget/ColorDatePicker;->mYearSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 507
    iget-object v3, p0, Lcom/color/support/widget/ColorDatePicker;->mYearSpinner:Lcom/color/support/widget/ColorNumberPicker;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/color/support/widget/ColorNumberPicker;->setAlignPosition(I)V

    goto :goto_1

    .line 510
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 499
    :cond_1
    iget-object v3, p0, Lcom/color/support/widget/ColorDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/color/support/widget/ColorDatePicker;->mDaySpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 500
    iget-object v3, p0, Lcom/color/support/widget/ColorDatePicker;->mDaySpinner:Lcom/color/support/widget/ColorNumberPicker;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/color/support/widget/ColorNumberPicker;->setAlignPosition(I)V

    goto :goto_1

    .line 503
    :cond_2
    iget-object v3, p0, Lcom/color/support/widget/ColorDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/color/support/widget/ColorDatePicker;->mMonthSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 455
    :cond_0
    iput-object p1, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 456
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mTempDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    invoke-direct {p0, v0, p1}, Lcom/color/support/widget/ColorDatePicker;->getCalendarForLocale(Lcom/color/support/widget/ColorDatePicker$IncompleteDate;Ljava/util/Locale;)Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mTempDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    .line 457
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/color/support/widget/ColorDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mMinDate:Ljava/util/Calendar;

    .line 458
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/color/support/widget/ColorDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mMaxDate:Ljava/util/Calendar;

    .line 459
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    invoke-direct {p0, v0, p1}, Lcom/color/support/widget/ColorDatePicker;->getCalendarForLocale(Lcom/color/support/widget/ColorDatePicker$IncompleteDate;Ljava/util/Locale;)Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    .line 460
    iget-object p1, p0, Lcom/color/support/widget/ColorDatePicker;->mTempDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->getActualMaximum(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/color/support/widget/ColorDatePicker;->mNumberOfMonths:I

    .line 461
    iget p1, p0, Lcom/color/support/widget/ColorDatePicker;->mNumberOfMonths:I

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/color/support/widget/ColorDatePicker;->mShortMonths:[Ljava/lang/String;

    return-void
.end method

.method private setDate(III)V
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->set(III)V

    .line 590
    invoke-direct {p0}, Lcom/color/support/widget/ColorDatePicker;->clampDate()V

    return-void
.end method

.method private setDate(Lcom/color/support/widget/ColorDatePicker$IncompleteDate;)V
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->setWith(Lcom/color/support/widget/ColorDatePicker$IncompleteDate;)V

    .line 595
    invoke-direct {p0}, Lcom/color/support/widget/ColorDatePicker;->clampDate()V

    return-void
.end method

.method private updateCalendarView()V
    .locals 0

    return-void
.end method

.method private updateSpinnerColor()V
    .locals 3

    .line 353
    iget v0, p0, Lcom/color/support/widget/ColorDatePicker;->mNormalColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 354
    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mDaySpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v2, v0}, Lcom/color/support/widget/ColorNumberPicker;->setPickerNormalColor(I)V

    .line 355
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mMonthSpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget v2, p0, Lcom/color/support/widget/ColorDatePicker;->mNormalColor:I

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setPickerNormalColor(I)V

    .line 356
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mYearSpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget v2, p0, Lcom/color/support/widget/ColorDatePicker;->mNormalColor:I

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setPickerNormalColor(I)V

    .line 359
    :cond_0
    iget v0, p0, Lcom/color/support/widget/ColorDatePicker;->mFocusColor:I

    if-eq v0, v1, :cond_1

    .line 360
    iget-object v1, p0, Lcom/color/support/widget/ColorDatePicker;->mDaySpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v1, v0}, Lcom/color/support/widget/ColorNumberPicker;->setPickerFocusColor(I)V

    .line 361
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mMonthSpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget v1, p0, Lcom/color/support/widget/ColorDatePicker;->mFocusColor:I

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setPickerFocusColor(I)V

    .line 362
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mYearSpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget v1, p0, Lcom/color/support/widget/ColorDatePicker;->mFocusColor:I

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setPickerFocusColor(I)V

    :cond_1
    return-void
.end method

.method private updateSpinners()V
    .locals 7

    .line 606
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mMonthSpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v1, p0, Lcom/color/support/widget/ColorDatePicker;->mMonthFormat:Lcom/color/support/widget/ColorDatePicker$Format;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setFormatter(Lcom/color/support/widget/ColorNumberPicker$Formatter;)V

    .line 607
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    .line 608
    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 609
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mMonthSpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMinValue(I)V

    .line 610
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mMonthSpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMaxValue(I)V

    .line 611
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mMonthSpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_3

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    .line 613
    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 614
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mMonthSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, v3}, Lcom/color/support/widget/ColorNumberPicker;->setMinValue(I)V

    .line 615
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mMonthSpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMaxValue(I)V

    .line 616
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mMonthSpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMaxDate:Ljava/util/Calendar;

    .line 617
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v5, p0, Lcom/color/support/widget/ColorDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    if-ne v2, v5, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_3

    .line 618
    :cond_3
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    .line 619
    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 620
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mMonthSpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMinValue(I)V

    .line 621
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mMonthSpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMaxValue(I)V

    .line 622
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mMonthSpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v5, p0, Lcom/color/support/widget/ColorDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    if-ne v2, v5, :cond_4

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMinDate:Ljava/util/Calendar;

    .line 623
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_2

    :cond_4
    move v2, v3

    .line 622
    :goto_2
    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_3

    .line 625
    :cond_5
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mMonthSpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    invoke-virtual {v2, v4}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMinValue(I)V

    .line 626
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mMonthSpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    invoke-virtual {v2, v4}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMaxValue(I)V

    .line 627
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mMonthSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setWrapSelectorWheel(Z)V

    .line 631
    :goto_3
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v5, 0x5

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    .line 632
    invoke-virtual {v0, v4}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    .line 633
    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    .line 634
    invoke-virtual {v0, v4}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v0, v2, :cond_8

    .line 635
    :cond_6
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mDaySpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMinValue(I)V

    .line 636
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mDaySpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMaxValue(I)V

    .line 637
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mDaySpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v1, :cond_7

    move v3, v1

    :cond_7
    invoke-virtual {v0, v3}, Lcom/color/support/widget/ColorNumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_4

    .line 638
    :cond_8
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    .line 639
    invoke-virtual {v0, v4}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v0, v2, :cond_b

    :cond_9
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    .line 640
    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_b

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    .line 641
    invoke-virtual {v0, v4}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_b

    .line 642
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mDaySpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setMinValue(I)V

    .line 643
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mDaySpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMaxValue(I)V

    .line 644
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mDaySpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v6, p0, Lcom/color/support/widget/ColorDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    if-ne v2, v6, :cond_a

    move v3, v1

    :cond_a
    invoke-virtual {v0, v3}, Lcom/color/support/widget/ColorNumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_4

    .line 645
    :cond_b
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    .line 646
    invoke-virtual {v0, v4}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    .line 647
    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    .line 648
    invoke-virtual {v0, v4}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_d

    .line 649
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mDaySpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMinValue(I)V

    .line 650
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mDaySpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMaxValue(I)V

    .line 651
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mDaySpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v6, p0, Lcom/color/support/widget/ColorDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    if-ne v2, v6, :cond_c

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMinDate:Ljava/util/Calendar;

    .line 652
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v1, :cond_c

    move v3, v1

    .line 651
    :cond_c
    invoke-virtual {v0, v3}, Lcom/color/support/widget/ColorNumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_4

    .line 654
    :cond_d
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mDaySpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    invoke-virtual {v2, v5}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMinValue(I)V

    .line 655
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mDaySpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    invoke-virtual {v2, v5}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMaxValue(I)V

    .line 656
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mDaySpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setWrapSelectorWheel(Z)V

    .line 661
    :goto_4
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mShortMonths:[Ljava/lang/String;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMonthSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v2}, Lcom/color/support/widget/ColorNumberPicker;->getMinValue()I

    move-result v2

    iget-object v3, p0, Lcom/color/support/widget/ColorDatePicker;->mMonthSpinner:Lcom/color/support/widget/ColorNumberPicker;

    .line 662
    invoke-virtual {v3}, Lcom/color/support/widget/ColorNumberPicker;->getMaxValue()I

    move-result v3

    add-int/2addr v3, v1

    .line 661
    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 666
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mYearSpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMinValue(I)V

    .line 667
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mYearSpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMaxValue(I)V

    .line 668
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mYearSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setWrapSelectorWheel(Z)V

    .line 669
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mYearSpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mYearFormat:Lcom/color/support/widget/ColorDatePicker$Format;

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setFormatter(Lcom/color/support/widget/ColorNumberPicker$Formatter;)V

    .line 671
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mYearSpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    invoke-virtual {v2, v1}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setValue(I)V

    .line 672
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mMonthSpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v1, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    invoke-virtual {v1, v4}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setValue(I)V

    .line 673
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mDaySpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v1, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    invoke-virtual {v1, v5}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setValue(I)V

    .line 674
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mDaySpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v1, p0, Lcom/color/support/widget/ColorDatePicker;->mDayFormat:Lcom/color/support/widget/ColorDatePicker$Format;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setFormatter(Lcom/color/support/widget/ColorNumberPicker$Formatter;)V

    .line 676
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mDaySpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker;->getValue()I

    move-result v0

    const/16 v1, 0x1b

    if-le v0, v1, :cond_e

    .line 677
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mDaySpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker;->invalidate()V

    :cond_e
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 386
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorDatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 536
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorDatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCalendarViewShown()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDayOfMonth()I
    .locals 2

    .line 712
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 2

    .line 703
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->get(I)I

    move-result v0

    return v0
.end method

.method public getOnDateChangedListener()Lcom/color/support/widget/ColorDatePicker$OnDateChangedListener;
    .locals 1

    .line 731
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mOnDateChangedListener:Lcom/color/support/widget/ColorDatePicker$OnDateChangedListener;

    return-object v0
.end method

.method public getSpinnersShown()Z
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    .line 694
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILcom/color/support/widget/ColorDatePicker$OnDateChangedListener;)V
    .locals 0

    .line 563
    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/widget/ColorDatePicker;->setDate(III)V

    .line 564
    invoke-direct {p0}, Lcom/color/support/widget/ColorDatePicker;->updateSpinners()V

    .line 565
    invoke-direct {p0}, Lcom/color/support/widget/ColorDatePicker;->updateCalendarView()V

    .line 566
    iput-object p4, p0, Lcom/color/support/widget/ColorDatePicker;->mOnDateChangedListener:Lcom/color/support/widget/ColorDatePicker$OnDateChangedListener;

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 368
    iget-boolean v0, p0, Lcom/color/support/widget/ColorDatePicker;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 400
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 401
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 392
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 394
    invoke-direct {p0}, Lcom/color/support/widget/ColorDatePicker;->formatDate()Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 547
    check-cast p1, Lcom/color/support/widget/ColorDatePicker$SavedState;

    .line 548
    invoke-virtual {p1}, Lcom/color/support/widget/ColorDatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 549
    invoke-static {p1}, Lcom/color/support/widget/ColorDatePicker$SavedState;->access$1200(Lcom/color/support/widget/ColorDatePicker$SavedState;)I

    move-result v0

    invoke-static {p1}, Lcom/color/support/widget/ColorDatePicker$SavedState;->access$1300(Lcom/color/support/widget/ColorDatePicker$SavedState;)I

    move-result v1

    invoke-static {p1}, Lcom/color/support/widget/ColorDatePicker$SavedState;->access$1400(Lcom/color/support/widget/ColorDatePicker$SavedState;)I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/color/support/widget/ColorDatePicker;->setDate(III)V

    .line 550
    invoke-direct {p0}, Lcom/color/support/widget/ColorDatePicker;->updateSpinners()V

    .line 551
    invoke-direct {p0}, Lcom/color/support/widget/ColorDatePicker;->updateCalendarView()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .line 541
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 542
    new-instance v6, Lcom/color/support/widget/ColorDatePicker$SavedState;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorDatePicker;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorDatePicker;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Lcom/color/support/widget/ColorDatePicker;->getDayOfMonth()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/color/support/widget/ColorDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILcom/color/support/widget/ColorDatePicker$1;)V

    return-object v6
.end method

.method public scrollForceFinished()V
    .locals 1

    .line 977
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mDaySpinner:Lcom/color/support/widget/ColorNumberPicker;

    if-eqz v0, :cond_0

    .line 978
    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker;->scrollForceFinished()V

    .line 980
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mMonthSpinner:Lcom/color/support/widget/ColorNumberPicker;

    if-eqz v0, :cond_1

    .line 981
    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker;->scrollForceFinished()V

    .line 983
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mYearSpinner:Lcom/color/support/widget/ColorNumberPicker;

    if-eqz v0, :cond_2

    .line 984
    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker;->scrollForceFinished()V

    :cond_2
    return-void
.end method

.method public setBackground(I)V
    .locals 1

    .line 329
    invoke-virtual {p0}, Lcom/color/support/widget/ColorDatePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorDatePicker;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 320
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorDatePicker;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCalendarViewShown(Z)V
    .locals 0

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 373
    iget-boolean v0, p0, Lcom/color/support/widget/ColorDatePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 376
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 377
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mDaySpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorNumberPicker;->setEnabled(Z)V

    .line 378
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mMonthSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorNumberPicker;->setEnabled(Z)V

    .line 379
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mYearSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorNumberPicker;->setEnabled(Z)V

    .line 381
    iput-boolean p1, p0, Lcom/color/support/widget/ColorDatePicker;->mIsEnabled:Z

    return-void
.end method

.method public setFocusColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 348
    iput p1, p0, Lcom/color/support/widget/ColorDatePicker;->mFocusColor:I

    .line 349
    invoke-direct {p0}, Lcom/color/support/widget/ColorDatePicker;->updateSpinnerColor()V

    return-void
.end method

.method public setMaxDate(J)V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mTempDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    invoke-virtual {v0, p1, p2}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->setTimeInMillis(J)V

    .line 303
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mTempDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mTempDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    const/4 v1, 0x6

    .line 304
    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 309
    iget-object p1, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    iget-object p2, p0, Lcom/color/support/widget/ColorDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->after(Ljava/util/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 310
    iget-object p1, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    iget-object p2, p0, Lcom/color/support/widget/ColorDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->setTimeInMillis(J)V

    .line 311
    invoke-direct {p0}, Lcom/color/support/widget/ColorDatePicker;->updateCalendarView()V

    .line 313
    :cond_1
    invoke-direct {p0}, Lcom/color/support/widget/ColorDatePicker;->updateSpinners()V

    return-void
.end method

.method public setMinDate(J)V
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mTempDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    invoke-virtual {v0, p1, p2}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->setTimeInMillis(J)V

    .line 273
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mTempDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mTempDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    const/4 v1, 0x6

    .line 274
    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 279
    iget-object p1, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    iget-object p2, p0, Lcom/color/support/widget/ColorDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->before(Ljava/util/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 280
    iget-object p1, p0, Lcom/color/support/widget/ColorDatePicker;->mCurrentDate:Lcom/color/support/widget/ColorDatePicker$IncompleteDate;

    iget-object p2, p0, Lcom/color/support/widget/ColorDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->setTimeInMillis(J)V

    .line 281
    invoke-direct {p0}, Lcom/color/support/widget/ColorDatePicker;->updateCalendarView()V

    .line 283
    :cond_1
    invoke-direct {p0}, Lcom/color/support/widget/ColorDatePicker;->updateSpinners()V

    return-void
.end method

.method public setNormalColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 338
    iput p1, p0, Lcom/color/support/widget/ColorDatePicker;->mNormalColor:I

    .line 339
    invoke-direct {p0}, Lcom/color/support/widget/ColorDatePicker;->updateSpinnerColor()V

    return-void
.end method

.method public setOnDateChangedListener(Lcom/color/support/widget/ColorDatePicker$OnDateChangedListener;)V
    .locals 0

    .line 740
    iput-object p1, p0, Lcom/color/support/widget/ColorDatePicker;->mOnDateChangedListener:Lcom/color/support/widget/ColorDatePicker$OnDateChangedListener;

    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public updateDate(III)V
    .locals 1

    .line 524
    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/widget/ColorDatePicker;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 527
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/widget/ColorDatePicker;->setDate(III)V

    .line 528
    invoke-direct {p0}, Lcom/color/support/widget/ColorDatePicker;->updateSpinners()V

    .line 529
    invoke-direct {p0}, Lcom/color/support/widget/ColorDatePicker;->updateCalendarView()V

    .line 530
    invoke-direct {p0}, Lcom/color/support/widget/ColorDatePicker;->notifyDateChanged()V

    return-void
.end method
