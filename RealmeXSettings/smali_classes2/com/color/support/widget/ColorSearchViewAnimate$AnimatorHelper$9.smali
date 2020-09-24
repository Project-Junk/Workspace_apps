.class Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorSearchViewAnimate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->startBackgroundExitAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;)V
    .locals 0

    .line 1251
    iput-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$9;->this$1:Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1254
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1255
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$9;->this$1:Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;

    iget-object p1, p1, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {p1}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$1300(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
