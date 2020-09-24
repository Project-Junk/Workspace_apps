.class public Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment$ConfirmRiskFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ColorSafeApplicationFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmRiskFragment"
.end annotation


# instance fields
.field private a:Z

.field private b:Landroidx/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Landroidx/fragment/app/Fragment;Landroidx/preference/SwitchPreference;)V
    .locals 2

    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    new-instance v0, Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment$ConfirmRiskFragment;

    invoke-direct {v0}, Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment$ConfirmRiskFragment;-><init>()V

    const/4 v1, 0x0

    .line 133
    iput-boolean v1, v0, Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment$ConfirmRiskFragment;->a:Z

    .line 134
    invoke-virtual {v0, p0, v1}, Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment$ConfirmRiskFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 135
    iput-object p1, v0, Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment$ConfirmRiskFragment;->b:Landroidx/preference/SwitchPreference;

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, "cofirmRisk"

    invoke-virtual {v0, p0, p1}, Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment$ConfirmRiskFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x57

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 165
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 166
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment$ConfirmRiskFragment;->b:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_0

    .line 167
    iget-boolean v0, p0, Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment$ConfirmRiskFragment;->a:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, 0x0

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment$ConfirmRiskFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "oppo_apk_prescan_switch"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 175
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment$ConfirmRiskFragment;->b:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_2

    .line 176
    iget-boolean p2, p0, Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment$ConfirmRiskFragment;->a:Z

    move v1, p2

    move-object p2, p1

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 179
    iget-object p2, p0, Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment$ConfirmRiskFragment;->b:Landroidx/preference/SwitchPreference;

    if-eqz p2, :cond_2

    .line 180
    iget-boolean v0, p0, Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment$ConfirmRiskFragment;->a:Z

    if-nez v0, :cond_1

    const/4 p1, 0x1

    :cond_1
    :goto_0
    invoke-virtual {p2, p1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 110
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment$ConfirmRiskFragment;->b:Landroidx/preference/SwitchPreference;

    if-nez p1, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment$ConfirmRiskFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment;

    if-eqz p1, :cond_0

    .line 114
    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment;->a(Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment$ConfirmRiskFragment;->b:Landroidx/preference/SwitchPreference;

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 141
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment$ConfirmRiskFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "enabling"

    .line 143
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment$ConfirmRiskFragment;->a:Z

    .line 145
    :cond_0
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1207b9

    .line 146
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f121231

    .line 147
    invoke-virtual {p1, v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f120633

    .line 148
    invoke-virtual {p1, v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 149
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 2

    .line 122
    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onResume()V

    .line 123
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment$ConfirmRiskFragment;->b:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 124
    iget-boolean v1, p0, Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment$ConfirmRiskFragment;->a:Z

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 154
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 155
    iget-boolean v0, p0, Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment$ConfirmRiskFragment;->a:Z

    const-string v1, "enabling"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
