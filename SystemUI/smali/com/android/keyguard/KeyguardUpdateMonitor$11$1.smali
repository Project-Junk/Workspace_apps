.class Lcom/android/keyguard/KeyguardUpdateMonitor$11$1;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor$11;->onAuthenticationFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardUpdateMonitor$11;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor$11;)V
    .locals 0

    .line 1559
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11$1;->this$1:Lcom/android/keyguard/KeyguardUpdateMonitor$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "FingerprintManager, onAuthenticationFailed"

    .line 1562
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11$1;->this$1:Lcom/android/keyguard/KeyguardUpdateMonitor$11;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4000(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    return-void
.end method
