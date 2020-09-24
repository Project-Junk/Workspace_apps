.class public Lcom/coloros/settings/feature/notification/controller/RealmePowerLevelPreferenceController;
.super Lcom/android/settings/core/a;
.source "RealmePowerLevelPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/a/b;


# static fields
.field public static final ATION_BATTERY_CHANGE:Ljava/lang/String; = "com.android.settings.power_percent_display"

.field public static final DEFAULT_REALME_SHOW_POWER_LEVEL:I = 0x1

.field public static final KEY_REALME_SHOW_POWER_LEVEL:Ljava/lang/String; = "show_realme_power_level"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mListPreference:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "show_realme_power_level"

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/notification/controller/RealmePowerLevelPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private getSelectedValueIndex(Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    .line 88
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/feature/notification/controller/RealmePowerLevelPreferenceController;->mListPreference:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    invoke-virtual {v1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/coloros/settings/feature/notification/controller/RealmePowerLevelPreferenceController;->mListPreference:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    invoke-virtual {v1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/controller/RealmePowerLevelPreferenceController;->mListPreference:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    invoke-virtual {p1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p1

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 49
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/RealmePowerLevelPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "display_power_percent"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 51
    invoke-virtual {p0}, Lcom/coloros/settings/feature/notification/controller/RealmePowerLevelPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/notification/controller/RealmePowerLevelPreferenceController;->mListPreference:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    .line 52
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/controller/RealmePowerLevelPreferenceController;->mListPreference:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    invoke-virtual {p1, p0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 53
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/controller/RealmePowerLevelPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f030019

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/notification/controller/RealmePowerLevelPreferenceController;->getSelectedValueIndex(Ljava/lang/Object;)I

    move-result v1

    .line 55
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 56
    iget-object v2, p0, Lcom/coloros/settings/feature/notification/controller/RealmePowerLevelPreferenceController;->mListPreference:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 57
    iget-object v2, p0, Lcom/coloros/settings/feature/notification/controller/RealmePowerLevelPreferenceController;->mListPreference:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setValue(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/RealmePowerLevelPreferenceController;->mListPreference:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 59
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/controller/RealmePowerLevelPreferenceController;->mListPreference:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    invoke-virtual {p1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->a()V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 40
    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 66
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 67
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/RealmePowerLevelPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_power_percent"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 69
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.settings.power_percent_display"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/RealmePowerLevelPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 71
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/controller/RealmePowerLevelPreferenceController;->mListPreference:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setValue(Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/controller/RealmePowerLevelPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030019

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-direct {p0, p2}, Lcom/coloros/settings/feature/notification/controller/RealmePowerLevelPreferenceController;->getSelectedValueIndex(Ljava/lang/Object;)I

    move-result p2

    .line 75
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/RealmePowerLevelPreferenceController;->mListPreference:Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    aget-object p1, p1, p2

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
