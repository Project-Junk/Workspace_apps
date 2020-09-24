.class final Lcom/coloros/settings/feature/face/a$1;
.super Ljava/lang/Object;
.source "FaceAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/face/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/coloros/settings/feature/face/a$a;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;Lcom/coloros/settings/feature/face/a$a;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/coloros/settings/feature/face/a$1;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/coloros/settings/feature/face/a$1;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/coloros/settings/feature/face/a$1;->c:Lcom/coloros/settings/feature/face/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 84
    iget-object p1, p0, Lcom/coloros/settings/feature/face/a$1;->a:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object p1, p0, Lcom/coloros/settings/feature/face/a$1;->a:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/face/a$1;->b:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 91
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/face/a$1;->c:Lcom/coloros/settings/feature/face/a$a;

    if-eqz p1, :cond_2

    .line 92
    invoke-interface {p1}, Lcom/coloros/settings/feature/face/a$a;->a()V

    :cond_2
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
