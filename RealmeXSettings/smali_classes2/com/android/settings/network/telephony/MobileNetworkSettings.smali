.class public Lcom/android/settings/network/telephony/MobileNetworkSettings;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "MobileNetworkSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Landroid/telephony/TelephonyManager;

.field private b:I

.field private c:Lcom/android/settings/network/telephony/cdma/CdmaSystemSelectPreferenceController;

.field private d:Lcom/android/settings/network/telephony/cdma/CdmaSubscriptionPreferenceController;

.field private e:Landroid/os/UserManager;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 272
    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkSettings$1;

    invoke-direct {v0}, Lcom/android/settings/network/telephony/MobileNetworkSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_mobile_networks"

    .line 84
    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 75
    iput v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->b:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "NetworkSettings"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 121
    invoke-static {p1}, Lcom/android/settings/network/telephony/d;->d(Landroid/content/Context;)I

    move-result p1

    const-string v1, "android.provider.extra.SUB_ID"

    .line 120
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->b:I

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "settings_network_and_internet_v2"

    invoke-static {p1, v0}, Lcom/android/settings/development/featureflags/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->b:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    .line 125
    new-array p1, p1, [Lcom/android/settingslib/core/a;

    new-instance v1, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->b:I

    invoke-direct {v1, v2, v3, p0, v4}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;-><init>(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/preference/PreferenceFragmentCompat;I)V

    aput-object v1, p1, v0

    .line 125
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 129
    :cond_0
    new-array p1, v0, [Lcom/android/settingslib/core/a;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x623

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 2

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "settings_network_and_internet_v2"

    invoke-static {v0, v1}, Lcom/android/settings/development/featureflags/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1500be

    return v0

    :cond_0
    const v0, 0x7f1500bd

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p3, 0x11

    if-eq p1, p3, :cond_1

    const/16 p2, 0x12

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 237
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_2

    .line 238
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->f:Ljava/lang/String;

    .line 228
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 230
    invoke-virtual {p1}, Landroidx/preference/Preference;->performClick()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 134
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "settings_network_and_internet_v2"

    invoke-static {p1, v0}, Lcom/android/settings/development/featureflags/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 137
    const-class p1, Lcom/android/settings/network/telephony/CallsDefaultSubscriptionController;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/CallsDefaultSubscriptionController;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/network/telephony/CallsDefaultSubscriptionController;->init(Landroidx/lifecycle/Lifecycle;)V

    .line 138
    const-class p1, Lcom/android/settings/network/telephony/SmsDefaultSubscriptionController;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/SmsDefaultSubscriptionController;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/network/telephony/SmsDefaultSubscriptionController;->init(Landroidx/lifecycle/Lifecycle;)V

    .line 139
    const-class p1, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->b:I

    invoke-virtual {p1, v1, v2}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->init(Landroidx/lifecycle/Lifecycle;I)V

    .line 140
    const-class p1, Lcom/android/settings/network/telephony/CarrierSettingsVersionPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/CarrierSettingsVersionPreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->b:I

    invoke-virtual {p1, v1}, Lcom/android/settings/network/telephony/CarrierSettingsVersionPreferenceController;->init(I)V

    .line 141
    const-class p1, Lcom/android/settings/datausage/BillingCyclePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/BillingCyclePreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->b:I

    invoke-virtual {p1, v1}, Lcom/android/settings/datausage/BillingCyclePreferenceController;->init(I)V

    .line 142
    const-class p1, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->b:I

    invoke-virtual {p1, v1}, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->init(I)V

    .line 143
    const-class p1, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->b:I

    invoke-virtual {p1, v1, v2}, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->init(Landroidx/lifecycle/Lifecycle;I)V

    .line 144
    const-class p1, Lcom/android/settings/network/telephony/DisabledSubscriptionController;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/DisabledSubscriptionController;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->b:I

    invoke-virtual {p1, v1, v2}, Lcom/android/settings/network/telephony/DisabledSubscriptionController;->init(Landroidx/lifecycle/Lifecycle;I)V

    .line 145
    const-class p1, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->b:I

    const/16 v2, 0x12

    invoke-virtual {p1, v1, p0, v2}, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->init(ILandroidx/fragment/app/Fragment;I)V

    .line 147
    const-class p1, Lcom/android/settings/network/telephony/DisableSimFooterPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/DisableSimFooterPreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->b:I

    invoke-virtual {p1, v1}, Lcom/android/settings/network/telephony/DisableSimFooterPreferenceController;->init(I)V

    .line 149
    :cond_0
    const-class p1, Lcom/android/settings/network/telephony/MobileDataPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/MobileDataPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->b:I

    invoke-virtual {p1, v1, v2}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->init(Landroidx/fragment/app/FragmentManager;I)V

    .line 150
    const-class p1, Lcom/android/settings/network/telephony/RoamingPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/RoamingPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->b:I

    invoke-virtual {p1, v1, v2}, Lcom/android/settings/network/telephony/RoamingPreferenceController;->init(Landroidx/fragment/app/FragmentManager;I)V

    .line 151
    const-class p1, Lcom/android/settings/network/telephony/ApnPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/ApnPreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->b:I

    invoke-virtual {p1, v1}, Lcom/android/settings/network/telephony/ApnPreferenceController;->init(I)V

    .line 152
    const-class p1, Lcom/android/settings/network/telephony/CarrierPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/CarrierPreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->b:I

    invoke-virtual {p1, v1}, Lcom/android/settings/network/telephony/CarrierPreferenceController;->init(I)V

    .line 153
    const-class p1, Lcom/android/settings/network/telephony/DataUsagePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/DataUsagePreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->b:I

    invoke-virtual {p1, v1}, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->init(I)V

    .line 154
    const-class p1, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->b:I

    invoke-virtual {p1, v1}, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->init(I)V

    .line 155
    const-class p1, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->b:I

    invoke-virtual {p1, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->init(I)V

    .line 156
    const-class p1, Lcom/android/settings/network/telephony/DataServiceSetupPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/DataServiceSetupPreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->b:I

    invoke-virtual {p1, v1}, Lcom/android/settings/network/telephony/DataServiceSetupPreferenceController;->init(I)V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/settings/development/featureflags/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 158
    const-class p1, Lcom/android/settings/network/telephony/EuiccPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/EuiccPreferenceController;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->b:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/EuiccPreferenceController;->init(I)V

    .line 160
    :cond_1
    const-class p1, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->b:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->init(I)V

    .line 162
    const-class p1, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->b:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->init(I)Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;

    move-result-object p1

    .line 164
    const-class v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    .line 165
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->b:I

    .line 166
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->init(I)Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    move-result-object v0

    .line 167
    invoke-virtual {v0, p1}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->addListener(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$a;)Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    move-result-object p1

    .line 168
    const-class v0, Lcom/android/settings/widget/PreferenceCategoryController;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/PreferenceCategoryController;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/settingslib/core/a;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 169
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 168
    invoke-virtual {v0, p1}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    .line 171
    const-class p1, Lcom/android/settings/network/telephony/cdma/CdmaSystemSelectPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/cdma/CdmaSystemSelectPreferenceController;

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->c:Lcom/android/settings/network/telephony/cdma/CdmaSystemSelectPreferenceController;

    .line 172
    iget-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->c:Lcom/android/settings/network/telephony/cdma/CdmaSystemSelectPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/network/telephony/cdma/CdmaSystemSelectPreferenceController;->init(Landroidx/preference/PreferenceManager;I)V

    .line 173
    const-class p1, Lcom/android/settings/network/telephony/cdma/CdmaSubscriptionPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/cdma/CdmaSubscriptionPreferenceController;

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->d:Lcom/android/settings/network/telephony/cdma/CdmaSubscriptionPreferenceController;

    .line 174
    iget-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->d:Lcom/android/settings/network/telephony/cdma/CdmaSubscriptionPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/network/telephony/cdma/CdmaSubscriptionPreferenceController;->init(Landroidx/preference/PreferenceManager;I)V

    .line 176
    const-class p1, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->b:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->init(I)Lcom/android/settings/network/telephony/VideoCallingPreferenceController;

    move-result-object p1

    .line 178
    const-class v0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->b:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->init(I)Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;

    move-result-object v0

    .line 179
    invoke-virtual {v0, p1}, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->addListener(Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$a;)Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "NetworkSettings"

    const-string v1, "onCreate:+"

    .line 184
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "user"

    .line 188
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->e:Landroid/os/UserManager;

    .line 189
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->b:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->a:Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_0

    const-string v0, "key_clicked_pref"

    .line 1197
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->f:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "settings_network_and_internet_v2"

    invoke-static {v0, v1}, Lcom/android/settings/development/featureflags/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const v0, 0x7f0a0238

    const v1, 0x7f120db5

    const/4 v2, 0x0

    .line 251
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "com.android.internal.R.drawable.ic_mode_edit"

    .line 253
    invoke-static {v1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    const/4 v1, 0x2

    .line 254
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 256
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "settings_network_and_internet_v2"

    invoke-static {v0, v1}, Lcom/android/settings/development/featureflags/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 263
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0238

    if-ne v0, v1, :cond_0

    .line 264
    iget p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->b:I

    invoke-static {p1}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->a(I)Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;

    move-result-object p1

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "RenameMobileNetwork"

    .line 264
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 269
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 99
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 102
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cdma_system_select_key"

    .line 104
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "cdma_subscription_key"

    .line 105
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 106
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getEmergencyCallbackMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    new-instance v0, Landroid/content/Intent;

    const/4 v2, 0x0

    const-string v3, "com.android.internal.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v2, 0x11

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 110
    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->f:Ljava/lang/String;

    :cond_3
    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 217
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 218
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->f:Ljava/lang/String;

    const-string v1, "key_clicked_pref"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
