.class public Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ForgetDeviceDialogFragment.java"


# instance fields
.field private a:Lcom/android/settingslib/d/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;
    .locals 2

    .line 45
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "device_address"

    .line 46
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance p0, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;-><init>()V

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 68
    iget-object p1, p0, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->a:Lcom/android/settingslib/d/g;

    invoke-virtual {p1}, Lcom/android/settingslib/d/g;->d()V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$2r5j3whHVO3NdszdoD_OCiwLWnU(Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x407

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 67
    new-instance p1, Lcom/android/settings/bluetooth/-$$Lambda$ForgetDeviceDialogFragment$2r5j3whHVO3NdszdoD_OCiwLWnU;

    invoke-direct {p1, p0}, Lcom/android/settings/bluetooth/-$$Lambda$ForgetDeviceDialogFragment$2r5j3whHVO3NdszdoD_OCiwLWnU;-><init>(Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1054
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "device_address"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1055
    invoke-static {v0}, Lcom/android/settings/bluetooth/n;->a(Landroid/content/Context;)Lcom/android/settingslib/d/q;

    move-result-object v2

    .line 1124
    iget-object v3, v2, Lcom/android/settingslib/d/q;->b:Lcom/android/settingslib/d/p;

    .line 1056
    invoke-virtual {v3, v1}, Lcom/android/settingslib/d/p;->a(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 1154
    iget-object v2, v2, Lcom/android/settingslib/d/q;->c:Lcom/android/settingslib/d/h;

    .line 1057
    invoke-virtual {v2, v1}, Lcom/android/settingslib/d/h;->a(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/d/g;

    move-result-object v1

    .line 75
    iput-object v1, p0, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->a:Lcom/android/settingslib/d/g;

    .line 76
    iget-object v1, p0, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->a:Lcom/android/settingslib/d/g;

    .line 1396
    iget-object v1, v1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x6

    .line 76
    invoke-static {v1, v2}, Lcom/android/settingslib/d/f;->a(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    .line 79
    new-instance v2, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f12043f

    .line 80
    invoke-virtual {v2, v3, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    .line 82
    invoke-virtual {p1, v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    const v2, 0x7f120440

    .line 84
    invoke-virtual {p1, v2}, Lcolor/support/v7/app/AlertDialog;->setTitle(I)V

    if-eqz v1, :cond_0

    const v1, 0x7f120442

    goto :goto_0

    :cond_0
    const v1, 0x7f12043e

    :goto_0
    const/4 v2, 0x1

    .line 85
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->a:Lcom/android/settingslib/d/g;

    .line 88
    invoke-virtual {v4}, Lcom/android/settingslib/d/g;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object p1
.end method
