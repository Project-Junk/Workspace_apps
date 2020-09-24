.class Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardGlideTipView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->startSlideUpTipsAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView$3;->this$0:Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 277
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 278
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView$3;->this$0:Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->access$500(Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 271
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 272
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView$3;->this$0:Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->access$400(Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;)V

    return-void
.end method
