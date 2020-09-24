.class Landroidx/core/f/x$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/f/x;->a(Landroidx/core/f/aa;)Landroidx/core/f/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/f/aa;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroidx/core/f/x;


# direct methods
.method constructor <init>(Landroidx/core/f/x;Landroidx/core/f/aa;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/f/x$2;->c:Landroidx/core/f/x;

    iput-object p2, p0, Landroidx/core/f/x$2;->a:Landroidx/core/f/aa;

    iput-object p3, p0, Landroidx/core/f/x$2;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, Landroidx/core/f/x$2;->a:Landroidx/core/f/aa;

    iget-object p0, p0, Landroidx/core/f/x$2;->b:Landroid/view/View;

    invoke-interface {p1, p0}, Landroidx/core/f/aa;->a(Landroid/view/View;)V

    return-void
.end method
