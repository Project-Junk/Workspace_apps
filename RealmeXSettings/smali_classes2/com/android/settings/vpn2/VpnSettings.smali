.class public Lcom/android/settings/vpn2/VpnSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "VpnSettings.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn2/VpnSettings$a;
    }
.end annotation


# static fields
.field private static final f:Landroid/net/NetworkRequest;


# instance fields
.field d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/settings/vpn2/b;",
            "Lcom/android/settings/vpn2/AppPreference;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/android/settings/widget/GearPreference$a;

.field private final g:Landroid/net/IConnectivityManager;

.field private h:Landroid/net/ConnectivityManager;

.field private i:Landroid/os/UserManager;

.field private final j:Landroid/security/KeyStore;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/vpn2/LegacyVpnPreference;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private m:Landroid/os/HandlerThread;

.field private n:Lcom/android/internal/net/LegacyVpnInfo;

.field private o:Z

.field private p:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 88
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xf

    .line 89
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xd

    .line 90
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xe

    .line 91
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sput-object v0, Lcom/android/settings/vpn2/VpnSettings;->f:Landroid/net/NetworkRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_vpn"

    .line 112
    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    const-string v0, "connectivity"

    .line 95
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->g:Landroid/net/IConnectivityManager;

    .line 99
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->j:Landroid/security/KeyStore;

    .line 101
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->k:Ljava/util/Map;

    .line 102
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->d:Ljava/util/Map;

    .line 409
    new-instance v0, Lcom/android/settings/vpn2/VpnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/vpn2/VpnSettings$1;-><init>(Lcom/android/settings/vpn2/VpnSettings;)V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->e:Lcom/android/settings/widget/GearPreference$a;

    .line 423
    new-instance v0, Lcom/android/settings/vpn2/VpnSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/vpn2/VpnSettings$2;-><init>(Lcom/android/settings/vpn2/VpnSettings;)V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->p:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/vpn2/VpnSettings;)Landroid/content/Context;
    .locals 0

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/android/settings/vpn2/VpnSettings;)Landroid/os/Handler;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/settings/vpn2/VpnSettings;->l:Landroid/os/Handler;

    return-object p0
.end method

.method private d()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/net/LegacyVpnInfo;",
            ">;"
        }
    .end annotation

    .line 472
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->g:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->n:Lcom/android/internal/net/LegacyVpnInfo;

    .line 473
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->n:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->n:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->n:Lcom/android/internal/net/LegacyVpnInfo;

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "VpnSettings"

    const-string v2, "Failure updating VPN list with connected legacy VPNs"

    .line 477
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 479
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private e()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/settings/vpn2/b;",
            ">;"
        }
    .end annotation

    .line 485
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 487
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->i:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 488
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->g:Landroid/net/IConnectivityManager;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/net/IConnectivityManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 489
    iget-boolean v4, v3, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-nez v4, :cond_0

    .line 490
    new-instance v4, Lcom/android/settings/vpn2/b;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-direct {v4, v2, v3}, Lcom/android/settings/vpn2/b;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "VpnSettings"

    const-string v3, "Failure updating VPN list with connected app VPNs"

    .line 494
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object v0
.end method

