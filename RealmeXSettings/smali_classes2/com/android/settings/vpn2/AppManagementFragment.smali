.class public Lcom/android/settings/vpn2/AppManagementFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AppManagementFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/vpn2/ConfirmLockdownFragment$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn2/AppManagementFragment$CannotConnectFragment;
    }
.end annotation


# instance fields
.field private a:Landroid/content/pm/PackageManager;

.field private b:Landroid/net/ConnectivityManager;

.field private c:Landroid/net/IConnectivityManager;

.field private final d:I

.field private e:Ljava/lang/String;

.field private f:Landroid/content/pm/PackageInfo;

.field private g:Ljava/lang/String;

.field private h:Landroidx/preference/Preference;

.field private i:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private j:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private k:Lcom/android/settingslib/RestrictedPreference;

.field private final l:Lcom/android/settings/vpn2/AppDialogFragment$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 73
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->d:I

    .line 85
    new-instance v0, Lcom/android/settings/vpn2/AppManagementFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/vpn2/AppManagementFragment$1;-><init>(Lcom/android/settings/vpn2/AppManagementFragment;)V

    iput-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->l:Lcom/android/settings/vpn2/AppDialogFragment$a;

    return-void
.end method

.method private a()V
    .locals 3

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/vpn2/d;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 237
    :goto_0
    iget-object v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->i:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v2, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 238
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->j:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 239
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->b()V

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/android/settings/vpn2/AppPreference;I)V
    .locals 3

    .line 104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1091
    iget-object v1, p1, Lcom/android/settings/vpn2/AppPreference;->b:Ljava/lang/String;

    const-string v2, "package"

    .line 105
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v1, Lcom/android/settings/core/f;

    invoke-direct {v1, p0}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/vpn2/AppManagementFragment;

    .line 107
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p0

    .line 108
    invoke-virtual {p0, v0}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p0

    .line 2087
    iget-object v0, p1, Lcom/android/settings/vpn2/AppPreference;->c:Ljava/lang/String;

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/settings/core/f;->a(Ljava/lang/CharSequence;)Lcom/android/settings/core/f;

    move-result-object p0

    .line 110
    invoke-virtual {p0, p2}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p0

    new-instance p2, Landroid/os/UserHandle;

    .line 3048
    iget p1, p1, Lcom/android/settings/vpn2/ManageablePreference;->g:I

    .line 111
    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/android/settings/core/f;->a(Landroid/os/UserHandle;)Lcom/android/settings/core/f;

    move-result-object p0

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/core/f;->a()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/vpn2/AppManagementFragment;)Z
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->d()Z

    move-result p0

    return p0
.end method

