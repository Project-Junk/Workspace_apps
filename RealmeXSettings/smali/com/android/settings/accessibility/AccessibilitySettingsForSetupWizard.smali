.class public Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilitySettingsForSetupWizard.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private a:Landroidx/preference/Preference;

.field private b:Landroidx/preference/Preference;

.field private c:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 4

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 134
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    .line 135
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 136
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 137
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 138
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroidx/preference/Preference;Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 4

    if-nez p2, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    .line 153
    :cond_0
    invoke-virtual {p2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 154
    invoke-virtual {p2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 156
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "component_name"

    .line 161
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 164
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v2, "preference_key"

    .line 163
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "title"

    .line 165
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const p1, 0x7f120082

    .line 169
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string p2, "summary"

    .line 171
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x16f

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 111
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f150008

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->addPreferencesFromResource(I)V

    const-string p1, "screen_magnification_preference"

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->a:Landroidx/preference/Preference;

    const-string p1, "screen_reader_preference"

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->b:Landroidx/preference/Preference;

    const-string p1, "select_to_speak_preference"

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->c:Landroidx/preference/Preference;

    return-void
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 85
    check-cast p2, Lcom/google/android/setupdesign/GlifPreferenceLayout;

    .line 86
    invoke-virtual {p2}, Lcom/google/android/setupdesign/GlifPreferenceLayout;->c()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    return-object p1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->a:Landroidx/preference/Preference;

    if-ne v0, p1, :cond_0

    .line 123
    invoke-virtual {v0}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "from_suw"

    .line 124
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 3

    .line 101
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 102
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->b:Landroidx/preference/Preference;

    const-string v1, "com.google.android.marvin.talkback"

    const-string v2, "com.google.android.marvin.talkback.TalkBackService"

    .line 103
    invoke-direct {p0, v1, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v2

    .line 102
    invoke-direct {p0, v0, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->a(Landroidx/preference/Preference;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->c:Landroidx/preference/Preference;

    const-string v2, "com.google.android.accessibility.selecttospeak.SelectToSpeakService"

    .line 105
    invoke-direct {p0, v1, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    .line 104
    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->a(Landroidx/preference/Preference;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->a:Landroidx/preference/Preference;

    .line 1178
    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1179
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->a(Landroid/content/res/Resources;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1180
    const-class v2, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragmentForSetupWizard;

    .line 1181
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1180
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 1182
    invoke-virtual {v0}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1184
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->populateMagnificationGesturesPreferenceExtras(Landroid/os/Bundle;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 74
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 76
    check-cast p1, Lcom/google/android/setupdesign/GlifPreferenceLayout;

    .line 77
    invoke-virtual {p1}, Lcom/google/android/setupdesign/GlifPreferenceLayout;->d()V

    const p2, 0x7f121885    # 1.941946E38f

    .line 79
    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/GlifPreferenceLayout;->setHeaderText(I)V

    return-void
.end method
