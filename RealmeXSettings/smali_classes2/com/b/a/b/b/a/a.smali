.class public final Lcom/b/a/b/b/a/a;
.super Lcom/b/a/c/c;
.source "ActiveWrapper.java"


# instance fields
.field final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
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

    .line 18
    invoke-direct {p0, p1}, Lcom/b/a/c/c;-><init>(Ljava/util/Map;)V

    const-string p1, "ac"

    .line 15
    iput-object p1, p0, Lcom/b/a/b/b/a/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static b(Ljava/util/Map;)Lcom/b/a/b/b/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/b/a/b/b/a/a;"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/b/a/b/b/a/a;

    invoke-direct {v0, p0}, Lcom/b/a/b/b/a/a;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public final e()I
    .locals 2

    const/4 v0, -0x1

    :try_start_0
    const-string v1, "ac"

    .line 32
    invoke-virtual {p0, v1}, Lcom/b/a/b/b/a/a;->e(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lcom/b/a/n; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method
