.class public Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;
.super Lcom/android/settings/core/a;
.source "ZenAccessController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZenAccessController"


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->mContext:Landroid/content/Context;

    const-string p2, "activity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->mActivityManager:Landroid/app/ActivityManager;

    return-void
.end method

.method public static deleteRules(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 103
    new-instance v0, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$ZenAccessController$RigMC-IE703bIgmHSWZp7i5jhKc;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$ZenAccessController$RigMC-IE703bIgmHSWZp7i5jhKc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getAutoApprovedPackages(Landroid/content/Context;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 84
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 85
    invoke-virtual {p0}, Landroid/app/NotificationManager;->getEnabledNotificationListenerPackages()Ljava/util/List;

    move-result-object p0

    .line 84
    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static getPackagesRequestingNotificationPolicyAccess()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    :try_start_0
    const-string v1, "android.permission.ACCESS_NOTIFICATION_POLICY"

    .line 64
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 69
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 68
    invoke-interface {v2, v1, v3, v4}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 72
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 73
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ZenAccessController"

    const-string v3, "Cannot reach packagemanager"

    .line 77
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v0
.end method

.method public static hasAccess(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 90
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 91
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSupported(Landroid/app/ActivityManager;)Z
    .locals 0

    .line 58
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$deleteRules$1(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 104
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 105
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->removeAutomaticZenRules(Ljava/lang/String;)Z

    return-void
.end method

.method static synthetic lambda$setAccess$0(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    .line 97
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 98
    invoke-virtual {p0, p1, p2}, Landroid/app/NotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    return-void
.end method

.method static logSpecialPermissionChange(ZLjava/lang/String;Landroid/content/Context;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-eqz p0, :cond_0

    const/16 p0, 0x300

    goto :goto_0

    :cond_0
    const/16 p0, 0x301

    .line 113
    :goto_0
    invoke-static {p2}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v0

    invoke-virtual {v0, p2, p0, p1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static setAccess(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    .line 95
    invoke-static {p2, p1, p0}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->logSpecialPermissionChange(ZLjava/lang/String;Landroid/content/Context;)V

    .line 96
    new-instance v0, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$ZenAccessController$c33Kqh_fkLlRsd7SIUCcy8iTqe0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$ZenAccessController$c33Kqh_fkLlRsd7SIUCcy8iTqe0;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->mActivityManager:Landroid/app/ActivityManager;

    invoke-static {v0}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->isSupported(Landroid/app/ActivityManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method