.class public Lcom/android/settings/sim/PreferredSimDialogFragment;
.super Lcom/android/settings/sim/SimDialogFragment;
.source "PreferredSimDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/sim/SimDialogFragment;-><init>()V

    return-void
.end method

.method public static a()Lcom/android/settings/sim/PreferredSimDialogFragment;
    .locals 3

    .line 44
    new-instance v0, Lcom/android/settings/sim/PreferredSimDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/sim/PreferredSimDialogFragment;-><init>()V

    const/4 v1, 0x3

    const v2, 0x7f1214da

    .line 45
    invoke-static {v1, v2}, Lcom/android/settings/sim/PreferredSimDialogFragment;->a(II)Landroid/os/Bundle;

    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/android/settings/sim/PreferredSimDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private a(Lcolor/support/v7/app/AlertDialog;)V
    .locals 5

    .line 84
    invoke-direct {p0}, Lcom/android/settings/sim/PreferredSimDialogFragment;->f()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/sim/PreferredSimDialogFragment;->dismiss()V

    return-void

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/sim/PreferredSimDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1214d9

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private f()Landroid/telephony/SubscriptionInfo;
    .locals 3

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/sim/PreferredSimDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/android/settings/sim/SimDialogActivity;->a:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 80
    invoke-direct {p0}, Lcom/android/settings/sim/PreferredSimDialogFragment;->g()Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method private g()Landroid/telephony/SubscriptionManager;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/sim/PreferredSimDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/sim/PreferredSimDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/settings/sim/PreferredSimDialogFragment;->a(Lcolor/support/v7/app/AlertDialog;)V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x6ad

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/sim/PreferredSimDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/sim/SimDialogActivity;

    .line 70
    invoke-direct {p0}, Lcom/android/settings/sim/PreferredSimDialogFragment;->f()Landroid/telephony/SubscriptionInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/sim/PreferredSimDialogFragment;->c()I

    move-result v0

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/android/settings/sim/SimDialogActivity;->a(II)V

    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 54
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/sim/PreferredSimDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1303b1

    invoke-direct {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/sim/PreferredSimDialogFragment;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f121ab2

    .line 57
    invoke-virtual {p1, v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120e6b

    const/4 v1, 0x0

    .line 58
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings/sim/PreferredSimDialogFragment;->a(Lcolor/support/v7/app/AlertDialog;)V

    return-object p1
.end method
