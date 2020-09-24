.class Lcom/color/support/widget/d$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/d;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/support/widget/d;


# direct methods
.method constructor <init>(Lcom/color/support/widget/d;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/d$5;->a:Lcom/color/support/widget/d;

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

    iget-object p1, p0, Lcom/color/support/widget/d$5;->a:Lcom/color/support/widget/d;

    const/4 v0, 0x1

    invoke-static {p1, v0, v0, v0}, Lcom/color/support/widget/d;->b(Lcom/color/support/widget/d;ZZZ)V

    iget-object p0, p0, Lcom/color/support/widget/d$5;->a:Lcom/color/support/widget/d;

    invoke-static {p0, v0}, Lcom/color/support/widget/d;->a(Lcom/color/support/widget/d;Z)V

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
