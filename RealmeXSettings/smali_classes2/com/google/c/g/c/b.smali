.class public final Lcom/google/c/g/c/b;
.super Ljava/lang/Object;
.source "ByteMatrix.java"


# instance fields
.field final a:[[B

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    filled-new-array {p2, p1}, [I

    move-result-object v0

    const-class v1, B

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/google/c/g/c/b;->a:[[B

    .line 33
    iput p1, p0, Lcom/google/c/g/c/b;->b:I

    .line 34
    iput p2, p0, Lcom/google/c/g/c/b;->c:I

    return-void
.end method


# virtual methods
.method public final a(II)B
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/c/g/c/b;->a:[[B

    aget-object p2, v0, p2

    aget-byte p1, p2, p1

    return p1
.end method

.method public final a(III)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/c/g/c/b;->a:[[B

    aget-object p2, v0, p2

    int-to-byte p3, p3

    aput-byte p3, p2, p1

    return-void
.end method

.method public final a(IIZ)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/google/c/g/c/b;->a:[[B

    aget-object p2, v0, p2

    int-to-byte p3, p3

    aput-byte p3, p2, p1

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/c/g/c/b;->b:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/google/c/g/c/b;->c:I

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 79
    :goto_0
    iget v3, p0, Lcom/google/c/g/c/b;->c:I

    if-ge v2, v3, :cond_3

    move v3, v1

    .line 80
    :goto_1
    iget v4, p0, Lcom/google/c/g/c/b;->b:I

    if-ge v3, v4, :cond_2

    .line 81
    iget-object v4, p0, Lcom/google/c/g/c/b;->a:[[B

    aget-object v4, v4, v2

    aget-byte v4, v4, v3

    if-eqz v4, :cond_1

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    const-string v4, "  "

    .line 89
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const-string v4, " 1"

    .line 86
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const-string v4, " 0"

    .line 83
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/16 v3, 0xa

    .line 93
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
