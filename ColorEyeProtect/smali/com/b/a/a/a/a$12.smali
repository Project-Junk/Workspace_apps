.class final Lcom/b/a/a/a/a$12;
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
        "Ljava/util/BitSet;",
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

    invoke-virtual {p0, p1}, Lcom/b/a/a/a/a$12;->b(Lcom/b/a/b/a;)Ljava/util/BitSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/b/a/b/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2}, Lcom/b/a/a/a/a$12;->a(Lcom/b/a/b/c;Ljava/util/BitSet;)V

    return-void
.end method

.method public a(Lcom/b/a/b/c;Ljava/util/BitSet;)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/b/a/b/c;->e()Lcom/b/a/b/c;

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/b/a/b/c;->a()Lcom/b/a/b/c;

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    move-result v0

    if-ge p0, v0, :cond_1

    invoke-virtual {p2, p0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/b/a/b/c;->a(J)Lcom/b/a/b/c;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/b/a/b/c;->b()Lcom/b/a/b/c;

    return-void
.end method

.method public b(Lcom/b/a/b/a;)Ljava/util/BitSet;
    .locals 5

    invoke-virtual {p1}, Lcom/b/a/b/a;->g()Lcom/b/a/b/b;

    move-result-object p0

    sget-object v0, Lcom/b/a/b/b;->i:Lcom/b/a/b/b;

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/b/a/b/a;->l()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/BitSet;

    invoke-direct {p0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p1}, Lcom/b/a/b/a;->b()V

    invoke-virtual {p1}, Lcom/b/a/b/a;->g()Lcom/b/a/b/b;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    sget-object v3, Lcom/b/a/b/b;->b:Lcom/b/a/b/b;

    if-eq v0, v3, :cond_3

    sget-object v3, Lcom/b/a/a/a/a$29;->a:[I

    invoke-virtual {v0}, Lcom/b/a/b/b;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    new-instance p0, Lcom/b/a/i;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid bitset value type: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/b/a/i;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p1}, Lcom/b/a/b/a;->j()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v4, v1

    goto :goto_1

    :catch_0
    new-instance p0, Lcom/b/a/i;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Expecting: bitset number value (1, 0), Found: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/b/a/i;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-virtual {p1}, Lcom/b/a/b/a;->k()Z

    move-result v4

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lcom/b/a/b/a;->o()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->set(I)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Lcom/b/a/b/a;->g()Lcom/b/a/b/b;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/b/a/b/a;->c()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
