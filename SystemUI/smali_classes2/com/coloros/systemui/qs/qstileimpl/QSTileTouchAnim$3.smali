.class Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QSTileTouchAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->doTouchUpAnim(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;Landroid/view/View;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim$3;->this$0:Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;

    iput-object p2, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 119
    iget-object p1, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim$3;->val$view:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 120
    iget-object p0, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim$3;->val$view:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 113
    iget-object p1, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim$3;->val$view:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 114
    iget-object p0, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim$3;->val$view:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
