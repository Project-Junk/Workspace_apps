.class public Lcom/color/support/widget/OppoTimePicker;
.super Landroid/widget/FrameLayout;
.source "OppoTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/OppoTimePicker$SavedState;,
        Lcom/color/support/widget/OppoTimePicker$OnTimeChangedListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final LONGPRESS_UPDATE_INTERVAL:I = 0x64

.field private static final NO_OP_CHANGE_LISTENER:Lcom/color/support/widget/OppoTimePicker$OnTimeChangedListener;


# instance fields
.field private final mAmPmButton:Landroid/widget/Button;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private mCurrentLocale:Ljava/util/Locale;

.field private mHourText:Landroid/widget/TextView;

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private mMinuteLayout:Landroid/view/ViewGroup;

.field private mMinuteText:Landroid/widget/TextView;

.field private mOnTimeChangedListener:Lcom/color/support/widget/OppoTimePicker$OnTimeChangedListener;

.field private final mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

.field private final mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

.field private final mOppoMinuteSpinner:Lcom/color/support/widget/ColorNumberPicker;

.field private mTempCalendar:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lcom/color/support/widget/OppoTimePicker$1;

    invoke-direct {v0}, Lcom/color/support/widget/OppoTimePicker$1;-><init>()V

    sput-object v0, Lcom/color/support/widget/OppoTimePicker;->NO_OP_CHANGE_LISTENER:Lcom/color/support/widget/OppoTimePicker$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/OppoTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 96
    sget v0, Lcolor/support/v7/appcompat/R$attr;->oppoTimePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/OppoTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 72
    iput-boolean p2, p0, Lcom/color/support/widget/OppoTimePicker;->mIsEnabled:Z

    .line 110
    invoke-static {p0}, Lcom/color/support/c/c;->a(Landroid/view/View;)V

    .line 111
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/color/support/widget/OppoTimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    const-string p3, "layout_inflater"

    .line 114
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    .line 116
    sget v0, Lcolor/support/v7/appcompat/R$layout;->oppo_time_picker:I

    invoke-virtual {p3, v0, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 118
    sget p3, Lcolor/support/v7/appcompat/R$id;->oppo_timepicker_minute_text:I

    invoke-virtual {p0, p3}, Lcom/color/support/widget/OppoTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/color/support/widget/OppoTimePicker;->mMinuteText:Landroid/widget/TextView;

    .line 119
    sget p3, Lcolor/support/v7/appcompat/R$id;->oppo_timepicker_hour_text:I

    invoke-virtual {p0, p3}, Lcom/color/support/widget/OppoTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/color/support/widget/OppoTimePicker;->mHourText:Landroid/widget/TextView;

    .line 120
    sget p3, Lcolor/support/v7/appcompat/R$id;->minute_layout:I

    invoke-virtual {p0, p3}, Lcom/color/support/widget/OppoTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/color/support/widget/OppoTimePicker;->mMinuteLayout:Landroid/view/ViewGroup;

    .line 122
    sget p3, Lcolor/support/v7/appcompat/R$id;->hour:I

    invoke-virtual {p0, p3}, Lcom/color/support/widget/OppoTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/color/support/widget/ColorNumberPicker;

    iput-object p3, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    .line 123
    iget-object p3, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p3}, Lcom/color/support/widget/ColorNumberPicker;->setTwoDigitFormatter()V

    .line 124
    iget-object p3, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    new-instance v0, Lcom/color/support/widget/OppoTimePicker$2;

    invoke-direct {v0, p0}, Lcom/color/support/widget/OppoTimePicker$2;-><init>(Lcom/color/support/widget/OppoTimePicker;)V

    invoke-virtual {p3, v0}, Lcom/color/support/widget/ColorNumberPicker;->setOnValueChangedListener(Lcom/color/support/widget/ColorNumberPicker$OnValueChangeListener;)V

    .line 130
    iget-object p3, p0, Lcom/color/support/widget/OppoTimePicker;->mMinuteText:Landroid/widget/TextView;

    const/4 v0, 0x5

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 131
    iget-object p3, p0, Lcom/color/support/widget/OppoTimePicker;->mHourText:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 134
    sget p3, Lcolor/support/v7/appcompat/R$id;->minute:I

    invoke-virtual {p0, p3}, Lcom/color/support/widget/OppoTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/color/support/widget/ColorNumberPicker;

    iput-object p3, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoMinuteSpinner:Lcom/color/support/widget/ColorNumberPicker;

    .line 135
    iget-object p3, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoMinuteSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p3}, Lcom/color/support/widget/ColorNumberPicker;->setTwoDigitFormatter()V

    .line 136
    iget-object p3, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoMinuteSpinner:Lcom/color/support/widget/ColorNumberPicker;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/color/support/widget/ColorNumberPicker;->setMinValue(I)V

    .line 137
    iget-object p3, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoMinuteSpinner:Lcom/color/support/widget/ColorNumberPicker;

    const/16 v1, 0x3b

    invoke-virtual {p3, v1}, Lcom/color/support/widget/ColorNumberPicker;->setMaxValue(I)V

    .line 138
    iget-object p3, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoMinuteSpinner:Lcom/color/support/widget/ColorNumberPicker;

    const-wide/16 v1, 0x64

    invoke-virtual {p3, v1, v2}, Lcom/color/support/widget/ColorNumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 139
    iget-object p3, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoMinuteSpinner:Lcom/color/support/widget/ColorNumberPicker;

    new-instance v1, Lcom/color/support/widget/OppoTimePicker$3;

    invoke-direct {v1, p0}, Lcom/color/support/widget/OppoTimePicker$3;-><init>(Lcom/color/support/widget/OppoTimePicker;)V

    invoke-virtual {p3, v1}, Lcom/color/support/widget/ColorNumberPicker;->setOnValueChangedListener(Lcom/color/support/widget/ColorNumberPicker$OnValueChangeListener;)V

    .line 147
    invoke-virtual {p0}, Lcom/color/support/widget/OppoTimePicker;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcolor/support/v7/appcompat/R$array;->oppo_time_picker_ampm:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/color/support/widget/OppoTimePicker;->mAmPmStrings:[Ljava/lang/String;

    .line 150
    sget p3, Lcolor/support/v7/appcompat/R$id;->amPm:I

    invoke-virtual {p0, p3}, Lcom/color/support/widget/OppoTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 151
    instance-of v1, p3, Landroid/widget/Button;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 152
    iput-object v2, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    .line 153
    check-cast p3, Landroid/widget/Button;

    iput-object p3, p0, Lcom/color/support/widget/OppoTimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 154
    iget-object p2, p0, Lcom/color/support/widget/OppoTimePicker;->mAmPmButton:Landroid/widget/Button;

    new-instance p3, Lcom/color/support/widget/OppoTimePicker$4;

    invoke-direct {p3, p0}, Lcom/color/support/widget/OppoTimePicker$4;-><init>(Lcom/color/support/widget/OppoTimePicker;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 163
    :cond_0
    iput-object v2, p0, Lcom/color/support/widget/OppoTimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 164
    check-cast p3, Lcom/color/support/widget/ColorNumberPicker;

    iput-object p3, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    .line 165
    iget-object p3, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p3, v0}, Lcom/color/support/widget/ColorNumberPicker;->setMinValue(I)V

    .line 166
    iget-object p3, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p3, p2}, Lcom/color/support/widget/ColorNumberPicker;->setMaxValue(I)V

    .line 167
    iget-object p2, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget-object p3, p0, Lcom/color/support/widget/OppoTimePicker;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/color/support/widget/ColorNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 168
    iget-object p2, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    new-instance p3, Lcom/color/support/widget/OppoTimePicker$5;

    invoke-direct {p3, p0}, Lcom/color/support/widget/OppoTimePicker$5;-><init>(Lcom/color/support/widget/OppoTimePicker;)V

    invoke-virtual {p2, p3}, Lcom/color/support/widget/ColorNumberPicker;->setOnValueChangedListener(Lcom/color/support/widget/ColorNumberPicker$OnValueChangeListener;)V

    .line 180
    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/OppoTimePicker;->updateHourControl()V

    .line 181
    invoke-direct {p0}, Lcom/color/support/widget/OppoTimePicker;->updateAmPmControl()V

    .line 182
    sget-object p2, Lcom/color/support/widget/OppoTimePicker;->NO_OP_CHANGE_LISTENER:Lcom/color/support/widget/OppoTimePicker$OnTimeChangedListener;

    invoke-virtual {p0, p2}, Lcom/color/support/widget/OppoTimePicker;->setOnTimeChangedListener(Lcom/color/support/widget/OppoTimePicker$OnTimeChangedListener;)V

    .line 185
    iget-object p2, p0, Lcom/color/support/widget/OppoTimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 p3, 0xb

    invoke-virtual {p2, p3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/color/support/widget/OppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 186
    iget-object p2, p0, Lcom/color/support/widget/OppoTimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 p3, 0xc

    invoke-virtual {p2, p3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/color/support/widget/OppoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 188
    invoke-virtual {p0}, Lcom/color/support/widget/OppoTimePicker;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_1

    .line 189
    invoke-virtual {p0, v0}, Lcom/color/support/widget/OppoTimePicker;->setEnabled(Z)V

    .line 191
    :cond_1
    invoke-direct {p0}, Lcom/color/support/widget/OppoTimePicker;->reorderSpinners()V

    .line 193
    iget-object p2, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p2}, Lcom/color/support/widget/ColorNumberPicker;->isAccessibilityEnable()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$string;->picker_talkback_tip:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 195
    iget-object p3, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcolor/support/v7/appcompat/R$string;->color_hour:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/color/support/widget/ColorNumberPicker;->addTalkbackSuffix(Ljava/lang/String;)V

    .line 196
    iget-object p3, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoMinuteSpinner:Lcom/color/support/widget/ColorNumberPicker;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcolor/support/v7/appcompat/R$string;->color_minute:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/color/support/widget/ColorNumberPicker;->addTalkbackSuffix(Ljava/lang/String;)V

    .line 197
    iget-object p1, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    if-eqz p1, :cond_2

    .line 198
    invoke-virtual {p1, p2}, Lcom/color/support/widget/ColorNumberPicker;->addTalkbackSuffix(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/color/support/widget/OppoTimePicker;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/color/support/widget/OppoTimePicker;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/color/support/widget/OppoTimePicker;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/color/support/widget/OppoTimePicker;->mIsAm:Z

    return p0
.end method

.method static synthetic access$102(Lcom/color/support/widget/OppoTimePicker;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/color/support/widget/OppoTimePicker;->mIsAm:Z

    return p1
.end method

.method static synthetic access$200(Lcom/color/support/widget/OppoTimePicker;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/color/support/widget/OppoTimePicker;->updateAmPmControl()V

    return-void
.end method

.method private onTimeChanged()V
    .locals 3

    .line 516
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->mOnTimeChangedListener:Lcom/color/support/widget/OppoTimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/color/support/widget/OppoTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/color/support/widget/OppoTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/color/support/widget/OppoTimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/color/support/widget/OppoTimePicker;II)V

    :cond_0
    return-void
.end method

.method private reorderSpinners()V
    .locals 3

    .line 205
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 207
    iget-object v1, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 208
    iget-object v1, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/color/support/widget/ColorNumberPicker;->setAlignPosition(I)V

    .line 209
    iget-object v1, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 265
    :cond_0
    iput-object p1, p0, Lcom/color/support/widget/OppoTimePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 266
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/OppoTimePicker;->mTempCalendar:Ljava/util/Calendar;

    return-void
.end method

.method private setWeight()V
    .locals 5

    .line 491
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 492
    iget-object v1, p0, Lcom/color/support/widget/OppoTimePicker;->mMinuteLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 493
    invoke-virtual {p0}, Lcom/color/support/widget/OppoTimePicker;->is24HourView()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    .line 494
    invoke-virtual {p0}, Lcom/color/support/widget/OppoTimePicker;->isLayoutRtl()Z

    move-result v2

    if-nez v2, :cond_0

    .line 495
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 496
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 498
    :cond_0
    iget-object v2, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v2, v0}, Lcom/color/support/widget/ColorNumberPicker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->mMinuteLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 502
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v4, "en"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 503
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 504
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 506
    :cond_2
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 507
    invoke-virtual {p0}, Lcom/color/support/widget/OppoTimePicker;->is24HourView()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/color/support/widget/OppoTimePicker;->isLayoutRtl()Z

    move-result v2

    if-nez v2, :cond_3

    .line 508
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 511
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v2, v0}, Lcom/color/support/widget/ColorNumberPicker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 512
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->mMinuteLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateAmPmControl()V
    .locals 4

    .line 460
    invoke-virtual {p0}, Lcom/color/support/widget/OppoTimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setVisibility(I)V

    .line 463
    invoke-direct {p0}, Lcom/color/support/widget/OppoTimePicker;->setWeight()V

    goto :goto_0

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 468
    :cond_1
    iget-boolean v0, p0, Lcom/color/support/widget/OppoTimePicker;->mIsAm:Z

    xor-int/lit8 v0, v0, 0x1

    .line 469
    iget-object v1, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 470
    invoke-virtual {v1, v0}, Lcom/color/support/widget/ColorNumberPicker;->setValue(I)V

    .line 471
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setVisibility(I)V

    .line 472
    invoke-direct {p0}, Lcom/color/support/widget/OppoTimePicker;->setWeight()V

    goto :goto_0

    .line 474
    :cond_2
    iget-object v1, p0, Lcom/color/support/widget/OppoTimePicker;->mAmPmButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/color/support/widget/OppoTimePicker;->mAmPmStrings:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 475
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 478
    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/OppoTimePicker;->setWeight()V

    return-void
.end method

.method private updateHourControl()V
    .locals 3

    .line 448
    invoke-virtual {p0}, Lcom/color/support/widget/OppoTimePicker;->is24HourView()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMinValue(I)V

    .line 450
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setMinValue(I)V

    .line 453
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMaxValue(I)V

    .line 455
    :goto_0
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setWrapSelectorWheel(Z)V

    .line 456
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoMinuteSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setWrapSelectorWheel(Z)V

    return-void
.end method


# virtual methods
.method public getBaseline()I
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker;->getValue()I

    move-result v0

    .line 348
    invoke-virtual {p0}, Lcom/color/support/widget/OppoTimePicker;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 350
    :cond_0
    iget-boolean v1, p0, Lcom/color/support/widget/OppoTimePicker;->mIsAm:Z

    if-eqz v1, :cond_1

    .line 351
    rem-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 353
    :cond_1
    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoMinuteSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .line 415
    iget-boolean v0, p0, Lcom/color/support/widget/OppoTimePicker;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lcom/color/support/widget/OppoTimePicker;->mIsEnabled:Z

    return v0
.end method

.method public isLayoutRtl()Z
    .locals 2

    .line 487
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 252
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 253
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, p1}, Lcom/color/support/widget/OppoTimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 326
    check-cast p1, Lcom/color/support/widget/OppoTimePicker$SavedState;

    .line 327
    invoke-virtual {p1}, Lcom/color/support/widget/OppoTimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 328
    invoke-virtual {p1}, Lcom/color/support/widget/OppoTimePicker$SavedState;->getHour()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/color/support/widget/OppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 329
    invoke-virtual {p1}, Lcom/color/support/widget/OppoTimePicker$SavedState;->getMinute()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/OppoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .line 320
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 321
    new-instance v1, Lcom/color/support/widget/OppoTimePicker$SavedState;

    invoke-virtual {p0}, Lcom/color/support/widget/OppoTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/color/support/widget/OppoTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/color/support/widget/OppoTimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILcom/color/support/widget/OppoTimePicker$1;)V

    return-object v1
