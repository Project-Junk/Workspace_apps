.class public Lcom/coloros/anim/a/b/n;
.super Lcom/coloros/anim/a/b/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/anim/a/b/f<",
        "Lcom/coloros/anim/c/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/anim/g/c<",
            "Lcom/coloros/anim/c/b;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/coloros/anim/a/b/f;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method synthetic a(Lcom/coloros/anim/g/c;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/coloros/anim/a/b/n;->b(Lcom/coloros/anim/g/c;F)Lcom/coloros/anim/c/b;

    move-result-object p0

    return-object p0
.end method

.method b(Lcom/coloros/anim/g/c;F)Lcom/coloros/anim/c/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/g/c<",
            "Lcom/coloros/anim/c/b;",
            ">;F)",
            "Lcom/coloros/anim/c/b;"
        }
    .end annotation

    iget-object p0, p1, Lcom/coloros/anim/g/c;->a:Ljava/lang/Object;

    check-cast p0, Lcom/coloros/anim/c/b;

    return-object p0
.end method
