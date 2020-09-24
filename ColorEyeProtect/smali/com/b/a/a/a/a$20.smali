.class final Lcom/b/a/a/a/a$20;
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
        "Ljava/util/Calendar;",
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

    invoke-virtual {p0, p1}, Lcom/b/a/a/a/a$20;->b(Lcom/b/a/b/a;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/b/a/b/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Lcom/b/a/a/a/a$20;->a(Lcom/b/a/b/c;Ljava/util/Calendar;)V

    return-void
.end method

.method public a(Lcom/b/a/b/c;Ljava/util/Calendar;)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/b/a/b/c;->e()Lcom/b/a/b/c;

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/b/a/b/c;->c()Lcom/b/a/b/c;

    const-string p0, "year"

    invoke-virtual {p1, p0}, Lcom/b/a/b/c;->a(Ljava/lang/String;)Lcom/b/a/b/c;

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lcom/b/a/b/c;->a(J)Lcom/b/a/b/c;

    const-string p0, "month"

    invoke-virtual {p1, p0}, Lcom/b/a/b/c;->a(Ljava/lang/String;)Lcom/b/a/b/c;

    const/4 p0, 0x2

    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lcom/b/a/b/c;->a(J)Lcom/b/a/b/c;

    const-string p0, "dayOfMonth"

    invoke-virtual {p1, p0}, Lcom/b/a/b/c;->a(Ljava/lang/String;)Lcom/b/a/b/c;

    const/4 p0, 0x5

    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lcom/b/a/b/c;->a(J)Lcom/b/a/b/c;

    const-string p0, "hourOfDay"

    invoke-virtual {p1, p0}, Lcom/b/a/b/c;->a(Ljava/lang/String;)Lcom/b/a/b/c;

    const/16 p0, 0xb

    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lcom/b/a/b/c;->a(J)Lcom/b/a/b/c;

    const-string p0, "minute"

    invoke-virtual {p1, p0}, Lcom/b/a/b/c;->a(Ljava/lang/String;)Lcom/b/a/b/c;

    const/16 p0, 0xc

    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lcom/b/a/b/c;->a(J)Lcom/b/a/b/c;

    const-string p0, "second"

    invoke-virtual {p1, p0}, Lcom/b/a/b/c;->a(Ljava/lang/String;)Lcom/b/a/b/c;

    const/16 p0, 0xd

    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lcom/b/a/b/c;->a(J)Lcom/b/a/b/c;

    invoke-virtual {p1}, Lcom/b/a/b/c;->d()Lcom/b/a/b/c;

    return-void
.end method

.method public b(Lcom/b/a/b/a;)Ljava/util/Calendar;
    .locals 8

    invoke-virtual {p1}, Lcom/b/a/b/a;->g()Lcom/b/a/b/b;

    move-result-object p0

    sget-object v0, Lcom/b/a/b/b;->i:Lcom/b/a/b/b;

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/b/a/b/a;->l()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/b/a/b/a;->d()V

    const/4 p0, 0x0

    move v1, p0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/b/a;->g()Lcom/b/a/b/b;

    move-result-object p0

    sget-object v0, Lcom/b/a/b/b;->d:Lcom/b/a/b/b;

    if-eq p0, v0, :cond_7

    invoke-virtual {p1}, Lcom/b/a/b/a;->i()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/b/a/b/a;->o()I

    move-result v0

    const-string v7, "year"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    const-string v7, "month"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    const-string v7, "dayOfMonth"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v3, v0

    goto :goto_0

    :cond_4
    const-string v7, "hourOfDay"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v4, v0

    goto :goto_0

    :cond_5
    const-string v7, "minute"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v5, v0

    goto :goto_0

    :cond_6
    const-string v7, "second"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v6, v0

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/b/a/b/a;->e()V

    new-instance p0, Ljava/util/GregorianCalendar;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    return-object p0
.end method
