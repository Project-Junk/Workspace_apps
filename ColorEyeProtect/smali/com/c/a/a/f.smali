.class public Lcom/c/a/a/f;
.super Lcom/c/a/a/i;


# instance fields
.field private a:Lcom/c/a/a/i;

.field private b:Lcom/c/a/a/i;

.field private c:Ljava/util/Hashtable;

.field private d:Ljava/util/Vector;

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/c/a/a/i;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a/f;->a:Lcom/c/a/a/i;

    iput-object v0, p0, Lcom/c/a/a/f;->b:Lcom/c/a/a/i;

    iput-object v0, p0, Lcom/c/a/a/f;->c:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/c/a/a/f;->d:Ljava/util/Vector;

    iput-object v0, p0, Lcom/c/a/a/f;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/c/a/a/i;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a/f;->a:Lcom/c/a/a/i;

    iput-object v0, p0, Lcom/c/a/a/f;->b:Lcom/c/a/a/i;

    iput-object v0, p0, Lcom/c/a/a/f;->c:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/c/a/a/f;->d:Ljava/util/Vector;

    iput-object v0, p0, Lcom/c/a/a/f;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/c/a/a/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/c/a/a/f;->e:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Z)Lcom/c/a/a/v;
    .locals 2

    invoke-static {p1}, Lcom/c/a/a/a/ac;->a(Ljava/lang/String;)Lcom/c/a/a/a/ac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/c/a/a/a/ac;->b()Z

    move-result v0

    if-eq v0, p2, :cond_1

    if-eqz p2, :cond_0

    const-string p0, "evaluates to element not string"

    goto :goto_0

    :cond_0
    const-string p0, "evaluates to string not element"

    :goto_0
    new-instance p2, Lcom/c/a/a/a/ad;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "\" evaluates to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lcom/c/a/a/a/ad;-><init>(Lcom/c/a/a/a/ac;Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p2, Lcom/c/a/a/v;

    invoke-direct {p2, p0, p1}, Lcom/c/a/a/v;-><init>(Lcom/c/a/a/f;Lcom/c/a/a/a/ac;)V

    return-object p2
.end method

.method private e(Lcom/c/a/a/i;)Z
    .locals 2

    iget-object v0, p0, Lcom/c/a/a/f;->a:Lcom/c/a/a/i;

    :goto_0
    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/c/a/a/f;->a:Lcom/c/a/a/i;

    if-ne p1, v0, :cond_1

    invoke-virtual {v0}, Lcom/c/a/a/i;->i()Lcom/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/c/a/a/f;->a:Lcom/c/a/a/i;

    :cond_1
    iget-object p1, p0, Lcom/c/a/a/f;->b:Lcom/c/a/a/i;

    if-ne p1, v0, :cond_2

    invoke-virtual {v0}, Lcom/c/a/a/i;->h()Lcom/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/c/a/a/f;->b:Lcom/c/a/a/i;

    :cond_2
    invoke-virtual {v0}, Lcom/c/a/a/i;->j()V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/c/a/a/i;->b(Lcom/c/a/a/f;)V

    invoke-virtual {v0, p0}, Lcom/c/a/a/i;->a(Lcom/c/a/a/d;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    invoke-virtual {v0}, Lcom/c/a/a/i;->i()Lcom/c/a/a/i;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Z)Lcom/c/a/a/f;
    .locals 4

    new-instance v0, Lcom/c/a/a/f;

    iget-object v1, p0, Lcom/c/a/a/f;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/c/a/a/f;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/c/a/a/f;->d:Ljava/util/Vector;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/c/a/a/f;->d:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/c/a/a/f;->c:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/c/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/c/a/a/f;->a:Lcom/c/a/a/i;

    :goto_2
    if-nez p0, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/c/a/a/i;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/c/a/a/i;

    invoke-virtual {v0, p1}, Lcom/c/a/a/f;->b(Lcom/c/a/a/i;)V

    invoke-virtual {p0}, Lcom/c/a/a/i;->i()Lcom/c/a/a/i;

    move-result-object p0

    goto :goto_2

    :cond_3
    :goto_3
    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/c/a/a/f;->e:Ljava/lang/String;

    return-object p0
.end method

.method a(Lcom/c/a/a/i;)V
    .locals 1

    invoke-virtual {p1}, Lcom/c/a/a/i;->g()Lcom/c/a/a/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {v0, p1}, Lcom/c/a/a/f;->e(Lcom/c/a/a/i;)Z

    :cond_0
    iget-object v0, p0, Lcom/c/a/a/f;->b:Lcom/c/a/a/i;

    invoke-virtual {p1, v0}, Lcom/c/a/a/i;->d(Lcom/c/a/a/i;)V

    iget-object v0, p0, Lcom/c/a/a/f;->a:Lcom/c/a/a/i;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/c/a/a/f;->a:Lcom/c/a/a/i;

    :cond_1
    invoke-virtual {p1, p0}, Lcom/c/a/a/i;->b(Lcom/c/a/a/f;)V

    iput-object p1, p0, Lcom/c/a/a/f;->b:Lcom/c/a/a/i;

    invoke-virtual {p0}, Lcom/c/a/a/i;->f()Lcom/c/a/a/d;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/c/a/a/i;->a(Lcom/c/a/a/d;)V

    return-void
