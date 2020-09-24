.class public Lcom/color/eyeprotect/c/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/eyeprotect/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/color/eyeprotect/c/b$a;->a:I

    iput v0, p0, Lcom/color/eyeprotect/c/b$a;->b:I

    iput v0, p0, Lcom/color/eyeprotect/c/b$a;->c:I

    iput v0, p0, Lcom/color/eyeprotect/c/b$a;->d:I

    return-void
.end method

.method static synthetic a(Lcom/color/eyeprotect/c/b$a;)I
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/c/b$a;->a:I

    return p0
.end method

.method static synthetic b(Lcom/color/eyeprotect/c/b$a;)I
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/c/b$a;->b:I

    return p0
.end method

.method static synthetic c(Lcom/color/eyeprotect/c/b$a;)I
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/c/b$a;->c:I

    return p0
.end method

.method static synthetic d(Lcom/color/eyeprotect/c/b$a;)I
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/c/b$a;->d:I

    return p0
.end method


# virtual methods
.method public a(IIII)V
    .locals 0

    iput p1, p0, Lcom/color/eyeprotect/c/b$a;->a:I

    iput p2, p0, Lcom/color/eyeprotect/c/b$a;->b:I

    iput p3, p0, Lcom/color/eyeprotect/c/b$a;->c:I

    iput p4, p0, Lcom/color/eyeprotect/c/b$a;->d:I

    return-void
.end method

.method public a()Z
    .locals 2

    iget v0, p0, Lcom/color/eyeprotect/c/b$a;->a:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/color/eyeprotect/c/b$a;->b:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/color/eyeprotect/c/b$a;->c:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/color/eyeprotect/c/b$a;->d:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/color/eyeprotect/c/b$a;->a:I

    iget v1, p0, Lcom/color/eyeprotect/c/b$a;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/color/eyeprotect/c/b$a;->b:I

    iget p0, p0, Lcom/color/eyeprotect/c/b$a;->d:I

    if-eq v0, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public a(II)Z
    .locals 3

    invoke-virtual {p0}, Lcom/color/eyeprotect/c/b$a;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/color/eyeprotect/c/b$a;->a:I

    mul-int/lit8 v0, v0, 0x3c

    iget v2, p0, Lcom/color/eyeprotect/c/b$a;->b:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/color/eyeprotect/c/b$a;->c:I

    mul-int/lit8 v2, v2, 0x3c

    iget p0, p0, Lcom/color/eyeprotect/c/b$a;->d:I

    add-int/2addr v2, p0

    mul-int/lit8 p1, p1, 0x3c

    add-int/2addr p1, p2

    const/4 p0, 0x1

    if-le v2, v0, :cond_1

    if-lt p1, v0, :cond_3

    if-ge p1, v2, :cond_3

    return p0

    :cond_1
    if-ge v2, v0, :cond_3

    if-lt p1, v2, :cond_2

    if-lt p1, v0, :cond_3

    :cond_2
    return p0

    :cond_3
    return v1
.end method

.method public b()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/color/eyeprotect/c/b$a;->a:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/color/eyeprotect/c/b$a;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/color/eyeprotect/c/b$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/color/eyeprotect/c/b$a;->b:I

    if-ge v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/color/eyeprotect/c/b$a;->b:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget p0, p0, Lcom/color/eyeprotect/c/b$a;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/color/eyeprotect/c/b$a;->c:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/color/eyeprotect/c/b$a;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/color/eyeprotect/c/b$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/color/eyeprotect/c/b$a;->d:I

    if-ge v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/color/eyeprotect/c/b$a;->d:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget p0, p0, Lcom/color/eyeprotect/c/b$a;->d:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/color/eyeprotect/c/b$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/color/eyeprotect/c/b$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/color/eyeprotect/c/b$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/color/eyeprotect/c/b$a;->d:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
