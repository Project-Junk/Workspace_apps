.class public Lcom/android/settings/applications/ProcessStatsSummary;
.super Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;
.source "ProcessStatsSummary.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ProcessStatsSummary$a;
    }
.end annotation


# static fields
.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/f$c;


# instance fields
.field private f:Lcom/android/settings/SummaryPreference;

.field private g:Landroidx/preference/Preference;

.field private h:Landroidx/preference/Preference;

.field private i:Landroidx/preference/Preference;

.field private j:Landroidx/preference/Preference;

.field private k:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 172
    new-instance v0, Lcom/android/settings/applications/ProcessStatsSummary$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsSummary$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsSummary;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/f$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;-><init>()V

    return-void
.end method

.method public static c()[I
    .locals 1

    .line 192
    sget-object v0, Lcom/android/settings/applications/ProcessStatsSummary;->b:[I

    return-object v0
.end method

.method public static d()[J
    .locals 1

    .line 196
    sget-object v0, Lcom/android/settings/applications/ProcessStatsSummary;->a:[J

    return-object v0
.end method

.method private g()Lcom/coloros/settings/adaptor/ProcessStatsSummaryAdaptor;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    if-nez v0, :cond_0

    .line 185
    const-class v0, Lcom/coloros/settings/adaptor/ProcessStatsSummaryAdaptor;

    invoke-static {v0}, Lcom/color/injector/adaptor/ClassAdaptor;->getAdaptor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/injector/adaptor/ClassAdaptor;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    .line 186
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    invoke-virtual {v0, p0}, Lcom/color/injector/adaptor/ClassAdaptor;->bind(Ljava/lang/Object;)V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    check-cast v0, Lcom/coloros/settings/adaptor/ProcessStatsSummaryAdaptor;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsSummary;->g()Lcom/coloros/settings/adaptor/ProcessStatsSummaryAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/ProcessStatsSummaryAdaptor;->addSpinnerHeader()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-super {p0}, Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;->a()V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 0

    .line 205
    iput p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->e:I

    return-void
.end method

.method public final b()V
    .locals 15

    .line 81
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsSummary;->g()Lcom/coloros/settings/adaptor/ProcessStatsSummaryAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/ProcessStatsSummaryAdaptor;->refreshUi()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->d:Lcom/android/settings/applications/v;

    .line 1118
    iget-object v1, v1, Lcom/android/settings/applications/v;->d:Lcom/android/settings/applications/v$a;

    .line 88
    iget-wide v2, v1, Lcom/android/settings/applications/v$a;->a:D

    .line 89
    iget-wide v4, v1, Lcom/android/settings/applications/v$a;->c:D

    .line 90
    iget-wide v6, v1, Lcom/android/settings/applications/v$a;->b:D

    .line 91
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    double-to-long v8, v2

    const/4 v10, 0x1

    invoke-static {v1, v8, v9, v10}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v1

    double-to-long v4, v4

    .line 93
    invoke-static {v0, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    double-to-long v12, v6

    .line 94
    invoke-static {v0, v12, v13}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0300c8

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v12

    .line 97
    iget-object v13, p0, Lcom/android/settings/applications/ProcessStatsSummary;->d:Lcom/android/settings/applications/v;

    invoke-virtual {v13}, Lcom/android/settings/applications/v;->a()I

    move-result v13

    if-ltz v13, :cond_1

    .line 98
    array-length v14, v12

    sub-int/2addr v14, v10

    if-ge v13, v14, :cond_1

    .line 99
    aget-object v12, v12, v13

    goto :goto_0

    .line 101
    :cond_1
    array-length v13, v12

    sub-int/2addr v13, v10

    aget-object v12, v12, v13

    .line 103
    :goto_0
    iget-object v13, p0, Lcom/android/settings/applications/ProcessStatsSummary;->f:Lcom/android/settings/SummaryPreference;

    iget-object v14, v1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/android/settings/SummaryPreference;->a(Ljava/lang/String;)V

    .line 104
    iget-object v13, p0, Lcom/android/settings/applications/ProcessStatsSummary;->f:Lcom/android/settings/SummaryPreference;

    iget-object v1, v1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    invoke-virtual {v13, v1}, Lcom/android/settings/SummaryPreference;->b(Ljava/lang/String;)V

    add-double/2addr v6, v2

    div-double/2addr v2, v6

    double-to-float v1, v2

    .line 106
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsSummary;->f:Lcom/android/settings/SummaryPreference;

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v1

    invoke-virtual {v2, v1, v3}, Lcom/android/settings/SummaryPreference;->a(FF)V

    .line 108
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->g:Landroidx/preference/Preference;

    invoke-virtual {v1, v12}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->h:Landroidx/preference/Preference;

    invoke-virtual {v1, v11}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->i:Landroidx/preference/Preference;

    invoke-static {v8, v9, v4, v5}, Lcom/android/settings/m;->a(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->j:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 112
    sget-object v0, Lcom/android/settings/applications/ProcessStatsSummary;->b:[I

    iget v1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->e:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsSummary;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->d:Lcom/android/settings/applications/v;

    .line 1137
    iget-object v1, v1, Lcom/android/settings/applications/v;->e:Ljava/util/ArrayList;

    .line 113
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 114
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsSummary;->k:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10002d

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v0, v5, v10

    .line 114
    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final e()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/android/settings/applications/ProcessStatsSummary;->e:I

    return v0
.end method

.method public final f()Lcom/android/settings/applications/v;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary;->d:Lcom/android/settings/applications/v;

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120a93

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xca

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsSummary;->g()Lcom/coloros/settings/adaptor/ProcessStatsSummaryAdaptor;

    move-result-object p1

    const v0, 0x7f15005e

    invoke-virtual {p1, v0}, Lcom/coloros/settings/adaptor/ProcessStatsSummaryAdaptor;->getUserSettingsXml(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcessStatsSummary;->addPreferencesFromResource(I)V

    const-string p1, "status_header"

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SummaryPreference;

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->f:Lcom/android/settings/SummaryPreference;

    const-string p1, "performance"

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->g:Landroidx/preference/Preference;

    const-string/jumbo p1, "total_memory"

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->h:Landroidx/preference/Preference;

    const-string p1, "average_used"

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->i:Landroidx/preference/Preference;

    const-string p1, "free"

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->j:Landroidx/preference/Preference;

    const-string p1, "apps_list"

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->k:Landroidx/preference/Preference;

    .line 68
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->k:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 69
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsSummary;->g()Lcom/coloros/settings/adaptor/ProcessStatsSummaryAdaptor;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsSummary;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/coloros/settings/adaptor/ProcessStatsSummaryAdaptor;->displayPreference(Landroidx/preference/PreferenceScreen;Lcom/android/settings/applications/ProcessStatsSummary;)Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 214
    invoke-super {p0}, Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;->onDestroy()V

    .line 215
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsSummary;->g()Lcom/coloros/settings/adaptor/ProcessStatsSummaryAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/ProcessStatsSummaryAdaptor;->unbind()V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary;->k:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 131
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x1

    const-string/jumbo v1, "transfer_stats"

    .line 132
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 133
    iget v1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->e:I

    const-string v2, "duration_index"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->d:Lcom/android/settings/applications/v;

    .line 2093
    iget-object v1, v1, Lcom/android/settings/applications/v;->b:Lcom/android/internal/app/procstats/ProcessStats;

    sput-object v1, Lcom/android/settings/applications/v;->a:Lcom/android/internal/app/procstats/ProcessStats;

    .line 135
    new-instance v1, Lcom/android/settings/core/f;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/applications/ProcessStatsUi;

    .line 136
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f120d73

    .line 3063
    invoke-virtual {v1, v2, v3}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object v1

    .line 138
    invoke-virtual {v1, p1}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsSummary;->getMetricsCategory()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
