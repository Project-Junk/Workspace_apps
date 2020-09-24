.class public La/e/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/e/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:La/e/a$a;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La/e/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La/e/a$a;-><init>(La/d/b/e;)V

    sput-object v0, La/e/a;->a:La/e/a$a;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1

    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_0

    iput p1, p0, La/e/a;->b:I

    invoke-static {p1, p2, p3}, La/c/c;->a(III)I

    move-result p1

    iput p1, p0, La/e/a;->c:I

    iput p3, p0, La/e/a;->d:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step must be greater than Int.MIN_VALUE to avoid overflow on negation."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step must be non-zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, La/e/a;->b:I

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, La/e/a;->c:I

    return p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, La/e/a;->d:I

    return p0
.end method

.method public d()La/a/u;
    .locals 3

    new-instance v0, La/e/b;

    iget v1, p0, La/e/a;->b:I

    iget v2, p0, La/e/a;->c:I

    iget p0, p0, La/e/a;->d:I

    invoke-direct {v0, v1, v2, p0}, La/e/b;-><init>(III)V

    check-cast v0, La/a/u;

    return-object v0
.end method

.method public e()Z
    .locals 3

    iget v0, p0, La/e/a;->d:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    iget v0, p0, La/e/a;->b:I

    iget p0, p0, La/e/a;->c:I

    if-le v0, p0, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    iget v0, p0, La/e/a;->b:I

    iget p0, p0, La/e/a;->c:I

    if-ge v0, p0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, La/e/a;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, La/e/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, La/e/a;

    invoke-virtual {v0}, La/e/a;->e()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, La/e/a;->b:I

    check-cast p1, La/e/a;

    iget v1, p1, La/e/a;->b:I

    if-ne v0, v1, :cond_2

    iget v0, p0, La/e/a;->c:I

    iget v1, p1, La/e/a;->c:I

    if-ne v0, v1, :cond_2

    iget p0, p0, La/e/a;->d:I

    iget p1, p1, La/e/a;->d:I

    if-ne p0, p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, La/e/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, La/e/a;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, La/e/a;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, La/e/a;->d:I

    add-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, La/e/a;->d()La/a/u;

    move-result-object p0

    check-cast p0, Ljava/util/Iterator;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, La/e/a;->d:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, La/e/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La/e/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " step "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, La/e/a;->d:I

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, La/e/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " downTo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La/e/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " step "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, La/e/a;->d:I

    neg-int p0, p0

    goto :goto_0

    :goto_1
    return-object p0
.end method
