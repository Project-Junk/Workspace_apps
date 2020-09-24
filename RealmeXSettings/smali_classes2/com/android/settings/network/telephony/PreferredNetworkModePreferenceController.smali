.class public Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "PreferredNetworkModePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mIsGlobalCdma:Z

.field private mPersistableBundle:Landroid/os/PersistableBundle;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    const-class p2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    return-void
.end method

.method private getPreferredNetworkMode()I
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "preferred_network_mode"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getPreferredNetworkModeSummaryResId(I)I
    .locals 3

    const v0, 0x7f12107f    # 1.9415294E38f

    const v1, 0x7f121078

    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    const p1, 0x7f121080

    return p1

    :pswitch_1
    const p1, 0x7f121087

    return p1

    :pswitch_2
    const p1, 0x7f121082    # 1.94153E38f

    return p1

    :pswitch_3
    const p1, 0x7f121084

    return p1

    :pswitch_4
    const p1, 0x7f121089

    return p1

    :pswitch_5
    const p1, 0x7f121081

    return p1

    :pswitch_6
    const p1, 0x7f121088

    return p1

    :pswitch_7
    const p1, 0x7f121083

    return p1

    :pswitch_8
    const p1, 0x7f12108b

    return p1

    :pswitch_9
    const p1, 0x7f12108a

    return p1

    :pswitch_a
    const p1, 0x7f121085

    return p1

    :pswitch_b
    return v0

    .line 162
    :pswitch_c
    iget-object p1, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mIsGlobalCdma:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mSubId:I

    .line 164
    invoke-static {p1, v2}, Lcom/android/settings/network/telephony/d;->d(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    return v1

    :pswitch_d
    const p1, 0x7f12107e

    return p1

    :pswitch_e
    const p1, 0x7f12107b

    return p1

    :pswitch_f
    const p1, 0x7f121072

    return p1

    :pswitch_10
    const p1, 0x7f121077

    return p1

    :pswitch_11
    const p1, 0x7f121074

    return p1

    .line 135
    :pswitch_12
    iget-object p1, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const p1, 0x7f121073

    return p1

    :cond_2
    const p1, 0x7f121075

    return p1

    :pswitch_13
    const p1, 0x7f12107a

    return p1

    :pswitch_14
    const p1, 0x7f12108d

    return p1

    :pswitch_15
    const p1, 0x7f121079

    return p1

    :pswitch_16
    const p1, 0x7f12108e

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getAvailabilityStatus(I)I
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mContext:Landroid/content/Context;

    .line 54
    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq p1, v3, :cond_1

    if-eqz v0, :cond_1

    const-string p1, "hide_carrier_network_settings_bool"

    .line 60
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "hide_preferred_network_type_bool"

    .line 63
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result p1

    if-nez p1, :cond_0

    .line 66
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "world_phone_bool"

    .line 69
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    if-eqz p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x2

    return p1
.end method

.method public init(I)V
    .locals 3

    .line 102
    iput p1, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mSubId:I

    .line 103
    iget-object p1, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget v0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 104
    iget-object v0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 106
    iget-object v0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 107
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "show_cdma_choices_bool"

    .line 109
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mIsGlobalCdma:Z

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 89
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 91
    iget-object p2, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mSubId:I

    invoke-virtual {p2, v0, p1}, Landroid/telephony/TelephonyManager;->setPreferredNetworkType(II)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 92
    iget-object p2, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "preferred_network_mode"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 81
    check-cast p1, Landroidx/preference/ListPreference;

    .line 82
    invoke-direct {p0}, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->getPreferredNetworkMode()I

    move-result v0

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 84
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->getPreferredNetworkModeSummaryResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(I)V

    return-void
.end method
