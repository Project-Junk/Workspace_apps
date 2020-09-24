.class public Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;
.super Landroid/view/ViewGroup;
.source "PreviewDefaultClockView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultClockView"


# instance fields
.field private mCurIsHorizontal:Z

.field private mCustomClockView:Landroid/widget/TextClock;

.field private mDp1:I

.field private mDp17:I

.field private mDp28:I

.field private mDp50:I

.field private mDp53:I

.field private mDp56:I

.field private mHour:Landroid/widget/TextClock;

.field private mIs24HourFormat:Z

.field private mMin:Landroid/widget/TextClock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mIs24HourFormat:Z

    const/4 p1, 0x3

    .line 53
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->setLayoutDirection(I)V

    .line 54
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->initViews()V

    return-void
.end method

.method private addChild(Landroid/widget/TextClock;)V
    .locals 2

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p1, v0}, Landroid/widget/TextClock;->setIncludeFontPadding(Z)V

    .line 119
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mCustomClockView:Landroid/widget/TextClock;

    if-ne p1, v1, :cond_0

    const-string v1, "h:mm"

    .line 120
    invoke-virtual {p1, v1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    const-string v1, "HH:mm"

    .line 121
    invoke-virtual {p1, v1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 122
    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mDp56:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextClock;->setTextSize(IF)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mHour:Landroid/widget/TextClock;

    if-ne p1, v1, :cond_1

    const-string v1, "h"

    .line 124
    invoke-virtual {p1, v1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    const-string v1, "HH"

    .line 125
    invoke-virtual {p1, v1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 126
    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mDp53:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextClock;->setTextSize(IF)V

    goto :goto_0

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mMin:Landroid/widget/TextClock;

    if-ne p1, v1, :cond_2

    const-string v1, "mm"

    .line 128
    invoke-virtual {p1, v1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {p1, v1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 130
    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mDp53:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextClock;->setTextSize(IF)V

    :cond_2
    :goto_0
    const/4 v0, -0x1

    .line 132
    invoke-virtual {p1, v0}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 133
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->getClockNumFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v0, 0x10

    .line 134
    invoke-virtual {p1, v0}, Landroid/widget/TextClock;->setGravity(I)V

    .line 135
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 137
    invoke-virtual {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initViews()V
    .locals 2

    .line 102
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mDp56:I

    .line 103
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mDp53:I

    .line 104
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v0, v1}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->dpToPixels(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mDp50:I

    .line 105
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mDp28:I

    .line 106
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mDp17:I

    .line 107
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->dpToPixels(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mDp1:I

    .line 109
    new-instance v0, Landroid/widget/TextClock;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mCustomClockView:Landroid/widget/TextClock;

    .line 110
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mCustomClockView:Landroid/widget/TextClock;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->addChild(Landroid/widget/TextClock;)V

    .line 111
    new-instance v0, Landroid/widget/TextClock;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mHour:Landroid/widget/TextClock;

    .line 112
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mHour:Landroid/widget/TextClock;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->addChild(Landroid/widget/TextClock;)V

    .line 113
    new-instance v0, Landroid/widget/TextClock;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mMin:Landroid/widget/TextClock;

    .line 114
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mMin:Landroid/widget/TextClock;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->addChild(Landroid/widget/TextClock;)V

    return-void
.end method


# virtual methods
.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 98
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 68
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->getMeasuredWidth()I

    move-result p1

    .line 69
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->getMeasuredHeight()I

    move-result p2

    const/4 p3, 0x0

    .line 71
    invoke-virtual {p0, p3}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 72
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    .line 73
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    sub-int v0, p1, p4

    const/4 v1, 0x2

    .line 74
    div-int/2addr v0, v1

    .line 75
    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mDp28:I

    sub-int v2, p2, v2

    sub-int/2addr v2, p5

    add-int/2addr p4, v0

    add-int/2addr p5, v2

    .line 76
    invoke-virtual {p3, v0, v2, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 79
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 80
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    .line 81
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    sub-int v0, p1, p4

    .line 82
    div-int/2addr v0, v1

    .line 83
    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mDp17:I

    sub-int/2addr p2, v2

    sub-int/2addr p2, p5

    add-int/2addr p4, v0

    add-int/2addr p5, p2

    .line 84
    invoke-virtual {p3, v0, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    const/4 p3, 0x1

    .line 86
    invoke-virtual {p0, p3}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 87
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    .line 88
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    .line 89
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->getLayoutDirection()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sub-int v0, p1, v0

    sub-int/2addr v0, p4

    .line 91
    :goto_0
    iget-boolean v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mIs24HourFormat:Z

    if-eqz v2, :cond_1

    sub-int/2addr p1, p4

    div-int/lit8 v0, p1, 0x2

    .line 92
    :cond_1
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mDp1:I

    sub-int/2addr p2, p0

    sub-int/2addr p2, p5

    add-int/2addr p4, v0

    add-int/2addr p5, p2

    .line 93
    invoke-virtual {p3, v0, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 59
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    const/4 v0, 0x0

    .line 60
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 61
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 62
    invoke-virtual {p0, v1, p1, p2}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->measureChild(Landroid/view/View;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public refreshTimeByHourFormat()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 176
    iget-boolean v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mIs24HourFormat:Z

    if-ne v1, v0, :cond_0

    const-string p0, "Aod"

    const-string v0, "DefaultClockView"

    const-string v1, "refreshTimeByHourFormat: newIs24HourFormat==mIs24HourFormat "

    .line 177
    invoke-static {p0, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 180
    :cond_0
    iput-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mIs24HourFormat:Z

    .line 181
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mCurIsHorizontal:Z

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->updateTime(Z)V

    .line 182
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->requestLayout()V

    return-void
.end method

.method public updateTime(Z)V
    .locals 4

    const-string v0, "DefaultClockView"

    const-string v1, "Aod"

    .line 142
    :try_start_0
    iput-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mCurIsHorizontal:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 144
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mHour:Landroid/widget/TextClock;

    invoke-virtual {p1, v2}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 145
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mMin:Landroid/widget/TextClock;

    invoke-virtual {p1, v2}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 146
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->isMyMMLanguage()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0700c8

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 148
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mCustomClockView:Landroid/widget/TextClock;

    invoke-virtual {v2, p1}, Landroid/widget/TextClock;->setHeight(I)V

    .line 149
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mCustomClockView:Landroid/widget/TextClock;

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mDp50:I

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/widget/TextClock;->setTextSize(IF)V

    .line 151
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mCustomClockView:Landroid/widget/TextClock;

    invoke-virtual {p1, v3}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 152
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mCustomClockView:Landroid/widget/TextClock;

    invoke-virtual {p1}, Landroid/widget/TextClock;->refresh()V

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTime: mCustomClockView is "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mCustomClockView:Landroid/widget/TextClock;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mCustomClockView:Landroid/widget/TextClock;

    invoke-virtual {p1, v2}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 156
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->isMyMMLanguage()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0700c2

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 158
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mHour:Landroid/widget/TextClock;

    invoke-virtual {v2, p1}, Landroid/widget/TextClock;->setHeight(I)V

    .line 159
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mMin:Landroid/widget/TextClock;

    invoke-virtual {v2, p1}, Landroid/widget/TextClock;->setHeight(I)V

    .line 160
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mHour:Landroid/widget/TextClock;

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mDp50:I

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/widget/TextClock;->setTextSize(IF)V

    .line 161
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mMin:Landroid/widget/TextClock;

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mDp50:I

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/widget/TextClock;->setTextSize(IF)V

    .line 163
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mHour:Landroid/widget/TextClock;

    invoke-virtual {p1, v3}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 164
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mMin:Landroid/widget/TextClock;

    invoke-virtual {p1, v3}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 165
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mHour:Landroid/widget/TextClock;

    invoke-virtual {p1}, Landroid/widget/TextClock;->refresh()V

    .line 166
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mMin:Landroid/widget/TextClock;

    invoke-virtual {p1}, Landroid/widget/TextClock;->refresh()V

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTime: mHour is "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mHour:Landroid/widget/TextClock;

    invoke-virtual {v2}, Landroid/widget/TextClock;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mMin is "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->mMin:Landroid/widget/TextClock;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 170
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
