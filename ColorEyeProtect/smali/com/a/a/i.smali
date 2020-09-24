.class public Lcom/a/a/i;
.super Lcom/a/a/b;


# direct methods
.method private constructor <init>(Lcom/a/a/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/a/a/b;-><init>(Lcom/a/a/h;)V

    return-void
.end method

.method public static c()Lcom/a/a/i;
    .locals 2

    new-instance v0, Lcom/a/a/i;

    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/h;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/i;-><init>(Lcom/a/a/h;)V

    return-object v0
.end method
