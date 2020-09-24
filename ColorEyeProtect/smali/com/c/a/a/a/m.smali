.class public Lcom/c/a/a/a/m;
.super Lcom/c/a/a/a/o;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/c/a/a/a/o;-><init>()V

    invoke-static {p1}, Lcom/c/a/a/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/c/a/a/a/m;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/c/a/a/a/ab;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/c/a/a/a/p;->a(Lcom/c/a/a/a/m;)V

    return-void
.end method

.method public a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/c/a/a/a/m;->a:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/c/a/a/a/m;->a:Ljava/lang/String;

    return-object p0
.end method
