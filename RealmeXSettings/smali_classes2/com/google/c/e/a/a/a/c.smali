.class final Lcom/google/c/e/a/a/a/c;
.super Lcom/google/c/e/a/a/a/h;
.source "AI01392xDecoder.java"


# direct methods
.method constructor <init>(Lcom/google/c/b/a;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/c/e/a/a/a/h;-><init>(Lcom/google/c/b/a;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation

    .line 1047
    iget-object v0, p0, Lcom/google/c/e/a/a/a/j;->a:Lcom/google/c/b/a;

    .line 2040
    iget v0, v0, Lcom/google/c/b/a;->b:I

    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x8

    .line 52
    invoke-virtual {p0, v0, v2}, Lcom/google/c/e/a/a/a/c;->b(Ljava/lang/StringBuilder;I)V

    .line 2051
    iget-object v2, p0, Lcom/google/c/e/a/a/a/j;->b:Lcom/google/c/e/a/a/a/s;

    const/4 v3, 0x2

    .line 54
    invoke-virtual {v2, v1, v3}, Lcom/google/c/e/a/a/a/s;->a(II)I

    move-result v1

    const-string v2, "(392"

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3051
    iget-object v1, p0, Lcom/google/c/e/a/a/a/j;->b:Lcom/google/c/e/a/a/a/s;

    const/16 v2, 0x32

    const/4 v3, 0x0

    .line 60
    invoke-virtual {v1, v2, v3}, Lcom/google/c/e/a/a/a/s;->a(ILjava/lang/String;)Lcom/google/c/e/a/a/a/o;

    move-result-object v1

    .line 3054
    iget-object v1, v1, Lcom/google/c/e/a/a/a/o;->a:Ljava/lang/String;

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 47
    :cond_0
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v0

    throw v0
.end method
