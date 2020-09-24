.class Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView$1;
.super Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView$CheckSimPinThread;
.source "ColorKeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->verifyPasswordAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;

    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView$CheckSimPinThread;-><init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSimCheckResponse(ZI)V
    .locals 4

    .line 98
    invoke-static {}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimCheckResponse(), success="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->access$200(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "sim_pin"

    invoke-static {v0, p1, v1}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityStatistic;->sendOnPasswordChecked(Landroid/content/Context;ZLjava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->hideProgressDialog()V

    .line 101
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->clearTexts()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->reportSimUnlocked()V

    .line 106
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->access$300(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_1

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;

    new-array v2, v1, [I

    invoke-virtual {p1, v2}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->getHeadingMsg([I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, -0x1

    if-ne v2, p2, :cond_1

    .line 110
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->access$400(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;)Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1103ba

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 112
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->access$500(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;)Landroid/content/Context;

    move-result-object p1

    const v3, 0x7f110655

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 114
    :goto_0
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;

    iget-object p2, p2, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->mMessageArea:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;

    invoke-virtual {p2, p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->setMessage(Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;

    iget-object p1, p1, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->mKeyguardUtils:Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->vibrateLongWhenVerify()V

    .line 117
    :goto_1
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->access$600(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 118
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;

    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->mSimCheckInProgress:Z

    return-void
.end method
