.class Lcom/b/a/j$1;
.super Lcom/b/a/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/j;->a()Lcom/b/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/j;


# direct methods
.method constructor <init>(Lcom/b/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/j$1;->a:Lcom/b/a/j;

    invoke-direct {p0}, Lcom/b/a/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/b/a;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/b/a;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/b/a/b/a;->g()Lcom/b/a/b/b;

    move-result-object v0

    sget-object v1, Lcom/b/a/b/b;->i:Lcom/b/a/b/b;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/b/a/b/a;->l()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/b/a/j$1;->a:Lcom/b/a/j;

    invoke-virtual {p0, p1}, Lcom/b/a/j;->a(Lcom/b/a/b/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/b/a/b/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/b/c;",
            "TT;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/b/a/b/c;->e()Lcom/b/a/b/c;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/b/a/j$1;->a:Lcom/b/a/j;

    invoke-virtual {p0, p1, p2}, Lcom/b/a/j;->a(Lcom/b/a/b/c;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
