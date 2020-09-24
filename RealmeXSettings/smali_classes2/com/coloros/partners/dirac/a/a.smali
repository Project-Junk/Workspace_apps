.class public Lcom/coloros/partners/dirac/a/a;
.super Ljava/lang/Object;
.source "DiracDataCollect.java"


# static fields
.field public static final a:Ljava/lang/String; = "a"

.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    .line 60
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coloros/partners/dirac/a/a;->b:[I

    return-void

    :array_0
    .array-data 4
        0x132e669
        0x132e66a
        0x132e66c
        0x132e66d
        0x132e66e
        0x132e66f
        0x132e670
        0x132e671
        0x132e672
        0x132e673
        0x132e674
        0x132e675
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    .line 75
    sget-object v0, Lcom/coloros/partners/dirac/a/a;->b:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static a(I)I
    .locals 1

    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {}, Lcom/coloros/partners/dirac/a/a;->a()I

    move-result v0

    if-lt p0, v0, :cond_1

    .line 82
    invoke-static {}, Lcom/coloros/partners/dirac/a/a;->a()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    .line 85
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/partners/dirac/a/a;->b:[I

    aget p0, v0, p0

    return p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    .line 93
    invoke-static {p0}, Lcom/oppo/c/a;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1137
    sget-object v0, Lcom/coloros/partners/dirac/a/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCommon eventID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " eventMap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "20012"

    const/4 v1, 0x0

    .line 1138
    invoke-static {p0, v0, p1, p2, v1}, Lcom/oppo/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public static b()V
    .locals 0

    .line 89
    invoke-static {}, Lcom/oppo/c/a;->a()V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 0

    .line 128
    invoke-static {p0}, Lcom/oppo/c/a;->d(Landroid/content/Context;)V

    return-void
.end method
