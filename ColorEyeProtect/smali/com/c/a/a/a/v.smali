.class public Lcom/c/a/a/a/v;
.super Lcom/c/a/a/a/u;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/c/a/a/a/u;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/c/a/a/a/l;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/c/a/a/a/l;->a(Lcom/c/a/a/a/v;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "="

    invoke-virtual {p0, v0}, Lcom/c/a/a/a/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
