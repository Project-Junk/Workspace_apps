.class public Lcom/b/a/c/c;
.super Lcom/b/a/c/b;
.source "IDWrapper.java"


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1}, Lcom/b/a/c/b;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static d(Ljava/util/Map;)Lcom/b/a/c/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/b/a/c/c;"
        }
    .end annotation

    .line 15
    new-instance v0, Lcom/b/a/c/c;

    invoke-direct {v0, p0}, Lcom/b/a/c/c;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public final l()J
    .locals 3

    const-wide/16 v0, -0x1

    :try_start_0
    const-string v2, "id"

    .line 24
    invoke-virtual {p0, v2}, Lcom/b/a/c/c;->f(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Lcom/b/a/n; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v0
.end method
