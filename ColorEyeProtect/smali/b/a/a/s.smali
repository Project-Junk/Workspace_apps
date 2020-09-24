.class final Lb/a/a/s;
.super Ljava/lang/Object;


# instance fields
.field private a:[Ljava/lang/Object;

.field private b:I

.field private final c:La/b/f;


# direct methods
.method public constructor <init>(La/b/f;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/a/s;->c:La/b/f;

    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lb/a/a/s;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lb/a/a/s;->a:[Ljava/lang/Object;

    iget v1, p0, Lb/a/a/s;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lb/a/a/s;->b:I

    aget-object p0, v0, v1

    return-object p0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lb/a/a/s;->a:[Ljava/lang/Object;

    iget v1, p0, Lb/a/a/s;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lb/a/a/s;->b:I

    aput-object p1, v0, v1

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lb/a/a/s;->b:I

    return-void
.end method

.method public final c()La/b/f;
    .locals 0

    iget-object p0, p0, Lb/a/a/s;->c:La/b/f;

    return-object p0
.end method
