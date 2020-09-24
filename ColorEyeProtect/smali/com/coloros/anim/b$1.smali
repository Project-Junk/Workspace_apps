.class Lcom/coloros/anim/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/anim/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/anim/b;


# direct methods
.method constructor <init>(Lcom/coloros/anim/b;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/anim/b$1;->a:Lcom/coloros/anim/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, Lcom/coloros/anim/b$1;->a:Lcom/coloros/anim/b;

    invoke-static {p1}, Lcom/coloros/anim/b;->a(Lcom/coloros/anim/b;)Lcom/coloros/anim/c/c/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coloros/anim/b$1;->a:Lcom/coloros/anim/b;

    invoke-static {p1}, Lcom/coloros/anim/b;->a(Lcom/coloros/anim/b;)Lcom/coloros/anim/c/c/b;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/anim/b$1;->a:Lcom/coloros/anim/b;

    invoke-static {p0}, Lcom/coloros/anim/b;->b(Lcom/coloros/anim/b;)Lcom/coloros/anim/f/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->d()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/coloros/anim/c/c/b;->a(F)V

    :cond_0
    return-void
.end method
