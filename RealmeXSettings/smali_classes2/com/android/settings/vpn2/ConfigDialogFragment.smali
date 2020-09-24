.class public Lcom/android/settings/vpn2/ConfigDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ConfigDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/vpn2/ConfirmLockdownFragment$a;


# instance fields
.field private final a:Landroid/net/IConnectivityManager;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    const-string v0, "connectivity"

    .line 56
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 55
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->a:Landroid/net/IConnectivityManager;

    return-void
.end method

.method private a(Lcom/android/internal/net/VpnProfile;Z)V
    .locals 5

    .line 190
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VPN_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    .line 194
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/ConfigDialogFragment;->a(Lcom/android/internal/net/VpnProfile;)Z

    .line 197
    invoke-direct {p0, p2, p1}, Lcom/android/settings/vpn2/ConfigDialogFragment;->a(ZLcom/android/internal/net/VpnProfile;)V

    return-void
.end method

.method public static a(Lcom/android/settings/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ)V
    .locals 2

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "profile"

    .line 69
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "editing"

    .line 70
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "exists"

    .line 71
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 73
    new-instance p1, Lcom/android/settings/vpn2/ConfigDialogFragment;

    invoke-direct {p1}, Lcom/android/settings/vpn2/ConfigDialogFragment;-><init>()V

    .line 74
    invoke-virtual {p1, v0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 75
    invoke-virtual {p1, p0, p2}, Lcom/android/settings/vpn2/ConfigDialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p2, "vpnconfigdialog"

    invoke-virtual {p1, p0, p2}, Lcom/android/settings/vpn2/ConfigDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private a(ZLcom/android/internal/net/VpnProfile;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 171
    invoke-virtual {p2}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()Z

    move-result p1

    if-nez p1, :cond_0

    .line 172
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->b:Landroid/content/Context;

    const p2, 0x7f1218bb

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 173
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p1

    .line 178
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/net/ConnectivityManager;->setAlwaysOnVpnPackageForUser(ILjava/lang/String;ZLjava/util/List;)Z

    .line 180
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->b:Landroid/content/Context;

    iget-object p2, p2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/settings/vpn2/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 183
    :cond_1
    iget-object p1, p2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    .line 3060
    invoke-static {}, Lcom/android/settings/vpn2/d;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 184
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/vpn2/d;->a(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method private a(Lcom/android/internal/net/VpnProfile;)Z
    .locals 2

    .line 225
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/ConfigDialogFragment;->b(Lcom/android/internal/net/VpnProfile;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/vpn2/d;->c(Landroid/content/Context;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "ConfigDialogFragment"

    const-string v1, "Failed to disconnect"

    .line 230
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return p1
.end method

.method private b(Lcom/android/internal/net/VpnProfile;Z)V
    .locals 1

    .line 201
    invoke-direct {p0, p1, p2}, Lcom/android/settings/vpn2/ConfigDialogFragment;->a(Lcom/android/internal/net/VpnProfile;Z)V

    .line 205
    iget-object p2, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    .line 4060
    invoke-static {}, Lcom/android/settings/vpn2/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 206
    iget-object p2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/vpn2/d;->a(Landroid/content/Context;)V

    .line 208
    :try_start_0
    iget-object p2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->a:Landroid/net/IConnectivityManager;

    invoke-interface {p2, p1}, Landroid/net/IConnectivityManager;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "ConfigDialogFragment"

    const-string v0, "Failed to connect"

    .line 212
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 210
    :catch_1
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->b:Landroid/content/Context;

    const p2, 0x7f1218c5

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void
.end method

.method private b(Lcom/android/internal/net/VpnProfile;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->a:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    iget-object p1, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;ZZ)V
    .locals 0

    const-string p3, "profile"

    .line 114
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/net/VpnProfile;

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/android/settings/vpn2/ConfigDialogFragment;->b(Lcom/android/internal/net/VpnProfile;Z)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->dismiss()V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x221

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 82
    iput-object p1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->b:Landroid/content/Context;

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->dismiss()V

    .line 164
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    check-cast p1, Lcom/android/settings/vpn2/c;

    .line 122
    invoke-virtual {p1}, Lcom/android/settings/vpn2/c;->a()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    const-string v1, "ConfigDialogFragment"

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne p2, v2, :cond_5

    .line 1286
    iget-object p2, p1, Lcom/android/settings/vpn2/c;->b:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    const/4 p2, 0x1

    if-nez v8, :cond_1

    .line 1474
    iget-boolean p1, p1, Lcom/android/settings/vpn2/c;->a:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move p1, p2

    .line 128
    :goto_1
    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/vpn2/d;->b(Landroid/content/Context;)Z

    move-result v7

    .line 130
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->b:Landroid/content/Context;

    .line 2074
    invoke-static {}, Lcom/android/settings/vpn2/d;->b()Landroid/net/IConnectivityManager;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v4, v2}, Landroid/net/IConnectivityManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    if-eqz v2, :cond_2

    move v5, p2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    if-eqz p1, :cond_3

    .line 131
    invoke-direct {p0, v0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->b(Lcom/android/internal/net/VpnProfile;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 132
    invoke-static {v5, v7, v8}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->a(ZZZ)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 133
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string p1, "profile"

    .line 134
    invoke-virtual {v9, p1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object v4, p0

    move v6, v8

    .line 135
    invoke-static/range {v4 .. v9}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->a(Landroidx/fragment/app/Fragment;ZZZZLandroid/os/Bundle;)V

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_4

    .line 138
    invoke-direct {p0, v0, v8}, Lcom/android/settings/vpn2/ConfigDialogFragment;->b(Lcom/android/internal/net/VpnProfile;Z)V

    goto :goto_3

    .line 140
    :cond_4
    invoke-direct {p0, v0, v3}, Lcom/android/settings/vpn2/ConfigDialogFragment;->a(Lcom/android/internal/net/VpnProfile;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const-string p2, "Failed to check active VPN state. Skipping."

    .line 143
    invoke-static {v1, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_5
    const/4 p1, -0x3

    if-ne p2, p1, :cond_7

    .line 147
    invoke-direct {p0, v0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->a(Lcom/android/internal/net/VpnProfile;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "Failed to disconnect VPN. Leaving profile in keystore."

    .line 148
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 153
    :cond_6
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object p1

    .line 154
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "VPN_"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    .line 156
    invoke-direct {p0, v3, v0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->a(ZLcom/android/internal/net/VpnProfile;)V

    .line 158
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "profile"

    .line 88
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/internal/net/VpnProfile;

    const-string v0, "editing"

    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v0, "exists"

    .line 90
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 92
    new-instance p1, Lcom/android/settings/vpn2/c;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/vpn2/c;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;ZZ)V

    .line 93
    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    check-cast p1, Lcolor/support/v7/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
