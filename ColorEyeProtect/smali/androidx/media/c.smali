.class Landroidx/media/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media/a;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media/c;->a:I

    iput v0, p0, Landroidx/media/c;->b:I

    iput v0, p0, Landroidx/media/c;->c:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media/c;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget v0, p0, Landroidx/media/c;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget p0, p0, Landroidx/media/c;->d:I

    return p0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Landroidx/media/c;->c:I

    iget p0, p0, Landroidx/media/c;->a:I

    invoke-static {v0, v1, p0}, Landroidx/media/AudioAttributesCompat;->a(ZII)I

    move-result p0

    return p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Landroidx/media/c;->b:I

    return p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Landroidx/media/c;->a:I

    return p0
.end method

.method public d()I
    .locals 2

    iget v0, p0, Landroidx/media/c;->c:I

    invoke-virtual {p0}, Landroidx/media/c;->a()I

    move-result p0

    const/4 v1, 0x6

    if-ne p0, v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    if-ne p0, v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    :goto_0
    and-int/lit16 p0, v0, 0x111

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroidx/media/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/media/c;

    iget v0, p0, Landroidx/media/c;->b:I

    invoke-virtual {p1}, Landroidx/media/c;->b()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroidx/media/c;->c:I

    invoke-virtual {p1}, Landroidx/media/c;->d()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroidx/media/c;->a:I

    invoke-virtual {p1}, Landroidx/media/c;->c()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget p0, p0, Landroidx/media/c;->d:I

    iget p1, p1, Landroidx/media/c;->d:I

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroidx/media/c;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/media/c;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/media/c;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget p0, p0, Landroidx/media/c;->d:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioAttributesCompat:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/media/c;->d:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, " stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media/c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " derived"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, " usage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media/c;->a:I

    invoke-static {v1}, Landroidx/media/AudioAttributesCompat;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media/c;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/media/c;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
