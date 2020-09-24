.class final Lcom/b/a/a/a/a$23;
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
        "Ljava/lang/Boolean;",
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

    invoke-virtual {p0, p1}, Lcom/b/a/a/a/a$23;->b(Lcom/b/a/b/a;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/b/a/b/c;Ljava/lang/Boolean;)V
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/b/a/b/c;->e()Lcom/b/a/b/c;

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/b/a/b/c;->b(Z)Lcom/b/a/b/c;

    return-void
.end method

.method public bridge synthetic a(Lcom/b/a/b/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/b/a/a/a/a$23;->a(Lcom/b/a/b/c;Ljava/lang/Boolean;)V

    return-void
.end method

.method public b(Lcom/b/a/b/a;)Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p1}, Lcom/b/a/b/a;->g()Lcom/b/a/b/b;

    move-result-object p0

    sget-object v0, Lcom/b/a/b/b;->i:Lcom/b/a/b/b;

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/b/a/b/a;->l()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/b/a/b/a;->g()Lcom/b/a/b/b;

    move-result-object p0

    sget-object v0, Lcom/b/a/b/b;->f:Lcom/b/a/b/b;

    if-ne p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/b/a/b/a;->j()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/b/a/b/a;->k()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
