.class public Lcom/c/a/a/a/j;
.super Lcom/c/a/a/a/o;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/c/a/a/a/o;-><init>()V

    iput-object p1, p0, Lcom/c/a/a/a/j;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/c/a/a/a/ab;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/c/a/a/a/p;->a(Lcom/c/a/a/a/j;)V

    return-void
.end method

.method public a()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/c/a/a/a/j;->a:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/c/a/a/a/j;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
