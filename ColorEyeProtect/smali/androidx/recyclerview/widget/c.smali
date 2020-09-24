.class public Landroidx/recyclerview/widget/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/recyclerview/widget/j;


# instance fields
.field final a:Landroidx/recyclerview/widget/j;

.field b:I

.field c:I

.field d:I

.field e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/c;->b:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/c;->c:I

    iput v0, p0, Landroidx/recyclerview/widget/c;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/c;->e:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/recyclerview/widget/c;->a:Landroidx/recyclerview/widget/j;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget v0, p0, Landroidx/recyclerview/widget/c;->b:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/c;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->a:Landroidx/recyclerview/widget/j;

    iget v1, p0, Landroidx/recyclerview/widget/c;->c:I

    iget v2, p0, Landroidx/recyclerview/widget/c;->d:I

    iget-object v3, p0, Landroidx/recyclerview/widget/c;->e:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Landroidx/recyclerview/widget/j;->a(IILjava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->a:Landroidx/recyclerview/widget/j;

    iget v1, p0, Landroidx/recyclerview/widget/c;->c:I

    iget v2, p0, Landroidx/recyclerview/widget/c;->d:I

    invoke-interface {v0, v1, v2}, Landroidx/recyclerview/widget/j;->b(II)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->a:Landroidx/recyclerview/widget/j;

    iget v1, p0, Landroidx/recyclerview/widget/c;->c:I

    iget v2, p0, Landroidx/recyclerview/widget/c;->d:I

    invoke-interface {v0, v1, v2}, Landroidx/recyclerview/widget/j;->a(II)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/c;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/c;->b:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(II)V
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/c;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/c;->c:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/c;->c:I

    iget v2, p0, Landroidx/recyclerview/widget/c;->d:I

    add-int/2addr v0, v2

    if-gt p1, v0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/c;->d:I

    add-int/2addr v0, p2

    iput v0, p0, Landroidx/recyclerview/widget/c;->d:I

    iget p2, p0, Landroidx/recyclerview/widget/c;->c:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/c;->c:I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/c;->a()V

    iput p1, p0, Landroidx/recyclerview/widget/c;->c:I

    iput p2, p0, Landroidx/recyclerview/widget/c;->d:I

    iput v1, p0, Landroidx/recyclerview/widget/c;->b:I

    return-void
.end method

.method public a(IILjava/lang/Object;)V
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/c;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/c;->c:I

    iget v2, p0, Landroidx/recyclerview/widget/c;->d:I

    add-int/2addr v0, v2

    if-gt p1, v0, :cond_0

    add-int v0, p1, p2

    iget v2, p0, Landroidx/recyclerview/widget/c;->c:I

    if-lt v0, v2, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/widget/c;->e:Ljava/lang/Object;

    if-ne v2, p3, :cond_0

    iget p2, p0, Landroidx/recyclerview/widget/c;->c:I

    iget p3, p0, Landroidx/recyclerview/widget/c;->d:I

    add-int/2addr p2, p3

    iget p3, p0, Landroidx/recyclerview/widget/c;->c:I

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/c;->c:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p2, p0, Landroidx/recyclerview/widget/c;->c:I

    sub-int/2addr p1, p2

    iput p1, p0, Landroidx/recyclerview/widget/c;->d:I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/c;->a()V

    iput p1, p0, Landroidx/recyclerview/widget/c;->c:I

    iput p2, p0, Landroidx/recyclerview/widget/c;->d:I

    iput-object p3, p0, Landroidx/recyclerview/widget/c;->e:Ljava/lang/Object;

    iput v1, p0, Landroidx/recyclerview/widget/c;->b:I

    return-void
.end method

.method public b(II)V
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/c;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/c;->c:I

    if-lt v0, p1, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/c;->c:I

    add-int v2, p1, p2

    if-gt v0, v2, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/c;->d:I

    add-int/2addr v0, p2

    iput v0, p0, Landroidx/recyclerview/widget/c;->d:I

    iput p1, p0, Landroidx/recyclerview/widget/c;->c:I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/c;->a()V

    iput p1, p0, Landroidx/recyclerview/widget/c;->c:I

    iput p2, p0, Landroidx/recyclerview/widget/c;->d:I

    iput v1, p0, Landroidx/recyclerview/widget/c;->b:I

    return-void
.end method

.method public c(II)V
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/c;->a()V

    iget-object p0, p0, Landroidx/recyclerview/widget/c;->a:Landroidx/recyclerview/widget/j;

    invoke-interface {p0, p1, p2}, Landroidx/recyclerview/widget/j;->c(II)V

    return-void
.end method
