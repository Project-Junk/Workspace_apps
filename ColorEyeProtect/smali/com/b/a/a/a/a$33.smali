.class final Lcom/b/a/a/a/a$33;
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

    invoke-virtual {p0, p1}, Lcom/b/a/a/a/a$33;->b(Lcom/b/a/b/a;)Ljava/lang/Number;

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

    invoke-virtual {p0, p1, p2}, Lcom/b/a/a/a/a$33;->a(Lcom/b/a/b/c;Ljava/lang/Number;)V

    return-void
.end method

.method public b(Lcom/b/a/b/a;)Ljava/lang/Number;
    .locals 1

    invoke-virtual {p1}, Lcom/b/a/b/a;->g()Lcom/b/a/b/b;

    move-result-object p0

    sget-object v0, Lcom/b/a/b/b;->i:Lcom/b/a/b/b;

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/b/a/b/a;->l()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/b/a/b/a;->o()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/b/a/i;

    invoke-direct {p1, p0}, Lcom/b/a/i;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
