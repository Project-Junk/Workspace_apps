.class public Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;
.super Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;
.source "ColorAccessibilityShortcutPreferenceFragment.java"


# instance fields
.field private l:Landroidx/preference/PreferenceCategory;

.field private m:Landroidx/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;-><init>()V

    return-void
.end method

.method protected static a(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/applications/b;",
            ">;"
        }
    .end annotation

    .line 138
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    .line 139
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 141
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    .line 142
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 144
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_4

    .line 146
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 149
    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 151
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v8, :cond_0

    .line 152
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 154
    :cond_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 155
    sget-object v6, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->a:[Ljava/lang/String;

    array-length v8, v6

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_2

    aget-object v10, v6, v9

    .line 156
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    move v6, v3

    :goto_2
    if-nez v6, :cond_3

    .line 166
    new-instance v6, Lcom/android/settingslib/applications/b;

    .line 168
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    .line 169
    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    .line 170
    invoke-virtual {v5, p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadSummary(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Ljava/lang/String;

    const/4 v13, 0x1

    move-object v7, v6

    move-object v8, p0

    move-object v9, p1

    invoke-direct/range {v7 .. v13}, Lcom/android/settingslib/applications/b;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 166
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->b(Z)V

    return-void
.end method

.method private synthetic a(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 82
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 83
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "accessibility_shortcut_enabled"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 85
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "accessibility_quick"

    invoke-static {p2, v1, p1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 87
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment$1;-><init>(Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;Z)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    return p1
.end method

.method private b(Z)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->l:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    .line 129
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->m:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    return-void
.end method

.method public static synthetic lambda$hAgZroea83b2P51cjV8BN0rUq3M(Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->a(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 78
    invoke-super {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->a()V

    const v0, 0x7f120062

    .line 79
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->a(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setTitle(I)V

    .line 81
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    new-instance v1, Lcom/coloros/settings/feature/othersettings/accessibility/-$$Lambda$ColorAccessibilityShortcutPreferenceFragment$hAgZroea83b2P51cjV8BN0rUq3M;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/othersettings/accessibility/-$$Lambda$ColorAccessibilityShortcutPreferenceFragment$hAgZroea83b2P51cjV8BN0rUq3M;-><init>(Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->a(Landroid/os/Bundle;)V

    const p1, 0x7f120062

    .line 62
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->k:Ljava/lang/String;

    return-void
.end method

.method protected final a(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    return-void
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c_()V
    .locals 6

    .line 99
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "accessibility_shortcut_enabled"

    .line 101
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 102
    :goto_0
    iget-object v4, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->d:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v4, v2}, Lcom/android/settings/widget/ToggleSwitch;->setChecked(Z)V

    .line 103
    iget-object v4, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v4, v2}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->a(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 105
    iget-object v4, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->a:Landroidx/preference/Preference;

    instance-of v4, v4, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v4, :cond_1

    .line 106
    iget-object v4, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->a:Landroidx/preference/Preference;

    check-cast v4, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v4, v2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->b(Ljava/lang/CharSequence;)V

    .line 108
    :cond_1
    iget-object v4, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->b:Landroidx/preference/TwoStatePreference;

    const-string v5, "accessibility_shortcut_on_lock_screen"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    invoke-virtual {v4, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const v0, 0x7f12006f

    .line 110
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->a(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 114
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->d:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ToggleSwitch;->setChecked(Z)V

    .line 115
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->d:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ToggleSwitch;->setEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 117
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->c:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_2

    .line 120
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->d:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setEnabled(Z)V

    .line 121
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setEnabled(Z)V

    .line 122
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->c:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 124
    :goto_2
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->b(Z)V

    return-void
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150038

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const v0, 0x7f12008c

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string p1, "shortcut_category"

    .line 54
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->l:Landroidx/preference/PreferenceCategory;

    const-string p1, "bottom_divider_category"

    .line 55
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilityShortcutPreferenceFragment;->m:Landroidx/preference/PreferenceCategory;

    return-void
.end method
