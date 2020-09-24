.class Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView$1;
.super Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView$MSimCheckSimPukThread;
.source "MSimKeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->verifyPukAndUpdatePin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;

    invoke-direct/range {p0 .. p5}, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView$MSimCheckSimPukThread;-><init>(Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public onSimCheckResponse(ZI)V
    .locals 4

    .line 121
    invoke-static {}, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimCheckResponse success="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->access$200(Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "sim_puk"

    invoke-static {v0, p1, v1}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityStatistic;->sendOnPasswordChecked(Landroid/content/Context;ZLjava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->hideProgressDialog()V

    .line 124
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->mStateMachine:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->reset()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->access$300(Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget p2, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView$1;->mCheckSubId:I

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 129
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->access$400(Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p2

    invoke-interface {p1, v1, p2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_1

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;

    new-array v2, v1, [I

    iget v3, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView$1;->mCheckSlotId:I

    aput v3, v2, v0

    invoke-virtual {p1, v2}, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->getHeadingMsg([I)Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnlySingleCard()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "1"

    const-string v3, ""

    .line 133
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-static {}, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onSimCheckResponse replace the notice string"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, -0x1

    if-ne v2, p2, :cond_2

    .line 137
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->access$500(Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;)Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1103bb

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 139
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->access$600(Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;)Landroid/content/Context;

    move-result-object p1

    const v3, 0x7f110655

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 141
    :goto_0
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;

    iget-object p2, p2, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->mMessageArea:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;

    invoke-virtual {p2, p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->setMessage(Ljava/lang/String;)V

    .line 142
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;

    iget-object p1, p1, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->mKeyguardUtils:Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->vibrateLongWhenVerify()V

    .line 144
    :goto_1
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->access$700(Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 145
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;

    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->mSimCheckInProgress:Z

    return-void
.end method
