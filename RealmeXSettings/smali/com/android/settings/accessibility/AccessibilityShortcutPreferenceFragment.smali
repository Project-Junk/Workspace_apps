.class public Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;
.super Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;
.source "AccessibilityShortcutPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field protected a:Landroidx/preference/Preference;

.field protected b:Landroidx/preference/TwoStatePreference;

.field private final l:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 204
    new-instance v0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$2;

    invoke-direct {v0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$2;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;-><init>()V

    .line 58
    new-instance v0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$1;-><init>(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->l:Landroid/database/ContentObserver;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2

    .line 170
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f12006f

    .line 171
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 173
    :cond_0
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->b(Landroid/content/Context;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 177
    :cond_1
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v0

    .line 178
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->d(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    invoke-virtual {v0, p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic a(Landroid/widget/Switch;Z)V
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "accessibility_shortcut_enabled"

    if-eqz p2, :cond_0

    .line 120
    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x1

    .line 123
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->a:Landroidx/preference/Preference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 126
    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->a:Landroidx/preference/Preference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->performClick()V

    return-void

    .line 128
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic a(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    .line 84
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "accessibility_shortcut_on_lock_screen"

    .line 82
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p1, 0x1

    return p1
.end method

.method private static b(Landroid/content/Context;)Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 1

    .line 182
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 183
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->d(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledServiceInfoWithComponentName(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 3

    .line 187
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->d(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 190
    :cond_0
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v2

    .line 191
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 194
    :cond_1
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->b(Landroid/content/Context;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method private static d(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 1

    .line 199
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 198
    invoke-static {p0, v0}, Lcom/android/settingslib/a/a;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 201
    :cond_0
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$krlIKU6Td9f7rvjJn3aVljp9hXs(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;Landroid/widget/Switch;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->a(Landroid/widget/Switch;Z)V

    return-void
.end method

.method public static synthetic lambda$zT9cWj9dLOr0dNAoqzC10h0_yV0(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->a(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 117
    invoke-super {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->a()V

    .line 118
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->c:Lcom/android/settings/widget/SwitchBar;

    new-instance v1, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityShortcutPreferenceFragment$krlIKU6Td9f7rvjJn3aVljp9hXs;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityShortcutPreferenceFragment$krlIKU6Td9f7rvjJn3aVljp9hXs;-><init>(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->a(Lcom/android/settings/widget/SwitchBar$a;)V

    return-void
.end method

.method protected final a(Ljava/lang/String;Z)V
    .locals 1

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->c_()V

    return-void
.end method

.method protected c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected c_()V
    .locals 5

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 142
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->a:Landroidx/preference/Preference;

    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->a(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 143
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->c(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "accessibility_shortcut_enabled"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 145
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    const/4 v1, 0x1

    .line 149
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 150
    :goto_0
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->c:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    const-string v2, "accessibility_shortcut_dialog_shown"

    .line 153
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v4, "accessibility_shortcut_on_lock_screen"

    .line 155
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    .line 157
    :goto_1
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->b:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->a:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->d:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v1}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 160
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->b:Landroidx/preference/TwoStatePreference;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->d:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v1}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    return-void
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120a9b

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15000a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "accessibility_shortcut_service"

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->a:Landroidx/preference/Preference;

    const-string p1, "accessibility_shortcut_on_lock_screen"

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->b:Landroidx/preference/TwoStatePreference;

    .line 81
    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->b:Landroidx/preference/TwoStatePreference;

    new-instance v0, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityShortcutPreferenceFragment$zT9cWj9dLOr0dNAoqzC10h0_yV0;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityShortcutPreferenceFragment$zT9cWj9dLOr0dNAoqzC10h0_yV0;-><init>(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    invoke-virtual {p1}, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->a()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object p1

    const v0, 0x7f12008c

    .line 90
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->l:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 107
    invoke-super {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 97
    invoke-super {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->onResume()V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->c_()V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_shortcut_dialog_shown"

    .line 100
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->l:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 99
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
