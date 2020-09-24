.class Lcom/color/support/widget/ColorSearchViewAnimate$8;
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

    .line 818
    iput-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$8;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 821
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 822
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$8;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$602(Lcom/color/support/widget/ColorSearchViewAnimate;Z)Z

    .line 823
    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$8;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$800(Lcom/color/support/widget/ColorSearchViewAnimate;)V

    return-void
.end method
