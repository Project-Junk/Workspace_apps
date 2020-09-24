.class Lcom/coloros/systemui/stackdivider/DividerMenuView$2;
.super Ljava/lang/Object;
.source "DividerMenuView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/stackdivider/DividerMenuView;->startAnimation(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/stackdivider/DividerMenuView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/stackdivider/DividerMenuView;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView$2;->this$0:Lcom/coloros/systemui/stackdivider/DividerMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "alphaHolder"

    .line 194
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 195
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView$2;->this$0:Lcom/coloros/systemui/stackdivider/DividerMenuView;

    invoke-static {v0}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->access$000(Lcom/coloros/systemui/stackdivider/DividerMenuView;)Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setAlpha(F)V

    .line 196
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView$2;->this$0:Lcom/coloros/systemui/stackdivider/DividerMenuView;

    invoke-static {p0}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->access$100(Lcom/coloros/systemui/stackdivider/DividerMenuView;)Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setAlpha(F)V

    return-void
.end method
