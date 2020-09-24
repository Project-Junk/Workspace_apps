.class Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$StateAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardSecuritySwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateAnimatorListener"
.end annotation


# instance fields
.field private mToState:I

.field final synthetic this$0:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;I)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$StateAnimatorListener;->this$0:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 139
    iput p2, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$StateAnimatorListener;->mToState:I

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 149
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$StateAnimatorListener;->this$0:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->access$300(Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;)I

    move-result p1

    .line 150
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$StateAnimatorListener;->this$0:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    iget v1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$StateAnimatorListener;->mToState:I

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->access$302(Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;I)I

    .line 151
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$StateAnimatorListener;->this$0:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->access$200(Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;)Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$OnStateChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$OnStateChangedListener;->onStateChangeFinish(I)V

    .line 152
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$StateAnimatorListener;->this$0:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->access$002(Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 144
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$StateAnimatorListener;->this$0:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->access$200(Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;)Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$OnStateChangedListener;

    move-result-object p1

    iget p0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$StateAnimatorListener;->mToState:I

    invoke-interface {p1, p0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$OnStateChangedListener;->onStateChangeStart(I)V

    return-void
.end method
