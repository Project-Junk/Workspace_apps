.class Lcom/android/keyguard/KeyguardSimPukView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPukView;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1

    .line 73
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSimStateChanged(subId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",state="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyguardSimPukView"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-object p1, Lcom/android/keyguard/KeyguardSimPukView$4;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p3}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    .line 88
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->resetState()V

    goto :goto_0

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    const/4 p3, -0x1

    invoke-static {p1, p3}, Lcom/android/keyguard/KeyguardSimPukView;->access$102(Lcom/android/keyguard/KeyguardSimPukView;I)I

    .line 79
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {p1, p2}, Lcom/android/keyguard/KeyguardSimPukView;->access$202(Lcom/android/keyguard/KeyguardSimPukView;Z)Z

    .line 82
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz p1, :cond_1

    .line 83
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    invoke-interface {p0, p2, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    :cond_1
    :goto_0
    return-void
.end method
