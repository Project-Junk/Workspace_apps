.class public final Lb/a/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:[Ljava/lang/Object;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lb/a/a/b;->a:[Ljava/lang/Object;

    return-void
.end method

.method private final c()V
    .locals 6

    iget-object v0, p0, Lb/a/a/b;->a:[Ljava/lang/Object;

    array-length v0, v0

    shl-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lb/a/a/b;->a:[Ljava/lang/Object;

    array-length v2, v2

    iget v3, p0, Lb/a/a/b;->b:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lb/a/a/b;->a:[Ljava/lang/Object;

    iget v4, p0, Lb/a/a/b;->b:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5, v2}, Lb/a/a/a;->a([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    iget-object v3, p0, Lb/a/a/b;->a:[Ljava/lang/Object;

    iget v4, p0, Lb/a/a/b;->b:I

    invoke-static {v3, v5, v1, v2, v4}, Lb/a/a/a;->a([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    iput-object v1, p0, Lb/a/a/b;->a:[Ljava/lang/Object;

    iput v5, p0, Lb/a/a/b;->b:I

    iput v0, p0, Lb/a/a/b;->c:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget v0, p0, Lb/a/a/b;->b:I

    iget v1, p0, Lb/a/a/b;->c:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Lb/a/a/b;->a:[Ljava/lang/Object;

    iget v1, p0, Lb/a/a/b;->b:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lb/a/a/b;->a:[Ljava/lang/Object;

    iget v3, p0, Lb/a/a/b;->b:I

    aput-object v2, v1, v3

    iget v1, p0, Lb/a/a/b;->b:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lb/a/a/b;->a:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lb/a/a/b;->b:I

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance p0, La/o;

    const-string v0, "null cannot be cast to non-null type T"

    invoke-direct {p0, v0}, La/o;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lb/a/a/b;->a:[Ljava/lang/Object;

    iget v1, p0, Lb/a/a/b;->c:I

    aput-object p1, v0, v1

    iget p1, p0, Lb/a/a/b;->c:I

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lb/a/a/b;->a:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    iput p1, p0, Lb/a/a/b;->c:I

    iget p1, p0, Lb/a/a/b;->c:I

    iget v0, p0, Lb/a/a/b;->b:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lb/a/a/b;->c()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lb/a/a/b;->b:I

    iput v0, p0, Lb/a/a/b;->c:I

    iget-object v0, p0, Lb/a/a/b;->a:[Ljava/lang/Object;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lb/a/a/b;->a:[Ljava/lang/Object;

    return-void
.end method
