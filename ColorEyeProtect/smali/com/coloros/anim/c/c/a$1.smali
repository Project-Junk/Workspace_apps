.class Lcom/coloros/anim/c/c/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coloros/anim/a/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/anim/c/c/a;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/anim/a/b/c;

.field final synthetic b:Lcom/coloros/anim/c/c/a;


# direct methods
.method constructor <init>(Lcom/coloros/anim/c/c/a;Lcom/coloros/anim/a/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/anim/c/c/a$1;->b:Lcom/coloros/anim/c/c/a;

    iput-object p2, p0, Lcom/coloros/anim/c/c/a$1;->a:Lcom/coloros/anim/a/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/anim/c/c/a$1;->b:Lcom/coloros/anim/c/c/a;

    iget-object p0, p0, Lcom/coloros/anim/c/c/a$1;->a:Lcom/coloros/anim/a/b/c;

    invoke-virtual {p0}, Lcom/coloros/anim/a/b/c;->i()F

    move-result p0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/coloros/anim/c/c/a;->a(Z)V

    return-void
.end method
