.class final Lcom/b/a/a/a/a$8;
.super Lcom/b/a/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/j<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/b/a/j;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/b/a/b/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/b/a/a/a/a$8;->b(Lcom/b/a/b/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/b/a/b/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/b/a/a/a/a$8;->a(Lcom/b/a/b/c;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/b/a/b/c;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/b/a/b/c;->b(Ljava/lang/String;)Lcom/b/a/b/c;

    return-void
.end method

.method public b(Lcom/b/a/b/a;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/b/a/b/a;->g()Lcom/b/a/b/b;

    move-result-object p0

    sget-object v0, Lcom/b/a/b/b;->i:Lcom/b/a/b/b;

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/b/a/b/a;->l()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/b/a/b/b;->h:Lcom/b/a/b/b;

    if-ne p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/b/a/b/a;->k()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/b/a/b/a;->j()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
