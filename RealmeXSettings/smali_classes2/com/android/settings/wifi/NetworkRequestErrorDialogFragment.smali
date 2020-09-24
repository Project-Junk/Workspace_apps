.class public Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "NetworkRequestErrorDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static a()Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;
    .locals 1

    .line 41
    new-instance v0, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;-><init>()V

    return-object v0
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method private synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method private synthetic c(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1082
    invoke-static {}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->a()Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    move-result-object p1

    .line 1083
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-class v0, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;

    .line 1084
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 1083
    invoke-virtual {p1, p2, v0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$9bvb6UGmO-WZYsJoovSthOoBxYY(Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->c(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$CXzb0zgiazB0efosJitSxLq30sQ(Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$Hx1yZ1iKZU0GAE6hsTTMLaBvy9U(Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->b(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x55d

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 58
    sget-object p1, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;->a:Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "DIALOG_ERROR_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;

    .line 63
    :cond_0
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 64
    sget-object v1, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;->a:Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;

    if-ne p1, v1, :cond_1

    const p1, 0x7f120e1c

    .line 65
    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f120e1d

    new-instance v2, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestErrorDialogFragment$9bvb6UGmO-WZYsJoovSthOoBxYY;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestErrorDialogFragment$9bvb6UGmO-WZYsJoovSthOoBxYY;-><init>(Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;)V

    .line 66
    invoke-virtual {p1, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f120491

    new-instance v2, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestErrorDialogFragment$Hx1yZ1iKZU0GAE6hsTTMLaBvy9U;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestErrorDialogFragment$Hx1yZ1iKZU0GAE6hsTTMLaBvy9U;-><init>(Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;)V

    .line 68
    invoke-virtual {p1, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    goto :goto_0

    :cond_1
    const p1, 0x7f120e19

    .line 70
    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f120f1b

    new-instance v2, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestErrorDialogFragment$CXzb0zgiazB0efosJitSxLq30sQ;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestErrorDialogFragment$CXzb0zgiazB0efosJitSxLq30sQ;-><init>(Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;)V

    .line 71
    invoke-virtual {p1, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 73
    :goto_0
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
