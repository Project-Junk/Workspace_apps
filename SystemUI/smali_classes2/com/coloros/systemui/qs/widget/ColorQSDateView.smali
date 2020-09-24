.class public Lcom/coloros/systemui/qs/widget/ColorQSDateView;
.super Landroid/widget/TextView;
.source "ColorQSDateView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ColorQSDateView"


# instance fields
.field private final mCurrentTime:Ljava/util/Date;

.field private mDateFormat:Landroid/icu/text/DateFormat;

.field private mDatePattern:Ljava/lang/String;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->mCurrentTime:Ljava/util/Date;

    .line 47
    new-instance v0, Lcom/coloros/systemui/qs/widget/ColorQSDateView$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/qs/widget/ColorQSDateView$1;-><init>(Lcom/coloros/systemui/qs/widget/ColorQSDateView;)V

    iput-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/R$styleable;->DateView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 73
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->mDatePattern:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    iget-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->mDatePattern:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1107fd

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->mDatePattern:Ljava/lang/String;

    .line 80
    :cond_0
    invoke-static {}, Lcom/coloros/common/util/Util;->getCommonColorFont()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void

    :catchall_0
    move-exception p0

    .line 75
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    throw p0
.end method

.method static synthetic access$002(Lcom/coloros/systemui/qs/widget/ColorQSDateView;Landroid/icu/text/DateFormat;)Landroid/icu/text/DateFormat;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->mDateFormat:Landroid/icu/text/DateFormat;

    return-object p1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .line 85
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 93
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    const/4 v4, 0x0

    .line 92
    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 94
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 96
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->updateClock()V

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 149
    invoke-static {}, Lcom/coloros/common/util/Util;->getCommonColorFont()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 101
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->mDateFormat:Landroid/icu/text/DateFormat;

    .line 104
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 105
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public setDatePattern(Ljava/lang/String;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->mDatePattern:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 140
    :cond_0
    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->mDatePattern:Ljava/lang/String;

    const/4 p1, 0x0

    .line 141
    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->mDateFormat:Landroid/icu/text/DateFormat;

    .line 142
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->updateClock()V

    :cond_1
    return-void
.end method

.method protected updateClock()V
    .locals 3

    .line 111
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->getInstance()Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;->getLocalTimeInfo(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$TimeInfo;->getDateInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->mDateFormat:Landroid/icu/text/DateFormat;

    if-nez v0, :cond_1

    .line 121
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->mDatePattern:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    .line 123
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 124
    iput-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->mDateFormat:Landroid/icu/text/DateFormat;

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->mCurrentTime:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 129
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->mDateFormat:Landroid/icu/text/DateFormat;

    iget-object v1, p0, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->mCurrentTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->mLastText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 131
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iput-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSDateView;->mLastText:Ljava/lang/String;

    :cond_2
    return-void
.end method
