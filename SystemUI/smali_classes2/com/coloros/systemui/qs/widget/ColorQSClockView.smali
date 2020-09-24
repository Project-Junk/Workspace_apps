.class public Lcom/coloros/systemui/qs/widget/ColorQSClockView;
.super Landroid/widget/LinearLayout;
.source "ColorQSClockView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ACTION_CLOCK:Ljava/lang/String; = "com.oppo.alarmclock.AlarmClock"

.field private static final NUMBERS:[I

.field private static final TAG:Ljava/lang/String; = "ColorQSClockLayout"


# instance fields
.field private mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mAttached:Z

.field private mColon:Landroid/widget/ImageView;

.field private mCurrentUserId:I

.field private final mCurrentUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private mGlobalClockView:Landroid/widget/LinearLayout;

.field private mHour1:I

.field private mHour2:I

.field private mHourOne:Landroid/widget/ImageView;

.field private mHourTwo:Landroid/widget/ImageView;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIs24HourFormat:Z

.field private mIsGlobalTheme:Z

.field private mMin1:I

.field private mMin2:I

.field private mMinuteOne:Landroid/widget/ImageView;

.field private mMinuteTwo:Landroid/widget/ImageView;

.field private mTextClockView:Lcom/coloros/systemui/statusbar/widget/ColorClock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    .line 63
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->NUMBERS:[I

    return-void

    :array_0
    .array-data 4
        0x7f0811ba
        0x7f0811b4
        0x7f0811b8
        0x7f0811b7
        0x7f0811b1
        0x7f0811b0
        0x7f0811b6
        0x7f0811b5
        0x7f0811af
        0x7f0811b3
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/qs/widget/ColorQSClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/qs/widget/ColorQSClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    new-instance p2, Lcom/coloros/systemui/qs/widget/ColorQSClockView$2;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/qs/widget/ColorQSClockView$2;-><init>(Lcom/coloros/systemui/qs/widget/ColorQSClockView;)V

    iput-object p2, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 86
    const-class p2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p2, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 87
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0d0204

    const/4 v0, 0x1

    invoke-virtual {p2, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 88
    new-instance p2, Lcom/coloros/systemui/qs/widget/ColorQSClockView$1;

    invoke-direct {p2, p0, p1}, Lcom/coloros/systemui/qs/widget/ColorQSClockView$1;-><init>(Lcom/coloros/systemui/qs/widget/ColorQSClockView;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mCurrentUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    const p2, 0x7f0a0180

    .line 94
    invoke-virtual {p0, p2}, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/coloros/systemui/statusbar/widget/ColorClock;

    iput-object p2, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mTextClockView:Lcom/coloros/systemui/statusbar/widget/ColorClock;

    .line 95
    iget-object p2, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mTextClockView:Lcom/coloros/systemui/statusbar/widget/ColorClock;

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->getClockNumFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/coloros/systemui/statusbar/widget/ColorClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 96
    iget-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mTextClockView:Lcom/coloros/systemui/statusbar/widget/ColorClock;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/statusbar/widget/ColorClock;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0276

    .line 97
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mGlobalClockView:Landroid/widget/LinearLayout;

    .line 98
    iget-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mGlobalClockView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a016e

    .line 99
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mHourOne:Landroid/widget/ImageView;

    const p1, 0x7f0a016f

    .line 100
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mHourTwo:Landroid/widget/ImageView;

    const p1, 0x7f0a016d

    .line 101
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mColon:Landroid/widget/ImageView;

    const p1, 0x7f0a0171

    .line 102
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mMinuteOne:Landroid/widget/ImageView;

    const p1, 0x7f0a0172

    .line 103
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mMinuteTwo:Landroid/widget/ImageView;

    .line 104
    invoke-direct {p0}, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->checkTheme()V

    .line 105
    invoke-direct {p0}, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->updateEverything()V

    return-void
.end method

.method static synthetic access$002(Lcom/coloros/systemui/qs/widget/ColorQSClockView;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$100(Lcom/coloros/systemui/qs/widget/ColorQSClockView;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->updateEverything()V

    return-void
.end method

.method private checkTheme()V
    .locals 2

    .line 149
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mIsGlobalTheme:Z

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkTheme mIsGlobalTheme is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mIsGlobalTheme:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Statusbar"

    const-string v1, "ColorQSClockLayout"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getTime()V
    .locals 4

    .line 193
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mIs24HourFormat:Z

    const/16 v1, 0xc

    const/16 v2, 0xa

    if-eqz v0, :cond_0

    .line 194
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    goto :goto_0

    .line 196
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 201
    :cond_1
    :goto_0
    div-int/lit8 v3, v0, 0xa

    iput v3, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mHour1:I

    .line 202
    rem-int/2addr v0, v2

    iput v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mHour2:I

    .line 203
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 204
    div-int/lit8 v1, v0, 0xa

    iput v1, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mMin1:I

    .line 205
    rem-int/2addr v0, v2

    iput v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mMin2:I

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": Hour = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mHour1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mHour2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " minute = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mMin1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mMin2:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Statusbar"

    const-string v1, "ColorQSClockLayout"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateClock()V
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mIsGlobalTheme:Z

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->getTime()V

    .line 186
    invoke-direct {p0}, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->updateGlobalTime()V

    .line 187
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mTextClockView:Lcom/coloros/systemui/statusbar/widget/ColorClock;

    invoke-virtual {v0}, Lcom/coloros/systemui/statusbar/widget/ColorClock;->getTimeString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->updateContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mGlobalClockView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateEverything()V
    .locals 1

    .line 154
    new-instance v0, Lcom/coloros/systemui/qs/widget/-$$Lambda$ColorQSClockView$e1bLyxlXYWBwKeIaXJN61NGabWU;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/qs/widget/-$$Lambda$ColorQSClockView$e1bLyxlXYWBwKeIaXJN61NGabWU;-><init>(Lcom/coloros/systemui/qs/widget/ColorQSClockView;)V

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateGlobalTime()V
    .locals 5

    .line 212
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mHourOne:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->NUMBERS:[I

    iget v3, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mHour1:I

    aget v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 213
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mHourTwo:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->NUMBERS:[I

    iget v4, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mHour2:I

    aget v2, v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 214
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mColon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0811ae

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mMinuteOne:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->NUMBERS:[I

    iget v4, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mMin1:I

    aget v2, v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 216
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mMinuteTwo:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->NUMBERS:[I

    iget p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mMin2:I

    aget p0, v2, p0

    invoke-virtual {v1, p0, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateIs24HourFormat()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mCurrentUserId:I

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mIs24HourFormat:Z

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIs24HourFormat mIs24HourFormat is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mIs24HourFormat:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Statusbar"

    const-string v1, "ColorQSClockLayout"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateVisibilities()V
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mTextClockView:Lcom/coloros/systemui/statusbar/widget/ColorClock;

    iget-boolean v1, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mIsGlobalTheme:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/statusbar/widget/ColorClock;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mGlobalClockView:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mIsGlobalTheme:Z

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 170
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mIs24HourFormat:Z

    if-eqz v0, :cond_2

    .line 171
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mHourOne:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 173
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-lez v0, :cond_3

    if-ge v0, v1, :cond_3

    .line 175
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mHourOne:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 177
    :cond_3
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mHourOne:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public synthetic lambda$updateEverything$0$ColorQSClockView()V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->updateIs24HourFormat()V

    .line 156
    invoke-direct {p0}, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->updateVisibilities()V

    .line 157
    invoke-direct {p0}, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->updateClock()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .line 110
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 111
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mAttached:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mAttached:Z

    .line 113
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.TIME_TICK"

    .line 115
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIME_SET"

    .line 116
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 117
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    .line 118
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 119
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    sget-object v0, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 122
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/Handler;

    .line 121
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 123
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mCurrentUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    .line 124
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mCurrentUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mCurrentUserId:I

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->updateEverything()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mGlobalClockView:Landroid/widget/LinearLayout;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mTextClockView:Lcom/coloros/systemui/statusbar/widget/ColorClock;

    if-ne p1, v0, :cond_1

    .line 226
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.oppo.alarmclock.AlarmClock"

    .line 227
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x24000000

    .line 228
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 229
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 232
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mContext:Landroid/content/Context;

    const-string p1, "clock_click"

    invoke-static {p0, p1}, Lcom/coloros/systemui/qs/helper/QsStatisticUtil;->collectShortcutsCenterEvent(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 131
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 132
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mAttached:Z

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mAttached:Z

    .line 135
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSClockView;->mCurrentUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    :cond_0
    return-void
.end method
