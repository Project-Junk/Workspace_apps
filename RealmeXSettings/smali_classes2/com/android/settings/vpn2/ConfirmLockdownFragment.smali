.class public Lcom/android/settings/vpn2/ConfirmLockdownFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ConfirmLockdownFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn2/ConfirmLockdownFragment$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Landroidx/fragment/app/Fragment;ZZZZLandroid/os/Bundle;)V
    .locals 3

    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ConfirmLockdown"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 61
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "replacing"

    .line 62
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "always_on"

    .line 63
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "lockdown_old"

    .line 64
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "lockdown_new"

    .line 65
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "options"

    .line 66
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 68
    new-instance p1, Lcom/android/settings/vpn2/ConfirmLockdownFragment;

    invoke-direct {p1}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;-><init>()V

    .line 69
    invoke-virtual {p1, v0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 70
    invoke-virtual {p1, p0, p2}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static a(ZZZ)Z
    .locals 0

    if-nez p0, :cond_1

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x224

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/android/settings/vpn2/ConfirmLockdownFragment$a;

    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/vpn2/ConfirmLockdownFragment$a;

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "options"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "always_on"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "lockdown_new"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 108
    invoke-interface {p1, p2, v0, v1}, Lcom/android/settings/vpn2/ConfirmLockdownFragment$a;->a(Landroid/os/Bundle;ZZ)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "replacing"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "always_on"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "lockdown_old"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "lockdown_new"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v2, 0x7f1218d1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const v2, 0x7f1218cf

    goto :goto_0

    :cond_1
    const v2, 0x7f1218d7

    :goto_0
    if-eqz p1, :cond_2

    const v3, 0x7f1218cb

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    const v3, 0x7f1218dc

    goto :goto_1

    :cond_3
    const v3, 0x7f120f1b

    :goto_1
    if-eqz v1, :cond_5

    if-eqz p1, :cond_4

    const p1, 0x7f1218cd

    goto :goto_2

    :cond_4
    const p1, 0x7f1218b2

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    const p1, 0x7f1218cc

    goto :goto_2

    :cond_6
    const p1, 0x7f1218ce

    .line 97
    :goto_2
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-virtual {v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 99
    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120491

    const/4 v1, 0x0

    .line 100
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 101
    invoke-virtual {p1, v3, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
