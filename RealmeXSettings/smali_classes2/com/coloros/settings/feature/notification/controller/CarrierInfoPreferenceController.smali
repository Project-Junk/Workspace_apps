.class public Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;
.super Lcom/android/settings/core/a;
.source "CarrierInfoPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field private static final KEY_CARRIER_INFO_SHOW_SINGLE:Ljava/lang/String; = "carrier_info_settings_show_single"

.field private static final KEY_CARRIER_INFO_SHOW_TWO:Ljava/lang/String; = "carrier_info_settings_show_two"

.field private static final KEY_STATUSBAR_CATEGORY:Ljava/lang/String; = "statusbar_category"

.field private static final SIM_COUNT_0:I = 0x0

.field private static final SIM_COUNT_1:I = 0x1

.field private static final SIM_COUNT_2:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CarrierInfoPreferenceController"


# instance fields
.field private mCarrierInfoSinglePreference:Landroidx/preference/TwoStatePreference;

.field private mCarrierInfoTwoPreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private mCurrentSim:I

.field private mStatusBarCategory:Landroidx/preference/PreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "carrier_info_settings_show_single"

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 54
    iput p1, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mCurrentSim:I

    return-void
.end method

.method private getInsertedAndNotForbiddenSimCount()I
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mContext:Landroid/content/Context;

    .line 190
    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 191
    invoke-virtual {v0, v1}, Landroid/telephony/ColorOSTelephonyManager;->hasIccCardGemini(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/bd;->a(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 193
    iput v1, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mCurrentSim:I

    move v1, v3

    .line 195
    :cond_0
    invoke-virtual {v0, v3}, Landroid/telephony/ColorOSTelephonyManager;->hasIccCardGemini(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/coloros/settings/utils/bd;->a(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 197
    iput v3, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mCurrentSim:I

    :cond_1
    if-le v1, v3, :cond_2

    const/4 v0, -0x1

    .line 200
    iput v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mCurrentSim:I

    :cond_2
    return v1
.end method

.method private initCarrierFirst()V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "carrier_info_settings_show"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 172
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mContext:Landroid/content/Context;

    .line 173
    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 174
    invoke-virtual {v0, v1}, Landroid/telephony/ColorOSTelephonyManager;->hasIccCardGemini(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/coloros/settings/utils/bd;->a(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 175
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 179
    invoke-virtual {v0, v1}, Landroid/telephony/ColorOSTelephonyManager;->hasIccCardGemini(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/bd;->a(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method private isCarrierInfoEnabled()Z
    .locals 7

    .line 213
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/bb;->f(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/telephony/ColorOSTelephonyManager;->getSimStateGemini(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mContext:Landroid/content/Context;

    .line 215
    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telephony/ColorOSTelephonyManager;->getSimStateGemini(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    goto :goto_1

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/telephony/ColorOSTelephonyManager;->getSimStateGemini(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 219
    :goto_1
    iget-object v1, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/m;->a(Landroid/content/Context;)Z

    move-result v1

    xor-int/2addr v1, v2

    .line 220
    sget-object v4, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " hasSimReady="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " airplaneOff="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    return v2

    :cond_3
    return v3
.end method

.method private isDoubleDeviesAndCUVersion(Landroid/content/Context;)Z
    .locals 1

    .line 206
    invoke-static {p1}, Lcom/coloros/settings/utils/al;->E(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    invoke-static {p1}, Lcom/coloros/settings/utils/bb;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    invoke-static {p1}, Lcom/coloros/settings/utils/bb;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isShowCarrierInfo()Z
    .locals 4

    .line 153
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "carrier_info_settings_show"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mContext:Landroid/content/Context;

    .line 156
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v3
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 64
    sget-object v0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->TAG:Ljava/lang/String;

    const-string v1, "displayPreference"

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "statusbar_category"

    .line 66
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mStatusBarCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "carrier_info_settings_show_single"

    .line 67
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mCarrierInfoSinglePreference:Landroidx/preference/TwoStatePreference;

    .line 68
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mCarrierInfoSinglePreference:Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    const-string v0, "carrier_info_settings_show_two"

    .line 71
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mCarrierInfoTwoPreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 72
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mCarrierInfoTwoPreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz p1, :cond_1

    .line 73
    invoke-virtual {p1, p0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->updateCarrierInfoPreference()V

    :cond_2
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 226
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "carrier_info_settings_show_single"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 227
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 228
    iget-object p2, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "carrier_info_settings"

    invoke-static {p2, v0, p1}, Lcom/coloros/settings/utils/aj;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string p2, "carrier_info_settings_show"

    if-eqz p1, :cond_0

    .line 230
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mCurrentSim:I

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 233
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, -0x1

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 0

    .line 86
    invoke-virtual {p0}, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->updateCarrierInfoPreference()V

    return-void
.end method

.method public updateCarrierInfoPreference()V
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mCarrierInfoSinglePreference:Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mStatusBarCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mCarrierInfoTwoPreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v0, :cond_1

    .line 95
    iget-object v1, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mStatusBarCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void

    .line 99
    :cond_2
    invoke-direct {p0}, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->initCarrierFirst()V

    const/4 v0, 0x0

    .line 101
    iget-object v1, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/utils/bb;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 102
    invoke-direct {p0}, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->getInsertedAndNotForbiddenSimCount()I

    move-result v0

    :cond_3
    if-eqz v0, :cond_d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    goto/16 :goto_4

    .line 128
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mCarrierInfoTwoPreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v0, :cond_8

    .line 129
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->A(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 130
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mStatusBarCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mCarrierInfoTwoPreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 132
    :cond_5
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mStatusBarCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mCarrierInfoTwoPreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 133
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mCarrierInfoTwoPreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-direct {p0}, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->isCarrierInfoEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setEnabled(Z)V

    .line 134
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, -0x2

    const-string v3, "carrier_info_settings_show"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    goto :goto_0

    .line 139
    :cond_6
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mCarrierInfoTwoPreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120f7f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 137
    :cond_7
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mCarrierInfoTwoPreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v2, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/coloros/settings/utils/bb;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    .line 143
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mCarrierInfoSinglePreference:Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_f

    .line 144
    iget-object v1, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mStatusBarCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_4

    .line 114
    :cond_9
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mCarrierInfoSinglePreference:Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_c

    .line 115
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->isDoubleDeviesAndCUVersion(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->A(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_2

    .line 118
    :cond_a
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mStatusBarCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mCarrierInfoSinglePreference:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 119
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mCarrierInfoSinglePreference:Landroidx/preference/TwoStatePreference;

    invoke-direct {p0}, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->isCarrierInfoEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    .line 120
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mCarrierInfoSinglePreference:Landroidx/preference/TwoStatePreference;

    invoke-direct {p0}, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->isShowCarrierInfo()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    .line 116
    :cond_b
    :goto_2
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mStatusBarCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mCarrierInfoSinglePreference:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 123
    :cond_c
    :goto_3
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mCarrierInfoTwoPreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v0, :cond_f

    .line 124
    iget-object v1, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mStatusBarCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    .line 106
    :cond_d
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mCarrierInfoSinglePreference:Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_e

    .line 107
    iget-object v1, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mStatusBarCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 109
    :cond_e
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mCarrierInfoTwoPreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v0, :cond_f

    .line 110
    iget-object v1, p0, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->mStatusBarCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    :cond_f
    :goto_4
    return-void
.end method
