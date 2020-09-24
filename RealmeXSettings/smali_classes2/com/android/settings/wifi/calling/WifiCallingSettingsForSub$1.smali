.class final Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;
.super Landroid/telephony/PhoneStateListener;
.source "WifiCallingSettingsForSub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;->a:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 6

    .line 113
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;->a:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-virtual {p1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 114
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;->a:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-static {p2}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->a(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)Lcom/android/ims/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/ims/e;->b()Z

    move-result p2

    .line 115
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;->a:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-static {v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->b(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    .line 1220
    iget-object v0, v0, Lcom/android/settings/widget/SwitchBar;->a:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 117
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;->a:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    .line 118
    invoke-static {v3}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->c(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 119
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;->a:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-static {v4}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->b(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    move p2, v1

    goto :goto_2

    :cond_2
    move p2, v2

    :goto_2
    invoke-virtual {v4, p2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    const-string p2, "carrier_config"

    .line 125
    invoke-virtual {p1, p2}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    if-eqz p1, :cond_3

    .line 127
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;->a:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    .line 128
    invoke-static {p2}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->d(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p2, "editable_wfc_mode_bool"

    .line 130
    invoke-virtual {p1, p2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    const-string v4, "editable_wfc_roaming_mode_bool"

    .line 132
    invoke-virtual {p1, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_3

    :cond_3
    move p2, v1

    move p1, v2

    .line 137
    :goto_3
    iget-object v4, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;->a:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-virtual {v4}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "wifi_calling_mode"

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_5

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    if-eqz v3, :cond_4

    move p2, v1

    goto :goto_4

    :cond_4
    move p2, v2

    .line 139
    :goto_4
    invoke-virtual {v4, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 142
    :cond_5
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;->a:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    .line 143
    invoke-virtual {p2}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    const-string v4, "wifi_calling_roaming_mode"

    invoke-virtual {p2, v4}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_7

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    move v1, v2

    .line 145
    :goto_5
    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_7
    return-void
.end method
