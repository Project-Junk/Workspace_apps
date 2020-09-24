.class Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim$1;
.super Ljava/lang/Object;
.source "QSTileTouchAnim.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->initTouchAnim(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim$1;->this$0:Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 40
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim$1;->this$0:Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;

    invoke-static {p0, p1}, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->access$100(Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;Landroid/view/View;)V

    goto :goto_0

    .line 44
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim$1;->this$0:Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;

    invoke-static {p0, p1}, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->access$000(Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;Landroid/view/View;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method
