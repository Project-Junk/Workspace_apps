.class public Lcom/coloros/anim/a/b/d;
.super Lcom/coloros/anim/a/b/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/anim/a/b/f<",
        "Lcom/coloros/anim/c/b/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lcom/coloros/anim/c/b/c;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/anim/g/c<",
            "Lcom/coloros/anim/c/b/c;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/coloros/anim/a/b/f;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/anim/g/c;

    iget-object p1, p1, Lcom/coloros/anim/g/c;->a:Ljava/lang/Object;

    check-cast p1, Lcom/coloros/anim/c/b/c;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/coloros/anim/c/b/c;->c()I

    move-result v0

    :goto_0
    new-instance p1, Lcom/coloros/anim/c/b/c;

    new-array v1, v0, [F

    new-array v0, v0, [I

    invoke-direct {p1, v1, v0}, Lcom/coloros/anim/c/b/c;-><init>([F[I)V

    iput-object p1, p0, Lcom/coloros/anim/a/b/d;->c:Lcom/coloros/anim/c/b/c;

    return-void
.end method


# virtual methods
.method synthetic a(Lcom/coloros/anim/g/c;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/coloros/anim/a/b/d;->b(Lcom/coloros/anim/g/c;F)Lcom/coloros/anim/c/b/c;

    move-result-object p0

    return-object p0
.end method

.method b(Lcom/coloros/anim/g/c;F)Lcom/coloros/anim/c/b/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/g/c<",
            "Lcom/coloros/anim/c/b/c;",
            ">;F)",
            "Lcom/coloros/anim/c/b/c;"
        }
    .end annotation

    iget-object v0, p0, Lcom/coloros/anim/a/b/d;->c:Lcom/coloros/anim/c/b/c;

    iget-object v1, p1, Lcom/coloros/anim/g/c;->a:Ljava/lang/Object;

    check-cast v1, Lcom/coloros/anim/c/b/c;

    iget-object p1, p1, Lcom/coloros/anim/g/c;->d:Ljava/lang/Object;

    check-cast p1, Lcom/coloros/anim/c/b/c;

    invoke-virtual {v0, v1, p1, p2}, Lcom/coloros/anim/c/b/c;->a(Lcom/coloros/anim/c/b/c;Lcom/coloros/anim/c/b/c;F)V

    iget-object p0, p0, Lcom/coloros/anim/a/b/d;->c:Lcom/coloros/anim/c/b/c;

    return-object p0
.end method
