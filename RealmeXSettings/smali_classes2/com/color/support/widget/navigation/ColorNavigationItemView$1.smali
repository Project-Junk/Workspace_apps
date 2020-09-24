.class Lcom/color/support/widget/navigation/ColorNavigationItemView$1;
.super Ljava/lang/Object;
.source "ColorNavigationItemView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/navigation/ColorNavigationItemView;->initializeAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/navigation/ColorNavigationItemView;


# direct methods
.method constructor <init>(Lcom/color/support/widget/navigation/ColorNavigationItemView;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView$1;->this$0:Lcom/color/support/widget/navigation/ColorNavigationItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 325
    iget-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView$1;->this$0:Lcom/color/support/widget/navigation/ColorNavigationItemView;

    invoke-static {p1}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->access$000(Lcom/color/support/widget/navigation/ColorNavigationItemView;)Landroid/widget/TextView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

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
