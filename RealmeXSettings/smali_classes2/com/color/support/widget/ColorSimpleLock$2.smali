.class Lcom/color/support/widget/ColorSimpleLock$2;
.super Ljava/lang/Object;
.source "ColorSimpleLock.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorSimpleLock;->createMorphingAnimationOutLinedToFilled()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorSimpleLock;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorSimpleLock;)V
    .locals 0

    .line 801
    iput-object p1, p0, Lcom/color/support/widget/ColorSimpleLock$2;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 815
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock$2;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/color/support/widget/ColorSimpleLock;->access$002(Lcom/color/support/widget/ColorSimpleLock;Z)Z

    .line 816
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock$2;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorSimpleLock;->invalidate()V

    .line 817
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock$2;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    invoke-static {p1}, Lcom/color/support/widget/ColorSimpleLock;->access$100(Lcom/color/support/widget/ColorSimpleLock;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 818
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock$2;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    invoke-static {p1}, Lcom/color/support/widget/ColorSimpleLock;->access$200(Lcom/color/support/widget/ColorSimpleLock;)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock$2;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    invoke-static {p1}, Lcom/color/support/widget/ColorSimpleLock;->access$200(Lcom/color/support/widget/ColorSimpleLock;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 819
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock$2;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/color/support/widget/ColorSimpleLock;->access$002(Lcom/color/support/widget/ColorSimpleLock;Z)Z

    return-void

    .line 822
    :cond_0
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock$2;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    const/4 v1, 0x5

    invoke-static {p1, v1}, Lcom/color/support/widget/ColorSimpleLock;->access$302(Lcom/color/support/widget/ColorSimpleLock;I)I

    .line 823
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock$2;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorSimpleLock;->createFailedAnimator()Landroid/animation/Animator;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/color/support/widget/ColorSimpleLock;->access$202(Lcom/color/support/widget/ColorSimpleLock;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 824
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock$2;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    invoke-static {p1}, Lcom/color/support/widget/ColorSimpleLock;->access$200(Lcom/color/support/widget/ColorSimpleLock;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 825
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock$2;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    invoke-static {p1, v0}, Lcom/color/support/widget/ColorSimpleLock;->access$402(Lcom/color/support/widget/ColorSimpleLock;Z)Z

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 805
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock$2;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/color/support/widget/ColorSimpleLock;->access$002(Lcom/color/support/widget/ColorSimpleLock;Z)Z

    return-void
.end method
