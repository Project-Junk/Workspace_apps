.class public final synthetic Lcom/coloros/systemui/qs/qstileimpl/-$$Lambda$QSTileTouchAnim$Uxl7Bgp8OK8c0H-POHjQYSyBs6M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;

.field private final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/qs/qstileimpl/-$$Lambda$QSTileTouchAnim$Uxl7Bgp8OK8c0H-POHjQYSyBs6M;->f$0:Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;

    iput-object p2, p0, Lcom/coloros/systemui/qs/qstileimpl/-$$Lambda$QSTileTouchAnim$Uxl7Bgp8OK8c0H-POHjQYSyBs6M;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/qs/qstileimpl/-$$Lambda$QSTileTouchAnim$Uxl7Bgp8OK8c0H-POHjQYSyBs6M;->f$0:Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;

    iget-object p0, p0, Lcom/coloros/systemui/qs/qstileimpl/-$$Lambda$QSTileTouchAnim$Uxl7Bgp8OK8c0H-POHjQYSyBs6M;->f$1:Landroid/view/View;

    invoke-virtual {v0, p0, p1}, Lcom/coloros/systemui/qs/qstileimpl/QSTileTouchAnim;->lambda$doTouchDownAnim$0$QSTileTouchAnim(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method
