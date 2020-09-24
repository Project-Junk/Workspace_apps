.class public Lcom/coloros/settings/feature/security/location/ColorScanningSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ColorScanningSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Landroidx/preference/TwoStatePreference;

.field private b:Landroidx/preference/TwoStatePreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    new-instance v0, Lcom/coloros/settings/feature/security/location/ColorScanningSettings$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/security/location/ColorScanningSettings$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/security/location/ColorScanningSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x83

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1500b4

    .line 53
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/security/location/ColorScanningSettings;->addPreferencesFromResource(I)V

    const-string p1, "wifi_always_scanning"

    .line 1058
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/security/location/ColorScanningSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorScanningSettings;->a:Landroidx/preference/TwoStatePreference;

    .line 1059
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorScanningSettings;->a:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "bluetooth_always_scanning"

    .line 1060
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/security/location/ColorScanningSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorScanningSettings;->b:Landroidx/preference/TwoStatePreference;

    .line 1061
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorScanningSettings;->b:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 85
    instance-of v0, p2, Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 86
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v1

    .line 88
    :goto_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "wifi_always_scanning"

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 90
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/ColorScanningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-eqz p2, :cond_1

    move v1, v2

    :cond_1
    const-string p2, "wifi_scan_always_enabled"

    invoke-static {p1, p2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_2
    const-string v0, "bluetooth_always_scanning"

    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 92
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/ColorScanningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-eqz p2, :cond_3

    move v1, v2

    :cond_3
    const-string p2, "ble_scan_always_enabled"

    invoke-static {p1, p2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    return v2

    :cond_4
    return v1
.end method

.method public onResume()V
    .locals 5

    .line 71
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 1076
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/ColorScanningSettings;->a:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/ColorScanningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "wifi_scan_always_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1078
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/ColorScanningSettings;->b:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/ColorScanningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "ble_scan_always_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
