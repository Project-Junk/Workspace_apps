.class Lcom/color/support/widget/ColorLockPatternView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorLockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorLockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorLockPatternView;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorLockPatternView;)V
    .locals 0

    .line 629
    iput-object p1, p0, Lcom/color/support/widget/ColorLockPatternView$3;->this$0:Lcom/color/support/widget/ColorLockPatternView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 632
    iget-object p1, p0, Lcom/color/support/widget/ColorLockPatternView$3;->this$0:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {p1}, Lcom/color/support/widget/ColorLockPatternView;->access$500(Lcom/color/support/widget/ColorLockPatternView;)V

    .line 633
    iget-object p1, p0, Lcom/color/support/widget/ColorLockPatternView$3;->this$0:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {p1}, Lcom/color/support/widget/ColorLockPatternView;->access$600(Lcom/color/support/widget/ColorLockPatternView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 634
    iget-object p0, p0, Lcom/color/support/widget/ColorLockPatternView$3;->this$0:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {p0}, Lcom/color/support/widget/ColorLockPatternView;->access$600(Lcom/color/support/widget/ColorLockPatternView;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    :cond_0
    return-void
.end method
