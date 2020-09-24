.class Lcom/color/support/widget/ColorSimpleLock$4;
.super Ljava/lang/Object;
.source "ColorSimpleLock.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorSimpleLock;->createMorphingAnimationFilledToOutLined()Landroid/animation/ValueAnimator;
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

    .line 854
    iput-object p1, p0, Lcom/color/support/widget/ColorSimpleLock$4;->this$0:Lcom/color/support/widget/ColorSimpleLock;

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

    .line 867
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock$4;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/color/support/widget/ColorSimpleLock;->access$502(Lcom/color/support/widget/ColorSimpleLock;Z)Z

    .line 868
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock$4;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorSimpleLock;->invalidate()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 858
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock$4;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/color/support/widget/ColorSimpleLock;->access$502(Lcom/color/support/widget/ColorSimpleLock;Z)Z

    return-void
.end method
