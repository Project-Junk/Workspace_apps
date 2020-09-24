.class final Lcom/b/a/a/a/a$22;
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
        "Lcom/b/a/b;",
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

    invoke-virtual {p0, p1}, Lcom/b/a/a/a/a$22;->b(Lcom/b/a/b/a;)Lcom/b/a/b;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/b/a/b/c;Lcom/b/a/b;)V
    .locals 2

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/b/a/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p2}, Lcom/b/a/b;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/b/a/b;->k()Lcom/b/a/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/b/a/h;->m()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/b/a/h;->b()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/b/a/b/c;->a(Ljava/lang/Number;)Lcom/b/a/b/c;

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0}, Lcom/b/a/h;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/b/a/h;->d()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/b/a/b/c;->b(Z)Lcom/b/a/b/c;

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/b/a/h;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/b/a/b/c;->b(Ljava/lang/String;)Lcom/b/a/b/c;

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/b/a/b;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/b/a/b/c;->a()Lcom/b/a/b/c;

    invoke-virtual {p2}, Lcom/b/a/b;->j()Lcom/b/a/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/b/a/a;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/b;

    invoke-virtual {p0, p1, v0}, Lcom/b/a/a/a/a$22;->a(Lcom/b/a/b/c;Lcom/b/a/b;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/b/a/b/c;->b()Lcom/b/a/b/c;

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Lcom/b/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/b/a/b/c;->c()Lcom/b/a/b/c;

    invoke-virtual {p2}, Lcom/b/a/b;->i()Lcom/b/a/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/b/a/e;->a()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/b/a/b/c;->a(Ljava/lang/String;)Lcom/b/a/b/c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/b;

    invoke-virtual {p0, p1, v0}, Lcom/b/a/a/a/a$22;->a(Lcom/b/a/b/c;Lcom/b/a/b;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/b/a/b/c;->d()Lcom/b/a/b/c;

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t write "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/b/a/b/c;->e()Lcom/b/a/b/c;

    :goto_3
    return-void
.end method

.method public bridge synthetic a(Lcom/b/a/b/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/b/a/b;

    invoke-virtual {p0, p1, p2}, Lcom/b/a/a/a/a$22;->a(Lcom/b/a/b/c;Lcom/b/a/b;)V

    return-void
.end method

.method public b(Lcom/b/a/b/a;)Lcom/b/a/b;
    .locals 3

    sget-object v0, Lcom/b/a/a/a/a$29;->a:[I

    invoke-virtual {p1}, Lcom/b/a/b/a;->g()Lcom/b/a/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/b/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    new-instance v0, Lcom/b/a/e;

    invoke-direct {v0}, Lcom/b/a/e;-><init>()V

    invoke-virtual {p1}, Lcom/b/a/b/a;->d()V

    :goto_0
    invoke-virtual {p1}, Lcom/b/a/b/a;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/b/a/b/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/b/a/a/a/a$22;->b(Lcom/b/a/b/a;)Lcom/b/a/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/a/e;->a(Ljava/lang/String;Lcom/b/a/b;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/b/a/b/a;->e()V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/b/a/a;

    invoke-direct {v0}, Lcom/b/a/a;-><init>()V

    invoke-virtual {p1}, Lcom/b/a/b/a;->b()V

    :goto_1
    invoke-virtual {p1}, Lcom/b/a/b/a;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/b/a/a/a/a$22;->b(Lcom/b/a/b/a;)Lcom/b/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/a;->a(Lcom/b/a/b;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/b/a/b/a;->c()V

    return-object v0

    :pswitch_2
    invoke-virtual {p1}, Lcom/b/a/b/a;->l()V

    sget-object p0, Lcom/b/a/d;->a:Lcom/b/a/d;

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/b/a/h;

    invoke-virtual {p1}, Lcom/b/a/b/a;->j()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/b/a/h;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/b/a/h;

    invoke-virtual {p1}, Lcom/b/a/b/a;->k()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/b/a/h;-><init>(Ljava/lang/Boolean;)V

    return-object p0

    :pswitch_5
    invoke-virtual {p1}, Lcom/b/a/b/a;->j()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/b/a/h;

    new-instance v0, Lcom/b/a/a/c;

    invoke-direct {v0, p0}, Lcom/b/a/a/c;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/b/a/h;-><init>(Ljava/lang/Number;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
