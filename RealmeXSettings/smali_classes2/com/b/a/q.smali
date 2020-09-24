.class public final Lcom/b/a/q;
.super Ljava/lang/Object;
.source "CompatCallback.java"

# interfaces
.implements Lcom/b/a/a/a/b;


# instance fields
.field a:Lcom/b/a/a/a/b;

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/b/a/a/a/b;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/b/a/q;->b:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/b/a/q;->a:Lcom/b/a/a/a/b;

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x8

    :try_start_0
    const-string v1, "/deskdown"

    .line 71
    invoke-static {p1}, Lcom/b/a/c/b;->c(Ljava/util/Map;)Lcom/b/a/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/c/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "/boot"

    .line 72
    invoke-static {p1}, Lcom/b/a/c/b;->c(Ljava/util/Map;)Lcom/b/a/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/c/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "/predown"

    .line 73
    invoke-static {p1}, Lcom/b/a/c/b;->c(Ljava/util/Map;)Lcom/b/a/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/c/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "/dtd"

    .line 77
    invoke-static {p1}, Lcom/b/a/c/b;->c(Ljava/util/Map;)Lcom/b/a/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/c/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    invoke-static {p1}, Lcom/b/a/c/b;->c(Ljava/util/Map;)Lcom/b/a/c/b;

    move-result-object v1

    const-string v2, "/dt"

    invoke-virtual {v1, v2}, Lcom/b/a/c/b;->c(Ljava/lang/String;)Lcom/b/a/b;

    goto :goto_0

    :cond_1
    const-string v1, "/searchd"

    .line 79
    invoke-static {p1}, Lcom/b/a/c/b;->c(Ljava/util/Map;)Lcom/b/a/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/c/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    invoke-static {p1}, Lcom/b/a/c/b;->c(Ljava/util/Map;)Lcom/b/a/c/b;

    move-result-object v1

    const-string v2, "/search"

    invoke-virtual {v1, v2}, Lcom/b/a/c/b;->c(Ljava/lang/String;)Lcom/b/a/b;

    .line 82
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/b/a/q;->b:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/b/a/b/a/a/a;->a(Landroid/content/Context;Ljava/util/Map;)Z

    move-result v1

    goto :goto_2

    .line 74
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/b/a/q;->b:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/b/a/b/a/a/a;->b(Landroid/content/Context;Ljava/util/Map;)Z

    move-result v1

    .line 84
    :goto_2
    iget-object v2, p0, Lcom/b/a/q;->a:Lcom/b/a/a/a/b;

    if-eqz v2, :cond_5

    .line 85
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz v1, :cond_4

    .line 87
    invoke-static {v2}, Lcom/b/a/c/a;->a(Ljava/util/Map;)Lcom/b/a/c/a;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/b/a/c/a;->a(I)Lcom/b/a/c/a;

    move-result-object v1

    const-string v3, "call success"

    .line 88
    invoke-virtual {v1, v3}, Lcom/b/a/c/a;->a(Ljava/lang/Object;)Lcom/b/a/c/a;

    goto :goto_3

    .line 90
    :cond_4
    invoke-static {v2}, Lcom/b/a/c/a;->a(Ljava/util/Map;)Lcom/b/a/c/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/c/a;->a(I)Lcom/b/a/c/a;

    move-result-object v1

    const-string v3, "fail: fail to launch by compatibility way"

    .line 91
    invoke-virtual {v1, v3}, Lcom/b/a/c/a;->a(Ljava/lang/Object;)Lcom/b/a/c/a;

    .line 93
    :goto_3
    iget-object v1, p0, Lcom/b/a/q;->a:Lcom/b/a/a/a/b;

    invoke-static {v2}, Lcom/b/a/p;->a(Ljava/util/Map;)Landroid/database/MatrixCursor;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/b/a/a/a/b;->a(Ljava/util/Map;Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-void

    :catch_0
    move-exception v1

    .line 96
    iget-object v2, p0, Lcom/b/a/q;->a:Lcom/b/a/a/a/b;

    if-eqz v2, :cond_6

    .line 97
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 98
    invoke-static {v2}, Lcom/b/a/c/a;->a(Ljava/util/Map;)Lcom/b/a/c/a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/b/a/c/a;->a(I)Lcom/b/a/c/a;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/c/a;->a(Ljava/lang/Object;)Lcom/b/a/c/a;

    .line 100
    iget-object v0, p0, Lcom/b/a/q;->a:Lcom/b/a/a/a/b;

    invoke-static {v2}, Lcom/b/a/p;->a(Ljava/util/Map;)Landroid/database/MatrixCursor;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/b/a/a/a/b;->a(Ljava/util/Map;Landroid/database/Cursor;)V

    return-void

    .line 102
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;Landroid/database/Cursor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-static {p1}, Lcom/b/a/p;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    if-eqz p2, :cond_4

    .line 42
    invoke-static {p2}, Lcom/b/a/p;->b(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    .line 43
    invoke-static {v1}, Lcom/b/a/p;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/b/a/c/a;->a(Ljava/util/Map;)Lcom/b/a/c/a;

    move-result-object v1

    const/16 v2, -0x9

    .line 44
    invoke-virtual {v1}, Lcom/b/a/c/a;->a()I

    move-result v1

    if-ne v2, v1, :cond_1

    if-eqz p2, :cond_0

    .line 1060
    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1062
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :catch_0
    :cond_0
    invoke-direct {p0, v0}, Lcom/b/a/q;->a(Ljava/util/Map;)V

    return-void

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/b/a/q;->b:Landroid/content/Context;

    .line 1101
    invoke-static {p1}, Lcom/b/a/b;->a(Ljava/util/Map;)Lcom/b/a/b;

    move-result-object v2

    .line 1102
    invoke-virtual {v2}, Lcom/b/a/b;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mk"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1103
    invoke-static {v1}, Lcom/b/a/ae;->a(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x14c8

    if-ge v1, v2, :cond_2

    .line 1105
    invoke-static {p1}, Lcom/b/a/c/b;->c(Ljava/util/Map;)Lcom/b/a/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/c/b;->k()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_0
    if-nez p1, :cond_3

    .line 49
    invoke-direct {p0, v0}, Lcom/b/a/q;->a(Ljava/util/Map;)V

    return-void

    .line 52
    :cond_3
    iget-object p1, p0, Lcom/b/a/q;->a:Lcom/b/a/a/a/b;

    if-eqz p1, :cond_4

    .line 53
    invoke-interface {p1, v0, p2}, Lcom/b/a/a/a/b;->a(Ljava/util/Map;Landroid/database/Cursor;)V

    :cond_4
    return-void
.end method
