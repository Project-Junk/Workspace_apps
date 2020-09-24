.class public Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;
.super Landroid/view/ViewGroup;
.source "ClockStyleVerticalOne.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClockStyleVerticalOne"


# instance fields
.field private mClockHour1:Landroid/widget/ImageView;

.field private mClockHour2:Landroid/widget/ImageView;

.field private mClockMinute1:Landroid/widget/ImageView;

.field private mClockMinute2:Landroid/widget/ImageView;

.field private mCurClockMode:I

.field private mDp68:I

.field private mDp85:I

.field private mDp9:I

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

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mIs24HourFormat:Z

    .line 59
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->initDimens()V

    .line 60
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->initViews()V

    const/4 p1, 0x3

    .line 61
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->setLayoutDirection(I)V

    return-void
.end method

.method private getTime()V
    .locals 4

    .line 175
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mIs24HourFormat:Z

    const/16 v1, 0xc

    const/16 v2, 0xa

    if-eqz v0, :cond_0

    .line 176
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    goto :goto_0

    .line 178
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 183
    :cond_1
    :goto_0
    div-int/lit8 v3, v0, 0xa

    iput v3, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mHour1:I

    .line 184
    rem-int/2addr v0, v2

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mHour2:I

    .line 185
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 186
    div-int/lit8 v1, v0, 0xa

    iput v1, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mMin1:I

    .line 187
    rem-int/2addr v0, v2

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mMin2:I

    return-void
.end method

.method private initDimens()V
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42880000    # 68.0f

    invoke-static {v0, v1}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->dpToPixels(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mDp68:I

    .line 66
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42aa0000    # 85.0f

    invoke-static {v0, v1}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->dpToPixels(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mDp85:I

    .line 67
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41100000    # 9.0f

    invoke-static {v0, v1}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->dpToPixels(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mDp9:I

    return-void
.end method

.method private initViews()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    .line 72
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mDp68:I

    iget v4, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mDp85:I

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    .line 75
    iget v4, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mDp9:I

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 77
    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    if-eq v0, v3, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_1

    .line 89
    :cond_1
    iput-object v1, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mClockMinute2:Landroid/widget/ImageView;

    goto :goto_1

    .line 86
    :cond_2
    iput-object v1, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mClockMinute1:Landroid/widget/ImageView;

    goto :goto_1

    .line 83
    :cond_3
    iput-object v1, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mClockHour2:Landroid/widget/ImageView;

    goto :goto_1

    .line 80
    :cond_4
    iput-object v1, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mClockHour1:Landroid/widget/ImageView;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mClockHour1:Landroid/widget/ImageView;

    .line 203
    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mClockHour2:Landroid/widget/ImageView;

    .line 204
    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mClockMinute1:Landroid/widget/ImageView;

    .line 205
    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mClockMinute2:Landroid/widget/ImageView;

    return-void
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 140
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .line 106
    iget-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mIs24HourFormat:Z

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    iget p1, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mHour1:I

    if-nez p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, p3

    .line 107
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->getMeasuredWidth()I

    move-result p4

    const/4 p5, 0x2

    div-int/2addr p4, p5

    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mDp68:I

    sub-int/2addr p4, v0

    .line 108
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->getMeasuredWidth()I

    move-result v0

    div-int/2addr v0, p5

    move v1, p3

    .line 109
    :goto_1
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 110
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_5

    if-eq v1, p2, :cond_3

    if-eq v1, p5, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    move v3, p3

    move v4, v3

    goto :goto_4

    .line 129
    :cond_1
    iget v3, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mDp9:I

    iget v4, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mDp85:I

    add-int/2addr v3, v4

    move v4, v3

    move v3, v0

    goto :goto_4

    .line 125
    :cond_2
    iget v3, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mDp9:I

    iget v4, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mDp85:I

    add-int/2addr v3, v4

    move v4, v3

    move v3, p4

    goto :goto_4

    :cond_3
    if-eqz p1, :cond_4

    .line 119
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->getLayoutDirection()I

    move-result v3

    if-nez v3, :cond_4

    move v3, p4

    goto :goto_2

    :cond_4
    move v3, v0

    .line 121
    :goto_2
    iget v4, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mDp9:I

    goto :goto_4

    :cond_5
    if-eqz p1, :cond_6

    move v3, p3

    goto :goto_3

    :cond_6
    move v3, p4

    .line 116
    :goto_3
    iget v4, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mDp9:I

    :goto_4
    if-eqz p1, :cond_7

    if-nez v1, :cond_7

    goto :goto_5

    .line 134
    :cond_7
    iget v5, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mDp68:I

    add-int/2addr v5, v3

    iget v6, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mDp85:I

    add-int/2addr v6, v4

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 97
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    const/4 v0, 0x0

    .line 98
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 99
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 100
    invoke-virtual {p0, v1, p1, p2}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->measureChild(Landroid/view/View;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public refreshTime(I)V
    .locals 5

    const-string v0, "ClockStyleVerticalOne"

    const-string v1, "Aod"

    .line 145
    :try_start_0
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mCurClockMode:I

    .line 146
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshTime: position is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mClockHour1 null is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mClockHour1:Landroid/widget/ImageView;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->getTime()V

    .line 150
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mClockHour1:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 151
    iget-boolean v2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mIs24HourFormat:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mHour1:I

    if-nez v2, :cond_1

    .line 152
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mClockHour1:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 154
    :cond_1
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mClockHour1:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mClockHour1:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getVerticalOneClock()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget v4, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mHour1:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mClockHour2:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    .line 159
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mClockHour2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getVerticalOneClock()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget v4, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mHour2:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    :cond_3
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mClockMinute1:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    .line 162
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mClockMinute1:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getVerticalOneClock()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget v4, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mMin1:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    :cond_4
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mClockMinute2:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    .line 165
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mClockMinute2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getVerticalOneClock()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget v4, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mMin2:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    :cond_5
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getVerticalOneBg()Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 169
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public refreshTimeByHourFormat()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 192
    iget-boolean v1, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mIs24HourFormat:Z

    if-ne v1, v0, :cond_0

    const-string p0, "Aod"

    const-string v0, "ClockStyleVerticalOne"

    const-string v1, "refreshTimeByHourFormat: newIs24HourFormat==mIs24HourFormat "

    .line 193
    invoke-static {p0, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 196
    :cond_0
    iput-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mIs24HourFormat:Z

    .line 197
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->mCurClockMode:I

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->refreshTime(I)V

    .line 198
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->requestLayout()V

    return-void
.end method
