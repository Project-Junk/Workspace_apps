.class Lcom/android/keyguard/KeyguardUpdateMonitor$11$3;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor$11;->onAuthenticationHelp(ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardUpdateMonitor$11;

.field final synthetic val$helpMsgId:I

.field final synthetic val$helpString:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor$11;Ljava/lang/CharSequence;I)V
    .locals 0

    .line 1633
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11$3;->this$1:Lcom/android/keyguard/KeyguardUpdateMonitor$11;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11$3;->val$helpString:Ljava/lang/CharSequence;

    iput p3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11$3;->val$helpMsgId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1636
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11$3;->val$helpString:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 1637
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FingerprintManager, onAuthenticationHelp, helpMsgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11$3;->val$helpMsgId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardUpdateMonitor"

    invoke-static {v2, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11$3;->this$1:Lcom/android/keyguard/KeyguardUpdateMonitor$11;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11$3;->val$helpMsgId:I

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4600(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V

    return-void
.end method
