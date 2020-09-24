.class final Lcom/google/b/b/a/n$22;
.super Lcom/google/b/u;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/b/b/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/b/u<",
        "Lcom/google/b/k;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 698
    invoke-direct {p0}, Lcom/google/b/u;-><init>()V

    return-void
.end method

.method private a(Lcom/google/b/d/c;Lcom/google/b/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_8

    .line 1075
    instance-of v0, p2, Lcom/google/b/m;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2065
    :cond_0
    instance-of v0, p2, Lcom/google/b/q;

    if-eqz v0, :cond_3

    .line 740
    invoke-virtual {p2}, Lcom/google/b/k;->j()Lcom/google/b/q;

    move-result-object p2

    .line 2150
    iget-object v0, p2, Lcom/google/b/q;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 742
    invoke-virtual {p2}, Lcom/google/b/q;->b()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/b/d/c;->a(Ljava/lang/Number;)Lcom/google/b/d/c;

    return-void

    .line 3116
    :cond_1
    iget-object v0, p2, Lcom/google/b/q;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 744
    invoke-virtual {p2}, Lcom/google/b/q;->g()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/b/d/c;->a(Z)Lcom/google/b/d/c;

    return-void

    .line 746
    :cond_2
    invoke-virtual {p2}, Lcom/google/b/q;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/b/d/c;->b(Ljava/lang/String;)Lcom/google/b/d/c;

    return-void

    .line 4047
    :cond_3
    instance-of v0, p2, Lcom/google/b/i;

    if-eqz v0, :cond_5

    .line 750
    invoke-virtual {p1}, Lcom/google/b/d/c;->a()Lcom/google/b/d/c;

    .line 751
    invoke-virtual {p2}, Lcom/google/b/k;->i()Lcom/google/b/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/b/i;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/k;

    .line 752
    invoke-direct {p0, p1, v0}, Lcom/google/b/b/a/n$22;->a(Lcom/google/b/d/c;Lcom/google/b/k;)V

    goto :goto_0

    .line 754
    :cond_4
    invoke-virtual {p1}, Lcom/google/b/d/c;->b()Lcom/google/b/d/c;

    return-void

    .line 4056
    :cond_5
    instance-of v0, p2, Lcom/google/b/n;

    if-eqz v0, :cond_7

    .line 757
    invoke-virtual {p1}, Lcom/google/b/d/c;->c()Lcom/google/b/d/c;

    .line 758
    invoke-virtual {p2}, Lcom/google/b/k;->h()Lcom/google/b/n;

    move-result-object p2

    .line 4136
    iget-object p2, p2, Lcom/google/b/n;->a:Lcom/google/b/b/h;

    invoke-virtual {p2}, Lcom/google/b/b/h;->entrySet()Ljava/util/Set;

    move-result-object p2

    .line 758
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 759
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/b/d/c;->a(Ljava/lang/String;)Lcom/google/b/d/c;

    .line 760
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/k;

    invoke-direct {p0, p1, v0}, Lcom/google/b/b/a/n$22;->a(Lcom/google/b/d/c;Lcom/google/b/k;)V

    goto :goto_1

    .line 762
    :cond_6
    invoke-virtual {p1}, Lcom/google/b/d/c;->d()Lcom/google/b/d/c;

    return-void

    .line 765
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t write "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 738
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/google/b/d/c;->e()Lcom/google/b/d/c;

    return-void
.end method

.method private b(Lcom/google/b/d/a;)Lcom/google/b/k;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 700
    sget-object v0, Lcom/google/b/b/a/n$29;->a:[I

    invoke-virtual {p1}, Lcom/google/b/d/a;->f()Lcom/google/b/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/b/d/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 732
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 720
    :pswitch_0
    new-instance v0, Lcom/google/b/n;

    invoke-direct {v0}, Lcom/google/b/n;-><init>()V

    .line 721
    invoke-virtual {p1}, Lcom/google/b/d/a;->c()V

    .line 722
    :goto_0
    invoke-virtual {p1}, Lcom/google/b/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 723
    invoke-virtual {p1}, Lcom/google/b/d/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/google/b/b/a/n$22;->b(Lcom/google/b/d/a;)Lcom/google/b/k;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/b/n;->a(Ljava/lang/String;Lcom/google/b/k;)V

    goto :goto_0

    .line 725
    :cond_0
    invoke-virtual {p1}, Lcom/google/b/d/a;->d()V

    return-object v0

    .line 712
    :pswitch_1
    new-instance v0, Lcom/google/b/i;

    invoke-direct {v0}, Lcom/google/b/i;-><init>()V

    .line 713
    invoke-virtual {p1}, Lcom/google/b/d/a;->a()V

    .line 714
    :goto_1
    invoke-virtual {p1}, Lcom/google/b/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 715
    invoke-direct {p0, p1}, Lcom/google/b/b/a/n$22;->b(Lcom/google/b/d/a;)Lcom/google/b/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/b/i;->a(Lcom/google/b/k;)V

    goto :goto_1

    .line 717
    :cond_1
    invoke-virtual {p1}, Lcom/google/b/d/a;->b()V

    return-object v0

    .line 709
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/b/d/a;->k()V

    .line 710
    sget-object p1, Lcom/google/b/m;->a:Lcom/google/b/m;

    return-object p1

    .line 702
    :pswitch_3
    new-instance v0, Lcom/google/b/q;

    invoke-virtual {p1}, Lcom/google/b/d/a;->i()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/b/q;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 707
    :pswitch_4
    new-instance v0, Lcom/google/b/q;

    invoke-virtual {p1}, Lcom/google/b/d/a;->j()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/b/q;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    .line 704
    :pswitch_5
    invoke-virtual {p1}, Lcom/google/b/d/a;->i()Ljava/lang/String;

    move-result-object p1

    .line 705
    new-instance v0, Lcom/google/b/q;

    new-instance v1, Lcom/google/b/b/g;

    invoke-direct {v1, p1}, Lcom/google/b/b/g;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/b/q;-><init>(Ljava/lang/Number;)V

    return-object v0

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


# virtual methods
.method public final synthetic a(Lcom/google/b/d/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 698
    invoke-direct {p0, p1}, Lcom/google/b/b/a/n$22;->b(Lcom/google/b/d/a;)Lcom/google/b/k;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/google/b/d/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 698
    check-cast p2, Lcom/google/b/k;

    invoke-direct {p0, p1, p2}, Lcom/google/b/b/a/n$22;->a(Lcom/google/b/d/c;Lcom/google/b/k;)V

    return-void
.end method
