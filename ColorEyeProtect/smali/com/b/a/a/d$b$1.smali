.class Lcom/b/a/a/d$b$1;
.super Lcom/b/a/a/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/a/d$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/a/d<",
        "TK;TV;>.c<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/a/d$b;


# direct methods
.method constructor <init>(Lcom/b/a/a/d$b;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/d$b$1;->a:Lcom/b/a/a/d$b;

    iget-object p1, p1, Lcom/b/a/a/d$b;->a:Lcom/b/a/a/d;

    invoke-direct {p0, p1}, Lcom/b/a/a/d$c;-><init>(Lcom/b/a/a/d;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/b/a/a/d$b$1;->b()Lcom/b/a/a/d$d;

    move-result-object p0

    iget-object p0, p0, Lcom/b/a/a/d$d;->f:Ljava/lang/Object;

    return-object p0
.end method
