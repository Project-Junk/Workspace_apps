.class public final Lcom/google/c/d/a/c;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field private final a:Lcom/google/c/b/b/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/google/c/b/b/c;

    sget-object v1, Lcom/google/c/b/b/a;->h:Lcom/google/c/b/b/a;

    invoke-direct {v0, v1}, Lcom/google/c/b/b/c;-><init>(Lcom/google/c/b/b/a;)V

    iput-object v0, p0, Lcom/google/c/d/a/c;->a:Lcom/google/c/b/b/c;

    return-void
.end method


# virtual methods
.method public final a([BIIII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/d;
        }
    .end annotation

    add-int v0, p3, p4

    if-nez p5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 94
    :goto_0
    div-int v2, v0, v1

    new-array v2, v2, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v0, :cond_3

    if-eqz p5, :cond_1

    .line 96
    rem-int/lit8 v5, v4, 0x2

    add-int/lit8 v6, p5, -0x1

    if-ne v5, v6, :cond_2

    .line 97
    :cond_1
    div-int v5, v4, v1

    add-int v6, v4, p2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v2, v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 101
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/google/c/d/a/c;->a:Lcom/google/c/b/b/c;

    div-int/2addr p4, v1

    invoke-virtual {v0, v2, p4}, Lcom/google/c/b/b/c;->a([II)V
    :try_end_0
    .catch Lcom/google/c/b/b/e; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    if-ge v3, p3, :cond_6

    if-eqz p5, :cond_4

    .line 108
    rem-int/lit8 p4, v3, 0x2

    add-int/lit8 v0, p5, -0x1

    if-ne p4, v0, :cond_5

    :cond_4
    add-int p4, v3, p2

    .line 109
    div-int v0, v3, v1

    aget v0, v2, v0

    int-to-byte v0, v0

    aput-byte v0, p1, p4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    return-void

    .line 103
    :catch_0
    invoke-static {}, Lcom/google/c/d;->a()Lcom/google/c/d;

    move-result-object p1

    throw p1
.end method
