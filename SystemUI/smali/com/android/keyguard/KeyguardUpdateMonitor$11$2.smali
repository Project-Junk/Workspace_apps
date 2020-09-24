.class Lcom/android/keyguard/KeyguardUpdateMonitor$11$2;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor$11;->onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardUpdateMonitor$11;

.field final synthetic val$result:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor$11;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 0

    .line 1597
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11$2;->this$1:Lcom/android/keyguard/KeyguardUpdateMonitor$11;

    iput p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11$2;->val$userId:I

    iput-object p3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11$2;->val$result:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-wide/16 v0, 0x8

    const-string v2, "Fingerprint.AuthenticationSucceeded"

    .line 1600
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "FingerprintManager, onAuthenticationSucceeded"

    .line 1601
    invoke-static {v2, v3}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11$2;->this$1:Lcom/android/keyguard/KeyguardUpdateMonitor$11;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11$2;->val$userId:I

    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4400(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    .line 1605
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11$2;->this$1:Lcom/android/keyguard/KeyguardUpdateMonitor$11;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11$2;->val$result:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    invoke-static {v2, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4500(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    .line 1607
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method
