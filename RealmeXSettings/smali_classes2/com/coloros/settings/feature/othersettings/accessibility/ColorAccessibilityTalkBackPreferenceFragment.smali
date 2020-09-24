.class public Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityTalkBackPreferenceFragment;
.super Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;
.source "ColorAccessibilityTalkBackPreferenceFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private a:Landroidx/preference/TwoStatePreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 5

    .line 78
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;->a(Landroid/os/Bundle;)V

    .line 1102
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityTalkBackPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "accessibility_enabled"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 1105
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityTalkBackPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 2049
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settingslib/a/a;->a(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object v2

    .line 1106
    new-instance v3, Lcom/coloros/settings/feature/othersettings/accessibility/e;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityTalkBackPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/coloros/settings/feature/othersettings/accessibility/e;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_1

    .line 1108
    invoke-virtual {v3}, Lcom/coloros/settings/feature/othersettings/accessibility/a;->b()Landroid/content/ComponentName;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v0

    .line 82
    :goto_1
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityTalkBackPreferenceFragment;->c:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_2

    .line 83
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityTalkBackPreferenceFragment;->c:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, p1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 85
    :cond_2
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityTalkBackPreferenceFragment;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-eqz v2, :cond_3

    .line 86
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityTalkBackPreferenceFragment;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v2, p1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 89
    :cond_3
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityTalkBackPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/high16 v2, -0x80000000

    const-string v3, "accessibility_services_talkback_float_hint"

    invoke-static {p1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 93
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityTalkBackPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move p1, v1

    .line 96
    :cond_4
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityTalkBackPreferenceFragment;->a:Landroidx/preference/TwoStatePreference;

    if-eqz p1, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 43
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityTalkBackPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v0, 0x7f13020b

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 45
    new-instance p1, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityTalkBackPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityTalkBackPreferenceFragment;->a:Landroidx/preference/TwoStatePreference;

    .line 46
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityTalkBackPreferenceFragment;->a:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 47
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityTalkBackPreferenceFragment;->a:Landroidx/preference/TwoStatePreference;

    const v0, 0x7f120097

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setTitle(I)V

    .line 48
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityTalkBackPreferenceFragment;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const-string v0, "color_accessibility_services_talk_back"

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setKey(Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityTalkBackPreferenceFragment;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object p1

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityTalkBackPreferenceFragment;->a:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 50
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityTalkBackPreferenceFragment;->a:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setDependency(Ljava/lang/String;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityTalkBackPreferenceFragment;->a:Landroidx/preference/TwoStatePreference;

    if-ne p1, v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityTalkBackPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 70
    invoke-virtual {v0, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "accessibility_services_talkback_float_hint"

    .line 69
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 55
    invoke-super {p0, p1, p2}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityTalkBackPreferenceFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 62
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
