.class public final Lcom/b/a/ab;
.super Ljava/lang/Object;
.source "LauncherFactory.java"


# direct methods
.method public static a(Ljava/lang/String;)Lcom/b/a/aa;
    .locals 1

    const-string v0, "mk"

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    new-instance p0, Lcom/b/a/ac;

    invoke-direct {p0}, Lcom/b/a/ac;-><init>()V

    return-object p0

    :cond_0
    const-string v0, "gc"

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    new-instance p0, Lcom/b/a/z;

    invoke-direct {p0}, Lcom/b/a/z;-><init>()V

    return-object p0

    :cond_1
    const-string v0, "mk_op"

    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 18
    new-instance p0, Lcom/b/a/ad;

    invoke-direct {p0}, Lcom/b/a/ad;-><init>()V

    return-object p0

    .line 20
    :cond_2
    new-instance p0, Lcom/b/a/y;

    invoke-direct {p0}, Lcom/b/a/y;-><init>()V

    return-object p0
.end method
