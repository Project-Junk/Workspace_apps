.class public final Lcom/b/a/ac;
.super Ljava/lang/Object;
.source "MarketLauncher.java"

# interfaces
.implements Lcom/b/a/aa;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 19
    invoke-static {p2}, Lcom/b/a/b;->a(Ljava/util/Map;)Lcom/b/a/b;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/b/a/b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-static {p1}, Lcom/b/a/ae;->a(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x13ec

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1021
    invoke-static {p1, p2, v0}, Lcom/b/a/h;->a(Landroid/content/Context;Ljava/util/Map;I)Z

    move-result p1

    return p1

    .line 27
    :cond_0
    new-instance v0, Lcom/b/a/y;

    invoke-direct {v0}, Lcom/b/a/y;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/b/a/y;->a(Landroid/content/Context;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public final b(Landroid/content/Context;Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 32
    invoke-static {p2}, Lcom/b/a/b;->a(Ljava/util/Map;)Lcom/b/a/b;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/b/a/b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {p1}, Lcom/b/a/ae;->a(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x13ec

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1026
    invoke-static {p1, p2, v0}, Lcom/b/a/h;->a(Landroid/content/Context;Ljava/util/Map;I)Z

    move-result p1

    return p1

    .line 40
    :cond_0
    new-instance v0, Lcom/b/a/y;

    invoke-direct {v0}, Lcom/b/a/y;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/b/a/y;->b(Landroid/content/Context;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method
