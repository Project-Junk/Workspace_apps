.class Landroidx/recyclerview/widget/q;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/q$a;,
        Landroidx/recyclerview/widget/q$b;
    }
.end annotation


# instance fields
.field final a:Landroidx/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/g<",
            "Landroidx/recyclerview/widget/RecyclerView$x;",
            "Landroidx/recyclerview/widget/q$a;",
            ">;"
        }
    .end annotation
.end field

.field final b:Landroidx/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/d<",
            "Landroidx/recyclerview/widget/RecyclerView$x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/b/g;

    invoke-direct {v0}, Landroidx/b/g;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/b/g;

    new-instance v0, Landroidx/b/d;

    invoke-direct {v0}, Landroidx/b/d;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/q;->b:Landroidx/b/d;

    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$x;I)Landroidx/recyclerview/widget/RecyclerView$f$c;
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/b/g;

    invoke-virtual {v0, p1}, Landroidx/b/g;->a(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/b/g;

    invoke-virtual {v1, p1}, Landroidx/b/g;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/q$a;

    if-eqz v1, :cond_4

    iget v2, v1, Landroidx/recyclerview/widget/q$a;->a:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_4

    iget v0, v1, Landroidx/recyclerview/widget/q$a;->a:I

    not-int v2, p2

    and-int/2addr v0, v2

    iput v0, v1, Landroidx/recyclerview/widget/q$a;->a:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    iget-object p2, v1, Landroidx/recyclerview/widget/q$a;->b:Landroidx/recyclerview/widget/RecyclerView$f$c;

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-ne p2, v0, :cond_3

    iget-object p2, v1, Landroidx/recyclerview/widget/q$a;->c:Landroidx/recyclerview/widget/RecyclerView$f$c;

    :goto_0
    iget v0, v1, Landroidx/recyclerview/widget/q$a;->a:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_2

    iget-object p0, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/b/g;

    invoke-virtual {p0, p1}, Landroidx/b/g;->d(I)Ljava/lang/Object;

    invoke-static {v1}, Landroidx/recyclerview/widget/q$a;->a(Landroidx/recyclerview/widget/q$a;)V

    :cond_2
    return-object p2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must provide flag PRE or POST"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-object v0
.end method


# virtual methods
.method a(J)Landroidx/recyclerview/widget/RecyclerView$x;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/q;->b:Landroidx/b/d;

    invoke-virtual {p0, p1, p2}, Landroidx/b/d;->a(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$x;

    return-object p0
.end method

.method a()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/b/g;

    invoke-virtual {v0}, Landroidx/b/g;->clear()V

    iget-object p0, p0, Landroidx/recyclerview/widget/q;->b:Landroidx/b/d;

    invoke-virtual {p0}, Landroidx/b/d;->c()V

    return-void
.end method

.method a(JLandroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/q;->b:Landroidx/b/d;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/b/d;->b(JLjava/lang/Object;)V

    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$x;Landroidx/recyclerview/widget/RecyclerView$f$c;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/b/g;

    invoke-virtual {v0, p1}, Landroidx/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/q$a;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/recyclerview/widget/q$a;->a()Landroidx/recyclerview/widget/q$a;

    move-result-object v0

    iget-object p0, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/b/g;

    invoke-virtual {p0, p1, v0}, Landroidx/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, v0, Landroidx/recyclerview/widget/q$a;->b:Landroidx/recyclerview/widget/RecyclerView$f$c;

    iget p0, v0, Landroidx/recyclerview/widget/q$a;->a:I

    or-int/lit8 p0, p0, 0x4

    iput p0, v0, Landroidx/recyclerview/widget/q$a;->a:I

    return-void
.end method

.method a(Landroidx/recyclerview/widget/q$b;)V
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/b/g;

    invoke-virtual {v0}, Landroidx/b/g;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_7

    iget-object v1, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/b/g;

    invoke-virtual {v1, v0}, Landroidx/b/g;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$x;

    iget-object v2, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/b/g;

    invoke-virtual {v2, v0}, Landroidx/b/g;->d(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/q$a;

    iget v3, v2, Landroidx/recyclerview/widget/q$a;->a:I

    const/4 v4, 0x3

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    :goto_1
    invoke-interface {p1, v1}, Landroidx/recyclerview/widget/q$b;->a(Landroidx/recyclerview/widget/RecyclerView$x;)V

    goto :goto_4

    :cond_0
    iget v3, v2, Landroidx/recyclerview/widget/q$a;->a:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroidx/recyclerview/widget/q$a;->b:Landroidx/recyclerview/widget/RecyclerView$f$c;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, v2, Landroidx/recyclerview/widget/q$a;->b:Landroidx/recyclerview/widget/RecyclerView$f$c;

    iget-object v4, v2, Landroidx/recyclerview/widget/q$a;->c:Landroidx/recyclerview/widget/RecyclerView$f$c;

    :goto_2
    invoke-interface {p1, v1, v3, v4}, Landroidx/recyclerview/widget/q$b;->a(Landroidx/recyclerview/widget/RecyclerView$x;Landroidx/recyclerview/widget/RecyclerView$f$c;Landroidx/recyclerview/widget/RecyclerView$f$c;)V

    goto :goto_4

    :cond_2
    iget v3, v2, Landroidx/recyclerview/widget/q$a;->a:I

    const/16 v4, 0xe

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    :goto_3
    iget-object v3, v2, Landroidx/recyclerview/widget/q$a;->b:Landroidx/recyclerview/widget/RecyclerView$f$c;

    iget-object v4, v2, Landroidx/recyclerview/widget/q$a;->c:Landroidx/recyclerview/widget/RecyclerView$f$c;

    invoke-interface {p1, v1, v3, v4}, Landroidx/recyclerview/widget/q$b;->b(Landroidx/recyclerview/widget/RecyclerView$x;Landroidx/recyclerview/widget/RecyclerView$f$c;Landroidx/recyclerview/widget/RecyclerView$f$c;)V

    goto :goto_4

    :cond_3
    iget v3, v2, Landroidx/recyclerview/widget/q$a;->a:I

    const/16 v4, 0xc

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_4

    iget-object v3, v2, Landroidx/recyclerview/widget/q$a;->b:Landroidx/recyclerview/widget/RecyclerView$f$c;

    iget-object v4, v2, Landroidx/recyclerview/widget/q$a;->c:Landroidx/recyclerview/widget/RecyclerView$f$c;

    invoke-interface {p1, v1, v3, v4}, Landroidx/recyclerview/widget/q$b;->c(Landroidx/recyclerview/widget/RecyclerView$x;Landroidx/recyclerview/widget/RecyclerView$f$c;Landroidx/recyclerview/widget/RecyclerView$f$c;)V

    goto :goto_4

    :cond_4
    iget v3, v2, Landroidx/recyclerview/widget/q$a;->a:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    iget-object v3, v2, Landroidx/recyclerview/widget/q$a;->b:Landroidx/recyclerview/widget/RecyclerView$f$c;

    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    iget v3, v2, Landroidx/recyclerview/widget/q$a;->a:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    iget v1, v2, Landroidx/recyclerview/widget/q$a;->a:I

    :goto_4
    invoke-static {v2}, Landroidx/recyclerview/widget/q$a;->a(Landroidx/recyclerview/widget/q$a;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$x;)Z
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/b/g;

    invoke-virtual {p0, p1}, Landroidx/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/q$a;

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    iget p0, p0, Landroidx/recyclerview/widget/q$a;->a:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method b(Landroidx/recyclerview/widget/RecyclerView$x;)Landroidx/recyclerview/widget/RecyclerView$f$c;
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/q;->a(Landroidx/recyclerview/widget/RecyclerView$x;I)Landroidx/recyclerview/widget/RecyclerView$f$c;

    move-result-object p0

    return-object p0
.end method

.method b()V
    .locals 0

    invoke-static {}, Landroidx/recyclerview/widget/q$a;->b()V

    return-void
.end method

.method b(Landroidx/recyclerview/widget/RecyclerView$x;Landroidx/recyclerview/widget/RecyclerView$f$c;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/b/g;

    invoke-virtual {v0, p1}, Landroidx/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/q$a;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/recyclerview/widget/q$a;->a()Landroidx/recyclerview/widget/q$a;

    move-result-object v0

    iget-object p0, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/b/g;

    invoke-virtual {p0, p1, v0}, Landroidx/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget p0, v0, Landroidx/recyclerview/widget/q$a;->a:I

    or-int/lit8 p0, p0, 0x2

    iput p0, v0, Landroidx/recyclerview/widget/q$a;->a:I

    iput-object p2, v0, Landroidx/recyclerview/widget/q$a;->b:Landroidx/recyclerview/widget/RecyclerView$f$c;

    return-void
.end method

.method c(Landroidx/recyclerview/widget/RecyclerView$x;)Landroidx/recyclerview/widget/RecyclerView$f$c;
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/q;->a(Landroidx/recyclerview/widget/RecyclerView$x;I)Landroidx/recyclerview/widget/RecyclerView$f$c;

    move-result-object p0

    return-object p0
.end method

.method c(Landroidx/recyclerview/widget/RecyclerView$x;Landroidx/recyclerview/widget/RecyclerView$f$c;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/b/g;

    invoke-virtual {v0, p1}, Landroidx/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/q$a;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/recyclerview/widget/q$a;->a()Landroidx/recyclerview/widget/q$a;

    move-result-object v0

    iget-object p0, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/b/g;

    invoke-virtual {p0, p1, v0}, Landroidx/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, v0, Landroidx/recyclerview/widget/q$a;->c:Landroidx/recyclerview/widget/RecyclerView$f$c;

    iget p0, v0, Landroidx/recyclerview/widget/q$a;->a:I

    or-int/lit8 p0, p0, 0x8

    iput p0, v0, Landroidx/recyclerview/widget/q$a;->a:I

    return-void
.end method

.method d(Landroidx/recyclerview/widget/RecyclerView$x;)Z
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/b/g;

    invoke-virtual {p0, p1}, Landroidx/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/q$a;

    if-eqz p0, :cond_0

    iget p0, p0, Landroidx/recyclerview/widget/q$a;->a:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method e(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/b/g;

    invoke-virtual {v0, p1}, Landroidx/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/q$a;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/recyclerview/widget/q$a;->a()Landroidx/recyclerview/widget/q$a;

    move-result-object v0

    iget-object p0, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/b/g;

    invoke-virtual {p0, p1, v0}, Landroidx/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget p0, v0, Landroidx/recyclerview/widget/q$a;->a:I

    or-int/lit8 p0, p0, 0x1

    iput p0, v0, Landroidx/recyclerview/widget/q$a;->a:I

    return-void
.end method

.method f(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/b/g;

    invoke-virtual {p0, p1}, Landroidx/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/q$a;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget p1, p0, Landroidx/recyclerview/widget/q$a;->a:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Landroidx/recyclerview/widget/q$a;->a:I

    return-void
.end method

.method g(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/q;->b:Landroidx/b/d;

    invoke-virtual {v0}, Landroidx/b/d;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/q;->b:Landroidx/b/d;

    invoke-virtual {v1, v0}, Landroidx/b/d;->c(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/q;->b:Landroidx/b/d;

    invoke-virtual {v1, v0}, Landroidx/b/d;->a(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/b/g;

    invoke-virtual {p0, p1}, Landroidx/b/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/q$a;

    if-eqz p0, :cond_2

    invoke-static {p0}, Landroidx/recyclerview/widget/q$a;->a(Landroidx/recyclerview/widget/q$a;)V

    :cond_2
    return-void
.end method

.method public h(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/q;->f(Landroidx/recyclerview/widget/RecyclerView$x;)V

    return-void
.end method
