.class public Lcom/coloros/settings/feature/display/controller/OsiePreferenceController;
.super Lcom/android/settings/core/a;
.source "OsiePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/b;
.implements Lcom/android/settingslib/core/lifecycle/a/d;


# static fields
.field public static final KEY_OSIE:Ljava/lang/String; = "key_osie"

.field private static final KEY_OSIE_CATEGORY:Ljava/lang/String; = "key_osie_category"


# instance fields
.field private mOsieContentObserver:Landroid/database/ContentObserver;

.field private mOsieSwitch:Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "key_osie"

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    new-instance p1, Lcom/coloros/settings/feature/display/controller/OsiePreferenceController$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/coloros/settings/feature/display/controller/OsiePreferenceController$1;-><init>(Lcom/coloros/settings/feature/display/controller/OsiePreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/OsiePreferenceController;->mOsieContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/display/controller/OsiePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coloros/settings/feature/display/controller/OsiePreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/settings/feature/display/controller/OsiePreferenceController;)Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coloros/settings/feature/display/controller/OsiePreferenceController;->mOsieSwitch:Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 90
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/controller/OsiePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/controller/OsiePreferenceController;->mOsieSwitch:Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;

    const-string v0, "key_osie_category"

    .line 91
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    .line 92
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/OsiePreferenceController;->mOsieSwitch:Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;

    if-eqz v0, :cond_0

    const/16 v1, 0x2e

    .line 93
    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->a(I)V

    .line 94
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/OsiePreferenceController;->mOsieSwitch:Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;

    invoke-static {}, Lcom/coloros/settings/utils/ap;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->setChecked(Z)V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/controller/OsiePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 97
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/OsiePreferenceController;->mOsieSwitch:Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/OsiePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/v;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    return v1

    .line 57
    :cond_0
    invoke-static {}, Lcom/coloros/settings/utils/ap;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 49
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/OsiePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "osie_iris5_switch"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/display/controller/OsiePreferenceController;->mOsieContentObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/OsiePreferenceController;->mOsieContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/OsiePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/display/controller/OsiePreferenceController;->mOsieContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 74
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 75
    iget-object p2, p0, Lcom/coloros/settings/feature/display/controller/OsiePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/ap;->a(Landroid/content/Context;Z)V

    .line 76
    iget-object p2, p0, Lcom/coloros/settings/feature/display/controller/OsiePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->collectIris5SwitchEvent(Landroid/content/Context;Z)V

    const/4 p1, 0x1

    return p1
.end method
