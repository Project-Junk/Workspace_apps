.class public Lcom/coloros/anim/a/b/l;
.super Lcom/coloros/anim/a/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/anim/a/b/a<",
        "Lcom/coloros/anim/c/b/l;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lcom/coloros/anim/c/b/l;

.field private final d:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/anim/g/c<",
            "Lcom/coloros/anim/c/b/l;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/coloros/anim/a/b/a;-><init>(Ljava/util/List;)V

    new-instance p1, Lcom/coloros/anim/c/b/l;

    invoke-direct {p1}, Lcom/coloros/anim/c/b/l;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/a/b/l;->c:Lcom/coloros/anim/c/b/l;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/a/b/l;->d:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/coloros/anim/g/c;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/coloros/anim/a/b/l;->b(Lcom/coloros/anim/g/c;F)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/coloros/anim/g/c;F)Landroid/graphics/Path;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/g/c<",
            "Lcom/coloros/anim/c/b/l;",
            ">;F)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    iget-object v0, p1, Lcom/coloros/anim/g/c;->a:Ljava/lang/Object;

    check-cast v0, Lcom/coloros/anim/c/b/l;

    iget-object p1, p1, Lcom/coloros/anim/g/c;->d:Ljava/lang/Object;

    check-cast p1, Lcom/coloros/anim/c/b/l;

    iget-object v1, p0, Lcom/coloros/anim/a/b/l;->c:Lcom/coloros/anim/c/b/l;

    invoke-virtual {v1, v0, p1, p2}, Lcom/coloros/anim/c/b/l;->a(Lcom/coloros/anim/c/b/l;Lcom/coloros/anim/c/b/l;F)V

    iget-object p1, p0, Lcom/coloros/anim/a/b/l;->c:Lcom/coloros/anim/c/b/l;

    iget-object p2, p0, Lcom/coloros/anim/a/b/l;->d:Landroid/graphics/Path;

    invoke-static {p1, p2}, Lcom/coloros/anim/f/f;->a(Lcom/coloros/anim/c/b/l;Landroid/graphics/Path;)V

    iget-object p0, p0, Lcom/coloros/anim/a/b/l;->d:Landroid/graphics/Path;

    return-object p0
.end method
