.class public Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DefaultVolumeTypeFragment.java"


# instance fields
.field private a:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment;I)V
    .locals 5

    .line 1078
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment;->a:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-virtual {v0}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1080
    iget-object v3, p0, Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment;->a:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-virtual {v3, v2}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    .line 1081
    instance-of v4, v3, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroidx/preference/Preference;->getOrder()I

    move-result v4

    if-eq p1, v4, :cond_0

    .line 1082
    check-cast v3, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    invoke-virtual {v3, v1}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xfa

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 40
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f12074c

    .line 42
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 43
    invoke-virtual {p0}, Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1500b6

    .line 44
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment;->addPreferencesFromResource(I)V

    .line 45
    invoke-virtual {p0}, Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    .line 46
    new-instance v2, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment;->a:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    .line 48
    iget-object v2, p0, Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment;->a:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-virtual {v2}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->a()V

    .line 49
    iget-object v2, p0, Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment;->a:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 51
    invoke-virtual {p0}, Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "default_volume_type_coloros_six"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 53
    array-length v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    if-ltz v3, :cond_1

    .line 54
    new-instance v5, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    invoke-direct {v5, p1}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;-><init>(Landroid/content/Context;)V

    .line 55
    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v6, p0, Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment;->a:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-virtual {v6, v5}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 57
    array-length v6, v0

    sub-int/2addr v6, v4

    sub-int/2addr v6, v3

    if-ne v1, v6, :cond_0

    .line 58
    invoke-virtual {v5, v4}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    goto :goto_1

    .line 60
    :cond_0
    invoke-virtual {v5, v2}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    .line 63
    :goto_1
    new-instance v6, Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment$1;

    invoke-direct {v6, p0}, Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment$1;-><init>(Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment;)V

    invoke-virtual {v5, v6}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
