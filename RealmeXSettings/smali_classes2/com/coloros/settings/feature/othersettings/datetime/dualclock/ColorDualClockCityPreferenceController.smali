.class public Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockCityPreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorDualClockCityPreferenceController.java"


# static fields
.field public static final KEY_RESIDENT_CITY:Ljava/lang/String; = "key_resident_city"


# instance fields
.field private mPreference:Landroidx/preference/Preference;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "key_resident_city"

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private updatePreferenceState(Landroidx/preference/Preference;)V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockCityPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/weather/module/city/d;->a(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "city_name"

    .line 74
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "city_name_en"

    .line 75
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 79
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockCityPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120882

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 48
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockCityPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 49
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockCityPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockCityPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 50
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockCityPreferenceController;->updateVisibility()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 55
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockCityPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockCityPreferenceController;->updatePreferenceState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public updateVisibility()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockCityPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockCityPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockCityPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockCityPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockCityPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockCityPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockCityPreferenceController;->updatePreferenceState(Landroidx/preference/Preference;)V

    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockCityPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockCityPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method
