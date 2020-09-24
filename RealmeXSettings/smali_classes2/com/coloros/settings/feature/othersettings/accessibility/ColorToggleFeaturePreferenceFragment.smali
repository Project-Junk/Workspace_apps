.class public abstract Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;
.super Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;
.source "ColorToggleFeaturePreferenceFragment.java"


# instance fields
.field protected h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field protected i:Landroidx/preference/PreferenceCategory;

.field protected j:Landroidx/preference/Preference;

.field protected k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;)Lcom/android/settings/widget/ToggleSwitch;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->d:Lcom/android/settings/widget/ToggleSwitch;

    return-object p0
.end method

.method private synthetic a(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 64
    instance-of v0, p1, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 67
    :cond_0
    check-cast p1, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->isChecked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 70
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 71
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment$1;-><init>(Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;Z)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->a(Z)Z

    move-result p1

    return p1
.end method

.method static synthetic b(Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;)Lcom/android/settings/widget/ToggleSwitch;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->d:Lcom/android/settings/widget/ToggleSwitch;

    return-object p0
.end method

.method public static synthetic lambda$deDHWhXhsxLTAyL_lhXhT0tgUc4(Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->a(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "preference_key"

    .line 144
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->e:Ljava/lang/String;

    const-string v0, "checked"

    .line 147
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 149
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->c:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 150
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    :cond_0
    const-string v0, "resolve_info"

    .line 156
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 158
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "title"

    .line 160
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "title_res"

    .line 163
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 164
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 165
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const v0, 0x7f120f56

    .line 168
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-eqz v1, :cond_4

    .line 171
    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 174
    :cond_4
    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->k:Ljava/lang/String;

    const-string v0, "summary_res"

    .line 177
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 178
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 179
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->a()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/widget/FooterPreference;->setSummary(I)V

    return-void

    :cond_5
    const-string v0, "summary"

    .line 180
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 181
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 183
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->j:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method protected a(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 107
    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->i:Landroidx/preference/PreferenceCategory;

    .line 108
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->i:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method protected a(Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected final e()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->isChecked()Z

    const v1, 0x7f120055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    .line 53
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 54
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 55
    new-instance v0, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    invoke-virtual {v0}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->a()V

    .line 58
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 60
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->a(Landroidx/preference/PreferenceScreen;)V

    .line 62
    new-instance v1, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 63
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    new-instance v2, Lcom/coloros/settings/feature/othersettings/accessibility/-$$Lambda$ColorToggleFeaturePreferenceFragment$deDHWhXhsxLTAyL_lhXhT0tgUc4;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/othersettings/accessibility/-$$Lambda$ColorToggleFeaturePreferenceFragment$deDHWhXhsxLTAyL_lhXhT0tgUc4;-><init>(Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;)V

    invoke-virtual {v1, v2}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 83
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 85
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->getPreferenceScreenResId()I

    move-result v0

    if-lez v0, :cond_0

    .line 87
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->addPreferencesFromResource(I)V

    .line 90
    :cond_0
    new-instance v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment$2;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment$2;-><init>(Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->j:Landroidx/preference/Preference;

    .line 98
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->j:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 99
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->j:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 100
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->j:Landroidx/preference/Preference;

    const v1, 0x7f0d036b

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 101
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->j:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    const/4 p1, 0x1

    .line 103
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->addPreferenceHeader(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 199
    invoke-super {p0, p1, p2}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 201
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->f:Ljava/lang/CharSequence;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->g:Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 202
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->f:Ljava/lang/CharSequence;

    invoke-interface {p1, p2}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x1

    .line 203
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 204
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->g:Landroid/content/Intent;

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 130
    invoke-super {p0, p1, p2}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 133
    instance-of p2, p1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz p2, :cond_0

    .line 134
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 136
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public shouldAddPreferenceHeader()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
