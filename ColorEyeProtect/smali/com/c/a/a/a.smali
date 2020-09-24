.class Lcom/c/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/c/a/a/e;
.implements Lcom/c/a/a/n;


# instance fields
.field private final c:Lcom/c/a/a/o;

.field private d:Lcom/c/a/a/f;

.field private final e:Lcom/c/a/a/d;

.field private f:Lcom/c/a/a/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/c/a/a/a;-><init>(Lcom/c/a/a/o;)V

    return-void
.end method

.method public constructor <init>(Lcom/c/a/a/o;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a/a;->d:Lcom/c/a/a/f;

    new-instance v1, Lcom/c/a/a/d;

    invoke-direct {v1}, Lcom/c/a/a/d;-><init>()V

    iput-object v1, p0, Lcom/c/a/a/a;->e:Lcom/c/a/a/d;

    iput-object v0, p0, Lcom/c/a/a/a;->f:Lcom/c/a/a/p;

    if-nez p1, :cond_0

    sget-object p1, Lcom/c/a/a/p;->a:Lcom/c/a/a/o;

    :cond_0
    iput-object p1, p0, Lcom/c/a/a/a;->c:Lcom/c/a/a/o;

    return-void
.end method


# virtual methods
.method public a()Lcom/c/a/a/d;
    .locals 0

    iget-object p0, p0, Lcom/c/a/a/a;->e:Lcom/c/a/a/d;

    return-object p0
.end method

.method public a(Lcom/c/a/a/f;)V
    .locals 1

    iget-object v0, p0, Lcom/c/a/a/a;->d:Lcom/c/a/a/f;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/c/a/a/a;->e:Lcom/c/a/a/d;

    invoke-virtual {v0, p1}, Lcom/c/a/a/d;->a(Lcom/c/a/a/f;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/c/a/a/a;->d:Lcom/c/a/a/f;

    invoke-virtual {v0, p1}, Lcom/c/a/a/f;->b(Lcom/c/a/a/i;)V

    :goto_0
    iput-object p1, p0, Lcom/c/a/a/a;->d:Lcom/c/a/a/f;

    return-void
.end method

.method public a(Lcom/c/a/a/p;)V
    .locals 0

    iput-object p1, p0, Lcom/c/a/a/a;->f:Lcom/c/a/a/p;

    iget-object p0, p0, Lcom/c/a/a/a;->e:Lcom/c/a/a/d;

    invoke-interface {p1}, Lcom/c/a/a/p;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/c/a/a/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a([CII)V
    .locals 2

    iget-object p0, p0, Lcom/c/a/a/a;->d:Lcom/c/a/a/f;

    invoke-virtual {p0}, Lcom/c/a/a/f;->e()Lcom/c/a/a/i;

    move-result-object v0

    instance-of v0, v0, Lcom/c/a/a/u;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/c/a/a/f;->e()Lcom/c/a/a/i;

    move-result-object p0

    check-cast p0, Lcom/c/a/a/u;

    invoke-virtual {p0, p1, p2, p3}, Lcom/c/a/a/u;->a([CII)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/c/a/a/u;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v0, v1}, Lcom/c/a/a/u;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/c/a/a/f;->a(Lcom/c/a/a/i;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Lcom/c/a/a/f;)V
    .locals 0

    iget-object p1, p0, Lcom/c/a/a/a;->d:Lcom/c/a/a/f;

    invoke-virtual {p1}, Lcom/c/a/a/i;->g()Lcom/c/a/a/f;

    move-result-object p1

    iput-object p1, p0, Lcom/c/a/a/a;->d:Lcom/c/a/a/f;

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/c/a/a/a;->f:Lcom/c/a/a/p;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "BuildDoc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/c/a/a/a;->f:Lcom/c/a/a/p;

    invoke-interface {p0}, Lcom/c/a/a/p;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
