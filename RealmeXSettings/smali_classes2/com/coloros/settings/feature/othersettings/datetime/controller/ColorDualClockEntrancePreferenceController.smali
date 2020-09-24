.class public Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorDualClockEntrancePreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorDualClockEntrancePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final KEY_DUAL_CLOCK:Ljava/lang/String; = "key_dual_clock"


# instance fields
.field private mPreference:Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "key_dual_clock"

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private isSwitchChecked()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorDualClockEntrancePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/a;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 46
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorDualClockEntrancePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorDualClockEntrancePreferenceController;->mPreference:Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;

    .line 47
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorDualClockEntrancePreferenceController;->mPreference:Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p1, p0}, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 49
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorDualClockEntrancePreferenceController;->mPreference:Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;

    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->a(I)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorDualClockEntrancePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->ae(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 67
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 68
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorDualClockEntrancePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/a;->a(Landroid/content/Context;Z)Z

    .line 69
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorDualClockEntrancePreferenceController;->updateState(Landroidx/preference/Preference;)V

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->updateState(Landroidx/preference/Preference;)V

    .line 56
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorDualClockEntrancePreferenceController;->mPreference:Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;

    if-eqz p1, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorDualClockEntrancePreferenceController;->isSwitchChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
