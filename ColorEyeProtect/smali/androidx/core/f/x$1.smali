.class Landroidx/core/f/x$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/f/x;->a(Landroid/view/View;Landroidx/core/f/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/f/y;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroidx/core/f/x;


# direct methods
.method constructor <init>(Landroidx/core/f/x;Landroidx/core/f/y;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/f/x$1;->c:Landroidx/core/f/x;

    iput-object p2, p0, Landroidx/core/f/x$1;->a:Landroidx/core/f/y;

    iput-object p3, p0, Landroidx/core/f/x$1;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Landroidx/core/f/x$1;->a:Landroidx/core/f/y;

    iget-object p0, p0, Landroidx/core/f/x$1;->b:Landroid/view/View;

    invoke-interface {p1, p0}, Landroidx/core/f/y;->c(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Landroidx/core/f/x$1;->a:Landroidx/core/f/y;

    iget-object p0, p0, Landroidx/core/f/x$1;->b:Landroid/view/View;

    invoke-interface {p1, p0}, Landroidx/core/f/y;->b(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Landroidx/core/f/x$1;->a:Landroidx/core/f/y;

    iget-object p0, p0, Landroidx/core/f/x$1;->b:Landroid/view/View;

    invoke-interface {p1, p0}, Landroidx/core/f/y;->a(Landroid/view/View;)V

    return-void
.end method
