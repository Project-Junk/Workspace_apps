.class public Lcom/c/a/a/a/f;
.super Lcom/c/a/a/a/i;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/c/a/a/a/i;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/c/a/a/a/l;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/c/a/a/a/l;->a(Lcom/c/a/a/a/f;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ">"

    invoke-virtual {p0, v0}, Lcom/c/a/a/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
