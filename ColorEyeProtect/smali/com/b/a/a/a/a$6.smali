.class final Lcom/b/a/a/a/a$6;
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
        "Ljava/lang/Number;",
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

    invoke-virtual {p0, p1}, Lcom/b/a/a/a/a$6;->b(Lcom/b/a/b/a;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/b/a/b/c;Ljava/lang/Number;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/b/a/b/c;->a(Ljava/lang/Number;)Lcom/b/a/b/c;

    return-void
.end method

.method public bridge synthetic a(Lcom/b/a/b/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/b/a/a/a/a$6;->a(Lcom/b/a/b/c;Ljava/lang/Number;)V

    return-void
.end method

.method public b(Lcom/b/a/b/a;)Ljava/lang/Number;
    .locals 2

    invoke-virtual {p1}, Lcom/b/a/b/a;->g()Lcom/b/a/b/b;

    move-result-object p0

    sget-object v0, Lcom/b/a/a/a/a$29;->a:[I

    invoke-virtual {p0}, Lcom/b/a/b/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/b/a/b/a;->l()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Lcom/b/a/i;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expecting number, got: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/b/a/i;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Lcom/b/a/a/c;

    invoke-virtual {p1}, Lcom/b/a/b/a;->j()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/b/a/a/c;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
