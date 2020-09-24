.class final Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$FactoryResetProtectionWarningDialog$1;
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
.field final synthetic a:Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$FactoryResetProtectionWarningDialog;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$FactoryResetProtectionWarningDialog;)V
    .locals 0

    .line 908
    iput-object p1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$FactoryResetProtectionWarningDialog$1;->a:Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 911
    iget-object p1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$FactoryResetProtectionWarningDialog$1;->a:Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->dismiss()V

    return-void
.end method
