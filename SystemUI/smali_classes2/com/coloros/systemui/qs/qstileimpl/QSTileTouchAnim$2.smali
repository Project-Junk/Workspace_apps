.class Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QSTileTouchAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->doTouchDownAnim(Landroid/view/View;)V
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

    .line 71
    iput-object p1, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim$2;->this$0:Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;

    iput-object p2, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 82
    iget-object p1, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim$2;->this$0:Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->access$202(Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;Z)Z

    .line 83
    iget-object p1, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim$2;->val$view:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 84
    iget-object p0, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim$2;->val$view:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 74
    iget-object p1, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim$2;->this$0:Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->access$202(Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;Z)Z

    .line 75
    iget-object p1, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim$2;->this$0:Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;

    invoke-static {p1}, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->access$300(Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim$2;->this$0:Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;

    iget-object p0, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim$2;->val$view:Landroid/view/View;

    invoke-static {p1, p0}, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->access$100(Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;Landroid/view/View;)V

    :cond_0
    return-void
.end method
