.class public final Lcom/b/a/z;
.super Ljava/lang/Object;
.source "GCLauncher.java"

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

    const-string v1, "gc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-static {p1}, Lcom/b/a/ah;->a(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 23
    invoke-static {p1, p2}, Lcom/b/a/af;->a(Landroid/content/Context;Ljava/util/Map;)Z

    move-result p1

    return p1

    .line 26
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

    const-string v1, "gc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {p1}, Lcom/b/a/ah;->a(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 39
    :cond_0
    new-instance v0, Lcom/b/a/y;

    invoke-direct {v0}, Lcom/b/a/y;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/b/a/y;->b(Landroid/content/Context;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method