.end method

.method public scrollForceFinished()V
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker;->scrollForceFinished()V

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoMinuteSpinner:Lcom/color/support/widget/ColorNumberPicker;

    if-eqz v0, :cond_1

    .line 545
    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker;->scrollForceFinished()V

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    if-eqz v0, :cond_2

    .line 548
    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker;->scrollForceFinished()V

    :cond_2
    return-void
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_4

    .line 364
    invoke-virtual {p0}, Lcom/color/support/widget/OppoTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/OppoTimePicker;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_3

    .line 369
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 370
    iput-boolean v0, p0, Lcom/color/support/widget/OppoTimePicker;->mIsAm:Z

    .line 371
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 372
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 375
    iput-boolean v0, p0, Lcom/color/support/widget/OppoTimePicker;->mIsAm:Z

    .line 376
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 377
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 380
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/OppoTimePicker;->updateAmPmControl()V

    .line 382
    :cond_3
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorNumberPicker;->setValue(I)V

    .line 383
    invoke-direct {p0}, Lcom/color/support/widget/OppoTimePicker;->onTimeChanged()V

    :cond_4
    :goto_1
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 433
    invoke-virtual {p0}, Lcom/color/support/widget/OppoTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoMinuteSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorNumberPicker;->setValue(I)V

    .line 437
    invoke-direct {p0}, Lcom/color/support/widget/OppoTimePicker;->onTimeChanged()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 231
    iget-boolean v0, p0, Lcom/color/support/widget/OppoTimePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 234
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 235
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoMinuteSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorNumberPicker;->setEnabled(Z)V

    .line 236
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorNumberPicker;->setEnabled(Z)V

    .line 237
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorNumberPicker;->setEnabled(Z)V

    goto :goto_0

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 242
    :goto_0
    iput-boolean p1, p0, Lcom/color/support/widget/OppoTimePicker;->mIsEnabled:Z

    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 2

    .line 392
    iget-boolean v0, p0, Lcom/color/support/widget/OppoTimePicker;->mIs24HourView:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 396
    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/OppoTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 397
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/color/support/widget/OppoTimePicker;->mIs24HourView:Z

    .line 399
    invoke-direct {p0}, Lcom/color/support/widget/OppoTimePicker;->updateHourControl()V

    .line 401
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/OppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 402
    invoke-direct {p0}, Lcom/color/support/widget/OppoTimePicker;->updateAmPmControl()V

    .line 404
    iget-object p1, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorNumberPicker;->requestLayout()V

    return-void
.end method

.method public setOnTimeChangedListener(Lcom/color/support/widget/OppoTimePicker$OnTimeChangedListener;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/color/support/widget/OppoTimePicker;->mOnTimeChangedListener:Lcom/color/support/widget/OppoTimePicker$OnTimeChangedListener;

    return-void
.end method

.method public setRowNumber(I)V
    .locals 2

    if-gtz p1, :cond_0

    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoMinuteSpinner:Lcom/color/support/widget/ColorNumberPicker;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    if-eqz v1, :cond_1

    .line 531
    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorNumberPicker;->setPickerRowNumber(I)V

    .line 532
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoMinuteSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorNumberPicker;->setPickerRowNumber(I)V

    .line 533
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorNumberPicker;->setPickerRowNumber(I)V

    :cond_1
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 221
    iget-object p1, p0, Lcom/color/support/widget/OppoTimePicker;->mMinuteText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    iget-object p1, p0, Lcom/color/support/widget/OppoTimePicker;->mHourText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 224
    :cond_0
    iget-object p1, p0, Lcom/color/support/widget/OppoTimePicker;->mMinuteText:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object p1, p0, Lcom/color/support/widget/OppoTimePicker;->mHourText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
