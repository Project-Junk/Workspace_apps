.class public final synthetic Lcom/coloros/settings/feature/fingerprint/-$$Lambda$ColorFingerprintSettings$FingerprintSettingsFragment$iUM439F8FeGYxeDNWWWtODWuFX0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;

.field private final synthetic f$1:Landroid/hardware/fingerprint/Fingerprint;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/-$$Lambda$ColorFingerprintSettings$FingerprintSettingsFragment$iUM439F8FeGYxeDNWWWtODWuFX0;->f$0:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;

    iput-object p2, p0, Lcom/coloros/settings/feature/fingerprint/-$$Lambda$ColorFingerprintSettings$FingerprintSettingsFragment$iUM439F8FeGYxeDNWWWtODWuFX0;->f$1:Landroid/hardware/fingerprint/Fingerprint;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/-$$Lambda$ColorFingerprintSettings$FingerprintSettingsFragment$iUM439F8FeGYxeDNWWWtODWuFX0;->f$0:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;

    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/-$$Lambda$ColorFingerprintSettings$FingerprintSettingsFragment$iUM439F8FeGYxeDNWWWtODWuFX0;->f$1:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v0, v1, p1, p2}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->lambda$showDeleteFingerConfirmDialog$5$ColorFingerprintSettings$FingerprintSettingsFragment(Landroid/hardware/fingerprint/Fingerprint;Landroid/content/DialogInterface;I)V

    return-void
.end method
