.class public Lcom/android/settings/fuelgauge/RestrictedAppDetails;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "RestrictedAppDetails.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$a;


# instance fields
.field a:Ljava/util/List;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/c;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/util/IconDrawableFactory;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field c:Landroidx/preference/PreferenceGroup;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field d:Lcom/android/settings/fuelgauge/g;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field e:Landroid/content/pm/PackageManager;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field f:Lcom/android/settings/fuelgauge/batterytip/d;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final g:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 79
    new-instance v0, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;-><init>(Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->g:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    return-void
.end method

.method private static a(Lcom/android/settings/fuelgauge/batterytip/c;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/settings/fuelgauge/batterytip/c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterytip/c;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/settings/core/InstrumentedPreferenceFragment;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/core/InstrumentedPreferenceFragment;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/c;",
            ">;)V"
        }
    .end annotation

    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "app_info_list"

    .line 85
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    .line 87
    new-instance p1, Lcom/android/settings/core/f;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/fuelgauge/RestrictedAppDetails;

    .line 88
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    .line 89
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f12125d

    .line 1063
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p0

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/core/f;->a()V

    return-void
.end method

.method private synthetic a(Lcom/android/settings/fuelgauge/batterytip/c;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 166
    check-cast p3, Ljava/lang/Boolean;

    .line 167
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3206
    new-instance p2, Lcom/android/settings/fuelgauge/batterytip/c/g;

    invoke-direct {p2, p1}, Lcom/android/settings/fuelgauge/batterytip/c/g;-><init>(Lcom/android/settings/fuelgauge/batterytip/c;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/android/settings/fuelgauge/batterytip/c/j;

    invoke-direct {p2, p1}, Lcom/android/settings/fuelgauge/batterytip/c/j;-><init>(Lcom/android/settings/fuelgauge/batterytip/c;)V

    .line 3211
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->getMetricsCategory()I

    move-result p1

    .line 3210
    invoke-static {p2, p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->a(Lcom/android/settings/fuelgauge/batterytip/c/c;I)Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;

    move-result-object p1

    const/4 p2, 0x0

    .line 168
    invoke-virtual {p1, p0, p2}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    const-string v0, "RestrictedAppDetails"

    invoke-virtual {p1, p3, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return p2
.end method

.method public static synthetic lambda$GLza9g9zoG5tGVCbIeou4iqas3k(Lcom/android/settings/fuelgauge/RestrictedAppDetails;Lcom/android/settings/fuelgauge/batterytip/c;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->a(Lcom/android/settings/fuelgauge/batterytip/c;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "RestrictedAppDetails"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120a94

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x505

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150107

    return v0
.end method

.method public onBatteryTipHandled(Lcom/android/settings/fuelgauge/batterytip/c/c;)V
    .locals 2

    .line 190
    instance-of v0, p1, Lcom/android/settings/fuelgauge/batterytip/c/g;

    if-eqz v0, :cond_0

    .line 192
    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/c/g;

    .line 2139
    iget-object p1, p1, Lcom/android/settings/fuelgauge/batterytip/c/g;->f:Ljava/util/List;

    const/4 v1, 0x0

    .line 192
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/c;

    goto :goto_0

    .line 194
    :cond_0
    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/c/j;

    .line 3077
    iget-object p1, p1, Lcom/android/settings/fuelgauge/batterytip/c/j;->f:Lcom/android/settings/fuelgauge/batterytip/c;

    .line 197
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->c:Landroidx/preference/PreferenceGroup;

    .line 198
    invoke-static {p1}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->a(Lcom/android/settings/fuelgauge/batterytip/c;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_1

    .line 200
    invoke-virtual {p1, v0}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 97
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 100
    iget-object v0, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->g:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->a()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v0

    const v1, 0x7f12125b

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    const-string v0, "restrict_app_list"

    .line 102
    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->c:Landroidx/preference/PreferenceGroup;

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "app_info_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->a:Ljava/util/List;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->e:Landroid/content/pm/PackageManager;

    .line 105
    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->b:Landroid/util/IconDrawableFactory;

    .line 106
    invoke-static {p1}, Lcom/android/settings/fuelgauge/g;->a(Landroid/content/Context;)Lcom/android/settings/fuelgauge/g;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->d:Lcom/android/settings/fuelgauge/g;

    .line 107
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batterytip/d;->a(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/d;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->f:Lcom/android/settings/fuelgauge/batterytip/d;

    .line 1145
    iget-object p1, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->c:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 1146
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    .line 1147
    iget-object v0, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->f:Lcom/android/settings/fuelgauge/batterytip/d;

    .line 1148
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batterytip/d;->a()Landroid/util/SparseLongArray;

    move-result-object v0

    .line 1149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1151
    iget-object v3, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    .line 1152
    new-instance v6, Lcom/android/settings/widget/AppCheckBoxPreference;

    invoke-direct {v6, p1}, Lcom/android/settings/widget/AppCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 1153
    iget-object v7, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->a:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/fuelgauge/batterytip/c;

    .line 1155
    :try_start_0
    iget-object v8, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->e:Landroid/content/pm/PackageManager;

    iget-object v9, v7, Lcom/android/settings/fuelgauge/batterytip/c;->a:Ljava/lang/String;

    iget v10, v7, Lcom/android/settings/fuelgauge/batterytip/c;->d:I

    .line 1156
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 1155
    invoke-virtual {v8, v9, v4, v10}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 1157
    iget-object v9, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->d:Lcom/android/settings/fuelgauge/g;

    iget v10, v7, Lcom/android/settings/fuelgauge/batterytip/c;->d:I

    iget-object v11, v7, Lcom/android/settings/fuelgauge/batterytip/c;->a:Ljava/lang/String;

    .line 1158
    invoke-virtual {v9, v10, v11}, Lcom/android/settings/fuelgauge/g;->a(ILjava/lang/String;)Z

    move-result v9

    .line 1157
    invoke-virtual {v6, v9}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1159
    iget-object v9, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->e:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroidx/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1160
    iget-object v8, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->b:Landroid/util/IconDrawableFactory;

    iget-object v9, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->e:Landroid/content/pm/PackageManager;

    iget-object v10, v7, Lcom/android/settings/fuelgauge/batterytip/c;->a:Ljava/lang/String;

    iget v11, v7, Lcom/android/settings/fuelgauge/batterytip/c;->d:I

    .line 1163
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 1161
    invoke-static {v8, v9, v10, v11}, Lcom/android/settings/m;->a(Landroid/util/IconDrawableFactory;Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 1160
    invoke-virtual {v6, v8}, Landroidx/preference/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1164
    invoke-static {v7}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->a(Lcom/android/settings/fuelgauge/batterytip/c;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroidx/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 1165
    new-instance v8, Lcom/android/settings/fuelgauge/-$$Lambda$RestrictedAppDetails$GLza9g9zoG5tGVCbIeou4iqas3k;

    invoke-direct {v8, p0, v7}, Lcom/android/settings/fuelgauge/-$$Lambda$RestrictedAppDetails$GLza9g9zoG5tGVCbIeou4iqas3k;-><init>(Lcom/android/settings/fuelgauge/RestrictedAppDetails;Lcom/android/settings/fuelgauge/batterytip/c;)V

    invoke-virtual {v6, v8}, Landroidx/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1174
    iget v8, v7, Lcom/android/settings/fuelgauge/batterytip/c;->d:I

    const-wide/16 v9, -0x1

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v11

    cmp-long v8, v11, v9

    if-eqz v8, :cond_0

    const v8, 0x7f12125c

    const/4 v9, 0x1

    .line 1176
    new-array v9, v9, [Ljava/lang/Object;

    sub-long v10, v1, v11

    long-to-double v10, v10

    .line 1177
    invoke-static {p1, v10, v11, v4}, Lcom/android/settingslib/utils/c;->a(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v9, v4

    .line 1176
    invoke-virtual {p0, v8, v9}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroidx/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1179
    :cond_0
    invoke-virtual {v6}, Landroidx/preference/CheckBoxPreference;->getSummaryOn()Ljava/lang/CharSequence;

    .line 1180
    iget-object v8, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->c:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v8, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1182
    :catch_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Can\'t find package: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v7, Lcom/android/settings/fuelgauge/batterytip/c;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "RestrictedAppDetails"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 115
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
