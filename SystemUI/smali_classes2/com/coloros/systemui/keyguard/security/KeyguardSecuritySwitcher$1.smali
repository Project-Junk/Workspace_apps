.class Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardSecuritySwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->initAppearAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$1;->this$0:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 97
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$1;->this$0:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->access$002(Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;Z)Z

    .line 98
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$1;->this$0:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->access$102(Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 103
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$1;->this$0:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->access$002(Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;Z)Z

    .line 104
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$1;->this$0:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->access$100(Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$1;->this$0:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->access$100(Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 106
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$1;->this$0:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->access$102(Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    return-void
.end method
