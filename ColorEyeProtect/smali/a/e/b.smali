.class public final La/e/b;
.super La/a/u;


# instance fields
.field private final a:I

.field private b:Z

.field private c:I

.field private final d:I


# direct methods
.method public constructor <init>(III)V
    .locals 2

    invoke-direct {p0}, La/a/u;-><init>()V

    iput p3, p0, La/e/b;->d:I

    iput p2, p0, La/e/b;->a:I

    iget p3, p0, La/e/b;->d:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p3, :cond_0

    if-gt p1, p2, :cond_1

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    if-lt p1, p2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iput-boolean v0, p0, La/e/b;->b:Z

    iget-boolean p2, p0, La/e/b;->b:Z

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    iget p1, p0, La/e/b;->a:I

    :goto_2
    iput p1, p0, La/e/b;->c:I

    return-void
.end method


# virtual methods
.method public b()I
    .locals 3

    iget v0, p0, La/e/b;->c:I

    iget v1, p0, La/e/b;->a:I

    if-ne v0, v1, :cond_1

    iget-boolean v1, p0, La/e/b;->b:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, La/e/b;->b:Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_1
    iget v1, p0, La/e/b;->c:I

    iget v2, p0, La/e/b;->d:I

    add-int/2addr v1, v2

    iput v1, p0, La/e/b;->c:I

    :goto_0
    return v0
.end method

.method public hasNext()Z
    .locals 0

    iget-boolean p0, p0, La/e/b;->b:Z

    return p0
.end method
