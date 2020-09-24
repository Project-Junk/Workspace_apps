.class final Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$b;
.super Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback$Stub;
.source "ConfirmDeviceCredentialBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;)V
    .locals 1

    .line 297
    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback$Stub;-><init>()V

    .line 298
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$b;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;

    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->finish()V

    :cond_0
    return-void
.end method
