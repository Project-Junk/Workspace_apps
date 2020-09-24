.class public Lcom/c/a/a/q;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/io/InputStream;)Lcom/c/a/a/d;
    .locals 7

    new-instance v6, Lcom/c/a/a/a;

    invoke-direct {v6}, Lcom/c/a/a/a;-><init>()V

    new-instance v0, Lcom/c/a/a/k;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/c/a/a/k;-><init>(Ljava/lang/String;Ljava/io/InputStream;Lcom/c/a/a/o;Ljava/lang/String;Lcom/c/a/a/n;)V

    invoke-virtual {v6}, Lcom/c/a/a/a;->a()Lcom/c/a/a/d;

    move-result-object p0

    return-object p0
.end method
