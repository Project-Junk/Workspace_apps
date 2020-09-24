.class Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorSideGestureNavView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$4;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 172
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 173
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$4;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->access$402(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;Z)Z

    .line 174
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$4;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    invoke-static {p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->access$600(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 175
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$4;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 181
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 182
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$4;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->access$402(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;Z)Z

    .line 183
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$4;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    invoke-static {p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->access$600(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 184
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$4;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 190
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 191
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$4;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    invoke-static {p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->access$300(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 192
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$4;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    invoke-static {p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->access$700(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 194
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$4;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->access$402(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;Z)Z

    .line 195
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$4;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->access$802(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;F)F

    .line 196
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$4;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->access$902(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;F)F

    return-void
.end method
