.class public abstract Lcom/android/settings/datausage/DataUsageBaseFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "DataUsageBaseFragment.java"


# instance fields
.field protected final e:Lcom/android/settings/datausage/g$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 37
    new-instance v0, Lcom/android/settings/datausage/g$a;

    invoke-direct {v0}, Lcom/android/settings/datausage/g$a;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->e:Lcom/android/settings/datausage/g$a;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/net/NetworkPolicy;I)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->e:Lcom/android/settings/datausage/g$a;

    iget-object p1, p1, Lcom/android/settings/datausage/g$a;->f:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    move p1, v0

    goto :goto_0

    .line 1082
    :cond_0
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->e:Lcom/android/settings/datausage/g$a;

    iget-object p1, p1, Lcom/android/settings/datausage/g$a;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected final b(I)Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->e:Lcom/android/settings/datausage/g$a;

    iget-object v0, v0, Lcom/android/settings/datausage/g$a;->e:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final f()Z
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->e:Lcom/android/settings/datausage/g$a;

    iget-object v0, v0, Lcom/android/settings/datausage/g$a;->f:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    return v0
.end method

.method protected final g()Z
    .locals 3

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->e:Lcom/android/settings/datausage/g$a;

    iget-object v0, v0, Lcom/android/settings/datausage/g$a;->a:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "DataUsageBase"

    const-string v2, "problem talking with INetworkManagementService: "

    .line 89
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->e:Lcom/android/settings/datausage/g$a;

    const-string v1, "network_management"

    .line 46
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 45
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/datausage/g$a;->a:Landroid/os/INetworkManagementService;

    .line 47
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->e:Lcom/android/settings/datausage/g$a;

    const-string v1, "netstats"

    .line 48
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 47
    invoke-static {v1}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/datausage/g$a;->b:Landroid/net/INetworkStatsService;

    .line 49
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->e:Lcom/android/settings/datausage/g$a;

    const-string v1, "netpolicy"

    .line 50
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicyManager;

    iput-object v1, v0, Lcom/android/settings/datausage/g$a;->c:Landroid/net/NetworkPolicyManager;

    .line 52
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->e:Lcom/android/settings/datausage/g$a;

    new-instance v1, Lcom/android/settingslib/d;

    iget-object v2, v0, Lcom/android/settings/datausage/g$a;->c:Landroid/net/NetworkPolicyManager;

    invoke-direct {v1, v2}, Lcom/android/settingslib/d;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v1, v0, Lcom/android/settings/datausage/g$a;->g:Lcom/android/settingslib/d;

    .line 54
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->e:Lcom/android/settings/datausage/g$a;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/datausage/g$a;->d:Landroid/telephony/TelephonyManager;

    .line 55
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->e:Lcom/android/settings/datausage/g$a;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/datausage/g$a;->e:Landroid/telephony/SubscriptionManager;

    .line 56
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->e:Lcom/android/settings/datausage/g$a;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settings/datausage/g$a;->f:Landroid/os/UserManager;

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 61
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 62
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->e:Lcom/android/settings/datausage/g$a;

    iget-object v0, v0, Lcom/android/settings/datausage/g$a;->g:Lcom/android/settingslib/d;

    invoke-virtual {v0}, Lcom/android/settingslib/d;->a()V

    return-void
.end method
