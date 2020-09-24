.class abstract Lcom/google/c/e/a/a/a/f;
.super Lcom/google/c/e/a/a/a/i;
.source "AI013x0xDecoder.java"


# direct methods
.method constructor <init>(Lcom/google/c/b/a;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/c/e/a/a/a/i;-><init>(Lcom/google/c/b/a;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation

    .line 1047
    iget-object v0, p0, Lcom/google/c/e/a/a/a/j;->a:Lcom/google/c/b/a;

    .line 2040
    iget v0, v0, Lcom/google/c/b/a;->b:I

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    .line 52
    invoke-virtual {p0, v0, v1}, Lcom/google/c/e/a/a/a/f;->b(Ljava/lang/StringBuilder;I)V

    const/16 v1, 0x2d

    const/16 v2, 0xf

    .line 53
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/c/e/a/a/a/f;->b(Ljava/lang/StringBuilder;II)V

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 47
    :cond_0
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v0

    throw v0
.end method
