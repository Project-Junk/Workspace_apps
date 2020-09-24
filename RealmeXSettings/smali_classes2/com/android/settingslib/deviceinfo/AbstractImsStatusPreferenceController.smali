.class public abstract Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;
.super Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;
.source "AbstractImsStatusPreferenceController.java"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    const-string v2, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    const-string v3, "android.net.wifi.STATE_CHANGE"

    .line 44
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a()[Ljava/lang/String;
    .locals 1

    .line 84
    sget-object v0, Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;->a:[Ljava/lang/String;

    return-object v0
.end method

.method protected final b()V
    .locals 3

    .line 89
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 90
    iget-object v1, p0, Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;->b:Landroidx/preference/Preference;

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 92
    iget-object v2, p0, Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;->b:Landroidx/preference/Preference;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->isImsRegistered(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settingslib/e$h;->ims_reg_status_registered:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settingslib/e$h;->ims_reg_status_not_registered:I

    :goto_0
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_1
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "ims_reg_state"

    .line 78
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;->b:Landroidx/preference/Preference;

    .line 79
    invoke-virtual {p0}, Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;->b()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "ims_reg_state"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 61
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "show_ims_registration_status_bool"

    .line 66
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
