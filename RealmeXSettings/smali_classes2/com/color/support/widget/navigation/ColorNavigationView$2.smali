.class Lcom/color/support/widget/navigation/ColorNavigationView$2;
.super Ljava/lang/Object;
.source "ColorNavigationView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/navigation/ColorNavigationView;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/navigation/ColorNavigationView;


# direct methods
.method constructor <init>(Lcom/color/support/widget/navigation/ColorNavigationView;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationView$2;->this$0:Lcom/color/support/widget/navigation/ColorNavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 483
    iget-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationView$2;->this$0:Lcom/color/support/widget/navigation/ColorNavigationView;

    invoke-static {p1}, Lcom/color/support/widget/navigation/ColorNavigationView;->access$300(Lcom/color/support/widget/navigation/ColorNavigationView;)Lcom/color/support/widget/navigation/ColorNavigationView$OnNavigationEnterHideListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 484
    iget-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationView$2;->this$0:Lcom/color/support/widget/navigation/ColorNavigationView;

    invoke-static {p1}, Lcom/color/support/widget/navigation/ColorNavigationView;->access$300(Lcom/color/support/widget/navigation/ColorNavigationView;)Lcom/color/support/widget/navigation/ColorNavigationView$OnNavigationEnterHideListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/color/support/widget/navigation/ColorNavigationView$OnNavigationEnterHideListener;->onAnimationEnterEnd()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
