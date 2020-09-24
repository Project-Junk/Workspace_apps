.class Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$3;
.super Ljava/lang/Object;
.source "ColorFingerprintSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->showErrorDialog(Landroid/app/Activity;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$3;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 314
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$3;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->access$502(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;Z)Z

    return-void
.end method
