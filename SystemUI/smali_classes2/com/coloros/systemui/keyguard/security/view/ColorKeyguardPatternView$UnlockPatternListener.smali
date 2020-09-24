.class Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView$UnlockPatternListener;
.super Ljava/lang/Object;
.source "ColorKeyguardPatternView.java"

# interfaces
.implements Lcom/color/support/widget/ColorLockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockPatternListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;


# direct methods
.method private constructor <init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView$UnlockPatternListener;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView$1;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView$UnlockPatternListener;-><init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;)V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/color/support/widget/ColorLockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 129
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView$UnlockPatternListener;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->access$500(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    const-string v0, "KeyguardPatternView"

    const-string v1, "onPatternCleared()"

    .line 123
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView$UnlockPatternListener;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->access$102(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;Z)Z

    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/color/support/widget/ColorLockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView$UnlockPatternListener;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->access$102(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;Z)Z

    .line 135
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPatternDetected(), pattern.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardPatternView"

    invoke-static {v3, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView$UnlockPatternListener;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;

    invoke-virtual {v2, v1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->setInputEnabled(Z)V

    .line 138
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView$UnlockPatternListener;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->clearPendingLockCheck()V

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const-string p1, "onPatternDetected(), size < 4, wrong."

    .line 140
    invoke-static {v3, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView$UnlockPatternListener;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->access$600(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;)V

    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView$UnlockPatternListener;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->setHypnusAction()V

    .line 145
    invoke-static {p1}, Lcom/color/support/widget/ColorLockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "onPatternDetected(), patternStr empty."

    .line 147
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView$UnlockPatternListener;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->access$600(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;)V

    return-void

    .line 151
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView$UnlockPatternListener;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->startPendingLockCheck(Ljava/lang/String;)V

    return-void
.end method

.method public onPatternStart()V
    .locals 2

    const-string v0, "KeyguardPatternView"

    const-string v1, "onPatternStart()"

    .line 115
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView$UnlockPatternListener;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->access$102(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;Z)Z

    .line 117
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView$UnlockPatternListener;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->access$300(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;)Lcom/color/support/widget/ColorLockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView$UnlockPatternListener;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->access$200(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorLockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 118
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView$UnlockPatternListener;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->access$400(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;)V

    return-void
.end method
