.class public Lcom/color/support/widget/e;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/e$b;,
        Lcom/color/support/widget/e$a;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final LONGPRESS_UPDATE_INTERVAL:I = 0x64

.field private static final NO_OP_CHANGE_LISTENER:Lcom/color/support/widget/e$a;


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

.field private mOnTimeChangedListener:Lcom/color/support/widget/e$a;

.field private final mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

.field private final mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

.field private final mOppoMinuteSpinner:Lcom/color/support/widget/ColorNumberPicker;

.field private mTempCalendar:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/color/support/widget/e$1;

    invoke-direct {v0}, Lcom/color/support/widget/e$1;-><init>()V

    sput-object v0, Lcom/color/support/widget/e;->NO_OP_CHANGE_LISTENER:Lcom/color/support/widget/e$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcolor/support/v7/a/a$b;->oppoTimePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/color/support/widget/e;->mIsEnabled:Z

    const/4 p3, 0x0

    invoke-static {p0, p3}, Lcom/color/support/util/d;->a(Landroid/view/View;Z)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/color/support/widget/e;->setCurrentLocale(Ljava/util/Locale;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcolor/support/v7/a/a$j;->oppo_time_picker:I

    invoke-virtual {v0, v1, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v0, Lcolor/support/v7/a/a$g;->oppo_timepicker_minute_text:I

    invoke-virtual {p0, v0}, Lcom/color/support/widget/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/color/support/widget/e;->mMinuteText:Landroid/widget/TextView;

    sget v0, Lcolor/support/v7/a/a$g;->oppo_timepicker_hour_text:I

    invoke-virtual {p0, v0}, Lcom/color/support/widget/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/color/support/widget/e;->mHourText:Landroid/widget/TextView;

    sget v0, Lcolor/support/v7/a/a$g;->minute_layout:I

    invoke-virtual {p0, v0}, Lcom/color/support/widget/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/color/support/widget/e;->mMinuteLayout:Landroid/view/ViewGroup;

    sget v0, Lcolor/support/v7/a/a$g;->hour:I

    invoke-virtual {p0, v0}, Lcom/color/support/widget/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorNumberPicker;

    iput-object v0, p0, Lcom/color/support/widget/e;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v0, p0, Lcom/color/support/widget/e;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker;->a()V

    iget-object v0, p0, Lcom/color/support/widget/e;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    new-instance v1, Lcom/color/support/widget/e$2;

    invoke-direct {v1, p0}, Lcom/color/support/widget/e$2;-><init>(Lcom/color/support/widget/e;)V

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setOnValueChangedListener(Lcom/color/support/widget/ColorNumberPicker$e;)V

    iget-object v0, p0, Lcom/color/support/widget/e;->mMinuteText:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    iget-object v0, p0, Lcom/color/support/widget/e;->mHourText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    sget v0, Lcolor/support/v7/a/a$g;->minute:I

    invoke-virtual {p0, v0}, Lcom/color/support/widget/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorNumberPicker;

    iput-object v0, p0, Lcom/color/support/widget/e;->mOppoMinuteSpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v0, p0, Lcom/color/support/widget/e;->mOppoMinuteSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker;->a()V

    iget-object v0, p0, Lcom/color/support/widget/e;->mOppoMinuteSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, p3}, Lcom/color/support/widget/ColorNumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/color/support/widget/e;->mOppoMinuteSpinner:Lcom/color/support/widget/ColorNumberPicker;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/color/support/widget/e;->mOppoMinuteSpinner:Lcom/color/support/widget/ColorNumberPicker;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/color/support/widget/ColorNumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object v0, p0, Lcom/color/support/widget/e;->mOppoMinuteSpinner:Lcom/color/support/widget/ColorNumberPicker;

    new-instance v1, Lcom/color/support/widget/e$3;

    invoke-direct {v1, p0}, Lcom/color/support/widget/e$3;-><init>(Lcom/color/support/widget/e;)V

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setOnValueChangedListener(Lcom/color/support/widget/ColorNumberPicker$e;)V

    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/e;->mAmPmStrings:[Ljava/lang/String;

    sget v0, Lcolor/support/v7/a/a$g;->amPm:I

    invoke-virtual {p0, v0}, Lcom/color/support/widget/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/Button;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-object v2, p0, Lcom/color/support/widget/e;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/color/support/widget/e;->mAmPmButton:Landroid/widget/Button;

    iget-object p2, p0, Lcom/color/support/widget/e;->mAmPmButton:Landroid/widget/Button;

    new-instance v0, Lcom/color/support/widget/e$4;

    invoke-direct {v0, p0}, Lcom/color/support/widget/e$4;-><init>(Lcom/color/support/widget/e;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/color/support/widget/e;->mAmPmButton:Landroid/widget/Button;

    check-cast v0, Lcom/color/support/widget/ColorNumberPicker;

    iput-object v0, p0, Lcom/color/support/widget/e;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v0, p0, Lcom/color/support/widget/e;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, p3}, Lcom/color/support/widget/ColorNumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/color/support/widget/e;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, p2}, Lcom/color/support/widget/ColorNumberPicker;->setMaxValue(I)V

    iget-object p2, p0, Lcom/color/support/widget/e;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v0, p0, Lcom/color/support/widget/e;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/color/support/widget/ColorNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object p2, p0, Lcom/color/support/widget/e;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    new-instance v0, Lcom/color/support/widget/e$5;

    invoke-direct {v0, p0}, Lcom/color/support/widget/e$5;-><init>(Lcom/color/support/widget/e;)V

    invoke-virtual {p2, v0}, Lcom/color/support/widget/ColorNumberPicker;->setOnValueChangedListener(Lcom/color/support/widget/ColorNumberPicker$e;)V

    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/e;->updateHourControl()V

    invoke-direct {p0}, Lcom/color/support/widget/e;->updateAmPmControl()V

    sget-object p2, Lcom/color/support/widget/e;->NO_OP_CHANGE_LISTENER:Lcom/color/support/widget/e$a;

    invoke-virtual {p0, p2}, Lcom/color/support/widget/e;->setOnTimeChangedListener(Lcom/color/support/widget/e$a;)V

    iget-object p2, p0, Lcom/color/support/widget/e;->mTempCalendar:Ljava/util/Calendar;

    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/color/support/widget/e;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object p2, p0, Lcom/color/support/widget/e;->mTempCalendar:Ljava/util/Calendar;

    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/color/support/widget/e;->setCurrentMinute(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/color/support/widget/e;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0, p3}, Lcom/color/support/widget/e;->setEnabled(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/color/support/widget/e;->reorderSpinners()V

    iget-object p2, p0, Lcom/color/support/widget/e;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p2}, Lcom/color/support/widget/ColorNumberPicker;->b()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/a/a$l;->picker_talkback_tip:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/color/support/widget/e;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcolor/support/v7/a/a$l;->color_hour:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/color/support/widget/ColorNumberPicker;->a(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/color/support/widget/e;->mOppoMinuteSpinner:Lcom/color/support/widget/ColorNumberPicker;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcolor/support/v7/a/a$l;->color_minute:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/color/support/widget/ColorNumberPicker;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/color/support/widget/e;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/color/support/widget/e;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p0, p2}, Lcom/color/support/widget/ColorNumberPicker;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/color/support/widget/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/color/support/widget/e;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/color/support/widget/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/support/widget/e;->mIsAm:Z

    return p0
.end method

.method static synthetic access$102(Lcom/color/support/widget/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/color/support/widget/e;->mIsAm:Z

    return p1
.end method

.method static synthetic access$200(Lcom/color/support/widget/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/color/support/widget/e;->updateAmPmControl()V

    return-void
.end method

.method private onTimeChanged()V
    .locals 3

    iget-object v0, p0, Lcom/color/support/widget/e;->mOnTimeChangedListener:Lcom/color/support/widget/e$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/e;->mOnTimeChangedListener:Lcom/color/support/widget/e$a;

    invoke-virtual {p0}, Lcom/color/support/widget/e;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/color/support/widget/e;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/color/support/widget/e$a;->onTimeChanged(Lcom/color/support/widget/e;II)V

    :cond_0
    return-void
.end method

.method private reorderSpinners()V
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/e;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/e;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/color/support/widget/e;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/color/support/widget/e;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/color/support/widget/ColorNumberPicker;->setAlignPosition(I)V

    iget-object p0, p0, Lcom/color/support/widget/e;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/e;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/color/support/widget/e;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/e;->mTempCalendar:Ljava/util/Calendar;

    return-void
.end method

.method private setWeight()V
    .locals 5

    iget-object v0, p0, Lcom/color/support/widget/e;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/color/support/widget/e;->mMinuteLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/color/support/widget/e;->is24HourView()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/color/support/widget/e;->isLayoutRtl()Z

    move-result v2

    if-nez v2, :cond_0

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_0
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/color/support/widget/e;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v2, v0}, Lcom/color/support/widget/ColorNumberPicker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/color/support/widget/e;->mMinuteLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

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

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    :cond_2
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p0}, Lcom/color/support/widget/e;->is24HourView()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/e;->isLayoutRtl()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method private updateAmPmControl()V
    .locals 4

    invoke-virtual {p0}, Lcom/color/support/widget/e;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/e;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/e;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/e;->setWeight()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/e;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/color/support/widget/e;->mIsAm:Z

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/color/support/widget/e;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/color/support/widget/e;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v1, v0}, Lcom/color/support/widget/ColorNumberPicker;->setValue(I)V

    iget-object v0, p0, Lcom/color/support/widget/e;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/color/support/widget/e;->mAmPmButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/color/support/widget/e;->mAmPmStrings:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/color/support/widget/e;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    invoke-direct {p0}, Lcom/color/support/widget/e;->setWeight()V

    return-void
