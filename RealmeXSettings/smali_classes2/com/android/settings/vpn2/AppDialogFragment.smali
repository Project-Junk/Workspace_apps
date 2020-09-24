.class public Lcom/android/settings/vpn2/AppDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "AppDialogFragment.java"

# interfaces
.implements Lcom/android/settings/vpn2/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn2/AppDialogFragment$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/pm/PackageInfo;

.field private b:Lcom/android/settings/vpn2/AppDialogFragment$a;

.field private f:Landroid/os/UserManager;

.field private final g:Landroid/net/IConnectivityManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    const-string v0, "connectivity"

    .line 56
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 55
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/AppDialogFragment;->g:Landroid/net/IConnectivityManager;

    return-void
.end method

.method public static a(Landroidx/fragment/app/Fragment;Landroid/content/pm/PackageInfo;Ljava/lang/String;Z)V
    .locals 6

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    .line 74
    invoke-static/range {v0 .. v5}, Lcom/android/settings/vpn2/AppDialogFragment;->a(Landroidx/fragment/app/Fragment;Lcom/android/settings/vpn2/AppDialogFragment$a;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static a(Landroidx/fragment/app/Fragment;Lcom/android/settings/vpn2/AppDialogFragment$a;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZZ)V
    .locals 2

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "package"

    .line 84
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "label"

    .line 85
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "managing"

    .line 86
    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "connected"

    .line 87
    invoke-virtual {v0, p2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 89
    new-instance p2, Lcom/android/settings/vpn2/AppDialogFragment;

    invoke-direct {p2}, Lcom/android/settings/vpn2/AppDialogFragment;-><init>()V

    .line 90
    iput-object p1, p2, Lcom/android/settings/vpn2/AppDialogFragment;->b:Lcom/android/settings/vpn2/AppDialogFragment$a;

    .line 91
    invoke-virtual {p2, v0}, Lcom/android/settings/vpn2/AppDialogFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 92
    invoke-virtual {p2, p0, p1}, Lcom/android/settings/vpn2/AppDialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, "vpnappdialog"

    invoke-virtual {p2, p0, p1}, Lcom/android/settings/vpn2/AppDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/vpn2/AppDialogFragment;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->b()V

    return-void
.end method

.method private b()V
    .locals 4

    .line 161
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->d()I

    move-result v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/vpn2/AppDialogFragment;->a:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/vpn2/AppDialogFragment;->g:Landroid/net/IConnectivityManager;

    invoke-static {v2, v0}, Lcom/android/settings/vpn2/d;->a(Landroid/net/IConnectivityManager;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/android/settings/vpn2/AppDialogFragment;->g:Landroid/net/IConnectivityManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3, v2, v3}, Landroid/net/IConnectivityManager;->setAlwaysOnVpnPackage(ILjava/lang/String;ZLjava/util/List;)Z

    .line 169
    iget-object v1, p0, Lcom/android/settings/vpn2/AppDialogFragment;->g:Landroid/net/IConnectivityManager;

    iget-object v2, p0, Lcom/android/settings/vpn2/AppDialogFragment;->a:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "[Legacy VPN]"

    invoke-interface {v1, v2, v3, v0}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to disconnect package "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/vpn2/AppDialogFragment;->a:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppDialogFragment"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private c()Z
    .locals 3

    .line 178
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->d()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/android/settings/vpn2/AppDialogFragment;->f:Landroid/os/UserManager;

    const-string v2, "no_config_vpn"

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method private d()I
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/android/settings/vpn2/AppDialogFragment;->a:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 143
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 146
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->d()I

    move-result v0

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/vpn2/AppDialogFragment;->g:Landroid/net/IConnectivityManager;

    iget-object v2, p0, Lcom/android/settings/vpn2/AppDialogFragment;->a:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Landroid/net/IConnectivityManager;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V

    .line 149
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to forget authorization of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/vpn2/AppDialogFragment;->a:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppDialogFragment"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    :goto_0
    iget-object v0, p0, Lcom/android/settings/vpn2/AppDialogFragment;->b:Lcom/android/settings/vpn2/AppDialogFragment$a;

    if-eqz v0, :cond_1

    .line 156
    invoke-interface {v0}, Lcom/android/settings/vpn2/AppDialogFragment$a;->a()V

    :cond_1
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x222

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->dismiss()V

    .line 138
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/vpn2/AppDialogFragment;->f:Landroid/os/UserManager;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "label"

    .line 105
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "managing"

    .line 106
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "connected"

    .line 107
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "package"

    .line 108
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInfo;

    iput-object p1, p0, Lcom/android/settings/vpn2/AppDialogFragment;->a:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_0

    .line 111
    new-instance p1, Lcom/android/settings/vpn2/a;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/vpn2/AppDialogFragment;->a:Landroid/content/pm/PackageInfo;

    invoke-direct {p1, v1, p0, v2, v0}, Lcom/android/settings/vpn2/a;-><init>(Landroid/content/Context;Lcom/android/settings/vpn2/a$a;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    return-object p1

    .line 114
    :cond_0
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f1218ac

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f1218a5

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    if-eqz v2, :cond_1

    .line 119
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f1218ab

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settings/vpn2/AppDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn2/AppDialogFragment$1;-><init>(Lcom/android/settings/vpn2/AppDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 128
    :cond_1
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
