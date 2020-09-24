.class Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$2;
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

    .line 130
    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$2;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 133
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 134
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$2;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->access$302(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 139
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 140
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$2;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->access$302(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 145
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 146
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$2;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    invoke-static {p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->access$400(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 147
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$2;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    invoke-static {p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->access$500(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 149
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$2;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->access$302(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;Z)Z

    return-void
.end method
