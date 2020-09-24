.class public Lcom/android/settings/fuelgauge/BatteryHistoryPreference;
.super Landroidx/preference/Preference;
.source "BatteryHistoryPreference.java"


# instance fields
.field a:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:Lcom/android/settings/fuelgauge/d;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private c:Ljava/lang/CharSequence;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d0050

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->setLayoutResource(I)V

    const/4 p1, 0x0

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->setSelectable(Z)V

    return-void
.end method

.method private synthetic a(Lcom/android/settings/fuelgauge/d;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->b:Lcom/android/settings/fuelgauge/d;

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->notifyChanged()V

    return-void
.end method

.method public static synthetic lambda$f3F6YX8_O1je_7M84H1H_9hdYyY(Lcom/android/settings/fuelgauge/BatteryHistoryPreference;Lcom/android/settings/fuelgauge/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->a(Lcom/android/settings/fuelgauge/d;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->a:Z

    return-void
.end method

.method public final a(Lcom/android/internal/os/BatteryStatsHelper;)V
    .locals 3

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fuelgauge/-$$Lambda$BatteryHistoryPreference$f3F6YX8_O1je_7M84H1H_9hdYyY;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/-$$Lambda$BatteryHistoryPreference$f3F6YX8_O1je_7M84H1H_9hdYyY;-><init>(Lcom/android/settings/fuelgauge/BatteryHistoryPreference;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/android/settings/fuelgauge/d;->a(Landroid/content/Context;Lcom/android/settings/fuelgauge/d$b;Lcom/android/internal/os/BatteryStatsHelper;Z)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 13

    .line 78
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 80
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->b:Lcom/android/settings/fuelgauge/d;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const v2, 0x7f0a0135

    .line 84
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->b:Lcom/android/settings/fuelgauge/d;

    iget-object v3, v3, Lcom/android/settings/fuelgauge/d;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a00ed

    .line 85
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->d:Landroid/widget/TextView;

    .line 86
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->c:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 87
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->a:Z

    if-eqz v2, :cond_2

    .line 90
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->d:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    const v2, 0x7f0a00db

    .line 92
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/UsageView;

    const v2, 0x7f0a0374

    .line 93
    invoke-virtual {p1, v2}, Lcom/android/settings/widget/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x3f333333    # 0.7f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 94
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->b:Lcom/android/settings/fuelgauge/d;

    .line 1063
    invoke-virtual {p1}, Lcom/android/settings/widget/UsageView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1064
    new-instance v4, Lcom/android/settings/fuelgauge/d$1;

    invoke-direct {v4, v2, p1, v3}, Lcom/android/settings/fuelgauge/d$1;-><init>(Lcom/android/settings/fuelgauge/d;Lcom/android/settings/widget/UsageView;Landroid/content/Context;)V

    const/4 v5, 0x1

    .line 1123
    new-array v6, v5, [Lcom/android/settings/fuelgauge/d$a;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    .line 1128
    iget-object v4, v2, Lcom/android/settings/fuelgauge/d;->k:Landroid/os/BatteryStats;

    invoke-static {v4, v6}, Lcom/android/settings/fuelgauge/d;->a(Landroid/os/BatteryStats;[Lcom/android/settings/fuelgauge/d$a;)V

    const v4, 0x7f1204df

    .line 1129
    new-array v6, v5, [Ljava/lang/Object;

    iget-wide v8, v2, Lcom/android/settings/fuelgauge/d;->l:J

    .line 1130
    invoke-static {v3, v8, v9}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1129
    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1132
    iget-wide v8, v2, Lcom/android/settings/fuelgauge/d;->e:J

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_3

    const v6, 0x7f121223

    .line 1133
    new-array v8, v5, [Ljava/lang/Object;

    iget-wide v9, v2, Lcom/android/settings/fuelgauge/d;->e:J

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    .line 1134
    invoke-static {v3, v9, v10}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v7

    .line 1133
    invoke-virtual {v3, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-string v2, ""

    :goto_0
    const/4 v3, 0x2

    .line 1136
    new-array v3, v3, [Ljava/lang/CharSequence;

    aput-object v4, v3, v7

    aput-object v2, v3, v5

    invoke-virtual {p1, v3}, Lcom/android/settings/widget/UsageView;->setBottomLabels([Ljava/lang/CharSequence;)V

    const-string p1, "BatteryHistoryPreference"

    const-string v2, "onBindViewHolder"

    .line 95
    invoke-static {p1, v2, v0, v1}, Lcom/android/settings/fuelgauge/g;->a(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
