.class public final Lcom/color/eyeprotect/d/a;
.super Ljava/lang/Object;


# instance fields
.field private a:[F

.field private b:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/color/eyeprotect/d/a;-><init>([F[FILa/d/b/e;)V

    return-void
.end method

.method public constructor <init>([F[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/color/eyeprotect/d/a;->a:[F

    iput-object p2, p0, Lcom/color/eyeprotect/d/a;->b:[F

    return-void
.end method

.method public synthetic constructor <init>([F[FILa/d/b/e;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    check-cast p1, [F

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    check-cast p2, [F

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/color/eyeprotect/d/a;-><init>([F[F)V

    return-void
.end method


# virtual methods
.method public final a([F)V
    .locals 0

    iput-object p1, p0, Lcom/color/eyeprotect/d/a;->a:[F

    return-void
.end method

.method public final a()[F
    .locals 0

    iget-object p0, p0, Lcom/color/eyeprotect/d/a;->a:[F

    return-object p0
.end method

.method public final b([F)V
    .locals 0

    iput-object p1, p0, Lcom/color/eyeprotect/d/a;->b:[F

    return-void
.end method

.method public final b()[F
    .locals 0

    iget-object p0, p0, Lcom/color/eyeprotect/d/a;->b:[F

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/color/eyeprotect/d/a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/color/eyeprotect/d/a;

    iget-object v0, p0, Lcom/color/eyeprotect/d/a;->a:[F

    iget-object v1, p1, Lcom/color/eyeprotect/d/a;->a:[F

    invoke-static {v0, v1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/eyeprotect/d/a;->b:[F

    iget-object p1, p1, Lcom/color/eyeprotect/d/a;->b:[F

    invoke-static {p0, p1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/color/eyeprotect/d/a;->a:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/color/eyeprotect/d/a;->b:[F

    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AiNode(mColorTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/color/eyeprotect/d/a;->a:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mColorScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/color/eyeprotect/d/a;->b:[F

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
