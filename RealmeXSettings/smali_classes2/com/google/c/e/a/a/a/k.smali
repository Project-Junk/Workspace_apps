.class final Lcom/google/c/e/a/a/a/k;
.super Lcom/google/c/e/a/a/a/j;
.source "AnyAIDecoder.java"


# direct methods
.method constructor <init>(Lcom/google/c/b/a;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/c/e/a/a/a/j;-><init>(Lcom/google/c/b/a;)V

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

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1051
    iget-object v1, p0, Lcom/google/c/e/a/a/a/j;->b:Lcom/google/c/e/a/a/a/s;

    const/4 v2, 0x5

    .line 47
    invoke-virtual {v1, v0, v2}, Lcom/google/c/e/a/a/a/s;->a(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