.end method

.method private updateHourControl()V
    .locals 3

    invoke-virtual {p0}, Lcom/color/support/widget/e;->is24HourView()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/e;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/color/support/widget/e;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    const/16 v2, 0x17

    :goto_0
    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMaxValue(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/e;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/color/support/widget/e;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    const/16 v2, 0xc

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/color/support/widget/e;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setWrapSelectorWheel(Z)V

    iget-object p0, p0, Lcom/color/support/widget/e;->mOppoMinuteSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setWrapSelectorWheel(Z)V

    return-void
.end method


# virtual methods
.method public getBaseline()I
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/e;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getBaseline()I

    move-result p0

    return p0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/e;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker;->getValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/color/support/widget/e;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean p0, p0, Lcom/color/support/widget/e;->mIsAm:Z

    if-eqz p0, :cond_1

    rem-int/lit8 v0, v0, 0xc

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    goto :goto_0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/e;->mOppoMinuteSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public is24HourView()Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/support/widget/e;->mIs24HourView:Z

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/support/widget/e;->mIsEnabled:Z

    return p0
.end method

.method public isLayoutRtl()Z
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, p1}, Lcom/color/support/widget/e;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lcom/color/support/widget/e$b;

    invoke-virtual {p1}, Lcom/color/support/widget/e$b;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-virtual {p1}, Lcom/color/support/widget/e$b;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/color/support/widget/e;->setCurrentHour(Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/color/support/widget/e$b;->b()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/e;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/color/support/widget/e$b;

    invoke-virtual {p0}, Lcom/color/support/widget/e;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/color/support/widget/e;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, p0, v3}, Lcom/color/support/widget/e$b;-><init>(Landroid/os/Parcelable;IILcom/color/support/widget/e$1;)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/color/support/widget/e;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/e;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/support/widget/e;->mIsAm:Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/support/widget/e;->mIsAm:Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/e;->updateAmPmControl()V

    :cond_3
    iget-object v0, p0, Lcom/color/support/widget/e;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorNumberPicker;->setValue(I)V

    invoke-direct {p0}, Lcom/color/support/widget/e;->onTimeChanged()V

    :cond_4
    :goto_1
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p0}, Lcom/color/support/widget/e;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/e;->mOppoMinuteSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorNumberPicker;->setValue(I)V

    invoke-direct {p0}, Lcom/color/support/widget/e;->onTimeChanged()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/color/support/widget/e;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/color/support/widget/e;->mOppoMinuteSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorNumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lcom/color/support/widget/e;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorNumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lcom/color/support/widget/e;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/e;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorNumberPicker;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/e;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    iput-boolean p1, p0, Lcom/color/support/widget/e;->mIsEnabled:Z

    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 2

    iget-boolean v0, p0, Lcom/color/support/widget/e;->mIs24HourView:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/e;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/color/support/widget/e;->mIs24HourView:Z

    invoke-direct {p0}, Lcom/color/support/widget/e;->updateHourControl()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/e;->setCurrentHour(Ljava/lang/Integer;)V

    invoke-direct {p0}, Lcom/color/support/widget/e;->updateAmPmControl()V

    iget-object p0, p0, Lcom/color/support/widget/e;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->requestLayout()V

    return-void
.end method

.method public setOnTimeChangedListener(Lcom/color/support/widget/e$a;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/e;->mOnTimeChangedListener:Lcom/color/support/widget/e$a;

    return-void
.end method

.method public setRowNumber(I)V
    .locals 1

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/e;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/e;->mOppoMinuteSpinner:Lcom/color/support/widget/ColorNumberPicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/e;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/e;->mOppoHourSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorNumberPicker;->setPickerRowNumber(I)V

    iget-object v0, p0, Lcom/color/support/widget/e;->mOppoMinuteSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorNumberPicker;->setPickerRowNumber(I)V

    iget-object p0, p0, Lcom/color/support/widget/e;->mOppoAmPmSpinner:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorNumberPicker;->setPickerRowNumber(I)V

    :cond_1
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/color/support/widget/e;->mMinuteText:Landroid/widget/TextView;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/color/support/widget/e;->mHourText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/color/support/widget/e;->mMinuteText:Landroid/widget/TextView;

    const/16 v0, 0x8

    goto :goto_0

    :goto_1
    return-void
.end method
