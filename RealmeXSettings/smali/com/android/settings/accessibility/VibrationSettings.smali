.class public Lcom/android/settings/accessibility/VibrationSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "VibrationSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Lcom/android/settings/accessibility/VibrationSettings$1;

    invoke-direct {v0}, Lcom/android/settings/accessibility/VibrationSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/VibrationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private c()Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationSettings;->a:Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/VibrationSettings;->a:Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationSettings;->a:Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "VibrationSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x50c

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/android/settings/accessibility/VibrationSettings;->c()Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;

    const v0, 0x7f150070

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 66
    invoke-direct {p0}, Lcom/android/settings/accessibility/VibrationSettings;->c()Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;

    move-result-object p1

    .line 1321
    iget-object p1, p1, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->a:Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$a;

    .line 1335
    iget-object v0, p1, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$a;->a:Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;

    invoke-static {v0}, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->a(Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1337
    iget-object v0, p1, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$a;->a:Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;

    invoke-static {v0}, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->a(Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1338
    invoke-static {}, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 1337
    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDetach()V

    .line 72
    invoke-direct {p0}, Lcom/android/settings/accessibility/VibrationSettings;->c()Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;

    move-result-object v0

    .line 2325
    iget-object v0, v0, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->a:Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$a;

    .line 2342
    iget-object v1, v0, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$a;->a:Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;

    invoke-static {v1}, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->a(Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2344
    iget-object v1, v0, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$a;->a:Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;

    invoke-static {v1}, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->a(Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 59
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 60
    invoke-direct {p0}, Lcom/android/settings/accessibility/VibrationSettings;->c()Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    const-string v0, "ring_vibration_preference_screen"

    .line 1070
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object v0, p1, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->b:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const-string v0, "notification_vibration_preference_screen"

    .line 1071
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object v0, p1, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->c:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const-string/jumbo v0, "touch_vibration_preference_screen"

    .line 1072
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object p2, p1, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->d:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 1074
    iget-object p2, p1, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->d:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p2, p1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1075
    iget-object p2, p1, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->c:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p2, p1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1076
    iget-object p2, p1, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->b:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p2, p1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1110
    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1111
    iget-object v1, p1, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->e:Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$b;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1112
    new-instance v1, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$b;

    const/4 v2, 0x1

    .line 1113
    invoke-virtual {p1, v2}, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->a(I)I

    move-result v3

    const v4, 0x7f12163e

    const-string v5, "intensity_on"

    invoke-direct {v1, p1, v5, v4, v3}, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$b;-><init>(Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;Ljava/lang/String;II)V

    .line 1112
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1114
    invoke-virtual {p1, v2, p2}, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->a(ILjava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 1115
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1116
    iget-object v1, p1, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->b:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v1, v2}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 1118
    :cond_0
    new-instance v1, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$b;

    .line 1119
    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->a(I)I

    move-result v3

    invoke-direct {v1, p1, v5, v4, v3}, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$b;-><init>(Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;Ljava/lang/String;II)V

    .line 1118
    invoke-interface {p2, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1120
    invoke-virtual {p1, v0, p2}, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->a(ILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 1121
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1122
    iget-object v0, p1, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->c:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 1124
    :cond_1
    new-instance v0, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$b;

    const/4 v1, 0x3

    .line 1125
    invoke-virtual {p1, v1}, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->a(I)I

    move-result v3

    invoke-direct {v0, p1, v5, v4, v3}, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$b;-><init>(Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;Ljava/lang/String;II)V

    .line 1124
    invoke-interface {p2, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1126
    invoke-virtual {p1, v1, p2}, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->a(ILjava/util/List;)Ljava/lang/String;

    move-result-object p2

    .line 1127
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1128
    iget-object p1, p1, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->d:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, v2}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    :cond_2
    return-void
.end method
