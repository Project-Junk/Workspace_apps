.class Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;
    }
.end annotation


# instance fields
.field a:[I

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(II)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    add-int v0, p1, p2

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;

    iget v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    if-ge v3, p1, :cond_1

    goto :goto_1

    :cond_1
    iget v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    if-ge v3, v0, :cond_2

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    sub-int/2addr v3, p2

    iput v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private d(II)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;

    iget v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    if-ge v2, p1, :cond_1

    goto :goto_1

    :cond_1
    iget v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    add-int/2addr v2, p2

    iput v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private g(I)I
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;

    iget v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    if-lt v3, p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_1
    if-eq v2, v1, :cond_4

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget p0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    return p0

    :cond_4
    return v1
.end method


# virtual methods
.method a(I)I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;

    iget v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    if-lt v1, p1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b(I)I

    move-result p0

    return p0
.end method

.method public a(IIIZ)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;

    iget v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    if-lt v4, p2, :cond_1

    return-object v1

    :cond_1
    iget v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    if-lt v4, p1, :cond_3

    if-eqz p3, :cond_2

    iget v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->b:I

    if-eq v4, p3, :cond_2

    if-eqz p4, :cond_3

    iget-boolean v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->d:Z

    if-eqz v4, :cond_3

    :cond_2
    return-object v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method a()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    return-void
.end method

.method a(II)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int v0, p1, p2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e(I)V

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    array-length v3, v3

    sub-int/2addr v3, p1

    sub-int/2addr v3, p2

    invoke-static {v1, v0, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    array-length v1, v1

    sub-int/2addr v1, p2

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    array-length v2, v2

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([IIII)V

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->c(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method a(ILandroidx/recyclerview/widget/StaggeredGridLayoutManager$e;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e(I)V

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    iget p2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->e:I

    aput p2, p0, p1

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;)V
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;

    iget v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    iget v4, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    iget v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    iget v3, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    if-lt v2, v3, :cond_2

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {p0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method b(I)I
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->g(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    array-length v2, v2

    invoke-static {v0, p1, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    array-length p0, p0

    return p0

    :cond_2
    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, p1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    return v0
.end method

.method b(II)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int v0, p1, p2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e(I)V

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    array-length v3, v3

    sub-int/2addr v3, p1

    sub-int/2addr v3, p2

    invoke-static {v1, p1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    const/4 v2, -0x1

    invoke-static {v1, p1, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->d(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method c(I)I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    aget p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method d(I)I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    array-length p0, p0

    :goto_0
    if-gt p0, p1, :cond_0

    mul-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_0
    return p0
.end method

.method e(I)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->d(I)I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    array-length v0, v0

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    array-length p0, p0

    invoke-static {p1, v0, p0, v1}, Ljava/util/Arrays;->fill([IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;

    iget v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method
