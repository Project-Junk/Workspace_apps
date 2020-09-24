.class public Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "AppManagerFeature.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/appmanager/AppManagerFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmRiskFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

.field private f:Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment$a;

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 940
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Landroidx/fragment/app/Fragment;Lcom/coloros/settingslib/applications/ApplicationsState$a;ILcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment$a;)V
    .locals 1

    .line 970
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 973
    :cond_0
    new-instance v0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment;

    invoke-direct {v0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment;-><init>()V

    .line 974
    iput-object p1, v0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    const/4 p1, 0x1

    .line 975
    iput-boolean p1, v0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment;->a:Z

    .line 976
    iput-object p3, v0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment;->f:Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment$a;

    .line 977
    iput p2, v0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment;->g:I

    const/4 p1, 0x0

    .line 978
    invoke-virtual {v0, p0, p1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 979
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, "cofirmRisk"

    invoke-virtual {v0, p0, p1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x57

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1021
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment;->f:Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment$a;

    iget v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment;->g:I

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment$a;->a(IZ)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x2

    if-ne p2, p1, :cond_0

    .line 1013
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment;->f:Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment$a;

    iget p2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment;->g:I

    iget-boolean v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment;->a:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment$a;->a(IZ)V

    return-void

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 1015
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment;->f:Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment$a;

    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment;->g:I

    iget-boolean v1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment;->a:Z

    invoke-interface {p1, p2, v0, v1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment$a;->a(Lcom/coloros/settingslib/applications/ApplicationsState$a;IZ)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 952
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 954
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    const/4 v1, -0x1

    const-string v2, "key_ui_mode"

    .line 955
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    .line 957
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 984
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "enabling"

    .line 986
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment;->a:Z

    :cond_0
    const p1, 0x7f1207bf

    const/4 v1, 0x1

    .line 988
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v3, v3, Lcom/coloros/settingslib/applications/ApplicationsState$a;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 989
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 990
    invoke-virtual {v1, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    const p1, 0x7f1207b7

    .line 991
    invoke-virtual {v1, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    const p1, 0x7f120f2e

    .line 992
    invoke-virtual {v1, p1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    .line 993
    invoke-virtual {v1, p1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 994
    invoke-virtual {v1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 3

    .line 965
    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onResume()V

    .line 966
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment;->f:Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment$a;

    iget v1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment;->g:I

    iget-boolean v2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment;->a:Z

    invoke-interface {v0, v1, v2}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment$a;->a(IZ)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 999
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1000
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 1001
    iget-boolean v1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment;->a:Z

    const-string v2, "enabling"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "key_ui_mode"

    .line 1002
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
