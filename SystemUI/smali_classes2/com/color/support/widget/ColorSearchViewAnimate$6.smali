.class Lcom/color/support/widget/ColorSearchViewAnimate$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorSearchViewAnimate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorSearchViewAnimate;->hideInToolBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorSearchViewAnimate;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorSearchViewAnimate;)V
    .locals 0

    .line 797
    iput-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$6;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 800
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 801
    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$6;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorSearchViewAnimate;->setVisibility(I)V

    return-void
.end method
