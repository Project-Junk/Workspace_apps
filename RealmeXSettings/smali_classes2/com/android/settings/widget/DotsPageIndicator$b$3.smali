.class final Lcom/android/settings/widget/DotsPageIndicator$b$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DotsPageIndicator.java"


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

.field final synthetic b:[I

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:Lcom/android/settings/widget/DotsPageIndicator$b;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/DotsPageIndicator$b;Lcom/android/settings/widget/DotsPageIndicator;[IFF)V
    .locals 0

    .line 823
    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$b$3;->e:Lcom/android/settings/widget/DotsPageIndicator$b;

    iput-object p2, p0, Lcom/android/settings/widget/DotsPageIndicator$b$3;->a:Lcom/android/settings/widget/DotsPageIndicator;

    iput-object p3, p0, Lcom/android/settings/widget/DotsPageIndicator$b$3;->b:[I

    iput p4, p0, Lcom/android/settings/widget/DotsPageIndicator$b$3;->c:F

    iput p5, p0, Lcom/android/settings/widget/DotsPageIndicator$b$3;->d:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 838
    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$b$3;->e:Lcom/android/settings/widget/DotsPageIndicator$b;

    iget-object p1, p1, Lcom/android/settings/widget/DotsPageIndicator$b;->a:Lcom/android/settings/widget/DotsPageIndicator;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p1, v0}, Lcom/android/settings/widget/DotsPageIndicator;->b(Lcom/android/settings/widget/DotsPageIndicator;F)F

    .line 839
    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$b$3;->e:Lcom/android/settings/widget/DotsPageIndicator$b;

    iget-object p1, p1, Lcom/android/settings/widget/DotsPageIndicator$b;->a:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-static {p1, v0}, Lcom/android/settings/widget/DotsPageIndicator;->c(Lcom/android/settings/widget/DotsPageIndicator;F)F

    .line 840
    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$b$3;->e:Lcom/android/settings/widget/DotsPageIndicator$b;

    iget-object p1, p1, Lcom/android/settings/widget/DotsPageIndicator$b;->a:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-virtual {p1}, Lcom/android/settings/widget/DotsPageIndicator;->postInvalidateOnAnimation()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 5

    .line 826
    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$b$3;->e:Lcom/android/settings/widget/DotsPageIndicator$b;

    iget-object p1, p1, Lcom/android/settings/widget/DotsPageIndicator$b;->a:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->k(Lcom/android/settings/widget/DotsPageIndicator;)V

    .line 827
    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$b$3;->e:Lcom/android/settings/widget/DotsPageIndicator$b;

    iget-object p1, p1, Lcom/android/settings/widget/DotsPageIndicator$b;->a:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->l(Lcom/android/settings/widget/DotsPageIndicator;)V

    .line 829
    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$b$3;->b:[I

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 830
    iget-object v3, p0, Lcom/android/settings/widget/DotsPageIndicator$b$3;->e:Lcom/android/settings/widget/DotsPageIndicator$b;

    iget-object v3, v3, Lcom/android/settings/widget/DotsPageIndicator$b;->a:Lcom/android/settings/widget/DotsPageIndicator;

    const v4, 0x3727c5ac    # 1.0E-5f

    invoke-static {v3, v2, v4}, Lcom/android/settings/widget/DotsPageIndicator;->b(Lcom/android/settings/widget/DotsPageIndicator;IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 832
    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$b$3;->e:Lcom/android/settings/widget/DotsPageIndicator$b;

    iget-object p1, p1, Lcom/android/settings/widget/DotsPageIndicator$b;->a:Lcom/android/settings/widget/DotsPageIndicator;

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator$b$3;->c:F

    invoke-static {p1, v0}, Lcom/android/settings/widget/DotsPageIndicator;->b(Lcom/android/settings/widget/DotsPageIndicator;F)F

    .line 833
    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$b$3;->e:Lcom/android/settings/widget/DotsPageIndicator$b;

    iget-object p1, p1, Lcom/android/settings/widget/DotsPageIndicator$b;->a:Lcom/android/settings/widget/DotsPageIndicator;

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator$b$3;->d:F

    invoke-static {p1, v0}, Lcom/android/settings/widget/DotsPageIndicator;->c(Lcom/android/settings/widget/DotsPageIndicator;F)F

    .line 834
    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$b$3;->e:Lcom/android/settings/widget/DotsPageIndicator$b;

    iget-object p1, p1, Lcom/android/settings/widget/DotsPageIndicator$b;->a:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-virtual {p1}, Lcom/android/settings/widget/DotsPageIndicator;->postInvalidateOnAnimation()V

    return-void
.end method
