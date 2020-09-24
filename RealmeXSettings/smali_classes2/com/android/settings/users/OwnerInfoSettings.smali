.class public Lcom/android/settings/users/OwnerInfoSettings;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "OwnerInfoSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:I

.field private f:Lcom/android/internal/widget/LockPatternUtils;

.field private g:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    new-instance v0, Lcom/android/settings/users/OwnerInfoSettings;

    invoke-direct {v0}, Lcom/android/settings/users/OwnerInfoSettings;-><init>()V

    const/4 v1, 0x0

    .line 93
    invoke-virtual {v0, p0, v1}, Lcom/android/settings/users/OwnerInfoSettings;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "ownerInfo"

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/users/OwnerInfoSettings;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x213

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/android/settings/users/OwnerInfoSettings;->g:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 80
    iget-object p2, p0, Lcom/android/settings/users/OwnerInfoSettings;->f:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/settings/users/OwnerInfoSettings;->b:I

    invoke-virtual {p2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfoEnabled(ZI)V

    .line 81
    iget-object p2, p0, Lcom/android/settings/users/OwnerInfoSettings;->f:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/settings/users/OwnerInfoSettings;->b:I

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfo(Ljava/lang/String;I)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/users/OwnerInfoSettings;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/android/settings/security/OwnerInfoPreferenceController$a;

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/users/OwnerInfoSettings;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/security/OwnerInfoPreferenceController$a;

    invoke-interface {p1}, Lcom/android/settings/security/OwnerInfoPreferenceController$a;->c()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/users/OwnerInfoSettings;->b:I

    .line 51
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/users/OwnerInfoSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/users/OwnerInfoSettings;->f:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/users/OwnerInfoSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0244

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/OwnerInfoSettings;->a:Landroid/view/View;

    .line 1067
    iget-object p1, p0, Lcom/android/settings/users/OwnerInfoSettings;->f:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/settings/users/OwnerInfoSettings;->b:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object p1

    .line 1069
    iget-object v0, p0, Lcom/android/settings/users/OwnerInfoSettings;->a:Landroid/view/View;

    const v1, 0x7f0a04a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/users/OwnerInfoSettings;->g:Landroid/widget/EditText;

    .line 1070
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/android/settings/users/OwnerInfoSettings;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1072
    iget-object v0, p0, Lcom/android/settings/users/OwnerInfoSettings;->g:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 58
    :cond_0
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/users/OwnerInfoSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120fed

    .line 59
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/users/OwnerInfoSettings;->a:Landroid/view/View;

    .line 60
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1212ca

    .line 61
    invoke-virtual {p1, v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120491

    .line 62
    invoke-virtual {p1, v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
