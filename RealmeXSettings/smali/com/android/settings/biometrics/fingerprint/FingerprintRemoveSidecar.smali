.class public Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "FingerprintRemoveSidecar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$a;,
        Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$b;
    }
.end annotation


# instance fields
.field a:Landroid/hardware/fingerprint/Fingerprint;

.field b:Landroid/hardware/fingerprint/FingerprintManager;

.field c:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

.field private d:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$a;

.field private e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 54
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->c:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    .line 90
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->e:Ljava/util/Queue;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;)Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$a;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->d:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$a;

    return-object p0
.end method

.method static synthetic b(Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;)Ljava/util/Queue;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->e:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic c(Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;)Landroid/hardware/fingerprint/Fingerprint;
    .locals 1

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->a:Landroid/hardware/fingerprint/Fingerprint;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$a;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->d:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$a;

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 105
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 107
    instance-of v1, v0, Landroid/hardware/fingerprint/Fingerprint;

    if-eqz v1, :cond_1

    .line 108
    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-interface {p1, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$a;->a(Landroid/hardware/fingerprint/Fingerprint;)V

    goto :goto_0

    .line 109
    :cond_1
    instance-of v1, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$b;

    if-eqz v1, :cond_0

    .line 110
    check-cast v0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$b;

    .line 111
    iget-object v0, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$b;->c:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$a;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 115
    :cond_2
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->d:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$a;

    return-void
.end method

.method final a()Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->a:Landroid/hardware/fingerprint/Fingerprint;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x3a6

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 99
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->setRetainInstance(Z)V

    return-void
.end method