.method private f()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/settings/vpn2/b;",
            ">;"
        }
    .end annotation

    .line 501
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 502
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->i:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 503
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 504
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->h:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v2}, Landroid/net/ConnectivityManager;->getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 506
    new-instance v4, Lcom/android/settings/vpn2/b;

    invoke-direct {v4, v2, v3}, Lcom/android/settings/vpn2/b;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/internal/net/VpnProfile;Z)Lcom/android/settings/vpn2/LegacyVpnPreference;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 441
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->k:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/vpn2/LegacyVpnPreference;

    if-nez v0, :cond_0

    .line 444
    new-instance v0, Lcom/android/settings/vpn2/LegacyVpnPreference;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/vpn2/LegacyVpnPreference;-><init>(Landroid/content/Context;)V

    .line 445
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->e:Lcom/android/settings/widget/GearPreference$a;

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn2/LegacyVpnPreference;->a(Lcom/android/settings/widget/GearPreference$a;)V

    .line 446
    invoke-virtual {v0, p0}, Lcom/android/settings/vpn2/LegacyVpnPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 447
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->k:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    if-eqz p2, :cond_2

    .line 452
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/settings/vpn2/LegacyVpnPreference;->a(Lcom/android/internal/net/VpnProfile;)V

    :cond_2
    return-object v0
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/preference/Preference;",
            ">;)V"
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    .line 340
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 346
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 347
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 348
    invoke-interface {p1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 350
    :cond_0
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 355
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 356
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    :cond_2
    return-void
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120acf

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 13

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 225
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 228
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->j:Landroid/security/KeyStore;

    const/4 v3, 0x0

    new-array v4, v3, [I

    .line 3554
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    const-string v6, "VPN_"

    .line 3556
    invoke-virtual {v2, v6}, Landroid/security/KeyStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v8, v3

    :goto_0
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    .line 3557
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "VPN_"

    invoke-virtual {v11, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 3558
    iget v10, v9, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-static {v4, v10}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v10

    if-nez v10, :cond_1

    .line 3559
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 4513
    :cond_2
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4517
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 4518
    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserHandle;

    .line 4519
    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v6, "appops"

    .line 4526
    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 4527
    new-array v6, v0, [I

    const/16 v7, 0x2f

    aput v7, v6, v3

    invoke-virtual {v1, v6}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 4529
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$PackageOps;

    .line 4530
    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 4531
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 4537
    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v10, v3

    :cond_5
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$OpEntry;

    .line 4538
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v12

    if-ne v12, v7, :cond_5

    .line 4539
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v11

    if-nez v11, :cond_5

    move v10, v0

    goto :goto_3

    :cond_6
    if-eqz v10, :cond_4

    .line 4544
    new-instance v9, Lcom/android/settings/vpn2/b;

    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v8, v6}, Lcom/android/settings/vpn2/b;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4549
    :cond_7
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 231
    invoke-direct {p0}, Lcom/android/settings/vpn2/VpnSettings;->d()Ljava/util/Map;

    move-result-object v1

    .line 232
    invoke-direct {p0}, Lcom/android/settings/vpn2/VpnSettings;->e()Ljava/util/Set;

    move-result-object v4

    .line 234
    invoke-direct {p0}, Lcom/android/settings/vpn2/VpnSettings;->f()Ljava/util/Set;

    move-result-object v6

    .line 235
    invoke-static {}, Lcom/android/settings/vpn2/d;->a()Ljava/lang/String;

    move-result-object v7

    .line 238
    new-instance v8, Lcom/android/settings/vpn2/VpnSettings$a;

    invoke-direct {v8, p0}, Lcom/android/settings/vpn2/VpnSettings$a;-><init>(Lcom/android/settings/vpn2/VpnSettings;)V

    .line 5271
    iput-object v5, v8, Lcom/android/settings/vpn2/VpnSettings$a;->a:Ljava/util/List;

    .line 5272
    iput-object v1, v8, Lcom/android/settings/vpn2/VpnSettings$a;->c:Ljava/util/Map;

    .line 5273
    iput-object v7, v8, Lcom/android/settings/vpn2/VpnSettings$a;->f:Ljava/lang/String;

    .line 5279
    iput-object v2, v8, Lcom/android/settings/vpn2/VpnSettings$a;->b:Ljava/util/List;

    .line 5280
    iput-object v4, v8, Lcom/android/settings/vpn2/VpnSettings$a;->d:Ljava/util/Set;

    .line 5281
    iput-object v6, v8, Lcom/android/settings/vpn2/VpnSettings$a;->e:Ljava/util/Set;

    .line 238
    invoke-virtual {p1, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 242
    monitor-enter p0

    .line 243
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->l:Landroid/os/Handler;

    if-eqz p1, :cond_8

    .line 244
    iget-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->l:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 245
    iget-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->l:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 247
    :cond_8
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 122
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string p1, "user"

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/VpnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->i:Landroid/os/UserManager;

    const-string p1, "connectivity"

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/VpnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->h:Landroid/net/ConnectivityManager;

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->b()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/vpn2/VpnSettings;->o:Z

    .line 128
    iget-boolean p1, p0, Lcom/android/settings/vpn2/VpnSettings;->o:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/VpnSettings;->setHasOptionsMenu(Z)V

    const p1, 0x7f150139

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/VpnSettings;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 135
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0e001d

    .line 136
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 156
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0794

    if-eq v0, v1, :cond_0

    .line 168
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 159
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 160
    :goto_0
    iget-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->k:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    .line 163
    :cond_1
    new-instance p1, Lcom/android/internal/net/VpnProfile;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 164
    invoke-static {p0, p1, v1, v0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->a(Lcom/android/settings/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ)V

    return v1
.end method

.method public onPause()V
    .locals 2

    .line 200
    iget-boolean v0, p0, Lcom/android/settings/vpn2/VpnSettings;->o:Z

    if-eqz v0, :cond_0

    .line 201
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->h:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->p:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 208
    monitor-enter p0

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->l:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 210
    iput-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->l:Landroid/os/Handler;

    .line 211
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->m:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 212
    iput-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->m:Landroid/os/HandlerThread;

    .line 213
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    return-void

    :catchall_0
    move-exception v0

    .line 213
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 7

    .line 362
    instance-of v0, p1, Lcom/android/settings/vpn2/LegacyVpnPreference;

    const-string v1, "VpnSettings"

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 363
    check-cast p1, Lcom/android/settings/vpn2/LegacyVpnPreference;

    .line 6044
    iget-object p1, p1, Lcom/android/settings/vpn2/LegacyVpnPreference;->a:Lcom/android/internal/net/VpnProfile;

    .line 365
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->n:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings;->n:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v5, v5, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->n:Lcom/android/internal/net/LegacyVpnInfo;

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    if-ne v0, v2, :cond_0

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->n:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v0

    const-string v2, "Starting config intent failed"

    .line 371
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 374
    :cond_0
    invoke-static {p0, p1, v3, v4}, Lcom/android/settings/vpn2/ConfigDialogFragment;->a(Lcom/android/settings/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ)V

    return v4

    .line 376
    :cond_1
    instance-of v0, p1, Lcom/android/settings/vpn2/AppPreference;

    if-eqz v0, :cond_4

    .line 377
    check-cast p1, Lcom/android/settings/vpn2/AppPreference;

    .line 6061
    iget v0, p1, Lcom/android/settings/vpn2/ManageablePreference;->f:I

    if-ne v0, v2, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    if-nez v0, :cond_3

    .line 7048
    :try_start_1
    iget v2, p1, Lcom/android/settings/vpn2/ManageablePreference;->g:I

    .line 382
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 383
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    .line 384
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 383
    invoke-virtual {v5, v6, v3, v2}, Landroidx/fragment/app/FragmentActivity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    .line 385
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 7091
    iget-object v6, p1, Lcom/android/settings/vpn2/AppPreference;->b:Ljava/lang/String;

    .line 386
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 388
    invoke-virtual {v3, v5, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return v4

    :catch_1
    move-exception v2

    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "VPN provider does not exist: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8091
    iget-object v5, p1, Lcom/android/settings/vpn2/AppPreference;->b:Ljava/lang/String;

    .line 392
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    :cond_3
    invoke-virtual {p1}, Lcom/android/settings/vpn2/AppPreference;->c()Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 9087
    iget-object p1, p1, Lcom/android/settings/vpn2/AppPreference;->c:Ljava/lang/String;

    .line 398
    invoke-static {p0, v1, p1, v0}, Lcom/android/settings/vpn2/AppDialogFragment;->a(Landroidx/fragment/app/Fragment;Landroid/content/pm/PackageInfo;Ljava/lang/String;Z)V

    return v4

    :cond_4
    return v3
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    .line 141
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const/4 v0, 0x0

    .line 144
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    .line 147
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->a()Lcom/android/settingslib/g$a;

    move-result-object v3

    .line 146
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Landroid/view/MenuItem;Lcom/android/settingslib/g$a;)V

    goto :goto_1

    .line 149
    :cond_0
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/vpn2/VpnSettings;->o:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 173
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 175
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->i:Landroid/os/UserManager;

    const-string v1, "no_config_vpn"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/vpn2/VpnSettings;->o:Z

    .line 176
    iget-boolean v0, p0, Lcom/android/settings/vpn2/VpnSettings;->o:Z

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->a:Landroid/widget/TextView;

    const v1, 0x7f1218d8

    .line 179
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->removeAll()V

    return-void

    .line 2231
    :cond_1
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->a:Landroid/widget/TextView;

    .line 184
    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/VpnSettings;->setEmptyView(Landroid/view/View;)V

    .line 3231
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->a:Landroid/widget/TextView;

    const v1, 0x7f1218c7

    .line 185
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 189
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->h:Landroid/net/ConnectivityManager;

    sget-object v1, Lcom/android/settings/vpn2/VpnSettings;->f:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->p:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 192
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Refresh VPN list in background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->m:Landroid/os/HandlerThread;

    .line 193
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->m:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 194
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->m:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->l:Landroid/os/Handler;

    .line 195
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->l:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
