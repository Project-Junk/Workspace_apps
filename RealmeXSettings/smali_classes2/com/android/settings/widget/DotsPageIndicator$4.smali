.class final Lcom/android/settings/widget/DotsPageIndicator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DotsPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/DotsPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/widget/DotsPageIndicator;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/DotsPageIndicator;)V
    .locals 0

    .line 613
    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$4;->a:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 624
    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$4;->a:Lcom/android/settings/widget/DotsPageIndicator;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/widget/DotsPageIndicator;->b(Lcom/android/settings/widget/DotsPageIndicator;Z)Z

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 618
    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$4;->a:Lcom/android/settings/widget/DotsPageIndicator;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/widget/DotsPageIndicator;->b(Lcom/android/settings/widget/DotsPageIndicator;Z)Z

    return-void
.end method
