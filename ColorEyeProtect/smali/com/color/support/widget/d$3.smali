.class Lcom/color/support/widget/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/d;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/support/widget/d;


# direct methods
.method constructor <init>(Lcom/color/support/widget/d;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/d$3;->a:Lcom/color/support/widget/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/d$3;->a:Lcom/color/support/widget/d;

    invoke-static {v0}, Lcom/color/support/widget/d;->a(Lcom/color/support/widget/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/d$3;->a:Lcom/color/support/widget/d;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/color/support/widget/d;->b(Lcom/color/support/widget/d;F)F

    :cond_0
    iget-object p0, p0, Lcom/color/support/widget/d$3;->a:Lcom/color/support/widget/d;

    invoke-static {p0}, Lcom/color/support/widget/d;->b(Lcom/color/support/widget/d;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method
