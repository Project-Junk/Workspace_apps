.class Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$1;
.super Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$CheckSimPukThread;
.source "ColorKeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->verifyPukAndUpdatePin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$CheckSimPukThread;-><init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSimCheckResponse(ZI)V
    .locals 4

    .line 189
    invoke-static {}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimCheckResponse  success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", remaining = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->access$1000(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "sim_puk"

    invoke-static {v0, p1, v1}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityStatistic;->sendOnPasswordChecked(Landroid/content/Context;ZLjava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->hideProgressDialog()V

    .line 192
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mStateMachine:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->reset()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 195
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->reportSimUnlocked()V

    .line 197
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->access$1100(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p2

    invoke-interface {p1, v1, p2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_1

    :cond_0
    const/4 p1, -0x1

    if-ne p1, p2, :cond_1

    .line 201
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->access$1200(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;)Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1103bb

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 203
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM PUK "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;

    invoke-static {v2}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->access$1300(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f110655

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 205
    :goto_0
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;

    iget-object p2, p2, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mMessageArea:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;

    invoke-virtual {p2, p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->setMessage(Ljava/lang/String;)V

    .line 206
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;

    iget-object p1, p1, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mKeyguardUtils:Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->vibrateLongWhenVerify()V

    .line 208
    :goto_1
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->access$1400(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 209
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;

    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mSimCheckInProgress:Z

    return-void
.end method
