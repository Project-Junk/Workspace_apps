.class final Lcom/coloros/settings/privacy/a$a;
.super Landroid/hardware/face/FaceManager$AuthenticationCallback;
.source "ConfirmBiometricInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/privacy/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
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

    .line 525
    invoke-direct {p0}, Landroid/hardware/face/FaceManager$AuthenticationCallback;-><init>()V

    .line 526
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/settings/privacy/a$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/privacy/a;B)V
    .locals 0

    .line 521
    invoke-direct {p0, p1}, Lcom/coloros/settings/privacy/a$a;-><init>(Lcom/coloros/settings/privacy/a;)V

    return-void
.end method


# virtual methods
.method public final onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Face onAuthenticationError, errorCode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errStr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ConfirmBiometricInfo"

    invoke-static {v0, p2}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object p2, p0, Lcom/coloros/settings/privacy/a$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coloros/settings/privacy/a;

    if-nez p2, :cond_0

    const-string p1, "Face onAuthenticationError, Null parent activity for weakReference"

    .line 535
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 538
    :cond_0
    invoke-static {p2, p1}, Lcom/coloros/settings/privacy/a;->a(Lcom/coloros/settings/privacy/a;I)V

    return-void
.end method

.method public final onAuthenticationFailed()V
    .locals 2

    const-string v0, "ConfirmBiometricInfo"

    const-string v1, "Face onAuthenticationFailed"

    .line 565
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    iget-object v1, p0, Lcom/coloros/settings/privacy/a$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/privacy/a;

    if-nez v1, :cond_0

    const-string v1, "Face onAuthenticationFailed, Null parent activity for weakReference"

    .line 568
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 571
    :cond_0
    invoke-static {v1}, Lcom/coloros/settings/privacy/a;->b(Lcom/coloros/settings/privacy/a;)V

    return-void
.end method

.method public final onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 2

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Face onAuthenticationHelp\uff0c helpCode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", helpStr = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ConfirmBiometricInfo"

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object p1, p0, Lcom/coloros/settings/privacy/a$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/privacy/a;

    if-nez p1, :cond_0

    const-string p1, "Face onAuthenticationHelp, Null parent activity for weakReference"

    .line 546
    invoke-static {p2, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 549
    :cond_0
    invoke-static {}, Lcom/coloros/settings/privacy/a;->l()V

    return-void
.end method

.method public final onAuthenticationSucceeded(Landroid/hardware/face/FaceManager$AuthenticationResult;)V
    .locals 1

    const-string p1, "ConfirmBiometricInfo"

    const-string v0, "Face onAuthenticationSucceeded"

    .line 554
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/coloros/settings/privacy/a$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/privacy/a;

    if-nez v0, :cond_0

    const-string v0, "Face onAuthenticationSucceeded, Null parent activity for weakReference"

    .line 557
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 560
    :cond_0
    invoke-static {v0}, Lcom/coloros/settings/privacy/a;->a(Lcom/coloros/settings/privacy/a;)V

    return-void
.end method
