.class Lcom/color/support/widget/ColorInstallLoadProgress$2;
.super Ljava/lang/Object;
.source "ColorInstallLoadProgress.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorInstallLoadProgress;->performTouchStartAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorInstallLoadProgress;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorInstallLoadProgress;)V
    .locals 0

    .line 734
    iput-object p1, p0, Lcom/color/support/widget/ColorInstallLoadProgress$2;->this$0:Lcom/color/support/widget/ColorInstallLoadProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 737
    iget-object v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress$2;->this$0:Lcom/color/support/widget/ColorInstallLoadProgress;

    const-string v1, "circleRadiusHolder"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/color/support/widget/ColorInstallLoadProgress;->access$302(Lcom/color/support/widget/ColorInstallLoadProgress;I)I

    .line 738
    iget-object v0, p0, Lcom/color/support/widget/ColorInstallLoadProgress$2;->this$0:Lcom/color/support/widget/ColorInstallLoadProgress;

    const-string v1, "circleBrightnessHolder"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/color/support/widget/ColorInstallLoadProgress;->access$202(Lcom/color/support/widget/ColorInstallLoadProgress;F)F

    .line 739
    iget-object p0, p0, Lcom/color/support/widget/ColorInstallLoadProgress$2;->this$0:Lcom/color/support/widget/ColorInstallLoadProgress;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorInstallLoadProgress;->invalidate()V

    return-void
.end method
