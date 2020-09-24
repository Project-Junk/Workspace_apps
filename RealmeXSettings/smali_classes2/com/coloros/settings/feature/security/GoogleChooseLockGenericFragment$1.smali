.class final Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$1;
.super Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
.source "GoogleChooseLockGenericFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->d(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;I)V
    .locals 0

    .line 694
    iput-object p1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$1;->b:Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;

    iput p2, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$1;->a:I

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V
    .locals 0

    .line 698
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Fingerprint removed: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ChooseLockGenericFragment"

    invoke-static {p3, p2}, Lcom/coloros/settings/utils/ak;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result p1

    if-nez p1, :cond_0

    .line 700
    iget-object p1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$1;->b:Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;

    iget p2, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$1;->a:I

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->a(Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;I)V

    :cond_0
    return-void
.end method

.method public final onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 0

    .line 706
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result p1

    if-nez p1, :cond_0

    .line 707
    iget-object p1, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$1;->b:Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;

    iget p2, p0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$1;->a:I

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;->a(Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;I)V

    :cond_0
    return-void
.end method
