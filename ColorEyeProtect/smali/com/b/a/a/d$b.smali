.class final Lcom/b/a/a/d$b;
.super Ljava/util/AbstractSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/a/d;


# direct methods
.method constructor <init>(Lcom/b/a/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/d$b;->a:Lcom/b/a/a/d;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/b/a/a/d$b;->a:Lcom/b/a/a/d;

    invoke-virtual {p0}, Lcom/b/a/a/d;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/b/a/a/d$b;->a:Lcom/b/a/a/d;

    invoke-virtual {p0, p1}, Lcom/b/a/a/d;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/b/a/a/d$b$1;

    invoke-direct {v0, p0}, Lcom/b/a/a/d$b$1;-><init>(Lcom/b/a/a/d$b;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/b/a/a/d$b;->a:Lcom/b/a/a/d;

    invoke-virtual {p0, p1}, Lcom/b/a/a/d;->b(Ljava/lang/Object;)Lcom/b/a/a/d$d;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/b/a/a/d$b;->a:Lcom/b/a/a/d;

    iget p0, p0, Lcom/b/a/a/d;->c:I

    return p0
.end method
