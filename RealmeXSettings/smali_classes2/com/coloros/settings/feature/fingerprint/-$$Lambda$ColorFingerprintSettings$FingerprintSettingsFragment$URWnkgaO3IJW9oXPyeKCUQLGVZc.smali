.class public final synthetic Lcom/coloros/settings/feature/fingerprint/-$$Lambda$ColorFingerprintSettings$FingerprintSettingsFragment$URWnkgaO3IJW9oXPyeKCUQLGVZc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/color/support/preference/ColorSwitchWithDividerPreference$a;


# instance fields
.field private final synthetic f$0:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;

.field private final synthetic f$1:Landroid/hardware/fingerprint/Fingerprint;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/-$$Lambda$ColorFingerprintSettings$FingerprintSettingsFragment$URWnkgaO3IJW9oXPyeKCUQLGVZc;->f$0:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;

    iput-object p2, p0, Lcom/coloros/settings/feature/fingerprint/-$$Lambda$ColorFingerprintSettings$FingerprintSettingsFragment$URWnkgaO3IJW9oXPyeKCUQLGVZc;->f$1:Landroid/hardware/fingerprint/Fingerprint;

    return-void
.end method


# virtual methods
.method public final onMainLayoutClick()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/-$$Lambda$ColorFingerprintSettings$FingerprintSettingsFragment$URWnkgaO3IJW9oXPyeKCUQLGVZc;->f$0:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;

    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/-$$Lambda$ColorFingerprintSettings$FingerprintSettingsFragment$URWnkgaO3IJW9oXPyeKCUQLGVZc;->f$1:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->lambda$addFingerprintItemPreferences$1$ColorFingerprintSettings$FingerprintSettingsFragment(Landroid/hardware/fingerprint/Fingerprint;)V

    return-void
.end method
