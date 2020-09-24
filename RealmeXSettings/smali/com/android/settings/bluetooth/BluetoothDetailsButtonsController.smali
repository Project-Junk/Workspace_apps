.class public Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "BluetoothDetailsButtonsController.java"


# instance fields
.field private d:Z

.field private e:Z

.field private f:Lcom/android/settingslib/widget/ActionButtonsPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/d/g;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/BluetoothDetailsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/d/g;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 43
    invoke-virtual {p3}, Lcom/android/settingslib/d/g;->i()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->d:Z

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 1

    .line 82
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->c:Lcom/android/settingslib/d/g;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settingslib/d/g;->a(Z)V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 73
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->c:Lcom/android/settingslib/d/g;

    invoke-virtual {p1}, Lcom/android/settingslib/d/g;->a()V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 2

    .line 1047
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->c:Lcom/android/settingslib/d/g;

    .line 1405
    iget-object p1, p1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 1048
    invoke-static {p1}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->a(Ljava/lang/String;)Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;

    move-result-object p1

    .line 1049
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->b:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ForgetBluetoothDevice"

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$-swkeZAXY2pfnGlQp2OSZZ4wOBI(Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$X0bGVuNEkcAxFfho5zEJwWwv_mA(Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$xP74NAnaARTgK6yQOwkQrHBu-2g(Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->c(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->f:Lcom/android/settingslib/widget/ActionButtonsPreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->c:Lcom/android/settingslib/d/g;

    invoke-virtual {v1}, Lcom/android/settingslib/d/g;->j()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->d(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 66
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->d:Z

    .line 67
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->c:Lcom/android/settingslib/d/g;

    invoke-virtual {v1}, Lcom/android/settingslib/d/g;->i()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->d:Z

    .line 68
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->d:Z

    if-eqz v1, :cond_1

    .line 69
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->e:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_3

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->f:Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v1, 0x7f120389

    .line 71
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->c(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    const v1, 0x7f080820

    .line 72
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->d(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsButtonsController$-swkeZAXY2pfnGlQp2OSZZ4wOBI;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsButtonsController$-swkeZAXY2pfnGlQp2OSZZ4wOBI;-><init>(Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;)V

    .line 73
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->b(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 74
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->e:Z

    return-void

    .line 77
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->e:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_3

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->f:Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v1, 0x7f120387

    .line 79
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->c(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    const v1, 0x7f0806a1

    .line 80
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->d(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsButtonsController$X0bGVuNEkcAxFfho5zEJwWwv_mA;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsButtonsController$X0bGVuNEkcAxFfho5zEJwWwv_mA;-><init>(Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;)V

    .line 81
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->b(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 83
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->e:Z

    :cond_3
    return-void
.end method

.method protected final a(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v0, 0x7f120a22

    .line 56
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->a(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    const v0, 0x7f080823

    .line 57
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->b(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    new-instance v0, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsButtonsController$xP74NAnaARTgK6yQOwkQrHBu-2g;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsButtonsController$xP74NAnaARTgK6yQOwkQrHBu-2g;-><init>(Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;)V

    .line 58
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->a(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->b(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->f:Lcom/android/settingslib/widget/ActionButtonsPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "action_buttons"

    return-object v0
.end method
