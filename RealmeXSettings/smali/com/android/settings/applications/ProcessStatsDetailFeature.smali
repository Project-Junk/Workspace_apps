.class public Lcom/android/settings/applications/ProcessStatsDetailFeature;
.super Lcom/color/injector/adaptor/g;
.source "ProcessStatsDetailFeature.java"


# annotations
.annotation runtime Lcom/color/injector/a/a;
    a = "app_process_stats_detail"
.end annotation


# static fields
.field private static final KEY_FORCE_STOP:Ljava/lang/String; = "force_stop"

.field private static final KEY_ICON_NAME:Ljava/lang/String; = "app_icon_name"

.field private static final KEY_PROCS:Ljava/lang/String; = "processes"


# instance fields
.field private forceStopButtonPreference:Lcom/coloros/settings/widget/preference/ForceStopButtonPreference;

.field private headPreference:Landroidx/preference/Preference;

.field private mProcGroup:Landroidx/preference/PreferenceCategory;

.field private screen:Landroidx/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/color/injector/adaptor/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkForceStop(Lcom/android/settings/applications/ProcessStatsDetail;)Z
    .locals 10

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetailFeature;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2518
    :cond_0
    iget-object v0, p1, Lcom/android/settings/applications/ProcessStatsDetail;->b:Landroid/app/admin/DevicePolicyManager;

    .line 3511
    iget-object v2, p1, Lcom/android/settings/applications/ProcessStatsDetail;->c:Lcom/android/settings/applications/x;

    .line 3522
    iget-object p1, p1, Lcom/android/settings/applications/ProcessStatsDetail;->a:Landroid/content/pm/PackageManager;

    .line 101
    iget-object v3, v2, Lcom/android/settings/applications/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/w;

    iget v3, v3, Lcom/android/settings/applications/w;->b:I

    const/16 v4, 0x2710

    if-ge v3, v4, :cond_1

    .line 102
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetailFeature;->forceStopButtonPreference:Lcom/coloros/settings/widget/preference/ForceStopButtonPreference;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/ForceStopButtonPreference;->a(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetailFeature;->isEnabled()Z

    move-result p1

    return p1

    :cond_1
    move v3, v1

    move v4, v3

    .line 106
    :goto_0
    iget-object v5, v2, Lcom/android/settings/applications/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v3, v5, :cond_5

    .line 107
    iget-object v5, v2, Lcom/android/settings/applications/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/w;

    move v7, v4

    move v4, v1

    .line 108
    :goto_1
    iget-object v8, v5, Lcom/android/settings/applications/w;->e:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_4

    .line 109
    iget-object v8, v5, Lcom/android/settings/applications/w;->e:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 110
    invoke-virtual {v0, v8}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 111
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetailFeature;->forceStopButtonPreference:Lcom/coloros/settings/widget/preference/ForceStopButtonPreference;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/ForceStopButtonPreference;->a(Z)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetailFeature;->isEnabled()Z

    move-result p1

    return p1

    .line 115
    :cond_2
    :try_start_0
    invoke-virtual {p1, v8, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 116
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v9, 0x200000

    and-int/2addr v8, v9

    if-nez v8, :cond_3

    move v7, v6

    :catch_0
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_6

    .line 124
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetailFeature;->forceStopButtonPreference:Lcom/coloros/settings/widget/preference/ForceStopButtonPreference;

    invoke-virtual {p1, v6}, Lcom/coloros/settings/widget/preference/ForceStopButtonPreference;->a(Z)V

    .line 126
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetailFeature;->isEnabled()Z

    move-result p1

    return p1
.end method

.method public createDetails(Landroidx/preference/PreferenceScreen;Lcom/android/settings/applications/ProcessStatsDetail;)V
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetailFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "processes"

    .line 85
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetailFeature;->mProcGroup:Landroidx/preference/PreferenceCategory;

    const-string v0, "force_stop"

    .line 86
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/ForceStopButtonPreference;

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetailFeature;->forceStopButtonPreference:Lcom/coloros/settings/widget/preference/ForceStopButtonPreference;

    .line 87
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetailFeature;->forceStopButtonPreference:Lcom/coloros/settings/widget/preference/ForceStopButtonPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ForceStopButtonPreference;->a(Z)V

    .line 88
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetailFeature;->forceStopButtonPreference:Lcom/coloros/settings/widget/preference/ForceStopButtonPreference;

    new-instance v0, Lcom/android/settings/applications/-$$Lambda$ProcessStatsDetailFeature$lePLigmRpxjbm7jN2kFYdL7MsLI;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/applications/-$$Lambda$ProcessStatsDetailFeature$lePLigmRpxjbm7jN2kFYdL7MsLI;-><init>(Lcom/android/settings/applications/ProcessStatsDetailFeature;Lcom/android/settings/applications/ProcessStatsDetail;)V

    if-eqz v0, :cond_1

    .line 2057
    iput-object v0, p1, Lcom/coloros/settings/widget/preference/ForceStopButtonPreference;->a:Landroid/view/View$OnClickListener;

    :cond_1
    return-void
.end method

.method public fillProcessesSection(Lcom/android/settings/applications/ProcessStatsDetail;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsDetailFeature;->isEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 4511
    :cond_0
    iget-object v2, v1, Lcom/android/settings/applications/ProcessStatsDetail;->c:Lcom/android/settings/applications/x;

    .line 134
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/applications/ProcessStatsDetail;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 135
    iget-object v5, v0, Lcom/android/settings/applications/ProcessStatsDetailFeature;->mProcGroup:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5}, Landroidx/preference/PreferenceCategory;->removeAll()V

    .line 136
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v3

    .line 137
    :goto_0
    iget-object v7, v2, Lcom/android/settings/applications/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 138
    iget-object v7, v2, Lcom/android/settings/applications/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/w;

    .line 139
    iget-object v8, v7, Lcom/android/settings/applications/w;->a:Ljava/lang/String;

    const-string v9, "os"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 140
    iget-object v8, v7, Lcom/android/settings/applications/w;->c:Ljava/lang/String;

    iput-object v8, v7, Lcom/android/settings/applications/w;->d:Ljava/lang/CharSequence;

    goto :goto_1

    .line 142
    :cond_1
    iget-object v8, v2, Lcom/android/settings/applications/x;->l:Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/android/settings/applications/ProcessStatsDetail;->a(Ljava/lang/String;Lcom/android/settings/applications/w;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/settings/applications/w;->d:Ljava/lang/CharSequence;

    .line 144
    :goto_1
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 146
    :cond_2
    invoke-static {}, Lcom/android/settings/applications/ProcessStatsDetail;->b()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v5, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v2, v3

    .line 147
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 148
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/w;

    .line 149
    new-instance v8, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-direct {v8, v4}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;-><init>(Landroid/content/Context;)V

    .line 150
    invoke-virtual {v8, v3}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Z)V

    const/4 v9, 0x1

    .line 151
    invoke-virtual {v8, v9}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->b(I)V

    const/4 v10, 0x0

    .line 152
    invoke-virtual {v8, v10}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Landroid/graphics/drawable/Drawable;)V

    .line 153
    iget-object v10, v6, Lcom/android/settings/applications/w;->d:Ljava/lang/CharSequence;

    invoke-virtual {v8, v10}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {v8, v3}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setSelectable(Z)V

    .line 156
    iget-wide v10, v6, Lcom/android/settings/applications/w;->j:J

    iget-wide v12, v6, Lcom/android/settings/applications/w;->f:J

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 157
    iget-wide v12, v6, Lcom/android/settings/applications/w;->m:D

    .line 4533
    iget-wide v14, v1, Lcom/android/settings/applications/ProcessStatsDetail;->d:D

    mul-double/2addr v12, v14

    double-to-long v12, v12

    .line 157
    iget-wide v14, v6, Lcom/android/settings/applications/w;->i:D

    move-object/from16 v16, v8

    .line 5533
    iget-wide v7, v1, Lcom/android/settings/applications/ProcessStatsDetail;->d:D

    mul-double/2addr v14, v7

    double-to-long v7, v14

    .line 157
    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 159
    invoke-static {v4, v7, v8}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    long-to-float v8, v10

    .line 5537
    iget-wide v10, v1, Lcom/android/settings/applications/ProcessStatsDetail;->e:J

    long-to-float v10, v10

    div-float/2addr v8, v10

    .line 160
    invoke-static {v8, v4}, Lcom/android/settings/applications/x;->a(FLandroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v8

    const v10, 0x7f120d74

    const/4 v6, 0x2

    .line 162
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v7, v6, v3

    aput-object v8, v6, v9

    .line 163
    invoke-virtual {v4, v10, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, v16

    .line 162
    invoke-virtual {v7, v6}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v6, v0, Lcom/android/settings/applications/ProcessStatsDetailFeature;->mProcGroup:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v6, v7}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 166
    :cond_3
    iget-object v1, v0, Lcom/android/settings/applications/ProcessStatsDetailFeature;->mProcGroup:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_4

    .line 167
    iget-object v1, v0, Lcom/android/settings/applications/ProcessStatsDetailFeature;->screen:Landroidx/preference/PreferenceScreen;

    iget-object v2, v0, Lcom/android/settings/applications/ProcessStatsDetailFeature;->mProcGroup:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 169
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsDetailFeature;->isEnabled()Z

    move-result v1

    return v1
.end method

.method public getUserSettingsXml(I)I
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/XmlRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/XmlRes;
    .end annotation

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetailFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    const p1, 0x7f15003f

    return p1
.end method

.method public synthetic lambda$createDetails$0$ProcessStatsDetailFeature(Lcom/android/settings/applications/ProcessStatsDetail;Landroid/view/View;)V
    .locals 0

    .line 6514
    invoke-virtual {p1}, Lcom/android/settings/applications/ProcessStatsDetail;->a()V

    .line 90
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetailFeature;->forceStopButtonPreference:Lcom/coloros/settings/widget/preference/ForceStopButtonPreference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/ForceStopButtonPreference;->a(Z)V

    return-void
.end method

.method public onViewCreate(Landroidx/preference/PreferenceScreen;Lcom/android/settings/applications/ProcessStatsDetail;)Z
    .locals 3

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetailFeature;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 69
    :cond_0
    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetailFeature;->screen:Landroidx/preference/PreferenceScreen;

    .line 1511
    iget-object v0, p2, Lcom/android/settings/applications/ProcessStatsDetail;->c:Lcom/android/settings/applications/x;

    .line 71
    invoke-virtual {p2}, Lcom/android/settings/applications/ProcessStatsDetail;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v2, "app_icon_name"

    .line 72
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetailFeature;->headPreference:Landroidx/preference/Preference;

    .line 73
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetailFeature;->headPreference:Landroidx/preference/Preference;

    iget-object v2, v0, Lcom/android/settings/applications/x;->k:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1

    .line 74
    invoke-static {p2}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p2

    iget-object v1, v0, Lcom/android/settings/applications/x;->k:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v1}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 73
    :goto_0
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetailFeature;->headPreference:Landroidx/preference/Preference;

    iget-object p2, v0, Lcom/android/settings/applications/x;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetailFeature;->isEnabled()Z

    move-result p1

    return p1
.end method
