.class public Lcom/android/settings/fuelgauge/HighPowerDetail;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "HighPowerDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Lcom/android/settingslib/j/c;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:Lcom/android/settings/fuelgauge/g;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field f:Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field g:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field h:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private j:Ljava/lang/CharSequence;

.field private k:Z

.field private l:Landroid/widget/Checkable;

.field private m:Landroid/widget/Checkable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;Z)Landroid/widget/Checkable;
    .locals 2

    const v0, 0x1020016

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const v1, 0x7f120afb

    goto :goto_0

    :cond_0
    const v1, 0x7f120af9

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x1020010

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const v1, 0x7f120afc

    goto :goto_1

    :cond_1
    const v1, 0x7f120afa

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x1

    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 93
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p2, :cond_2

    .line 94
    iget-object p2, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->a:Lcom/android/settingslib/j/c;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->f:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/settingslib/j/c;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 97
    :cond_2
    check-cast p1, Landroid/widget/Checkable;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState$a;)Ljava/lang/CharSequence;
    .locals 2

    .line 172
    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2176
    invoke-static {p0}, Lcom/android/settingslib/j/c;->a(Landroid/content/Context;)Lcom/android/settingslib/j/c;

    move-result-object v0

    .line 2183
    invoke-virtual {v0, p1}, Lcom/android/settingslib/j/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/settingslib/j/c;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2185
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/settingslib/j/c;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f120ae4

    goto :goto_1

    :cond_1
    const p1, 0x7f120ae3

    goto :goto_1

    :cond_2
    :goto_0
    const p1, 0x7f120ae7

    .line 2182
    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->l:Landroid/widget/Checkable;

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->h:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->m:Landroid/widget/Checkable;

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->h:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    return-void
.end method

.method public static a(Landroidx/fragment/app/Fragment;ILjava/lang/String;)V
    .locals 3

    .line 191
    new-instance v0, Lcom/android/settings/fuelgauge/HighPowerDetail;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/HighPowerDetail;-><init>()V

    .line 192
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "package"

    .line 193
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "uid"

    .line 194
    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 195
    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/HighPowerDetail;->setArguments(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 196
    invoke-virtual {v0, p0, p1}, Lcom/android/settings/fuelgauge/HighPowerDetail;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 197
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class p1, Lcom/android/settings/fuelgauge/HighPowerDetail;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/fuelgauge/HighPowerDetail;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x21c

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 139
    iget-boolean p1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->h:Z

    .line 140
    iget-object p2, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->a:Lcom/android/settingslib/j/c;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->f:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/settingslib/j/c;->b(Ljava/lang/String;)Z

    move-result p2

    if-eq p1, p2, :cond_2

    .line 142
    iget-object p2, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_0

    const/16 v1, 0x2fd

    goto :goto_0

    :cond_0
    const/16 v1, 0x2fc

    .line 1158
    :goto_0
    invoke-static {v0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p2}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;ILjava/lang/String;)V

    const-string p2, "Unable to reach IDeviceIdleController"

    const-string v0, "PowerWhitelistBackend"

    if-eqz p1, :cond_1

    .line 144
    iget-object p1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->b:Lcom/android/settings/fuelgauge/g;

    iget v1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->g:I

    iget-object v2, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->f:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/settings/fuelgauge/g;->a(ILjava/lang/String;I)V

    .line 146
    iget-object p1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->a:Lcom/android/settingslib/j/c;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->f:Ljava/lang/String;

    .line 2148
    :try_start_0
    iget-object v2, p1, Lcom/android/settingslib/j/c;->a:Landroid/os/IDeviceIdleController;

    invoke-interface {v2, v1}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V

    .line 2149
    iget-object p1, p1, Lcom/android/settingslib/j/c;->b:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2151
    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 148
    :cond_1
    iget-object p1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->a:Lcom/android/settingslib/j/c;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->f:Ljava/lang/String;

    .line 2157
    :try_start_1
    iget-object v2, p1, Lcom/android/settingslib/j/c;->a:Landroid/os/IDeviceIdleController;

    invoke-interface {v2, v1}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V

    .line 2158
    iget-object p1, p1, Lcom/android/settingslib/j/c;->b:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 2160
    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->l:Landroid/widget/Checkable;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 128
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->h:Z

    .line 129
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->a()V

    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->m:Landroid/widget/Checkable;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 131
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->h:Z

    .line 132
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->a()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 72
    invoke-static {p1}, Lcom/android/settings/fuelgauge/g;->a(Landroid/content/Context;)Lcom/android/settings/fuelgauge/g;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->b:Lcom/android/settings/fuelgauge/g;

    .line 73
    invoke-static {p1}, Lcom/android/settingslib/j/c;->a(Landroid/content/Context;)Lcom/android/settingslib/j/c;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->a:Lcom/android/settingslib/j/c;

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->f:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->g:I

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->f:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->j:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    iget-object p1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->j:Ljava/lang/CharSequence;

    .line 83
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "default_on"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->k:Z

    .line 84
    iget-boolean p1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->k:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->a:Lcom/android/settingslib/j/c;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->f:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/j/c;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->h:Z

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 102
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->j:Ljava/lang/CharSequence;

    .line 103
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120491

    const/4 v1, 0x0

    .line 104
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0d0194

    .line 105
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 106
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->a:Lcom/android/settingslib/j/c;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/j/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f120855

    .line 107
    invoke-virtual {p1, v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 109
    :cond_0
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 164
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getTargetRequestCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 114
    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onStart()V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f0a031a

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fuelgauge/HighPowerDetail;->a(Landroid/view/View;Z)Landroid/widget/Checkable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->l:Landroid/widget/Checkable;

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f0a0319

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fuelgauge/HighPowerDetail;->a(Landroid/view/View;Z)Landroid/widget/Checkable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HighPowerDetail;->m:Landroid/widget/Checkable;

    .line 117
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/HighPowerDetail;->a()V

    return-void
.end method
