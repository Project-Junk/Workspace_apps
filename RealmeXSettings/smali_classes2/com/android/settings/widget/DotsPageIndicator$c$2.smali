.class final Lcom/android/settings/widget/DotsPageIndicator$c$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DotsPageIndicator.java"


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

    .line 869
    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$c$2;->b:Lcom/android/settings/widget/DotsPageIndicator$c;

    iput-object p2, p0, Lcom/android/settings/widget/DotsPageIndicator$c$2;->a:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 872
    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$c$2;->b:Lcom/android/settings/widget/DotsPageIndicator$c;

    iget-object p1, p1, Lcom/android/settings/widget/DotsPageIndicator$c;->a:Lcom/android/settings/widget/DotsPageIndicator;

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator$c$2;->b:Lcom/android/settings/widget/DotsPageIndicator$c;

    invoke-static {v0}, Lcom/android/settings/widget/DotsPageIndicator$c;->a(Lcom/android/settings/widget/DotsPageIndicator$c;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/settings/widget/DotsPageIndicator;->b(Lcom/android/settings/widget/DotsPageIndicator;IF)V

    .line 873
    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$c$2;->b:Lcom/android/settings/widget/DotsPageIndicator$c;

    iget-object p1, p1, Lcom/android/settings/widget/DotsPageIndicator$c;->a:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-virtual {p1}, Lcom/android/settings/widget/DotsPageIndicator;->postInvalidateOnAnimation()V

    return-void
.end method
