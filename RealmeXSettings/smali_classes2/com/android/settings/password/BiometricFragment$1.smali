.class final Lcom/android/settings/password/BiometricFragment$1;
.super Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.source "BiometricFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/BiometricFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/password/BiometricFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/password/BiometricFragment;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/settings/password/BiometricFragment$1;->a:Lcom/android/settings/password/BiometricFragment;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method

.method private synthetic a(ILjava/lang/CharSequence;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/settings/password/BiometricFragment$1;->a:Lcom/android/settings/password/BiometricFragment;

    invoke-static {v0}, Lcom/android/settings/password/BiometricFragment;->d(Lcom/android/settings/password/BiometricFragment;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic a(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/settings/password/BiometricFragment$1;->a:Lcom/android/settings/password/BiometricFragment;

    invoke-static {v0}, Lcom/android/settings/password/BiometricFragment;->d(Lcom/android/settings/password/BiometricFragment;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V

    return-void
.end method

.method public static synthetic lambda$ihvaQkAGT3XQRofRAhiuBT7Qq50(Lcom/android/settings/password/BiometricFragment$1;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/BiometricFragment$1;->a(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V

    return-void
.end method

.method public static synthetic lambda$zOqe-TJsduNulAp3GY4baTMCFq8(Lcom/android/settings/password/BiometricFragment$1;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/password/BiometricFragment$1;->a(ILjava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 69
    iget-object v0, p0, Lcom/android/settings/password/BiometricFragment$1;->a:Lcom/android/settings/password/BiometricFragment;

    invoke-static {v0}, Lcom/android/settings/password/BiometricFragment;->a(Lcom/android/settings/password/BiometricFragment;)Z

    .line 70
    iget-object v0, p0, Lcom/android/settings/password/BiometricFragment$1;->a:Lcom/android/settings/password/BiometricFragment;

    invoke-static {v0}, Lcom/android/settings/password/BiometricFragment;->b(Lcom/android/settings/password/BiometricFragment;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$zOqe-TJsduNulAp3GY4baTMCFq8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$zOqe-TJsduNulAp3GY4baTMCFq8;-><init>(Lcom/android/settings/password/BiometricFragment$1;ILjava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 73
    iget-object p1, p0, Lcom/android/settings/password/BiometricFragment$1;->a:Lcom/android/settings/password/BiometricFragment;

    invoke-static {p1}, Lcom/android/settings/password/BiometricFragment;->c(Lcom/android/settings/password/BiometricFragment;)V

    return-void
.end method

.method public final onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/settings/password/BiometricFragment$1;->a:Lcom/android/settings/password/BiometricFragment;

    invoke-static {v0}, Lcom/android/settings/password/BiometricFragment;->a(Lcom/android/settings/password/BiometricFragment;)Z

    .line 79
    iget-object v0, p0, Lcom/android/settings/password/BiometricFragment$1;->a:Lcom/android/settings/password/BiometricFragment;

    invoke-static {v0}, Lcom/android/settings/password/BiometricFragment;->b(Lcom/android/settings/password/BiometricFragment;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$ihvaQkAGT3XQRofRAhiuBT7Qq50;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$ihvaQkAGT3XQRofRAhiuBT7Qq50;-><init>(Lcom/android/settings/password/BiometricFragment$1;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 82
    iget-object p1, p0, Lcom/android/settings/password/BiometricFragment$1;->a:Lcom/android/settings/password/BiometricFragment;

    invoke-static {p1}, Lcom/android/settings/password/BiometricFragment;->c(Lcom/android/settings/password/BiometricFragment;)V

    return-void
.end method
