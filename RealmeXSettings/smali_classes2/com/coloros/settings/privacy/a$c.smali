.class final Lcom/coloros/settings/privacy/a$c;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "ConfirmBiometricInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/privacy/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coloros/settings/privacy/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/coloros/settings/privacy/a;)V
    .locals 1

    .line 603
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    .line 604
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/settings/privacy/a$c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/privacy/a;B)V
    .locals 0

    .line 599
    invoke-direct {p0, p1}, Lcom/coloros/settings/privacy/a$c;-><init>(Lcom/coloros/settings/privacy/a;)V

    return-void
.end method


# virtual methods
.method public final onAuthenticationAcquired(I)V
    .locals 2

    .line 647
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fingerprint onAuthenticationAcquired, acquireInfo = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmBiometricInfo"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lcom/coloros/settings/privacy/a$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/privacy/a;

    if-nez v0, :cond_0

    const-string p1, "Fingerprint onAuthenticationSucceeded, Null parent activity for weakReference"

    .line 650
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 653
    :cond_0
    iput p1, v0, Lcom/coloros/settings/privacy/a;->g:I

    return-void
.end method

.method public final onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fingerprint onAuthenticationError, errorCode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorStr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ConfirmBiometricInfo"

    invoke-static {v0, p2}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object p2, p0, Lcom/coloros/settings/privacy/a$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coloros/settings/privacy/a;

    if-nez p2, :cond_0

    const-string p1, "Fingerprint onAuthenticationError, Null parent activity for weakReference"

    .line 612
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 615
    :cond_0
    invoke-static {p2, p1}, Lcom/coloros/settings/privacy/a;->b(Lcom/coloros/settings/privacy/a;I)V

    return-void
.end method

.method public final onAuthenticationFailed()V
    .locals 3

    const-string v0, "ConfirmBiometricInfo"

    const-string v1, "Fingerprint onAuthenticationFailed"

    .line 636
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v1, p0, Lcom/coloros/settings/privacy/a$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/privacy/a;

    if-nez v1, :cond_0

    const-string v1, "Fingerprint onAuthenticationFailed, Null parent activity for weakReference"

    .line 639
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1322
    :cond_0
    iget-object v0, v1, Lcom/coloros/settings/privacy/a;->b:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/coloros/settings/utils/al;->c(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1325
    iget-object v0, v1, Lcom/coloros/settings/privacy/a;->r:Landroid/os/Vibrator;

    if-nez v0, :cond_1

    .line 1326
    iget-object v0, v1, Lcom/coloros/settings/privacy/a;->b:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    const-string v2, "vibrator"

    invoke-virtual {v0, v2}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, v1, Lcom/coloros/settings/privacy/a;->r:Landroid/os/Vibrator;

    .line 1328
    :cond_1
    iget-object v0, v1, Lcom/coloros/settings/privacy/a;->r:Landroid/os/Vibrator;

    sget-object v1, Lcom/coloros/settings/privacy/a;->q:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_2
    return-void
.end method

.method public final onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 2

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fingerprint onAuthenticationHelp, helpCode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", helpStr = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ConfirmBiometricInfo"

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 1

    const-string p1, "ConfirmBiometricInfo"

    const-string v0, "onAuthenticationSucceeded"

    .line 625
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/coloros/settings/privacy/a$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/privacy/a;

    if-nez v0, :cond_0

    const-string v0, "Fingerprint onAuthenticationSucceeded, Null parent activity for weakReference"

    .line 628
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 631
    :cond_0
    invoke-static {v0}, Lcom/coloros/settings/privacy/a;->c(Lcom/coloros/settings/privacy/a;)V

    return-void
.end method
