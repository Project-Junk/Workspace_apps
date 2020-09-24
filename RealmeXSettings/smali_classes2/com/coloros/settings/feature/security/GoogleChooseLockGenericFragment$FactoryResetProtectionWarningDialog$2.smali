.class final Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$FactoryResetProtectionWarningDialog$2;
.super Ljava/lang/Object;
.source "GoogleChooseLockGenericFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$FactoryResetProtectionWarningDialog;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$FactoryResetProtectionWarningDialog;Landroid/os/Bundle;)V
    .locals 0

    .line 896
    iput-object p1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$FactoryResetProtectionWarningDialog$2;->b:Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    iput-object p2, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$FactoryResetProtectionWarningDialog$2;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 899
    iget-object p1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$FactoryResetProtectionWarningDialog$2;->b:Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;

    if-eqz p1, :cond_0

    .line 901
    iget-object p2, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$FactoryResetProtectionWarningDialog$2;->a:Landroid/os/Bundle;

    const-string v0, "unlockMethodToSet"

    .line 902
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 901
    invoke-static {p1, p2}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->a(Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
