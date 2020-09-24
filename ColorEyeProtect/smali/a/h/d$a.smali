.class public final La/h/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/h/d;->a()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "La/e/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:La/h/d;

.field private b:I

.field private c:I

.field private d:I

.field private e:La/e/c;

.field private f:I


# direct methods
.method constructor <init>(La/h/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, La/h/d$a;->a:La/h/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, La/h/d$a;->b:I

    invoke-static {p1}, La/h/d;->d(La/h/d;)I

    move-result v0

    invoke-static {p1}, La/h/d;->b(La/h/d;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, La/e/d;->a(III)I

    move-result p1

    iput p1, p0, La/h/d$a;->c:I

    iget p1, p0, La/h/d$a;->c:I

    iput p1, p0, La/h/d$a;->d:I

    return-void
.end method

.method private final b()V
    .locals 6

    iget v0, p0, La/h/d$a;->d:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iput v1, p0, La/h/d$a;->b:I

    const/4 v0, 0x0

    check-cast v0, La/e/c;

    iput-object v0, p0, La/h/d$a;->e:La/e/c;

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, La/h/d$a;->a:La/h/d;

    invoke-static {v0}, La/h/d;->a(La/h/d;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-lez v0, :cond_1

    iget v0, p0, La/h/d$a;->f:I

    add-int/2addr v0, v3

    iput v0, p0, La/h/d$a;->f:I

    iget v0, p0, La/h/d$a;->f:I

    iget-object v4, p0, La/h/d$a;->a:La/h/d;

    invoke-static {v4}, La/h/d;->a(La/h/d;)I

    move-result v4

    if-ge v0, v4, :cond_2

    :cond_1
    iget v0, p0, La/h/d$a;->d:I

    iget-object v4, p0, La/h/d$a;->a:La/h/d;

    invoke-static {v4}, La/h/d;->b(La/h/d;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v0, v4, :cond_3

    :cond_2
    iget v0, p0, La/h/d$a;->c:I

    new-instance v1, La/e/c;

    iget-object v4, p0, La/h/d$a;->a:La/h/d;

    invoke-static {v4}, La/h/d;->b(La/h/d;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, La/h/f;->b(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v1, v0, v4}, La/e/c;-><init>(II)V

    :goto_0
    iput-object v1, p0, La/h/d$a;->e:La/e/c;

    :goto_1
    iput v2, p0, La/h/d$a;->d:I

    goto :goto_2

    :cond_3
    iget-object v0, p0, La/h/d$a;->a:La/h/d;

    invoke-static {v0}, La/h/d;->c(La/h/d;)La/d/a/m;

    move-result-object v0

    iget-object v4, p0, La/h/d$a;->a:La/h/d;

    invoke-static {v4}, La/h/d;->b(La/h/d;)Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, p0, La/h/d$a;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, La/d/a/m;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/j;

    if-nez v0, :cond_4

    iget v0, p0, La/h/d$a;->c:I

    new-instance v1, La/e/c;

    iget-object v4, p0, La/h/d$a;->a:La/h/d;

    invoke-static {v4}, La/h/d;->b(La/h/d;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, La/h/f;->b(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v1, v0, v4}, La/e/c;-><init>(II)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, La/j;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0}, La/j;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v4, p0, La/h/d$a;->c:I

    invoke-static {v4, v2}, La/e/d;->b(II)La/e/c;

    move-result-object v4

    iput-object v4, p0, La/h/d$a;->e:La/e/c;

    add-int/2addr v2, v0

    iput v2, p0, La/h/d$a;->c:I

    iget v2, p0, La/h/d$a;->c:I

    if-nez v0, :cond_5

    move v1, v3

    :cond_5
    add-int/2addr v2, v1

    goto :goto_1

    :goto_2
    iput v3, p0, La/h/d$a;->b:I

    :goto_3
    return-void
.end method


# virtual methods
.method public a()La/e/c;
    .locals 3

    iget v0, p0, La/h/d$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, La/h/d$a;->b()V

    :cond_0
    iget v0, p0, La/h/d$a;->b:I

    if-eqz v0, :cond_2

    iget-object v0, p0, La/h/d$a;->e:La/e/c;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    check-cast v2, La/e/c;

    iput-object v2, p0, La/h/d$a;->e:La/e/c;

    iput v1, p0, La/h/d$a;->b:I

    return-object v0

    :cond_1
    new-instance p0, La/o;

    const-string v0, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-direct {p0, v0}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, La/h/d$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, La/h/d$a;->b()V

    :cond_0
    iget p0, p0, La/h/d$a;->b:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, La/h/d$a;->a()La/e/c;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
