.class abstract Lcom/b/a/a/d$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field b:Lcom/b/a/a/d$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/a/d$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field c:Lcom/b/a/a/d$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/a/d$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field d:I

.field final synthetic e:Lcom/b/a/a/d;


# direct methods
.method constructor <init>(Lcom/b/a/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/d$c;->e:Lcom/b/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lcom/b/a/a/d$c;->e:Lcom/b/a/a/d;

    iget-object p1, p1, Lcom/b/a/a/d;->e:Lcom/b/a/a/d$d;

    iget-object p1, p1, Lcom/b/a/a/d$d;->d:Lcom/b/a/a/d$d;

    iput-object p1, p0, Lcom/b/a/a/d$c;->b:Lcom/b/a/a/d$d;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/b/a/a/d$c;->c:Lcom/b/a/a/d$d;

    iget-object p1, p0, Lcom/b/a/a/d$c;->e:Lcom/b/a/a/d;

    iget p1, p1, Lcom/b/a/a/d;->d:I

    iput p1, p0, Lcom/b/a/a/d$c;->d:I

    return-void
.end method


# virtual methods
.method final b()Lcom/b/a/a/d$d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/a/d$d<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a/d$c;->b:Lcom/b/a/a/d$d;

    iget-object v1, p0, Lcom/b/a/a/d$c;->e:Lcom/b/a/a/d;

    iget-object v1, v1, Lcom/b/a/a/d;->e:Lcom/b/a/a/d$d;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/b/a/a/d$c;->e:Lcom/b/a/a/d;

    iget v1, v1, Lcom/b/a/a/d;->d:I

    iget v2, p0, Lcom/b/a/a/d$c;->d:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/b/a/a/d$d;->d:Lcom/b/a/a/d$d;

    iput-object v1, p0, Lcom/b/a/a/d$c;->b:Lcom/b/a/a/d$d;

    iput-object v0, p0, Lcom/b/a/a/d$c;->c:Lcom/b/a/a/d$d;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/d$c;->b:Lcom/b/a/a/d$d;

    iget-object p0, p0, Lcom/b/a/a/d$c;->e:Lcom/b/a/a/d;

    iget-object p0, p0, Lcom/b/a/a/d;->e:Lcom/b/a/a/d$d;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/b/a/a/d$c;->c:Lcom/b/a/a/d$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/d$c;->e:Lcom/b/a/a/d;

    iget-object v1, p0, Lcom/b/a/a/d$c;->c:Lcom/b/a/a/d$d;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/b/a/a/d;->a(Lcom/b/a/a/d$d;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/a/d$c;->c:Lcom/b/a/a/d$d;

    iget-object v0, p0, Lcom/b/a/a/d$c;->e:Lcom/b/a/a/d;

    iget v0, v0, Lcom/b/a/a/d;->d:I

    iput v0, p0, Lcom/b/a/a/d$c;->d:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
