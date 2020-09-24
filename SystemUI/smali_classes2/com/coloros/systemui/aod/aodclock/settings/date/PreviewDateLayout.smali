.class public Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;
.super Landroid/widget/LinearLayout;
.source "PreviewDateLayout.java"


# instance fields
.field private mAodClockModeObserver:Landroid/database/ContentObserver;

.field private mColorOSContext:Landroid/content/Context;

.field private mDateMode:I

.field private mDateText:Landroid/widget/TextView;

.field private mLunarTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 53
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->updateDisplayConfiguration(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 175
    new-instance p2, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout$1;

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, p3}, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout$1;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mAodClockModeObserver:Landroid/database/ContentObserver;

    .line 54
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mColorOSContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->setPreviewVisiable()V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->updateTextColor()V

    return-void
.end method

.method private addDateView()V
    .locals 5

    .line 124
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mDateText:Landroid/widget/TextView;

    .line 125
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    .line 127
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 128
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->isMyMMLanguage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mDateText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700bf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHeight(I)V

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mDateText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mDateText:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 133
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mDateText:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 134
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mDateText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mColorOSContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->getCommonColorFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 135
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mColorOSContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getTextColor(Landroid/content/Context;)I

    move-result v1

    .line 136
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mDateText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->updateDateText()V

    .line 138
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mDateText:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addLunarView()V
    .locals 4

    .line 106
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/util/CalendarUtils;->isChinese(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mLunarTextView:Landroid/widget/TextView;

    .line 110
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    .line 112
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 113
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mLunarTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mLunarTextView:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 115
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mLunarTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 116
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mLunarTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mColorOSContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->getCommonColorFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 117
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mColorOSContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getTextColor(Landroid/content/Context;)I

    move-result v1

    .line 118
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mLunarTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->updateLunarText()V

    .line 120
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mLunarTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private isNeedShowDate(Landroid/content/Context;)Z
    .locals 3

    .line 96
    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/util/CalendarUtils;->isChinese(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 97
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mDateMode:I

    if-eqz p0, :cond_0

    if-ne p0, v2, :cond_1

    .line 99
    :cond_0
    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getAodEnableClockOnly()I

    move-result p0

    if-nez p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 101
    :cond_2
    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getAodEnableClockOnly()I

    move-result p0

    if-nez p0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method private updateDateText()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mDateText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mColorOSContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/util/CalendarUtils;->getDate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateLunarText()V
    .locals 3

    .line 142
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mDateMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mLunarTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mColorOSContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->getDateToString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mLunarTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private updateTextColor()V
    .locals 2

    .line 166
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getTextColor(Landroid/content/Context;)I

    move-result v0

    .line 167
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mDateText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mLunarTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    .line 171
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .line 155
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 156
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mColorOSContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mAodClockModeObserver:Landroid/database/ContentObserver;

    const-string v1, "Setting_AodPreviewClockMode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerAsSecure(Landroid/content/Context;Ljava/lang/String;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 161
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 162
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mColorOSContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mAodClockModeObserver:Landroid/database/ContentObserver;

    invoke-static {v0, p0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->unregister(Landroid/content/Context;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public setPreviewVisiable()V
    .locals 5

    .line 59
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mColorOSContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "Setting_AodEnableDateMode"

    invoke-static {v0, v2, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mDateMode:I

    .line 61
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mColorOSContext:Landroid/content/Context;

    const-string v2, "Setting_AodEnableClockOnly"

    .line 62
    invoke-static {v0, v2, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 65
    :goto_0
    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mColorOSContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->isNeedShowDate(Landroid/content/Context;)Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_8

    if-eqz v0, :cond_1

    goto :goto_3

    .line 69
    :cond_1
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->setVisibility(I)V

    .line 70
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->setOrientation(I)V

    .line 72
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mDateMode:I

    if-ne v0, v2, :cond_3

    .line 73
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mLunarTextView:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 74
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->addLunarView()V

    goto :goto_1

    .line 76
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->updateTextColor()V

    goto :goto_1

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mLunarTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 80
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mColorOSContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->isNeedShowDate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 84
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mDateText:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 85
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->addDateView()V

    goto :goto_2

    .line 87
    :cond_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->updateTextColor()V

    goto :goto_2

    .line 90
    :cond_6
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->mDateText:Landroid/widget/TextView;

    if-eqz p0, :cond_7

    .line 91
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    :goto_2
    return-void

    .line 66
    :cond_8
    :goto_3
    invoke-virtual {p0, v4}, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->setVisibility(I)V

    return-void
.end method
