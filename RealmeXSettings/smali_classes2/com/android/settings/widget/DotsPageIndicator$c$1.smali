.class final Lcom/android/settings/widget/DotsPageIndicator$c$1;
.super Ljava/lang/Object;
.source "DotsPageIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/DotsPageIndicator$c;-><init>(Lcom/android/settings/widget/DotsPageIndicator;ILcom/android/settings/widget/DotsPageIndicator$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/widget/DotsPageIndicator;

.field final synthetic b:Lcom/android/settings/widget/DotsPageIndicator$c;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/DotsPageIndicator$c;Lcom/android/settings/widget/DotsPageIndicator;)V
    .locals 0

    .line 860
    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$c$1;->b:Lcom/android/settings/widget/DotsPageIndicator$c;

    iput-object p2, p0, Lcom/android/settings/widget/DotsPageIndicator$c$1;->a:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 864
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator$c$1;->b:Lcom/android/settings/widget/DotsPageIndicator$c;

    iget-object v0, v0, Lcom/android/settings/widget/DotsPageIndicator$c;->a:Lcom/android/settings/widget/DotsPageIndicator;

    iget-object v1, p0, Lcom/android/settings/widget/DotsPageIndicator$c$1;->b:Lcom/android/settings/widget/DotsPageIndicator$c;

    invoke-static {v1}, Lcom/android/settings/widget/DotsPageIndicator$c;->a(Lcom/android/settings/widget/DotsPageIndicator$c;)I

    move-result v1

    .line 865
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 864
    invoke-static {v0, v1, p1}, Lcom/android/settings/widget/DotsPageIndicator;->b(Lcom/android/settings/widget/DotsPageIndicator;IF)V

    return-void
.end method
