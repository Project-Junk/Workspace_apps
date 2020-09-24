.class public Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ColorInstallAuthenticationFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/coloros/settings/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment$ConfirmRiskFragment;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

.field private b:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

.field private c:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

.field private d:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 181
    new-instance v0, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->a:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->b:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->c:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    if-eqz v0, :cond_4

    .line 109
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "settings_install_authentication"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    move v0, v2

    :cond_0
    const/4 p1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, p1, :cond_2

    if-eq v0, v2, :cond_1

    .line 131
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->a:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    .line 132
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->b:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    .line 133
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->c:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->a:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    .line 127
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->b:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    .line 128
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->c:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    return-void

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->a:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    .line 117
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->b:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    .line 118
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->c:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    return-void

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->a:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    .line 122
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->b:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    .line 123
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->c:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method private c()V
    .locals 5

    .line 140
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030012

    .line 142
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "settings_install_authentication_frequency"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 145
    iget-object v3, p0, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->d:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 146
    array-length v3, v0

    if-ge v2, v3, :cond_0

    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 147
    iget-object v3, p0, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->d:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    aget-object v0, v0, v2

    invoke-virtual {v3, v0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setValue(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->d:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "ColorInstallAuthenticationFragment"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15004f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0, p0}, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->a(Landroidx/fragment/app/Fragment;)V

    .line 71
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "install_authentication_category"

    .line 73
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    const-string v1, "install_authentication_all"

    .line 74
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    iput-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->a:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    const-string v1, "install_authentication_not_appstore"

    .line 75
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    iput-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->b:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    const-string v1, "install_authentication_none"

    .line 77
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    iput-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->c:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    const-string v1, "authentication_frequency_settings"

    .line 78
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    iput-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->d:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    .line 80
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->d:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    invoke-virtual {v1, p0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 82
    invoke-static {p1}, Lcom/coloros/settings/feature/security/b;->b(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->e:Z

    .line 83
    iget-boolean p1, p0, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->e:Z

    if-nez p1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->c:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 85
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "settings_install_authentication"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 256
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "authentication_frequency_settings"

    .line 257
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 258
    check-cast p2, Ljava/lang/String;

    .line 259
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "settings_install_authentication_frequency"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 261
    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->c()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 154
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "install_authentication_all"

    .line 155
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "settings_install_authentication"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 158
    invoke-direct {p0, v4}, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->a(Z)V

    goto :goto_0

    :cond_0
    const-string v1, "install_authentication_not_appstore"

    .line 159
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 162
    invoke-direct {p0, v4}, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->a(Z)V

    goto :goto_0

    :cond_1
    const-string v1, "install_authentication_none"

    .line 163
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    invoke-direct {p0, v2}, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->a(Z)V

    .line 165
    invoke-static {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment$ConfirmRiskFragment;->a(Landroidx/fragment/app/Fragment;)V

    .line 168
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 1

    .line 101
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->a(Z)V

    .line 103
    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->c()V

    return-void
.end method
