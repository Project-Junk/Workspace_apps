.class public Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;
.super Landroid/widget/LinearLayout;
.source "ClockStyleHorizontalOne.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClockStyleHorizontalOne"


# instance fields
.field private mClockColon:Landroid/widget/ImageView;

.field private mClockHour1:Landroid/widget/ImageView;

.field private mClockHour2:Landroid/widget/ImageView;

.field private mClockMinute1:Landroid/widget/ImageView;

.field private mClockMinute2:Landroid/widget/ImageView;

.field private mCurClockMode:I

.field private mDp19:I

.field private mDp52:I

.field private mDp53:I

.field private mDp86:I

.field private mHour1:I

.field private mHour2:I

.field private mIs24HourFormat:Z

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

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 56
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 61
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->setOrientation(I)V

    .line 62
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->setLayoutDirection(I)V

    const/4 p1, 0x1

    .line 63
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->setGravity(I)V

    .line 64
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mIs24HourFormat:Z

    .line 65
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->initView()V

    return-void
.end method

.method private addChild(Landroid/widget/ImageView;)V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mClockColon:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 90
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mDp19:I

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mDp86:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 91
    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mDp53:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 93
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mDp52:I

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mDp86:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 94
    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mDp53:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 96
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getTime()V
    .locals 4

    .line 133
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mIs24HourFormat:Z

    const/16 v1, 0xc

    const/16 v2, 0xa

    if-eqz v0, :cond_0

    .line 134
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    goto :goto_0

    .line 136
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 141
    :cond_1
    :goto_0
    div-int/lit8 v3, v0, 0xa

    iput v3, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mHour1:I

    .line 142
    rem-int/2addr v0, v2

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mHour2:I

    .line 143
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 144
    div-int/lit8 v1, v0, 0xa

    iput v1, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mMin1:I

    .line 145
    rem-int/2addr v0, v2

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mMin2:I

    return-void
.end method

.method private initView()V
    .locals 2

    .line 69
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42ac0000    # 86.0f

    invoke-static {v0, v1}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->dpToPixels(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mDp86:I

    .line 70
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42540000    # 53.0f

    invoke-static {v0, v1}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->dpToPixels(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mDp53:I

    .line 71
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42500000    # 52.0f

    invoke-static {v0, v1}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->dpToPixels(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mDp52:I

    .line 72
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41980000    # 19.0f

    invoke-static {v0, v1}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->dpToPixels(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mDp19:I

    .line 74
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mClockHour1:Landroid/widget/ImageView;

    .line 75
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mClockHour1:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->addChild(Landroid/widget/ImageView;)V

    .line 76
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mClockHour2:Landroid/widget/ImageView;

    .line 77
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mClockHour2:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->addChild(Landroid/widget/ImageView;)V

    .line 78
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mClockColon:Landroid/widget/ImageView;

    .line 79
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mClockColon:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 80
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mClockColon:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->addChild(Landroid/widget/ImageView;)V

    .line 81
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mClockMinute1:Landroid/widget/ImageView;

    .line 82
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mClockMinute1:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->addChild(Landroid/widget/ImageView;)V

    .line 83
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mClockMinute2:Landroid/widget/ImageView;

    .line 84
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mClockMinute2:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->addChild(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mClockHour1:Landroid/widget/ImageView;

    .line 150
    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mClockHour2:Landroid/widget/ImageView;

    .line 151
    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mClockColon:Landroid/widget/ImageView;

    .line 152
    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mClockMinute1:Landroid/widget/ImageView;

    .line 153
    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mClockMinute2:Landroid/widget/ImageView;

    return-void
.end method

.method public refreshTime(I)V
    .locals 5

    const-string v0, "ClockStyleHorizontalOne"

    const-string v1, "Aod"

    .line 101
    :try_start_0
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mCurClockMode:I

    .line 102
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshTime: position is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->getTime()V

    .line 105
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mClockHour1:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 106
    iget-boolean v2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mIs24HourFormat:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mHour1:I

    if-nez v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mClockHour1:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mClockHour1:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mClockHour1:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getHorizontalOneClock()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget v4, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mHour1:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mClockHour2:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 114
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mClockHour2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getHorizontalOneClock()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget v4, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mHour2:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    :cond_2
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mClockMinute1:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    .line 117
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mClockMinute1:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getHorizontalOneClock()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget v4, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mMin1:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    :cond_3
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mClockMinute2:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    .line 120
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mClockMinute2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getHorizontalOneClock()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget v4, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mMin2:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    :cond_4
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getHorizontalOneBg()Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 123
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mClockColon:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    .line 124
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mClockColon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getHorizontalOneColon()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    invoke-virtual {v3, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 127
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public refreshTimeByHourFormat()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 158
    iget-boolean v1, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mIs24HourFormat:Z

    if-ne v1, v0, :cond_0

    const-string p0, "Aod"

    const-string v0, "ClockStyleHorizontalOne"

    const-string v1, "refreshTimeByHourFormat: newIs24HourFormat==mIs24HourFormat "

    .line 159
    invoke-static {p0, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 162
    :cond_0
    iput-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mIs24HourFormat:Z

    .line 163
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->mCurClockMode:I

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->refreshTime(I)V

    .line 164
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->requestLayout()V

    return-void
.end method
