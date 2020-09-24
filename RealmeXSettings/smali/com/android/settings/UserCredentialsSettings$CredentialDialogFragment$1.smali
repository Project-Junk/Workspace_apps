.class final Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;
.super Ljava/lang/Object;
.source "UserCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/android/settings/UserCredentialsSettings$b;

.field final synthetic c:Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;ILcom/android/settings/UserCredentialsSettings$b;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;->c:Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;

    iput p2, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;->a:I

    iput-object p3, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;->b:Lcom/android/settings/UserCredentialsSettings$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 145
    iget-object p2, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;->c:Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;

    .line 146
    invoke-virtual {p2}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget v0, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;->a:I

    const-string v1, "no_config_credentials"

    invoke-static {p2, v1, v0}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;->c:Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Lcom/android/settingslib/g$a;)V

    goto :goto_0

    .line 151
    :cond_0
    new-instance p2, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$a;

    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;->c:Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;->c:Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;

    invoke-virtual {v2}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-direct {p2, v0, v1, v2}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$a;-><init>(Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/settings/UserCredentialsSettings$b;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;->b:Lcom/android/settings/UserCredentialsSettings$b;

    aput-object v2, v0, v1

    .line 152
    invoke-virtual {p2, v0}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 154
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
