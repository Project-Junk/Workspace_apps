.class Lcom/oppo/camera/ui/menu/b/c$d;
.super Ljava/lang/Object;
.source "HeadlineGLSurfaceView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/ui/menu/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/menu/b/c;

.field private b:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/ui/menu/b/c;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 574
    iput-object p1, p0, Lcom/oppo/camera/ui/menu/b/c$d;->a:Lcom/oppo/camera/ui/menu/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 572
    iput-object p1, p0, Lcom/oppo/camera/ui/menu/b/c$d;->b:Landroid/animation/Animator$AnimatorListener;

    .line 575
    iput-object p2, p0, Lcom/oppo/camera/ui/menu/b/c$d;->b:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "HeadlineGLSurfaceView"

    const-string v1, "DefaultShowAnimatorListener, onAnimationCancel"

    .line 601
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c$d;->a:Lcom/oppo/camera/ui/menu/b/c;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/oppo/camera/ui/menu/b/c;->a(Lcom/oppo/camera/ui/menu/b/c;F)V

    .line 604
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c$d;->a:Lcom/oppo/camera/ui/menu/b/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/b/c;->setEnabled(Z)V

    .line 606
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c$d;->b:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 607
    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "HeadlineGLSurfaceView"

    const-string v1, "DefaultShowAnimatorListener, onAnimationEnd"

    .line 589
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c$d;->a:Lcom/oppo/camera/ui/menu/b/c;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/oppo/camera/ui/menu/b/c;->a(Lcom/oppo/camera/ui/menu/b/c;F)V

    .line 592
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c$d;->a:Lcom/oppo/camera/ui/menu/b/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/b/c;->setEnabled(Z)V

    .line 594
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c$d;->b:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 595
    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c$d;->b:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 614
    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "HeadlineGLSurfaceView"

    const-string v1, "DefaultShowAnimatorListener, onAnimationStart"

    .line 580
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c$d;->b:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 583
    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method
