.class public Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;
.super Landroid/widget/LinearLayout;
.source "DateLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DateLayout"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDateText:Landroid/widget/TextView;

.field private mDateTextColor:I

.field private mHasMediaNotification:Z

.field private mLunarTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 57
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->updateDisplayConfiguration(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mContext:Landroid/content/Context;

    const/4 p2, 0x1

    .line 59
    invoke-virtual {p0, p2}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->setOrientation(I)V

    .line 60
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportAod()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p3

    invoke-virtual {p3}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isAodClose()Z

    move-result p3

    if-nez p3, :cond_9

    .line 61
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportRamLessAod()Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;

    move-result-object p3

    invoke-virtual {p3}, Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;->hasMediaSessionNotification()Z

    move-result p3

    if-eqz p3, :cond_0

    move p3, p2

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    iput-boolean p3, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mHasMediaNotification:Z

    .line 65
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result p3

    const/16 v1, 0x8

    if-eqz p3, :cond_4

    .line 66
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->isShowDate()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mHasMediaNotification:Z

    if-eqz p1, :cond_1

    goto :goto_2

    .line 69
    :cond_1
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getTextColorForLockScreen(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mDateTextColor:I

    .line 70
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->showDateWay()I

    move-result p1

    if-nez p1, :cond_2

    .line 71
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->addDateView()V

    goto :goto_1

    .line 73
    :cond_2
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->addLunarView()V

    .line 74
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->addDateView()V

    .line 76
    :goto_1
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->setVisibility(I)V

    goto :goto_4

    .line 67
    :cond_3
    :goto_2
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->setVisibility(I)V

    goto :goto_4

    .line 80
    :cond_4
    iget-object p3, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, p3}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->isNeedShowDate(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_8

    iget-boolean p3, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mHasMediaNotification:Z

    if-eqz p3, :cond_5

    goto :goto_3

    .line 83
    :cond_5
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;

    move-result-object p3

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getTextColorForLockScreen(Landroid/content/Context;)I

    move-result p3

    iput p3, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mDateTextColor:I

    .line 84
    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getAodEnableDateMode()I

    move-result p1

    if-ne p1, p2, :cond_6

    .line 85
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->addLunarView()V

    .line 87
    :cond_6
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->isNeedShowDate(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 88
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->addDateView()V

    .line 90
    :cond_7
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->setVisibility(I)V

    goto :goto_4

    .line 81
    :cond_8
    :goto_3
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->setVisibility(I)V

    :cond_9
    :goto_4
    return-void
.end method

.method private addDateView()V
    .locals 5

    .line 166
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mDateText:Landroid/widget/TextView;

    .line 167
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    .line 169
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 170
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isMyMmLanguage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mDateText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700bf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHeight(I)V

    .line 173
    :cond_0
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mDateText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mDateText:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 175
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mDateText:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 176
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mDateText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->getCommonColorFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 177
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mDateText:Landroid/widget/TextView;

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mDateTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->updateDateText()V

    .line 179
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mDateText:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addLunarView()V
    .locals 4

    .line 149
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/util/CalendarUtils;->isChinese(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 152
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mLunarTextView:Landroid/widget/TextView;

    .line 153
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    .line 155
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 156
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mLunarTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mLunarTextView:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 158
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mLunarTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 159
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mLunarTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->getCommonColorFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 160
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mLunarTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mDateTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->updateLunarText()V

    .line 162
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mLunarTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private hasMediaNotification()Z
    .locals 0

    .line 135
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportRamLessAod()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;->hasMediaSessionNotification()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private initDateLunarView(Landroid/content/Context;)V
    .locals 3

    const-string v0, "Aod"

    const-string v1, "DateLayout"

    const-string v2, "initDateLunarView"

    .line 105
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getTextColorForLockScreen(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mDateTextColor:I

    .line 107
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->removeDateLunarView()V

    .line 108
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->showDateWay()I

    move-result p1

    if-nez p1, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->addDateView()V

    goto :goto_0

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->addLunarView()V

    .line 113
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->addDateView()V

    goto :goto_0

    .line 116
    :cond_1
    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getAodEnableDateMode()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 117
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->addLunarView()V

    .line 119
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->isNeedShowDate(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 120
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->addDateView()V

    :cond_3
    :goto_0
    return-void
.end method

.method private isNeedShowDate(Landroid/content/Context;)Z
    .locals 2

    .line 139
    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/util/CalendarUtils;->isChinese(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    .line 140
    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getAodEnableDateMode()I

    move-result p0

    if-eqz p0, :cond_0

    .line 141
    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getAodEnableDateMode()I

    move-result p0

    if-ne p0, v1, :cond_1

    .line 142
    :cond_0
    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getAodEnableClockOnly()I

    move-result p0

    if-nez p0, :cond_1

    move v0, v1

    :cond_1
    return v0

    .line 144
    :cond_2
    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getAodEnableClockOnly()I

    move-result p0

    if-nez p0, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method private removeDateLunarView()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mDateText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->removeView(Landroid/view/View;)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mLunarTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private shouldHideDateLayout()Z
    .locals 3

    .line 97
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 98
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->isShowDate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mHasMediaNotification:Z

    if-eqz p0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->isNeedShowDate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean p0, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mHasMediaNotification:Z

    if-eqz p0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method private updateDateText()V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mDateText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 200
    :cond_0
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->showDateWay()I

    move-result v0

    if-nez v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mDateText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/util/CalendarUtils;->getDate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->isNeedShowDate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mDateText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/util/CalendarUtils;->getDate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mDateText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private updateLunarText()V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mLunarTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 186
    :cond_0
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->showDateWay()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 187
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mLunarTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->getDateToString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getAodEnableDateMode()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 189
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mLunarTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->getDateToString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mLunarTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public updateDate()V
    .locals 1

    .line 211
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->mHasMediaNotification:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 212
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 215
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->setVisibility(I)V

    .line 217
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->updateLunarText()V

    .line 218
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/date/DateLayout;->updateDateText()V

    return-void
.end method
