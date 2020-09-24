.class public final Lcom/android/settings/b/a;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "FingerprintUiHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/b/a$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field private c:Landroid/os/CancellationSignal;

.field private d:I

.field private e:Landroid/content/Context;

.field private f:Lcom/android/settings/b/a$a;

.field private g:Landroid/hardware/fingerprint/FingerprintManager;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/b/a$a;I)V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    .line 49
    invoke-static {p1}, Lcom/android/settings/m;->h(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/b/a;->g:Landroid/hardware/fingerprint/FingerprintManager;

    .line 50
    iput-object p1, p0, Lcom/android/settings/b/a;->e:Landroid/content/Context;

    const/4 p1, -0x1

    .line 51
    iput p1, p0, Lcom/android/settings/b/a;->h:I

    .line 52
    iput-object p2, p0, Lcom/android/settings/b/a;->f:Lcom/android/settings/b/a$a;

    .line 53
    iput p3, p0, Lcom/android/settings/b/a;->d:I

    .line 54
    iget-object p1, p0, Lcom/android/settings/b/a;->g:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    .line 55
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/b/a;->g:Landroid/hardware/fingerprint/FingerprintManager;

    iget v0, p0, Lcom/android/settings/b/a;->d:I

    .line 56
    invoke-virtual {p1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    move p3, p2

    :cond_0
    iput-boolean p3, p0, Lcom/android/settings/b/a;->a:Z

    goto :goto_0

    .line 58
    :cond_1
    iput-boolean p3, p0, Lcom/android/settings/b/a;->a:Z

    .line 60
    :goto_0
    iput-boolean p2, p0, Lcom/android/settings/b/a;->b:Z

    return-void
.end method

.method public static a(I)I
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const p0, 0x7f120cfb

    goto :goto_0

    :cond_0
    const p0, 0x7f120cfa

    goto :goto_0

    :cond_1
    const p0, 0x7f120cf9

    goto :goto_0

    :cond_2
    const p0, 0x7f120cf8

    :goto_0
    return p0
.end method


# virtual methods
.method public final a()J
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/android/settings/b/a;->g:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Lcom/coloros/b/a;->a(Landroid/hardware/fingerprint/FingerprintManager;)J

    move-result-wide v0

    .line 97
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final a(Z)V
    .locals 2

    .line 114
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.intent.action.KEY_LOCK_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v1, "KeyLockMode"

    .line 115
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "ProcessName"

    const-string v1, "com.android.settings"

    .line 116
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    iget-object p1, p0, Lcom/android/settings/b/a;->e:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final b()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 104
    iget-boolean v0, p0, Lcom/android/settings/b/a;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/b/a;->b:Z

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings/b/a;->c:Landroid/os/CancellationSignal;

    const/4 v0, -0x1

    .line 106
    iput v0, p0, Lcom/android/settings/b/a;->h:I

    .line 107
    iget-object v0, p0, Lcom/android/settings/b/a;->g:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/b/a;->d:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->setActiveUser(I)V

    .line 108
    iget-object v2, p0, Lcom/android/settings/b/a;->g:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/b/a;->c:Landroid/os/CancellationSignal;

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/settings/b/a;->d:I

    move-object v6, p0

    invoke-virtual/range {v2 .. v8}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/settings/b/a;->c:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/android/settings/b/a;->c:Landroid/os/CancellationSignal;

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/settings/b/a;->c:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onAuthenticationAcquired(I)V
    .locals 0

    .line 151
    invoke-super {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationAcquired(I)V

    .line 152
    iput p1, p0, Lcom/android/settings/b/a;->h:I

    return-void
.end method

.method public final onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1

    .line 143
    invoke-super {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/b/a;->f:Lcom/android/settings/b/a$a;

    if-eqz v0, :cond_0

    .line 145
    invoke-interface {v0, p1, p2}, Lcom/android/settings/b/a$a;->onAuthenticationError(ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final onAuthenticationFailed()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/android/settings/b/a;->f:Lcom/android/settings/b/a$a;

    if-eqz v0, :cond_0

    .line 158
    iget v1, p0, Lcom/android/settings/b/a;->h:I

    invoke-interface {v0, v1}, Lcom/android/settings/b/a$a;->onAuthenticationFailed(I)V

    :cond_0
    return-void
.end method

.method public final onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/settings/b/a;->f:Lcom/android/settings/b/a$a;

    if-eqz v0, :cond_0

    .line 165
    invoke-interface {v0, p1, p2}, Lcom/android/settings/b/a$a;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 1

    .line 135
    invoke-super {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/b/a;->f:Lcom/android/settings/b/a$a;

    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v0, p1}, Lcom/android/settings/b/a$a;->onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    :cond_0
    return-void
.end method
