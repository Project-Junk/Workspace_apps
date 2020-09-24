.class Lcom/color/support/widget/ColorSimpleLock$7;
.super Ljava/lang/Object;
.source "ColorSimpleLock.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorSimpleLock;->createFailedAnimator()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorSimpleLock;

.field final synthetic val$animatorY:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorSimpleLock;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 917
    iput-object p1, p0, Lcom/color/support/widget/ColorSimpleLock$7;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    iput-object p2, p0, Lcom/color/support/widget/ColorSimpleLock$7;->val$animatorY:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 947
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock$7;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorSimpleLock;->setInternalTranslationX(F)V

    .line 948
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock$7;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/color/support/widget/ColorSimpleLock;->access$602(Lcom/color/support/widget/ColorSimpleLock;Z)Z

    .line 950
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock$7;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/color/support/widget/ColorSimpleLock;->access$102(Lcom/color/support/widget/ColorSimpleLock;Z)Z

    .line 951
    iget-object p0, p0, Lcom/color/support/widget/ColorSimpleLock$7;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSimpleLock;->invalidate()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 922
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock$7;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/color/support/widget/ColorSimpleLock;->access$302(Lcom/color/support/widget/ColorSimpleLock;I)I

    .line 923
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock$7;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorSimpleLock;->setInternalTranslationX(F)V

    .line 924
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock$7;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/color/support/widget/ColorSimpleLock;->access$602(Lcom/color/support/widget/ColorSimpleLock;Z)Z

    .line 925
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock$7;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/color/support/widget/ColorSimpleLock;->access$102(Lcom/color/support/widget/ColorSimpleLock;Z)Z

    .line 926
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock$7;->val$animatorY:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 927
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock$7;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    invoke-static {p1}, Lcom/color/support/widget/ColorSimpleLock;->access$700(Lcom/color/support/widget/ColorSimpleLock;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 928
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock$7;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    invoke-static {p1}, Lcom/color/support/widget/ColorSimpleLock;->access$400(Lcom/color/support/widget/ColorSimpleLock;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 929
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock$7;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    invoke-static {p1}, Lcom/color/support/widget/ColorSimpleLock;->access$800(Lcom/color/support/widget/ColorSimpleLock;)V

    .line 930
    iget-object p0, p0, Lcom/color/support/widget/ColorSimpleLock$7;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    invoke-static {p0, v0}, Lcom/color/support/widget/ColorSimpleLock;->access$402(Lcom/color/support/widget/ColorSimpleLock;Z)Z

    goto :goto_0

    .line 933
    :cond_0
    iget-object p0, p0, Lcom/color/support/widget/ColorSimpleLock$7;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    invoke-static {p0, v0}, Lcom/color/support/widget/ColorSimpleLock;->access$702(Lcom/color/support/widget/ColorSimpleLock;Z)Z

    :cond_1
    :goto_0
    return-void
.end method
