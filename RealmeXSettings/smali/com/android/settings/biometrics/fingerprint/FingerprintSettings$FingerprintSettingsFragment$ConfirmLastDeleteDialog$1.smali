.class final Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog$1;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;)V
    .locals 0

    .line 839
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 842
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
