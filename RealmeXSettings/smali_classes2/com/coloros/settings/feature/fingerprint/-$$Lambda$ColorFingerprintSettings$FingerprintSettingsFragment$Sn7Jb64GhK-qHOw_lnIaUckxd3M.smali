.class public final synthetic Lcom/coloros/settings/feature/fingerprint/-$$Lambda$ColorFingerprintSettings$FingerprintSettingsFragment$Sn7Jb64GhK-qHOw_lnIaUckxd3M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;

.field private final synthetic f$1:Lcom/color/support/widget/ColorEditText;

.field private final synthetic f$2:Landroid/hardware/fingerprint/Fingerprint;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;Lcom/color/support/widget/ColorEditText;Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/-$$Lambda$ColorFingerprintSettings$FingerprintSettingsFragment$Sn7Jb64GhK-qHOw_lnIaUckxd3M;->f$0:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;

    iput-object p2, p0, Lcom/coloros/settings/feature/fingerprint/-$$Lambda$ColorFingerprintSettings$FingerprintSettingsFragment$Sn7Jb64GhK-qHOw_lnIaUckxd3M;->f$1:Lcom/color/support/widget/ColorEditText;

    iput-object p3, p0, Lcom/coloros/settings/feature/fingerprint/-$$Lambda$ColorFingerprintSettings$FingerprintSettingsFragment$Sn7Jb64GhK-qHOw_lnIaUckxd3M;->f$2:Landroid/hardware/fingerprint/Fingerprint;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/-$$Lambda$ColorFingerprintSettings$FingerprintSettingsFragment$Sn7Jb64GhK-qHOw_lnIaUckxd3M;->f$0:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;

    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/-$$Lambda$ColorFingerprintSettings$FingerprintSettingsFragment$Sn7Jb64GhK-qHOw_lnIaUckxd3M;->f$1:Lcom/color/support/widget/ColorEditText;

    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/-$$Lambda$ColorFingerprintSettings$FingerprintSettingsFragment$Sn7Jb64GhK-qHOw_lnIaUckxd3M;->f$2:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->lambda$showEditFingerprintDialog$2$ColorFingerprintSettings$FingerprintSettingsFragment(Lcom/color/support/widget/ColorEditText;Landroid/hardware/fingerprint/Fingerprint;Landroid/content/DialogInterface;I)V

    return-void
.end method
