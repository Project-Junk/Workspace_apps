.class Lcom/coloros/systemui/stackdivider/DividerOperationButton$3;
.super Ljava/lang/Object;
.source "DividerOperationButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setTouching(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/stackdivider/DividerOperationButton;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/stackdivider/DividerOperationButton;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton$3;->this$0:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton$3;->this$0:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    const-string v1, "ScaleXHolder"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->access$102(Lcom/coloros/systemui/stackdivider/DividerOperationButton;F)F

    .line 129
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton$3;->this$0:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    const-string v1, "ScaleYHolder"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->access$202(Lcom/coloros/systemui/stackdivider/DividerOperationButton;F)F

    .line 130
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton$3;->this$0:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-static {p1}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->access$100(Lcom/coloros/systemui/stackdivider/DividerOperationButton;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setScaleX(F)V

    .line 131
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton$3;->this$0:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-static {p0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->access$200(Lcom/coloros/systemui/stackdivider/DividerOperationButton;)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setScaleY(F)V

    return-void
.end method
