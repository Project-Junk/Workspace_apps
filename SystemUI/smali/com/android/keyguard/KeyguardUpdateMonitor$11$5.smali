.class Lcom/android/keyguard/KeyguardUpdateMonitor$11$5;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor$11;->onAuthenticationAcquired(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardUpdateMonitor$11;

.field final synthetic val$acquireInfo:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor$11;I)V
    .locals 0

    .line 1678
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11$5;->this$1:Lcom/android/keyguard/KeyguardUpdateMonitor$11;

    iput p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11$5;->val$acquireInfo:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FingerprintManager, onAuthenticationAcquired, acquireInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11$5;->val$acquireInfo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11$5;->this$1:Lcom/android/keyguard/KeyguardUpdateMonitor$11;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11$5;->val$acquireInfo:I

    invoke-static {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4800(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    return-void
.end method
