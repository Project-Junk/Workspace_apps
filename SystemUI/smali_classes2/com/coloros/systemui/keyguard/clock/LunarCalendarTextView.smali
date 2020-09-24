.class public Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;
.super Landroid/widget/TextView;
.source "LunarCalendarTextView.java"


# instance fields
.field private final KEY_IS_SHOW_LUNAR_CALENDAR:Ljava/lang/String;

.field private final LANGUAGE_CHINESE_HONGKONG:Ljava/lang/String;

.field private final LANGUAGE_CHINESE_SIMPLE:Ljava/lang/String;

.field private final LANGUAGE_CHINESE_TAIWAN:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mIsCanShowLunarCalendar:Z

.field private mIsShowingLunarCalendar:Z

.field private mShowLunarObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "LunarCalendarTextView"

    .line 35
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;->TAG:Ljava/lang/String;

    const-string p1, "zh_CN"

    .line 36
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;->LANGUAGE_CHINESE_SIMPLE:Ljava/lang/String;

    const-string p1, "zh_HK"

    .line 37
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;->LANGUAGE_CHINESE_HONGKONG:Ljava/lang/String;

    const-string p1, "zh_TW"

    .line 38
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;->LANGUAGE_CHINESE_TAIWAN:Ljava/lang/String;

    const-string p1, "key_is_show_lunar_calendar"

    .line 51
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;->KEY_IS_SHOW_LUNAR_CALENDAR:Ljava/lang/String;

    .line 53
    new-instance p1, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView$1;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView$1;-><init>(Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;->mShowLunarObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;->mIsShowingLunarCalendar:Z

    return p0
.end method

.method static synthetic access$002(Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;->mIsShowingLunarCalendar:Z

    return p1
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;->updateTextState()V

    return-void
.end method

.method private isCanShowLunarCalendar()Z
    .locals 1

    .line 117
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "zh_CN"

    .line 118
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "zh_HK"

    .line 119
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "zh_TW"

    .line 120
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private updateTextState()V
    .locals 3

    .line 102
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;->mIsCanShowLunarCalendar:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;->mIsShowingLunarCalendar:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;

    move-result-object v0

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->getDateToString(J)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 107
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .line 75
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 76
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_is_show_lunar_calendar"

    .line 77
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;->mShowLunarObserver:Landroid/database/ContentObserver;

    .line 78
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    const/4 v5, 0x0

    .line 76
    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 79
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    .line 79
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;->mIsShowingLunarCalendar:Z

    .line 82
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;->isCanShowLunarCalendar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;->mIsCanShowLunarCalendar:Z

    .line 83
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;->updateTextState()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 95
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;->isCanShowLunarCalendar()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;->mIsCanShowLunarCalendar:Z

    .line 96
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;->updateTextState()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 88
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 89
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;->mShowLunarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
