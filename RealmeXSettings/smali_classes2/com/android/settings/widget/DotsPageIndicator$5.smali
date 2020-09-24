.class final Lcom/android/settings/widget/DotsPageIndicator$5;
.super Ljava/lang/Object;
.source "DotsPageIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/DotsPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/android/settings/widget/DotsPageIndicator;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/DotsPageIndicator;I)V
    .locals 0

    .line 639
    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$5;->b:Lcom/android/settings/widget/DotsPageIndicator;

    iput p2, p0, Lcom/android/settings/widget/DotsPageIndicator$5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 642
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator$5;->b:Lcom/android/settings/widget/DotsPageIndicator;

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator$5;->a:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/android/settings/widget/DotsPageIndicator;->a(Lcom/android/settings/widget/DotsPageIndicator;IF)V

    return-void
.end method
