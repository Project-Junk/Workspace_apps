.class public Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;
.super Lcom/coloros/systemui/aod/aodclock/widget/BaseDigitalView;
.source "ClockStyleHorizontalTwo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClockStyleHorizontalTwo"


# instance fields
.field private mClockColon:Landroid/widget/ImageView;

.field private mClockHour1:Landroid/widget/ImageView;

.field private mClockHour2:Landroid/widget/ImageView;

.field private mClockMinute1:Landroid/widget/ImageView;

.field private mClockMinute2:Landroid/widget/ImageView;

.field private mHour1:I

.field private mHour2:I

.field private mIs24HourFormat:Z

.field private mLayoutBg:Landroid/widget/FrameLayout;

.field private mMin1:I

.field private mMin2:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/systemui/aod/aodclock/widget/BaseDigitalView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->mIs24HourFormat:Z

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0035

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 61
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->initView()V

    return-void
.end method

.method private getTime()V
    .locals 4

    .line 93
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->mIs24HourFormat:Z

    const/16 v1, 0xc

    const/16 v2, 0xa

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    goto :goto_0

    .line 96
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 101
    :cond_1
    :goto_0
    div-int/lit8 v3, v0, 0xa

    iput v3, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->mHour1:I

    .line 102
    rem-int/2addr v0, v2

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->mHour2:I

    .line 103
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 104
    div-int/lit8 v1, v0, 0xa

    iput v1, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->mMin1:I

    .line 105
    rem-int/2addr v0, v2

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->mMin2:I

    return-void
.end method

.method private initView()V
    .locals 1

    const v0, 0x7f0a0087

    .line 65
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->mLayoutBg:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0089

    .line 66
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->mClockHour1:Landroid/widget/ImageView;

    const v0, 0x7f0a008a

    .line 67
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->mClockHour2:Landroid/widget/ImageView;

    const v0, 0x7f0a00a0

    .line 68
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->mClockColon:Landroid/widget/ImageView;

    const v0, 0x7f0a008b

    .line 69
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->mClockMinute1:Landroid/widget/ImageView;

    const v0, 0x7f0a008c

    .line 70
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->mClockMinute2:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public refreshTime(I)V
    .locals 4

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshTime: clockMode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClockStyleHorizontalTwo"

    const-string v2, "Aod"

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshTime: position is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->getTime()V

    .line 78
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->mIs24HourFormat:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->mHour1:I

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->mClockHour1:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->mClockHour1:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->mClockHour1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getHorizontalTwoClock()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->mHour1:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->mClockHour2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getHorizontalTwoClock()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->mHour2:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->mClockMinute1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getHorizontalTwoClock()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->mMin1:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->mClockMinute2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getHorizontalTwoClock()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->mMin2:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->mLayoutBg:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getHorizontalTwoBg()Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->mClockColon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getHorizontalTwoColon()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
