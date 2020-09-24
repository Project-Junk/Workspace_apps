.class public Lcom/c/a/a/a/n;
.super Ljava/lang/Object;


# direct methods
.method static a(Lcom/c/a/a/a/ac;Lcom/c/a/a/a/s;)Lcom/c/a/a/a/k;
    .locals 6

    iget v0, p1, Lcom/c/a/a/a/s;->a:I

    const/16 v1, 0x40

    const/16 v2, 0x21

    const/16 v3, 0x3d

    const/16 v4, 0x27

    const/16 v5, 0x22

    if-eq v0, v1, :cond_a

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/c/a/a/a/ad;

    const-string v1, "at beginning of expression"

    const-string v2, "@, number, or text()"

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/c/a/a/a/ad;-><init>(Lcom/c/a/a/a/ac;Ljava/lang/String;Lcom/c/a/a/a/s;Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget p0, p1, Lcom/c/a/a/a/s;->b:I

    invoke-virtual {p1}, Lcom/c/a/a/a/s;->a()I

    new-instance p1, Lcom/c/a/a/a/r;

    invoke-direct {p1, p0}, Lcom/c/a/a/a/r;-><init>(I)V

    return-object p1

    :pswitch_1
    iget-object v0, p1, Lcom/c/a/a/a/s;->c:Ljava/lang/String;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/c/a/a/a/s;->a()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_8

    invoke-virtual {p1}, Lcom/c/a/a/a/s;->a()I

    move-result v0

    const/16 v1, 0x29

    if-ne v0, v1, :cond_7

    invoke-virtual {p1}, Lcom/c/a/a/a/s;->a()I

    move-result v0

    if-eq v0, v2, :cond_3

    if-eq v0, v3, :cond_0

    sget-object p0, Lcom/c/a/a/a/w;->a:Lcom/c/a/a/a/w;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/c/a/a/a/s;->a()I

    iget v0, p1, Lcom/c/a/a/a/s;->a:I

    if-eq v0, v5, :cond_2

    iget v0, p1, Lcom/c/a/a/a/s;->a:I

    if-ne v0, v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/c/a/a/a/ad;

    const-string v1, "right hand side of equals"

    const-string v2, "quoted string"

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/c/a/a/a/ad;-><init>(Lcom/c/a/a/a/ac;Ljava/lang/String;Lcom/c/a/a/a/s;Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-object p0, p1, Lcom/c/a/a/a/s;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/c/a/a/a/s;->a()I

    new-instance p1, Lcom/c/a/a/a/v;

    invoke-direct {p1, p0}, Lcom/c/a/a/a/v;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_3
    invoke-virtual {p1}, Lcom/c/a/a/a/s;->a()I

    iget v0, p1, Lcom/c/a/a/a/s;->a:I

    if-ne v0, v3, :cond_6

    invoke-virtual {p1}, Lcom/c/a/a/a/s;->a()I

    iget v0, p1, Lcom/c/a/a/a/s;->a:I

    if-eq v0, v5, :cond_5

    iget v0, p1, Lcom/c/a/a/a/s;->a:I

    if-ne v0, v4, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/c/a/a/a/ad;

    const-string v1, "right hand side of !="

    const-string v2, "quoted string"

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/c/a/a/a/ad;-><init>(Lcom/c/a/a/a/ac;Ljava/lang/String;Lcom/c/a/a/a/s;Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    iget-object p0, p1, Lcom/c/a/a/a/s;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/c/a/a/a/s;->a()I

    new-instance p1, Lcom/c/a/a/a/x;

    invoke-direct {p1, p0}, Lcom/c/a/a/a/x;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_6
    new-instance v0, Lcom/c/a/a/a/ad;

    const-string v1, "after !"

    const-string v2, "="

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/c/a/a/a/ad;-><init>(Lcom/c/a/a/a/ac;Ljava/lang/String;Lcom/c/a/a/a/s;Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lcom/c/a/a/a/ad;

    const-string v1, "after text("

    const-string v2, ")"

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/c/a/a/a/ad;-><init>(Lcom/c/a/a/a/ac;Ljava/lang/String;Lcom/c/a/a/a/s;Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Lcom/c/a/a/a/ad;

    const-string v1, "after text"

    const-string v2, "("

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/c/a/a/a/ad;-><init>(Lcom/c/a/a/a/ac;Ljava/lang/String;Lcom/c/a/a/a/s;Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Lcom/c/a/a/a/ad;

    const-string v1, "at beginning of expression"

    const-string v2, "text()"

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/c/a/a/a/ad;-><init>(Lcom/c/a/a/a/ac;Ljava/lang/String;Lcom/c/a/a/a/s;Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p1}, Lcom/c/a/a/a/s;->a()I

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_17

    iget-object v0, p1, Lcom/c/a/a/a/s;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/c/a/a/a/s;->a()I

    move-result v1

    if-eq v1, v2, :cond_13

    const/4 v2, -0x2

    packed-switch v1, :pswitch_data_1

    new-instance p0, Lcom/c/a/a/a/d;

    invoke-direct {p0, v0}, Lcom/c/a/a/a/d;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_2
    invoke-virtual {p1}, Lcom/c/a/a/a/s;->a()I

    iget v1, p1, Lcom/c/a/a/a/s;->a:I

    if-eq v1, v5, :cond_d

    iget v1, p1, Lcom/c/a/a/a/s;->a:I

    if-ne v1, v4, :cond_b

    goto :goto_2

    :cond_b
    iget v1, p1, Lcom/c/a/a/a/s;->a:I

    if-ne v1, v2, :cond_c

    iget p0, p1, Lcom/c/a/a/a/s;->b:I

    goto :goto_3

    :cond_c
    new-instance v0, Lcom/c/a/a/a/ad;

    const-string v1, "right hand side of greater-than"

    const-string v2, "quoted string or number"

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/c/a/a/a/ad;-><init>(Lcom/c/a/a/a/ac;Ljava/lang/String;Lcom/c/a/a/a/s;Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_2
    iget-object p0, p1, Lcom/c/a/a/a/s;->c:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    :goto_3
    invoke-virtual {p1}, Lcom/c/a/a/a/s;->a()I

    new-instance p1, Lcom/c/a/a/a/f;

    invoke-direct {p1, v0, p0}, Lcom/c/a/a/a/f;-><init>(Ljava/lang/String;I)V

    return-object p1

    :pswitch_3
    invoke-virtual {p1}, Lcom/c/a/a/a/s;->a()I

    iget v1, p1, Lcom/c/a/a/a/s;->a:I

    if-eq v1, v5, :cond_f

    iget v1, p1, Lcom/c/a/a/a/s;->a:I

    if-ne v1, v4, :cond_e

    goto :goto_4

    :cond_e
    new-instance v0, Lcom/c/a/a/a/ad;

    const-string v1, "right hand side of equals"

    const-string v2, "quoted string"

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/c/a/a/a/ad;-><init>(Lcom/c/a/a/a/ac;Ljava/lang/String;Lcom/c/a/a/a/s;Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_4
    iget-object p0, p1, Lcom/c/a/a/a/s;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/c/a/a/a/s;->a()I

    new-instance p1, Lcom/c/a/a/a/c;

    invoke-direct {p1, v0, p0}, Lcom/c/a/a/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :pswitch_4
    invoke-virtual {p1}, Lcom/c/a/a/a/s;->a()I

    iget v1, p1, Lcom/c/a/a/a/s;->a:I

    if-eq v1, v5, :cond_12

    iget v1, p1, Lcom/c/a/a/a/s;->a:I

    if-ne v1, v4, :cond_10

    goto :goto_5

    :cond_10
    iget v1, p1, Lcom/c/a/a/a/s;->a:I

    if-ne v1, v2, :cond_11

    iget p0, p1, Lcom/c/a/a/a/s;->b:I

    goto :goto_6

    :cond_11
    new-instance v0, Lcom/c/a/a/a/ad;

    const-string v1, "right hand side of less-than"

    const-string v2, "quoted string or number"

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/c/a/a/a/ad;-><init>(Lcom/c/a/a/a/ac;Ljava/lang/String;Lcom/c/a/a/a/s;Ljava/lang/String;)V

    throw v0

    :cond_12
    :goto_5
    iget-object p0, p1, Lcom/c/a/a/a/s;->c:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    :goto_6
    invoke-virtual {p1}, Lcom/c/a/a/a/s;->a()I

    new-instance p1, Lcom/c/a/a/a/g;

    invoke-direct {p1, v0, p0}, Lcom/c/a/a/a/g;-><init>(Ljava/lang/String;I)V

    return-object p1

    :cond_13
    invoke-virtual {p1}, Lcom/c/a/a/a/s;->a()I

    iget v1, p1, Lcom/c/a/a/a/s;->a:I

    if-ne v1, v3, :cond_16

    invoke-virtual {p1}, Lcom/c/a/a/a/s;->a()I

    iget v1, p1, Lcom/c/a/a/a/s;->a:I

    if-eq v1, v5, :cond_15

    iget v1, p1, Lcom/c/a/a/a/s;->a:I

    if-ne v1, v4, :cond_14

    goto :goto_7

    :cond_14
    new-instance v0, Lcom/c/a/a/a/ad;

    const-string v1, "right hand side of !="

    const-string v2, "quoted string"

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/c/a/a/a/ad;-><init>(Lcom/c/a/a/a/ac;Ljava/lang/String;Lcom/c/a/a/a/s;Ljava/lang/String;)V

    throw v0

    :cond_15
    :goto_7
    iget-object p0, p1, Lcom/c/a/a/a/s;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/c/a/a/a/s;->a()I

    new-instance p1, Lcom/c/a/a/a/h;

    invoke-direct {p1, v0, p0}, Lcom/c/a/a/a/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_16
    new-instance v0, Lcom/c/a/a/a/ad;

    const-string v1, "after !"

    const-string v2, "="

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/c/a/a/a/ad;-><init>(Lcom/c/a/a/a/ac;Ljava/lang/String;Lcom/c/a/a/a/s;Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Lcom/c/a/a/a/ad;

    const-string v1, "after @"

    const-string v2, "name"

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/c/a/a/a/ad;-><init>(Lcom/c/a/a/a/ac;Ljava/lang/String;Lcom/c/a/a/a/s;Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
