.class final Lcom/google/c/f/a/c;
.super Ljava/lang/Object;
.source "BoundingBox.java"


# instance fields
.field a:Lcom/google/c/b/b;

.field b:Lcom/google/c/q;

.field c:Lcom/google/c/q;

.field d:Lcom/google/c/q;

.field e:Lcom/google/c/q;

.field f:I

.field g:I

.field h:I

.field i:I


# direct methods
.method constructor <init>(Lcom/google/c/b/b;Lcom/google/c/q;Lcom/google/c/q;Lcom/google/c/q;Lcom/google/c/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    if-eqz p4, :cond_3

    :cond_0
    if-nez p3, :cond_1

    if-eqz p5, :cond_3

    :cond_1
    if-eqz p2, :cond_2

    if-eqz p3, :cond_3

    :cond_2
    if-eqz p4, :cond_4

    if-eqz p5, :cond_3

    goto :goto_0

    .line 47
    :cond_3
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object p1

    throw p1

    .line 49
    :cond_4
    :goto_0
    invoke-direct/range {p0 .. p5}, Lcom/google/c/f/a/c;->a(Lcom/google/c/b/b;Lcom/google/c/q;Lcom/google/c/q;Lcom/google/c/q;Lcom/google/c/q;)V

    return-void
.end method

.method constructor <init>(Lcom/google/c/f/a/c;)V
    .locals 6

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-object v1, p1, Lcom/google/c/f/a/c;->a:Lcom/google/c/b/b;

    iget-object v2, p1, Lcom/google/c/f/a/c;->b:Lcom/google/c/q;

    iget-object v3, p1, Lcom/google/c/f/a/c;->c:Lcom/google/c/q;

    iget-object v4, p1, Lcom/google/c/f/a/c;->d:Lcom/google/c/q;

    iget-object v5, p1, Lcom/google/c/f/a/c;->e:Lcom/google/c/q;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/c/f/a/c;->a(Lcom/google/c/b/b;Lcom/google/c/q;Lcom/google/c/q;Lcom/google/c/q;Lcom/google/c/q;)V

    return-void
.end method

.method private a()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/google/c/f/a/c;->b:Lcom/google/c/q;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/google/c/q;

    iget-object v1, p0, Lcom/google/c/f/a/c;->d:Lcom/google/c/q;

    .line 4042
    iget v1, v1, Lcom/google/c/q;->b:F

    const/4 v2, 0x0

    .line 121
    invoke-direct {v0, v2, v1}, Lcom/google/c/q;-><init>(FF)V

    iput-object v0, p0, Lcom/google/c/f/a/c;->b:Lcom/google/c/q;

    .line 122
    new-instance v0, Lcom/google/c/q;

    iget-object v1, p0, Lcom/google/c/f/a/c;->e:Lcom/google/c/q;

    .line 5042
    iget v1, v1, Lcom/google/c/q;->b:F

    .line 122
    invoke-direct {v0, v2, v1}, Lcom/google/c/q;-><init>(FF)V

    iput-object v0, p0, Lcom/google/c/f/a/c;->c:Lcom/google/c/q;

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/google/c/f/a/c;->d:Lcom/google/c/q;

    if-nez v0, :cond_1

    .line 124
    new-instance v0, Lcom/google/c/q;

    iget-object v1, p0, Lcom/google/c/f/a/c;->a:Lcom/google/c/b/b;

    .line 5259
    iget v1, v1, Lcom/google/c/b/b;->a:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    .line 124
    iget-object v2, p0, Lcom/google/c/f/a/c;->b:Lcom/google/c/q;

    .line 6042
    iget v2, v2, Lcom/google/c/q;->b:F

    .line 124
    invoke-direct {v0, v1, v2}, Lcom/google/c/q;-><init>(FF)V

    iput-object v0, p0, Lcom/google/c/f/a/c;->d:Lcom/google/c/q;

    .line 125
    new-instance v0, Lcom/google/c/q;

    iget-object v1, p0, Lcom/google/c/f/a/c;->a:Lcom/google/c/b/b;

    .line 6259
    iget v1, v1, Lcom/google/c/b/b;->a:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    .line 125
    iget-object v2, p0, Lcom/google/c/f/a/c;->c:Lcom/google/c/q;

    .line 7042
    iget v2, v2, Lcom/google/c/q;->b:F

    .line 125
    invoke-direct {v0, v1, v2}, Lcom/google/c/q;-><init>(FF)V

    iput-object v0, p0, Lcom/google/c/f/a/c;->e:Lcom/google/c/q;

    .line 128
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/c/f/a/c;->b:Lcom/google/c/q;

    .line 8038
    iget v0, v0, Lcom/google/c/q;->a:F

    .line 128
    iget-object v1, p0, Lcom/google/c/f/a/c;->c:Lcom/google/c/q;

    .line 9038
    iget v1, v1, Lcom/google/c/q;->a:F

    .line 128
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/c/f/a/c;->f:I

    .line 129
    iget-object v0, p0, Lcom/google/c/f/a/c;->d:Lcom/google/c/q;

    .line 10038
    iget v0, v0, Lcom/google/c/q;->a:F

    .line 129
    iget-object v1, p0, Lcom/google/c/f/a/c;->e:Lcom/google/c/q;

    .line 11038
    iget v1, v1, Lcom/google/c/q;->a:F

    .line 129
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/c/f/a/c;->g:I

    .line 130
    iget-object v0, p0, Lcom/google/c/f/a/c;->b:Lcom/google/c/q;

    .line 11042
    iget v0, v0, Lcom/google/c/q;->b:F

    .line 130
    iget-object v1, p0, Lcom/google/c/f/a/c;->d:Lcom/google/c/q;

    .line 12042
    iget v1, v1, Lcom/google/c/q;->b:F

    .line 130
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/c/f/a/c;->h:I

    .line 131
    iget-object v0, p0, Lcom/google/c/f/a/c;->c:Lcom/google/c/q;

    .line 13042
    iget v0, v0, Lcom/google/c/q;->b:F

    .line 131
    iget-object v1, p0, Lcom/google/c/f/a/c;->e:Lcom/google/c/q;

    .line 14042
    iget v1, v1, Lcom/google/c/q;->b:F

    .line 131
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/c/f/a/c;->i:I

    return-void
.end method

.method private a(Lcom/google/c/b/b;Lcom/google/c/q;Lcom/google/c/q;Lcom/google/c/q;Lcom/google/c/q;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/google/c/f/a/c;->a:Lcom/google/c/b/b;

    .line 62
    iput-object p2, p0, Lcom/google/c/f/a/c;->b:Lcom/google/c/q;

    .line 63
    iput-object p3, p0, Lcom/google/c/f/a/c;->c:Lcom/google/c/q;

    .line 64
    iput-object p4, p0, Lcom/google/c/f/a/c;->d:Lcom/google/c/q;

    .line 65
    iput-object p5, p0, Lcom/google/c/f/a/c;->e:Lcom/google/c/q;

    .line 66
    invoke-direct {p0}, Lcom/google/c/f/a/c;->a()V

    return-void
.end method


# virtual methods
.method final a(IIZ)Lcom/google/c/f/a/c;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/google/c/f/a/c;->b:Lcom/google/c/q;

    .line 81
    iget-object v1, p0, Lcom/google/c/f/a/c;->c:Lcom/google/c/q;

    .line 82
    iget-object v2, p0, Lcom/google/c/f/a/c;->d:Lcom/google/c/q;

    .line 83
    iget-object v3, p0, Lcom/google/c/f/a/c;->e:Lcom/google/c/q;

    if-lez p1, :cond_3

    if-eqz p3, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v2

    .line 1042
    :goto_0
    iget v5, v4, Lcom/google/c/q;->b:F

    float-to-int v5, v5

    sub-int/2addr v5, p1

    if-gez v5, :cond_1

    const/4 v5, 0x0

    .line 92
    :cond_1
    new-instance p1, Lcom/google/c/q;

    .line 2038
    iget v4, v4, Lcom/google/c/q;->a:F

    int-to-float v5, v5

    .line 92
    invoke-direct {p1, v4, v5}, Lcom/google/c/q;-><init>(FF)V

    if-eqz p3, :cond_2

    move-object v8, p1

    goto :goto_1

    :cond_2
    move-object v10, p1

    move-object v8, v0

    goto :goto_2

    :cond_3
    move-object v8, v0

    :goto_1
    move-object v10, v2

    :goto_2
    if-lez p2, :cond_7

    if-eqz p3, :cond_4

    .line 101
    iget-object p1, p0, Lcom/google/c/f/a/c;->c:Lcom/google/c/q;

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/google/c/f/a/c;->e:Lcom/google/c/q;

    .line 2042
    :goto_3
    iget v0, p1, Lcom/google/c/q;->b:F

    float-to-int v0, v0

    add-int/2addr v0, p2

    .line 103
    iget-object p2, p0, Lcom/google/c/f/a/c;->a:Lcom/google/c/b/b;

    .line 2266
    iget p2, p2, Lcom/google/c/b/b;->b:I

    if-lt v0, p2, :cond_5

    .line 104
    iget-object p2, p0, Lcom/google/c/f/a/c;->a:Lcom/google/c/b/b;

    .line 3266
    iget p2, p2, Lcom/google/c/b/b;->b:I

    add-int/lit8 v0, p2, -0x1

    .line 107
    :cond_5
    new-instance p2, Lcom/google/c/q;

    .line 4038
    iget p1, p1, Lcom/google/c/q;->a:F

    int-to-float v0, v0

    .line 107
    invoke-direct {p2, p1, v0}, Lcom/google/c/q;-><init>(FF)V

    if-eqz p3, :cond_6

    move-object v9, p2

    goto :goto_4

    :cond_6
    move-object v11, p2

    move-object v9, v1

    goto :goto_5

    :cond_7
    move-object v9, v1

    :goto_4
    move-object v11, v3

    .line 115
    :goto_5
    invoke-direct {p0}, Lcom/google/c/f/a/c;->a()V

    .line 116
    new-instance p1, Lcom/google/c/f/a/c;

    iget-object v7, p0, Lcom/google/c/f/a/c;->a:Lcom/google/c/b/b;

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lcom/google/c/f/a/c;-><init>(Lcom/google/c/b/b;Lcom/google/c/q;Lcom/google/c/q;Lcom/google/c/q;Lcom/google/c/q;)V

    return-object p1
.end method
