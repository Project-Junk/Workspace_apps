.class public Lcom/c/a/a/d;
.super Lcom/c/a/a/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/c/a/a/d$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/Enumeration;

.field private static final b:Ljava/lang/Integer;


# instance fields
.field private c:Lcom/c/a/a/f;

.field private d:Ljava/lang/String;

.field private e:Lcom/c/a/a/r$a;

.field private f:Ljava/util/Vector;

.field private final g:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/c/a/a/d;->b:Ljava/lang/Integer;

    new-instance v0, Lcom/c/a/a/g;

    invoke-direct {v0}, Lcom/c/a/a/g;-><init>()V

    sput-object v0, Lcom/c/a/a/d;->a:Ljava/util/Enumeration;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/c/a/a/i;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a/d;->c:Lcom/c/a/a/f;

    invoke-static {}, Lcom/c/a/a/r;->a()Lcom/c/a/a/r$a;

    move-result-object v1

    iput-object v1, p0, Lcom/c/a/a/d;->e:Lcom/c/a/a/r$a;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/c/a/a/d;->f:Ljava/util/Vector;

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/c/a/a/d;->g:Ljava/util/Hashtable;

    const-string v0, "MEMORY"

    iput-object v0, p0, Lcom/c/a/a/d;->d:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/c/a/a/i;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a/d;->c:Lcom/c/a/a/f;

    invoke-static {}, Lcom/c/a/a/r;->a()Lcom/c/a/a/r$a;

    move-result-object v1

    iput-object v1, p0, Lcom/c/a/a/d;->e:Lcom/c/a/a/r$a;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/c/a/a/d;->f:Ljava/util/Vector;

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/c/a/a/d;->g:Ljava/util/Hashtable;

    iput-object p1, p0, Lcom/c/a/a/d;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/c/a/a/f;
    .locals 0

    iget-object p0, p0, Lcom/c/a/a/d;->c:Lcom/c/a/a/f;

    return-object p0
.end method

.method a(Lcom/c/a/a/a/ac;Z)Lcom/c/a/a/v;
    .locals 2

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

    invoke-direct {p2, p0, p1}, Lcom/c/a/a/v;-><init>(Lcom/c/a/a/d;Lcom/c/a/a/a/ac;)V

    return-object p2
.end method

.method a(Lcom/c/a/a/a/ac;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/c/a/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/c/a/a/d;->c:Lcom/c/a/a/f;

    iget-object p1, p0, Lcom/c/a/a/d;->c:Lcom/c/a/a/f;

    invoke-virtual {p1, p0}, Lcom/c/a/a/i;->a(Lcom/c/a/a/d;)V

    invoke-virtual {p0}, Lcom/c/a/a/d;->b()V

    return-void
.end method

.method public a(Ljava/io/Writer;)V
    .locals 0

    iget-object p0, p0, Lcom/c/a/a/d;->c:Lcom/c/a/a/f;

    invoke-virtual {p0, p1}, Lcom/c/a/a/f;->a(Ljava/io/Writer;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/c/a/a/d;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/c/a/a/d;->b()V

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/c/a/a/f;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lcom/c/a/a/a/ac;->a(Ljava/lang/String;)Lcom/c/a/a/a/ac;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/c/a/a/d;->a(Lcom/c/a/a/a/ac;)V

    invoke-virtual {p0, p1, v0}, Lcom/c/a/a/d;->a(Lcom/c/a/a/a/ac;Z)Lcom/c/a/a/v;

    move-result-object p0

    invoke-virtual {p0}, Lcom/c/a/a/v;->a()Lcom/c/a/a/f;

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

.method b()V
    .locals 2

    iget-object v0, p0, Lcom/c/a/a/d;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/a/d$a;

    invoke-interface {v1, p0}, Lcom/c/a/a/d$a;->a(Lcom/c/a/a/d;)V

    goto :goto_0
.end method

.method public b(Ljava/io/Writer;)V
    .locals 1

    const-string v0, "<?xml version=\"1.0\" ?>\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/c/a/a/d;->c:Lcom/c/a/a/f;

    invoke-virtual {p0, p1}, Lcom/c/a/a/f;->b(Ljava/io/Writer;)V

    return-void
.end method

.method protected c()I
    .locals 0

    iget-object p0, p0, Lcom/c/a/a/d;->c:Lcom/c/a/a/f;

    invoke-virtual {p0}, Lcom/c/a/a/i;->hashCode()I

    move-result p0

    return p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/c/a/a/d;

    iget-object v1, p0, Lcom/c/a/a/d;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/c/a/a/d;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/c/a/a/d;->c:Lcom/c/a/a/f;

    invoke-virtual {p0}, Lcom/c/a/a/f;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/c/a/a/f;

    iput-object p0, v0, Lcom/c/a/a/d;->c:Lcom/c/a/a/f;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/c/a/a/d;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lcom/c/a/a/d;

    iget-object p0, p0, Lcom/c/a/a/d;->c:Lcom/c/a/a/f;

    iget-object p1, p1, Lcom/c/a/a/d;->c:Lcom/c/a/a/f;

    invoke-virtual {p0, p1}, Lcom/c/a/a/f;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/c/a/a/d;->d:Ljava/lang/String;

    return-object p0
.end method
