.class final Lcom/android/settings/widget/DotsPageIndicator$b$1;
.super Ljava/lang/Object;
.source "DotsPageIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/DotsPageIndicator$b;-><init>(Lcom/android/settings/widget/DotsPageIndicator;IIILcom/android/settings/widget/DotsPageIndicator$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/widget/DotsPageIndicator;

.field final synthetic b:Lcom/android/settings/widget/DotsPageIndicator$b;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/DotsPageIndicator$b;Lcom/android/settings/widget/DotsPageIndicator;)V
    .locals 0

    .line 789
    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$b$1;->b:Lcom/android/settings/widget/DotsPageIndicator$b;

    iput-object p2, p0, Lcom/android/settings/widget/DotsPageIndicator$b$1;->a:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 793
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator$b$1;->b:Lcom/android/settings/widget/DotsPageIndicator$b;

    iget-object v0, v0, Lcom/android/settings/widget/DotsPageIndicator$b;->a:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/android/settings/widget/DotsPageIndicator;->b(Lcom/android/settings/widget/DotsPageIndicator;F)F

    .line 794
    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$b$1;->b:Lcom/android/settings/widget/DotsPageIndicator$b;

    iget-object p1, p1, Lcom/android/settings/widget/DotsPageIndicator$b;->a:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-virtual {p1}, Lcom/android/settings/widget/DotsPageIndicator;->postInvalidateOnAnimation()V

    .line 796
    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$b$1;->b:Lcom/android/settings/widget/DotsPageIndicator$b;

    iget-object p1, p1, Lcom/android/settings/widget/DotsPageIndicator$b;->a:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->h(Lcom/android/settings/widget/DotsPageIndicator;)[Lcom/android/settings/widget/DotsPageIndicator$c;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 797
    iget-object v3, p0, Lcom/android/settings/widget/DotsPageIndicator$b$1;->b:Lcom/android/settings/widget/DotsPageIndicator$b;

    iget-object v3, v3, Lcom/android/settings/widget/DotsPageIndicator$b;->a:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-static {v3}, Lcom/android/settings/widget/DotsPageIndicator;->i(Lcom/android/settings/widget/DotsPageIndicator;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/DotsPageIndicator$c;->a(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method