.end method

.method a(Ljava/io/Writer;)V
    .locals 0

    iget-object p0, p0, Lcom/c/a/a/f;->a:Lcom/c/a/a/i;

    :goto_0
    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/c/a/a/i;->a(Ljava/io/Writer;)V

    invoke-virtual {p0}, Lcom/c/a/a/i;->i()Lcom/c/a/a/i;

    move-result-object p0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/c/a/a/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/c/a/a/f;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/c/a/a/i;->b()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/c/a/a/f;->c:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/f;->c:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/f;->d:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lcom/c/a/a/f;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/c/a/a/f;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/c/a/a/f;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/c/a/a/i;->b()V

    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/c/a/a/f;->c:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/c/a/a/f;->c:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public b(Lcom/c/a/a/i;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/c/a/a/f;->c(Lcom/c/a/a/i;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/c/a/a/i;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/c/a/a/f;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/c/a/a/f;->a(Lcom/c/a/a/i;)V

    invoke-virtual {p0}, Lcom/c/a/a/i;->b()V

    return-void
.end method

.method public b(Ljava/io/Writer;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/c/a/a/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/c/a/a/f;->d:Ljava/util/Vector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/c/a/a/f;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/c/a/a/f;->c:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "=\""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/c/a/a/i;->a(Ljava/io/Writer;Ljava/lang/String;)V

    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/c/a/a/f;->a:Lcom/c/a/a/i;

    if-nez v0, :cond_2

    const-string p0, "/>"

    :goto_2
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_4

    :cond_2
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/c/a/a/f;->a:Lcom/c/a/a/i;

    :goto_3
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/c/a/a/f;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :goto_4
    return-void

    :cond_3
    invoke-virtual {v0, p1}, Lcom/c/a/a/i;->b(Ljava/io/Writer;)V

    invoke-virtual {v0}, Lcom/c/a/a/i;->i()Lcom/c/a/a/i;

    move-result-object v0

    goto :goto_3
.end method

.method protected c()I
    .locals 4

    iget-object v0, p0, Lcom/c/a/a/f;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/c/a/a/f;->c:Ljava/util/Hashtable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/c/a/a/f;->c:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/c/a/a/f;->c:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/c/a/a/f;->a:Lcom/c/a/a/i;

    :goto_2
    if-nez p0, :cond_2

    return v0

    :cond_2
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/c/a/a/i;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/c/a/a/i;->i()Lcom/c/a/a/i;

    move-result-object p0

    goto :goto_2
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/c/a/a/f;->a(Ljava/lang/String;Z)Lcom/c/a/a/v;

    move-result-object p0

    invoke-virtual {p0}, Lcom/c/a/a/v;->b()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/c/a/a/a/ad; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/c/a/a/m;

    const-string v0, "XPath problem"

    invoke-direct {p1, v0, p0}, Lcom/c/a/a/m;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method c(Lcom/c/a/a/i;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/c/a/a/i;->g()Lcom/c/a/a/f;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/c/a/a/f;->c(Lcom/c/a/a/i;)Z

    move-result p0

    return p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/c/a/a/f;->a(Z)Lcom/c/a/a/f;

    move-result-object p0

    return-object p0
.end method

.method public d()Lcom/c/a/a/i;
    .locals 0

    iget-object p0, p0, Lcom/c/a/a/f;->a:Lcom/c/a/a/i;

    return-object p0
.end method

.method public e()Lcom/c/a/a/i;
    .locals 0

    iget-object p0, p0, Lcom/c/a/a/f;->b:Lcom/c/a/a/i;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/c/a/a/f;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/c/a/a/f;

    iget-object v1, p0, Lcom/c/a/a/f;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/c/a/a/f;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/c/a/a/f;->c:Ljava/util/Hashtable;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/c/a/a/f;->c:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    :goto_0
    iget-object v3, p1, Lcom/c/a/a/f;->c:Ljava/util/Hashtable;

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_1

    :cond_4
    iget-object v3, p1, Lcom/c/a/a/f;->c:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/c/a/a/f;->c:Ljava/util/Hashtable;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/c/a/a/f;->c:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/c/a/a/f;->c:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p1, Lcom/c/a/a/f;->c:Ljava/util/Hashtable;

    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_8
    :goto_2
    iget-object p0, p0, Lcom/c/a/a/f;->a:Lcom/c/a/a/i;

    iget-object p1, p1, Lcom/c/a/a/f;->a:Lcom/c/a/a/i;

    :goto_3
    if-nez p0, :cond_9

    return v0

    :cond_9
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/c/a/a/i;->i()Lcom/c/a/a/i;

    move-result-object p0

    invoke-virtual {p1}, Lcom/c/a/a/i;->i()Lcom/c/a/a/i;

    move-result-object p1

    goto :goto_3
.end method