.method private a(ZZ)Z
    .locals 6

    .line 190
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->f()Z

    move-result v1

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/vpn2/d;->b(Landroid/content/Context;)Z

    move-result v3

    .line 192
    invoke-static {v1, v3, p2}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->a(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    .line 195
    invoke-static/range {v0 .. v5}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->a(Landroidx/fragment/app/Fragment;ZZZZLandroid/os/Bundle;)V

    const/4 p1, 0x0

    return p1

    .line 200
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/vpn2/AppManagementFragment;->b(ZZ)Z

    move-result p1

    return p1
.end method

.method private b()V
    .locals 3

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->i:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->d:I

    const-string v2, "no_config_vpn"

    invoke-virtual {v0, v2, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->a(Ljava/lang/String;I)V

    .line 247
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->j:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->d:I

    invoke-virtual {v0, v2, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->a(Ljava/lang/String;I)V

    .line 249
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->k:Lcom/android/settingslib/RestrictedPreference;

    iget v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->d:I

    invoke-virtual {v0, v2, v1}, Lcom/android/settingslib/RestrictedPreference;->a(Ljava/lang/String;I)V

    .line 252
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->b:Landroid/net/ConnectivityManager;

    iget v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->d:I

    iget-object v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->isAlwaysOnVpnPackageSupportedForUser(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->i:Lcom/android/settingslib/RestrictedSwitchPreference;

    const v1, 0x7f1218a2

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setSummary(I)V

    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->i:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 259
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->j:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 260
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->i:Lcom/android/settingslib/RestrictedSwitchPreference;

    const v1, 0x7f1218a4

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setSummary(I)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/android/settings/vpn2/AppManagementFragment;)Z
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, v0, v0}, Lcom/android/settings/vpn2/AppManagementFragment;->c(ZZ)Z

    move-result p0

    return p0
.end method

.method private b(ZZ)Z
    .locals 1

    .line 209
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->b()V

    .line 210
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->i:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 214
    :cond_0
    iget v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->d:I

    if-nez v0, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/vpn2/d;->a(Landroid/content/Context;)V

    .line 217
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/settings/vpn2/AppManagementFragment;->c(ZZ)Z

    move-result p2

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 218
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->d()Z

    move-result p1

    if-nez p1, :cond_3

    .line 219
    :cond_2
    iget-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->g:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/settings/vpn2/AppManagementFragment$CannotConnectFragment;->a(Lcom/android/settings/vpn2/AppManagementFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->a()V

    :goto_0
    return p2
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->b:Landroid/net/ConnectivityManager;

    iget v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->d:I

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(ZZ)Z
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->b:Landroid/net/ConnectivityManager;

    iget v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->d:I

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/net/ConnectivityManager;->setAlwaysOnVpnPackageForUser(ILjava/lang/String;ZLjava/util/List;)Z

    move-result p1

    return p1
.end method

.method private d()Z
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private e()Z
    .locals 8

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "AppManagementFragment"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "empty bundle"

    .line 280
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string v3, "package"

    .line 284
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->e:Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "empty package name"

    .line 286
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 291
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/vpn2/AppManagementFragment;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->f:Landroid/content/pm/PackageInfo;

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/vpn2/AppManagementFragment;->e:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/internal/net/VpnConfig;->getVpnLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->g:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->f:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_2

    const-string v0, "package does not include an application"

    .line 299
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 302
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/vpn2/AppManagementFragment;->f:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string v4, "appops"

    .line 3313
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 3314
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v6, v5, [I

    const/16 v7, 0x2f

    aput v7, v6, v2

    invoke-virtual {v0, v4, v3, v6}, Landroid/app/AppOpsManager;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v0

    .line 3316
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    xor-int/2addr v0, v5

    if-nez v0, :cond_3

    const-string v0, "package didn\'t register VPN profile"

    .line 303
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    return v5

    :catch_0
    move-exception v0

    const-string v3, "package not found"

    .line 294
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method private f()Z
    .locals 4

    const/4 v0, 0x0

    .line 324
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->c:Landroid/net/IConnectivityManager;

    iget v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->d:I

    invoke-interface {v1, v2}, Landroid/net/IConnectivityManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 325
    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "AppManagementFragment"

    const-string v3, "Failure to look up active VPN"

    .line 327
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;ZZ)V
    .locals 0

    .line 205
    invoke-direct {p0, p2, p3}, Lcom/android/settings/vpn2/AppManagementFragment;->b(ZZ)Z

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 117
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f150138

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/AppManagementFragment;->addPreferencesFromResource(I)V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->a:Landroid/content/pm/PackageManager;

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->b:Landroid/net/ConnectivityManager;

    const-string p1, "connectivity"

    .line 123
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->c:Landroid/net/IConnectivityManager;

    const-string p1, "version"

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/AppManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->h:Landroidx/preference/Preference;

    const-string p1, "always_on_vpn"

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/AppManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->i:Lcom/android/settingslib/RestrictedSwitchPreference;

    const-string p1, "lockdown_vpn"

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/AppManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->j:Lcom/android/settingslib/RestrictedSwitchPreference;

    const-string p1, "forget_vpn"

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/AppManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->k:Lcom/android/settingslib/RestrictedPreference;

    .line 130
    iget-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->i:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 131
    iget-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->j:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 132
    iget-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->k:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 163
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x77b1353c

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    const v2, -0x6bce99fe

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "lockdown_vpn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_1

    :cond_1
    const-string v1, "always_on_vpn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_3

    .line 169
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "unknown key is clicked: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppManagementFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 167
    :cond_3
    iget-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->i:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->isChecked()Z

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/vpn2/AppManagementFragment;->a(ZZ)Z

    move-result p1

    return p1

    .line 165
    :cond_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->j:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p2}, Lcom/android/settingslib/RestrictedSwitchPreference;->isChecked()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/vpn2/AppManagementFragment;->a(ZZ)Z

    move-result p1

    return p1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 8

    .line 151
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const v2, -0x233fe45e

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "forget_vpn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 156
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "unknown key is clicked: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppManagementFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3180
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->b()V

    .line 3181
    iget-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->k:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1}, Lcom/android/settingslib/RestrictedPreference;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    .line 3184
    :cond_3
    iget-object v3, p0, Lcom/android/settings/vpn2/AppManagementFragment;->l:Lcom/android/settings/vpn2/AppDialogFragment$a;

    iget-object v4, p0, Lcom/android/settings/vpn2/AppManagementFragment;->f:Landroid/content/pm/PackageInfo;

    iget-object v5, p0, Lcom/android/settings/vpn2/AppManagementFragment;->g:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/android/settings/vpn2/AppDialogFragment;->a(Landroidx/fragment/app/Fragment;Lcom/android/settings/vpn2/AppDialogFragment$a;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZZ)V

    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 6

    .line 137
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 139
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->h:Landroidx/preference/Preference;

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1218df

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/vpn2/AppManagementFragment;->f:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 143
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->a()V

    return-void

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->finish()V

    return-void
.end method
