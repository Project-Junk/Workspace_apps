.class Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$8;
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

    .line 246
    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$8;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 249
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 250
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$8;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->access$1102(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 255
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 256
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$8;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->access$1102(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 261
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 262
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$8;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->access$1102(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;Z)Z

    return-void
.end method
