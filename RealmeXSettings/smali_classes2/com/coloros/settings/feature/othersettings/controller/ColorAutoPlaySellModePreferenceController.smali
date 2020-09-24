.class public Lcom/coloros/settings/feature/othersettings/controller/ColorAutoPlaySellModePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "ColorAutoPlaySellModePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field private static final DISALLOW_PLAY_SELLMODE:Ljava/lang/String; = "disallow_play_sellmode"

.field private static final KEY_COMPLEX_CATEGORY:Ljava/lang/String; = "complex_category"

.field public static final KEY_PLAY_SELLMODE:Ljava/lang/String; = "play_sellmode"


# instance fields
.field private mComplexCategory:Landroidx/preference/PreferenceCategory;

.field private mPlaySellMode:Landroidx/preference/TwoStatePreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "play_sellmode"

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private configPlaySellMode()V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorAutoPlaySellModePreferenceController;->mPlaySellMode:Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorAutoPlaySellModePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorAutoPlaySellModePreferenceController;->mPlaySellMode:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 72
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorAutoPlaySellModePreferenceController;->mPlaySellMode:Landroidx/preference/TwoStatePreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorAutoPlaySellModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "disallow_play_sellmode"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorAutoPlaySellModePreferenceController;->mPlaySellMode:Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorAutoPlaySellModePreferenceController;->mComplexCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_2

    .line 75
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "play_sellmode"

    .line 44
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorAutoPlaySellModePreferenceController;->mPlaySellMode:Landroidx/preference/TwoStatePreference;

    const-string v0, "complex_category"

    .line 45
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorAutoPlaySellModePreferenceController;->mComplexCategory:Landroidx/preference/PreferenceCategory;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorAutoPlaySellModePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public isChecked()Z
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorAutoPlaySellModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "disallow_play_sellmode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/controller/ColorAutoPlaySellModePreferenceController;->configPlaySellMode()V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorAutoPlaySellModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    const-string v2, "disallow_play_sellmode"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v1
.end method
