.class Lcom/color/support/widget/ColorSlideDeleteAnimation$2;
.super Ljava/lang/Object;
.source "ColorSlideDeleteAnimation.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorSlideDeleteAnimation;-><init>(Landroid/view/View;Landroid/view/View;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorSlideDeleteAnimation;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorSlideDeleteAnimation;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/color/support/widget/ColorSlideDeleteAnimation$2;->this$0:Lcom/color/support/widget/ColorSlideDeleteAnimation;

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

    .line 81
    iget-object p0, p0, Lcom/color/support/widget/ColorSlideDeleteAnimation$2;->this$0:Lcom/color/support/widget/ColorSlideDeleteAnimation;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideDeleteAnimation;->itemViewDelete()V

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
