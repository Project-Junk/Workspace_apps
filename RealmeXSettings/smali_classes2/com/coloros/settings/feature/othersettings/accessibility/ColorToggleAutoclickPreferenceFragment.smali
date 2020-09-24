.class public Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment;
.super Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;
.source "ColorToggleAutoclickPreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment;)Lcom/android/settings/widget/SeekBarPreference;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment;->a:Lcom/android/settings/widget/SeekBarPreference;

    return-object p0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->a(Landroid/os/Bundle;)V

    const p1, 0x7f12004c

    .line 76
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment;->k:Ljava/lang/String;

    return-void
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150034

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 34
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment;->a:Lcom/android/settings/widget/SeekBarPreference;

    instance-of p1, p1, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;

    if-eqz p1, :cond_0

    .line 36
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment;->a:Lcom/android/settings/widget/SeekBarPreference;

    check-cast p1, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;

    const/16 v0, 0x8

    .line 1144
    iput v0, p1, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->d:I

    .line 1145
    invoke-virtual {p1}, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->notifyChanged()V

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "accessibility_autoclick_enabled"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 40
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    invoke-virtual {v1, v3}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 41
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    new-instance v3, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment$1;

    invoke-direct {v3, p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment$1;-><init>(Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment;)V

    invoke-virtual {v1, v3}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 51
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment;->a:Lcom/android/settings/widget/SeekBarPreference;

    if-ne p1, v2, :cond_2

    move v0, v2

    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setEnabled(Z)V

    .line 52
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "footer_preference"

    .line 53
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 54
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment;->j:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 55
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    new-instance v0, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 65
    invoke-super {p0, p1, p2}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f12004c

    .line 66
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment;->a(Ljava/lang/String;)V

    .line 67
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p2, p1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setTitle(I)V

    return-void
.end method
