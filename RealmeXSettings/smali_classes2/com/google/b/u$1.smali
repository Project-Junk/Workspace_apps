.class final Lcom/google/b/u$1;
.super Lcom/google/b/u;
.source "TypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/b/u;->a()Lcom/google/b/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/b/u<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/b/u;


# direct methods
.method constructor <init>(Lcom/google/b/u;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/google/b/u$1;->a:Lcom/google/b/u;

    invoke-direct {p0}, Lcom/google/b/u;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/b/d/a;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/d/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    invoke-virtual {p1}, Lcom/google/b/d/a;->f()Lcom/google/b/d/b;

    move-result-object v0

    sget-object v1, Lcom/google/b/d/b;->i:Lcom/google/b/d/b;

    if-ne v0, v1, :cond_0

    .line 196
    invoke-virtual {p1}, Lcom/google/b/d/a;->k()V

    const/4 p1, 0x0

    return-object p1

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/google/b/u$1;->a:Lcom/google/b/u;

    invoke-virtual {v0, p1}, Lcom/google/b/u;->a(Lcom/google/b/d/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/b/d/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/d/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 189
    invoke-virtual {p1}, Lcom/google/b/d/c;->e()Lcom/google/b/d/c;

    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/google/b/u$1;->a:Lcom/google/b/u;

    invoke-virtual {v0, p1, p2}, Lcom/google/b/u;->a(Lcom/google/b/d/c;Ljava/lang/Object;)V

    return-void
.end method
