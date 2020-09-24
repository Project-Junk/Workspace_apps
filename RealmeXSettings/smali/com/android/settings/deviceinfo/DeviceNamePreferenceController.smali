.class public Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;
.super Lcom/android/settings/core/a;
.source "DeviceNamePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/widget/ValidatedEditTextPreference$b;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/b;
.implements Lcom/android/settingslib/core/lifecycle/a/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/DeviceNamePreferenceController$a;
    }
.end annotation


# static fields
.field private static final KEY_PENDING_DEVICE_NAME:Ljava/lang/String; = "key_pending_device_name"

.field public static final SECURE_SETTINGS_DEVICE_NAME:Ljava/lang/String; = "oppo_device_name"


# instance fields
.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mDeviceName:Ljava/lang/String;

.field private mHost:Lcom/android/settings/deviceinfo/DeviceNamePreferenceController$a;

.field protected mPendingDeviceName:Ljava/lang/String;

.field protected mPreference:Landroidx/preference/EditTextPreference;

.field private final mWifiDeviceNameTextValidator:Lcom/android/settings/wifi/tether/b;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo p2, "wifi"

    .line 66
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 67
    new-instance p1, Lcom/android/settings/wifi/tether/b;

    invoke-direct {p1}, Lcom/android/settings/wifi/tether/b;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mWifiDeviceNameTextValidator:Lcom/android/settings/wifi/tether/b;

    .line 68
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 70
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->initializeDeviceName()V

    return-void
.end method

.method private static final getFilteredBluetoothString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 201
    new-instance v0, Lcom/android/settings/bluetooth/f;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/f;-><init>()V

    .line 202
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Landroid/text/SpannedString;

    const-string v1, ""

    invoke-direct {v4, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 201
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/bluetooth/f;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    .line 209
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initializeDeviceName()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oppo_device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mDeviceName:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mDeviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ro.oppo.market.name"

    const-string v1, ""

    .line 106
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mDeviceName:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mDeviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->putOppoDeviceName(Ljava/lang/String;)V

    return-void

    .line 110
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mDeviceName:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private setBluetoothDeviceName(Ljava/lang/String;)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 192
    invoke-static {p1}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->getFilteredBluetoothString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private setSettingsGlobalDeviceName(Ljava/lang/String;)V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 184
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/m;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ext_device_name"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private setTetherSsidName(Ljava/lang/String;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 214
    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 216
    iget-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    return-void
.end method


# virtual methods
.method protected displayDevicePreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/EditTextPreference;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPreference:Landroidx/preference/EditTextPreference;

    .line 82
    iget-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPreference:Landroidx/preference/EditTextPreference;

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    .line 84
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPreference:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPreference:Landroidx/preference/EditTextPreference;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPreference:Landroidx/preference/EditTextPreference;

    instance-of v0, p1, Lcom/android/settings/widget/ValidatedEditTextPreference;

    if-eqz v0, :cond_0

    .line 88
    check-cast p1, Lcom/android/settings/widget/ValidatedEditTextPreference;

    .line 1115
    iput-object p0, p1, Lcom/android/settings/widget/ValidatedEditTextPreference;->a:Lcom/android/settings/widget/ValidatedEditTextPreference$b;

    :cond_0
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->displayDevicePreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public isTextValid(Ljava/lang/String;)Z
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mWifiDeviceNameTextValidator:Lcom/android/settings/wifi/tether/b;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/tether/b;->isTextValid(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "key_pending_device_name"

    .line 222
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPendingDeviceName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 129
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPendingDeviceName:Ljava/lang/String;

    .line 130
    iget-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mHost:Lcom/android/settings/deviceinfo/DeviceNamePreferenceController$a;

    if-eqz p1, :cond_0

    .line 131
    invoke-interface {p1}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController$a;->b()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPendingDeviceName:Ljava/lang/String;

    const-string v1, "key_pending_device_name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putOppoDeviceName(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oppo_device_name"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/m;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ext_device_name"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method protected setDeviceName(Ljava/lang/String;)V
    .locals 1

    .line 160
    iput-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mDeviceName:Ljava/lang/String;

    .line 162
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->putOppoDeviceName(Ljava/lang/String;)V

    .line 163
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->setBluetoothDeviceName(Ljava/lang/String;)V

    .line 164
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->setTetherSsidName(Ljava/lang/String;)V

    .line 165
    iget-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPreference:Landroidx/preference/EditTextPreference;

    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 167
    iget-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPreference:Landroidx/preference/EditTextPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setHost(Lcom/android/settings/deviceinfo/DeviceNamePreferenceController$a;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mHost:Lcom/android/settings/deviceinfo/DeviceNamePreferenceController$a;

    return-void
.end method

.method public updateDeviceName(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPendingDeviceName:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->setDeviceName(Ljava/lang/String;)V

    return-void

    .line 147
    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPreference:Landroidx/preference/EditTextPreference;

    if-eqz p1, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
