.class Lcom/b/a/a/d$a$1;
.super Lcom/b/a/a/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/a/d$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/a/d<",
        "TK;TV;>.c<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/a/d$a;


# direct methods
.method constructor <init>(Lcom/b/a/a/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/d$a$1;->a:Lcom/b/a/a/d$a;

    iget-object p1, p1, Lcom/b/a/a/d$a;->a:Lcom/b/a/a/d;

    invoke-direct {p0, p1}, Lcom/b/a/a/d$c;-><init>(Lcom/b/a/a/d;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/b/a/a/d$a$1;->b()Lcom/b/a/a/d$d;

    move-result-object p0

    return-object p0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/b/a/a/d$a$1;->a()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method
