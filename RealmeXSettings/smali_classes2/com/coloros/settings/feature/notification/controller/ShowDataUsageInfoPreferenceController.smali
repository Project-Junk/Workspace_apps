.class public Lcom/coloros/settings/feature/notification/controller/ShowDataUsageInfoPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "ShowDataUsageInfoPreferenceController.java"


# static fields
.field private static final KEY_SHOW_DATA_USAGE_INFO:Ljava/lang/String; = "show_data_usage_info"


# instance fields
.field private mShowDataUsageInfoPref:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "show_data_usage_info"

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getInsertedSimCount()I
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/ShowDataUsageInfoPreferenceController;->mContext:Landroid/content/Context;

    .line 101
    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 102
    invoke-virtual {v0, v1}, Landroid/telephony/ColorOSTelephonyManager;->hasIccCardGemini(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v1, v3

    .line 105
    :cond_0
    invoke-virtual {v0, v3}, Landroid/telephony/ColorOSTelephonyManager;->hasIccCardGemini(I)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    return v1
.end method

.method private isDataUsageInfoToggle()Z
    .locals 3

    const/4 v0, 0x0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/notification/controller/ShowDataUsageInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oppo_disaplay_calculate_data_traffic"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return v2

    :catch_0
    :cond_0
    return v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 42
    invoke-virtual {p0}, Lcom/coloros/settings/feature/notification/controller/ShowDataUsageInfoPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "show_data_usage_info"

    .line 43
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/notification/controller/ShowDataUsageInfoPreferenceController;->mShowDataUsageInfoPref:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 44
    invoke-virtual {p0}, Lcom/coloros/settings/feature/notification/controller/ShowDataUsageInfoPreferenceController;->updateDataUsageInfoSummary()V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/ShowDataUsageInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/coloros/settings/feature/notification/controller/ShowDataUsageInfoPreferenceController;->isDataUsageInfoToggle()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/ShowDataUsageInfoPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "show_data_usage_info"

    invoke-static {v0, v1, p1}, Lcom/coloros/settings/utils/aj;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 56
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/ShowDataUsageInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oppo_disaplay_calculate_data_traffic"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p1, 0x1

    return p1
.end method

.method public updateDataUsageInfoSummary()V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/ShowDataUsageInfoPreferenceController;->mShowDataUsageInfoPref:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/ShowDataUsageInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/bb;->f(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 88
    invoke-direct {p0}, Lcom/coloros/settings/feature/notification/controller/ShowDataUsageInfoPreferenceController;->getInsertedSimCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    move v1, v2

    :cond_1
    if-nez v1, :cond_2

    .line 92
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/ShowDataUsageInfoPreferenceController;->mShowDataUsageInfoPref:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/ShowDataUsageInfoPreferenceController;->mShowDataUsageInfoPref:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/notification/controller/ShowDataUsageInfoPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f121711

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
