.class Lcom/android/keyguard/KeyguardUpdateMonitor$20;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;->handlePrivacyFingerAuthentication(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field final synthetic val$result:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 0

    .line 4350
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$20;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$20;->val$result:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 4354
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$20;->val$result:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    if-eqz v0, :cond_0

    .line 4355
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4358
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v0

    .line 4359
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$20;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6400(Lcom/android/keyguard/KeyguardUpdateMonitor;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4360
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oppo.engineer.OpenHideApp"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4361
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "finger_print_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.coloros.safecenter"

    .line 4362
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4363
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$20;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
