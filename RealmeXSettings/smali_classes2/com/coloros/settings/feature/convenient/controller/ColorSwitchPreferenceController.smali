.class public abstract Lcom/coloros/settings/feature/convenient/controller/ColorSwitchPreferenceController;
.super Lcom/android/settingslib/core/a;
.source "ColorSwitchPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field protected a:Landroidx/preference/PreferenceFragmentCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p2, p0, Lcom/coloros/settings/feature/convenient/controller/ColorSwitchPreferenceController;->a:Landroidx/preference/PreferenceFragmentCompat;

    return-void
.end method

.method private a(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/coloros/settings/feature/convenient/controller/ColorSwitchPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 58
    instance-of v0, p1, Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_0

    .line 59
    check-cast p1, Landroidx/preference/TwoStatePreference;

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/convenient/controller/ColorSwitchPreferenceController;->a(Landroidx/preference/TwoStatePreference;)V

    :cond_0
    return-void
.end method

.method private a(Landroidx/preference/TwoStatePreference;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/coloros/settings/feature/convenient/controller/ColorSwitchPreferenceController;->a()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a()Z
.end method

.method protected abstract a(Ljava/lang/Object;)Z
.end method

.method protected final b()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/coloros/settings/feature/convenient/controller/ColorSwitchPreferenceController;->a:Landroidx/preference/PreferenceFragmentCompat;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/convenient/controller/ColorSwitchPreferenceController;->a(Landroidx/preference/PreferenceScreen;)V

    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mPreferenceFragment is null !!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 44
    invoke-virtual {p0}, Lcom/coloros/settings/feature/convenient/controller/ColorSwitchPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/convenient/controller/ColorSwitchPreferenceController;->a(Landroidx/preference/PreferenceScreen;)V

    :cond_0
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 71
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coloros/settings/feature/convenient/controller/ColorSwitchPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/convenient/controller/ColorSwitchPreferenceController;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
