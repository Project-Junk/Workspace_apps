.class public Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;
.super Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;
.source "ToggleDaltonizerPreferenceFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$a;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Landroidx/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 163
    new-instance v0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment$1;

    invoke-direct {v0}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .line 98
    invoke-super {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->a()V

    .line 100
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->c:Lcom/android/settings/widget/SwitchBar;

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "accessibility_display_daltonizer_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v2, v3

    .line 100
    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->c:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->a(Lcom/android/settings/widget/SwitchBar$a;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->a(Landroid/os/Bundle;)V

    const-string/jumbo v0, "title_res"

    .line 141
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_2

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->k:Ljava/lang/String;

    .line 145
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->k:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const p1, 0x7f12005d

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->k:Ljava/lang/String;

    .line 149
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->k:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->a(Ljava/lang/String;)V

    .line 151
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->e()V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "accessibility_display_daltonizer_enabled"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    move v0, v1

    .line 154
    :cond_3
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    return-void
.end method

.method protected final a(Lcom/android/settings/widget/SwitchBar;)V
    .locals 1

    const v0, 0x7f120055

    .line 113
    invoke-virtual {p1, v0, v0}, Lcom/android/settings/widget/SwitchBar;->a(II)V

    return-void
.end method

.method protected final a(Ljava/lang/String;Z)V
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "accessibility_display_daltonizer_enabled"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final a(Z)Z
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->a(Ljava/lang/String;Z)V

    .line 160
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->a(Z)Z

    move-result p1

    return p1
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120aa8

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150003

    return v0
.end method

.method protected final i_()V
    .locals 1

    .line 107
    invoke-super {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->i_()V

    .line 108
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->c:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->b(Lcom/android/settings/widget/SwitchBar$a;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 65
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo p1, "type"

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->a:Landroidx/preference/ListPreference;

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/display/ColorDisplayManager;->isColorTransformAccelerated(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    invoke-virtual {p1}, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->a()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object p1

    const v0, 0x7f12005c

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    .line 1119
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/16 v0, 0xc

    const-string v1, "accessibility_display_daltonizer"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 1118
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 1120
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->a:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1121
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->a:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1122
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->a:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_1

    .line 1125
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->a:Landroidx/preference/ListPreference;

    const v0, 0x7f120697

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0x7f1214e9

    .line 1126
    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1125
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->a:Landroidx/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const-string v1, "accessibility_display_daltonizer"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p2, "%s"

    .line 90
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    .line 132
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->e:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->a(Ljava/lang/String;Z)V

    return-void
.end method
