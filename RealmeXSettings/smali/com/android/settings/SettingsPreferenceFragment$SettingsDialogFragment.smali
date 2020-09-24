.class public Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "SettingsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsDialogFragment"
.end annotation


# instance fields
.field private a:Landroidx/fragment/app/Fragment;

.field private b:Landroid/content/DialogInterface$OnCancelListener;

.field private f:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 589
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnCancelListener;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 0

    .line 589
    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->b:Landroid/content/DialogInterface$OnCancelListener;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0

    .line 589
    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->f:Landroid/content/DialogInterface$OnDismissListener;

    return-object p1
.end method

.method public static a(Lcom/android/settings/e;I)Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 1

    .line 604
    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>()V

    .line 1705
    check-cast p0, Landroidx/fragment/app/Fragment;

    iput-object p0, v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->a:Landroidx/fragment/app/Fragment;

    .line 1709
    iput p1, v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->d:I

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 2

    .line 613
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->a:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 616
    :cond_0
    check-cast v0, Lcom/android/settings/e;

    iget v1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->d:I

    .line 617
    invoke-interface {v0, v1}, Lcom/android/settings/e;->getDialogMetricsCategory(I)I

    move-result v0

    if-lez v0, :cond_1

    return v0

    .line 619
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Dialog must provide a metrics category"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 673
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 674
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->b:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 675
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    const-string v1, "key_dialog_id"

    .line 648
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->d:I

    .line 649
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->a:Landroidx/fragment/app/Fragment;

    const/4 v0, -0x1

    const-string v1, "key_parent_fragment_id"

    .line 650
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 651
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->a:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    .line 652
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->a:Landroidx/fragment/app/Fragment;

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->a:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/android/settings/e;

    if-nez v1, :cond_2

    .line 655
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->a:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_1

    .line 657
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 658
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must implement "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Lcom/android/settings/e;

    .line 660
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 663
    :cond_2
    instance-of p1, v0, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz p1, :cond_3

    .line 665
    check-cast v0, Lcom/android/settings/SettingsPreferenceFragment;

    iput-object p0, v0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 668
    :cond_3
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->a:Landroidx/fragment/app/Fragment;

    check-cast p1, Lcom/android/settings/e;

    iget v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->d:I

    invoke-interface {p1, v0}, Lcom/android/settings/e;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 2

    .line 693
    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onDetach()V

    .line 696
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->a:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v1, :cond_0

    .line 698
    check-cast v0, Lcom/android/settings/SettingsPreferenceFragment;

    iget-object v0, v0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-ne v0, p0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->a:Landroidx/fragment/app/Fragment;

    check-cast v0, Lcom/android/settings/SettingsPreferenceFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 681
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 682
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->f:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 683
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 626
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 627
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->a:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 628
    iget v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->d:I

    const-string v1, "key_dialog_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 629
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getId()I

    move-result v0

    const-string v1, "key_parent_fragment_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 635
    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onStart()V

    .line 637
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->a:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v1, :cond_0

    .line 640
    check-cast v0, Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0, p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDialogShowing(Landroidx/fragment/app/DialogFragment;)V

    :cond_0
    return-void
.end method
