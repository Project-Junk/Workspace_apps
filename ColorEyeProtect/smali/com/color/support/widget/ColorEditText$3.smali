.class Lcom/color/support/widget/ColorEditText$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorEditText;->a(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/support/widget/ColorEditText;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/ColorEditText$3;->a:Lcom/color/support/widget/ColorEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/ColorEditText$3;->a:Lcom/color/support/widget/ColorEditText;

    invoke-static {p0}, Lcom/color/support/widget/ColorEditText;->a(Lcom/color/support/widget/ColorEditText;)Lcom/color/support/widget/b$a;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/b$a;->b(F)V

    return-void
.end method
