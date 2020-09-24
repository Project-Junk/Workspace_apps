.class public Lcom/android/settings/datausage/BillingCyclePreferenceController;
.super Lcom/android/settings/core/a;
.source "BillingCyclePreferenceController.java"


# instance fields
.field private mSubscriptionId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCyclePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/BillingCyclePreference;

    .line 50
    new-instance v0, Lcom/android/settings/datausage/g$a;

    invoke-direct {v0}, Lcom/android/settings/datausage/g$a;-><init>()V

    const-string v1, "network_management"

    .line 52
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 51
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/datausage/g$a;->a:Landroid/os/INetworkManagementService;

    const-string v1, "netstats"

    .line 54
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 53
    invoke-static {v1}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/datausage/g$a;->b:Landroid/net/INetworkStatsService;

    .line 55
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCyclePreferenceController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicyManager;

    iput-object v1, v0, Lcom/android/settings/datausage/g$a;->c:Landroid/net/NetworkPolicyManager;

    .line 56
    new-instance v1, Lcom/android/settingslib/d;

    iget-object v2, v0, Lcom/android/settings/datausage/g$a;->c:Landroid/net/NetworkPolicyManager;

    invoke-direct {v1, v2}, Lcom/android/settingslib/d;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v1, v0, Lcom/android/settings/datausage/g$a;->g:Lcom/android/settingslib/d;

    .line 57
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCyclePreferenceController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, v0, Lcom/android/settings/datausage/g$a;->d:Landroid/telephony/TelephonyManager;

    .line 58
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCyclePreferenceController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    iput-object v1, v0, Lcom/android/settings/datausage/g$a;->e:Landroid/telephony/SubscriptionManager;

    .line 59
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCyclePreferenceController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, v0, Lcom/android/settings/datausage/g$a;->f:Landroid/os/UserManager;

    .line 61
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCyclePreferenceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/datausage/BillingCyclePreferenceController;->mSubscriptionId:I

    invoke-static {v1, v2}, Lcom/android/settings/datausage/f;->b(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 63
    iget v2, p0, Lcom/android/settings/datausage/BillingCyclePreferenceController;->mSubscriptionId:I

    invoke-virtual {p1, v1, v2, v0}, Lcom/android/settings/datausage/BillingCyclePreference;->a(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/g$a;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public init(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/android/settings/datausage/BillingCyclePreferenceController;->mSubscriptionId:I

    return-void
.end method
