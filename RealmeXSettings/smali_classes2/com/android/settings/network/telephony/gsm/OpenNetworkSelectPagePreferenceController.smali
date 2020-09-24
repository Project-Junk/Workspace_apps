.class public Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "OpenNetworkSelectPagePreferenceController.java"

# interfaces
.implements Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$a;


# instance fields
.field private mPreference:Landroidx/preference/Preference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 p1, -0x1

    .line 51
    iput p1, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mSubId:I

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settings/network/telephony/d;->e(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120e23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 86
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 88
    iget v0, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mSubId:I

    const-string v1, "android.provider.extra.SUB_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    new-instance v0, Lcom/android/settings/core/f;

    iget-object v1, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/network/telephony/NetworkSelectSettings;

    .line 90
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v0

    const/16 v1, 0x62d

    .line 91
    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f1204eb

    .line 1063
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object v0

    .line 93
    invoke-virtual {v0, p1}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    .line 94
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public init(I)Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;
    .locals 1

    .line 102
    iput p1, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mSubId:I

    .line 103
    iget-object p1, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public onNetworkSelectModeChanged()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 70
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkSelectionMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
