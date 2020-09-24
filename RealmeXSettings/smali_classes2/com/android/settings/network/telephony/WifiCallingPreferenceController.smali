.class public Lcom/android/settings/network/telephony/WifiCallingPreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "WifiCallingPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/WifiCallingPreferenceController$a;
    }
.end annotation


# static fields
.field static final KEY_PREFERENCE_CATEGORY:Ljava/lang/String; = "calling_category"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mEditableWfcRoamingMode:Z

.field mImsManager:Lcom/android/ims/e;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mPhoneStateListener:Lcom/android/settings/network/telephony/WifiCallingPreferenceController$a;

.field private mPreference:Landroidx/preference/Preference;

.field mSimCallManager:Landroid/telecom/PhoneAccountHandle;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUseWfcHomeModeForRoaming:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    const-class p2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/CarrierConfigManager;

    iput-object p2, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 71
    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 72
    new-instance p1, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$a;-><init>(Lcom/android/settings/network/telephony/WifiCallingPreferenceController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mPhoneStateListener:Lcom/android/settings/network/telephony/WifiCallingPreferenceController$a;

    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mEditableWfcRoamingMode:Z

    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mUseWfcHomeModeForRoaming:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/telephony/WifiCallingPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/network/telephony/WifiCallingPreferenceController;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 97
    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 99
    iget-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget v1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mSubId:I

    const-string v2, "android.provider.extra.SUB_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "calling_category"

    .line 105
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mContext:Landroid/content/Context;

    .line 80
    invoke-static {v0, p1}, Lcom/android/settings/network/telephony/d;->a(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x3

    return p1
.end method

.method public init(I)V
    .locals 1

    .line 157
    iput p1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mSubId:I

    .line 158
    iget-object p1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 159
    iget-object p1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/ims/e;->a(Landroid/content/Context;I)Lcom/android/ims/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mImsManager:Lcom/android/ims/e;

    .line 160
    iget-object p1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    iget v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mSubId:I

    .line 161
    invoke-virtual {p1, v0}, Landroid/telecom/TelecomManager;->getSimCallManagerForSubscription(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mSimCallManager:Landroid/telecom/PhoneAccountHandle;

    .line 162
    iget-object p1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    if-eqz p1, :cond_0

    .line 163
    iget v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "editable_wfc_roaming_mode_bool"

    .line 165
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mEditableWfcRoamingMode:Z

    const-string v0, "use_wfc_home_network_mode_in_roaming_network_bool"

    .line 167
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mUseWfcHomeModeForRoaming:Z

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mPhoneStateListener:Lcom/android/settings/network/telephony/WifiCallingPreferenceController$a;

    iget v1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$a;->a(I)V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mPhoneStateListener:Lcom/android/settings/network/telephony/WifiCallingPreferenceController$a;

    .line 1191
    iget-object v1, v0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$a;->a:Lcom/android/settings/network/telephony/WifiCallingPreferenceController;

    invoke-static {v1}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->access$100(Lcom/android/settings/network/telephony/WifiCallingPreferenceController;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 6

    .line 114
    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mSimCallManager:Landroid/telecom/PhoneAccountHandle;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mSimCallManager:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v0, v3}, Lcom/android/settings/network/telephony/d;->a(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 122
    :cond_0
    iget-object v3, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 123
    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 124
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v4, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    .line 125
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mSubId:I

    invoke-static {v0, v3}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f121942

    .line 129
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "com.android.internal.R.string.wifi_calling_off_summary"

    .line 131
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 132
    iget-object v3, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mImsManager:Lcom/android/ims/e;

    invoke-virtual {v3}, Lcom/android/ims/e;->j()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 133
    iget-boolean v3, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mEditableWfcRoamingMode:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mUseWfcHomeModeForRoaming:Z

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    .line 134
    :goto_0
    iget-object v4, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    .line 135
    iget-object v5, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mImsManager:Lcom/android/ims/e;

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    invoke-virtual {v5, v3}, Lcom/android/ims/e;->c(Z)I

    move-result v3

    if-eqz v3, :cond_6

    if-eq v3, v1, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "com.android.internal.R.string.wfc_mode_wifi_preferred_summary"

    .line 144
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_5
    const-string v0, "com.android.internal.R.string.wfc_mode_cellular_preferred_summary"

    .line 141
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_6
    const-string v0, "com.android.internal.R.string.wfc_mode_wifi_only_summary"

    .line 138
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 150
    :cond_7
    :goto_2
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 152
    :goto_3
    iget-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mSubId:I

    .line 153
    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    .line 152
    :goto_4
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
