.class Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorSearchViewAnimate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->startSearchIconExitAnimator()V
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

    .line 1205
    iput-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$7;->this$1:Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1208
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1209
    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$7;->this$1:Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;

    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2600(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
