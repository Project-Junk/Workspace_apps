.class public final Lcom/coloros/anim/c/c/h;
.super Lcom/coloros/anim/c/c/a;
.source "TextLayer.java"


# instance fields
.field private final g:[C

.field private final h:Landroid/graphics/RectF;

.field private final i:Landroid/graphics/Matrix;

.field private final j:Landroid/graphics/Paint;

.field private final k:Landroid/graphics/Paint;

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/coloros/anim/c/e;",
            "Ljava/util/List<",
            "Lcom/coloros/anim/a/a/d;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m:Lcom/coloros/anim/a/b/n;

.field private final n:Lcom/coloros/anim/b;

.field private final o:Lcom/coloros/anim/a;

.field private p:Lcom/coloros/anim/a/b/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/coloros/anim/a/b/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/coloros/anim/a/b/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/coloros/anim/a/b/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/a/b/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/d;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/coloros/anim/c/c/a;-><init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/d;)V

    const/4 v0, 0x1

    .line 37
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/coloros/anim/c/c/h;->g:[C

    .line 38
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/c/c/h;->h:Landroid/graphics/RectF;

    .line 39
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/c/c/h;->i:Landroid/graphics/Matrix;

    .line 40
    new-instance v0, Lcom/coloros/anim/c/c/h$1;

    invoke-direct {v0, p0}, Lcom/coloros/anim/c/c/h$1;-><init>(Lcom/coloros/anim/c/c/h;)V

    iput-object v0, p0, Lcom/coloros/anim/c/c/h;->j:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Lcom/coloros/anim/c/c/h$2;

    invoke-direct {v0, p0}, Lcom/coloros/anim/c/c/h$2;-><init>(Lcom/coloros/anim/c/c/h;)V

    iput-object v0, p0, Lcom/coloros/anim/c/c/h;->k:Landroid/graphics/Paint;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/c/c/h;->l:Ljava/util/Map;

    .line 61
    iput-object p1, p0, Lcom/coloros/anim/c/c/h;->n:Lcom/coloros/anim/b;

    .line 1077
    iget-object p1, p2, Lcom/coloros/anim/c/c/d;->b:Lcom/coloros/anim/a;

    .line 62
    iput-object p1, p0, Lcom/coloros/anim/c/c/h;->o:Lcom/coloros/anim/a;

    .line 1151
    iget-object p1, p2, Lcom/coloros/anim/c/c/d;->q:Lcom/coloros/anim/c/a/j;

    .line 64
    invoke-virtual {p1}, Lcom/coloros/anim/c/a/j;->d()Lcom/coloros/anim/a/b/n;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/c/c/h;->m:Lcom/coloros/anim/a/b/n;

    .line 65
    iget-object p1, p0, Lcom/coloros/anim/c/c/h;->m:Lcom/coloros/anim/a/b/n;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/a/b/n;->a(Lcom/coloros/anim/a/b/a$a;)V

    .line 66
    iget-object p1, p0, Lcom/coloros/anim/c/c/h;->m:Lcom/coloros/anim/a/b/n;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/c/c/h;->a(Lcom/coloros/anim/a/b/a;)V

    .line 1156
    iget-object p1, p2, Lcom/coloros/anim/c/c/d;->r:Lcom/coloros/anim/c/a/k;

    if-eqz p1, :cond_0

    .line 69
    iget-object p2, p1, Lcom/coloros/anim/c/a/k;->a:Lcom/coloros/anim/c/a/a;

    if-eqz p2, :cond_0

    .line 70
    iget-object p2, p1, Lcom/coloros/anim/c/a/k;->a:Lcom/coloros/anim/c/a/a;

    invoke-virtual {p2}, Lcom/coloros/anim/c/a/a;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/anim/c/c/h;->p:Lcom/coloros/anim/a/b/a;

    .line 71
    iget-object p2, p0, Lcom/coloros/anim/c/c/h;->p:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    .line 72
    iget-object p2, p0, Lcom/coloros/anim/c/c/h;->p:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p0, p2}, Lcom/coloros/anim/c/c/h;->a(Lcom/coloros/anim/a/b/a;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 75
    iget-object p2, p1, Lcom/coloros/anim/c/a/k;->b:Lcom/coloros/anim/c/a/a;

    if-eqz p2, :cond_1

    .line 76
    iget-object p2, p1, Lcom/coloros/anim/c/a/k;->b:Lcom/coloros/anim/c/a/a;

    invoke-virtual {p2}, Lcom/coloros/anim/c/a/a;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/anim/c/c/h;->q:Lcom/coloros/anim/a/b/a;

    .line 77
    iget-object p2, p0, Lcom/coloros/anim/c/c/h;->q:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    .line 78
    iget-object p2, p0, Lcom/coloros/anim/c/c/h;->q:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p0, p2}, Lcom/coloros/anim/c/c/h;->a(Lcom/coloros/anim/a/b/a;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 81
    iget-object p2, p1, Lcom/coloros/anim/c/a/k;->c:Lcom/coloros/anim/c/a/b;

    if-eqz p2, :cond_2

    .line 82
    iget-object p2, p1, Lcom/coloros/anim/c/a/k;->c:Lcom/coloros/anim/c/a/b;

    invoke-virtual {p2}, Lcom/coloros/anim/c/a/b;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/anim/c/c/h;->r:Lcom/coloros/anim/a/b/a;

    .line 83
    iget-object p2, p0, Lcom/coloros/anim/c/c/h;->r:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p2, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    .line 84
    iget-object p2, p0, Lcom/coloros/anim/c/c/h;->r:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p0, p2}, Lcom/coloros/anim/c/c/h;->a(Lcom/coloros/anim/a/b/a;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 87
    iget-object p2, p1, Lcom/coloros/anim/c/a/k;->d:Lcom/coloros/anim/c/a/b;

    if-eqz p2, :cond_3

    .line 88
    iget-object p1, p1, Lcom/coloros/anim/c/a/k;->d:Lcom/coloros/anim/c/a/b;

    invoke-virtual {p1}, Lcom/coloros/anim/c/a/b;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/c/c/h;->s:Lcom/coloros/anim/a/b/a;

    .line 89
    iget-object p1, p0, Lcom/coloros/anim/c/c/h;->s:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/a/b/a$a;)V

    .line 90
    iget-object p1, p0, Lcom/coloros/anim/c/c/h;->s:Lcom/coloros/anim/a/b/a;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/c/c/h;->a(Lcom/coloros/anim/a/b/a;)V

    :cond_3
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "\r"

    const-string v1, "\r\n"

    .line 253
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\n"

    .line 254
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 255
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 256
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static a(ILandroid/graphics/Canvas;F)V
    .locals 2

    .line 291
    sget-object v0, Lcom/coloros/anim/c/c/h$3;->a:[I

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    aget p0, v0, p0

    if-eq p0, v1, :cond_2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    neg-float p0, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p0, p2

    .line 299
    invoke-virtual {p1, p0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_0
    return-void

    :cond_1
    neg-float p0, p2

    .line 296
    invoke-virtual {p1, p0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_2
    return-void
.end method

.method private static a(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 2

    .line 329
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 332
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    .line 335
    :cond_1
    invoke-virtual {p2, p0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private a(Lcom/coloros/anim/c/b;Lcom/coloros/anim/c/d;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V
    .locals 8

    .line 209
    invoke-static {p3}, Lcom/coloros/anim/f/g;->a(Landroid/graphics/Matrix;)F

    move-result v0

    .line 210
    iget-object v1, p0, Lcom/coloros/anim/c/c/h;->n:Lcom/coloros/anim/b;

    .line 10019
    iget-object v2, p2, Lcom/coloros/anim/c/d;->a:Ljava/lang/String;

    .line 10027
    iget-object p2, p2, Lcom/coloros/anim/c/d;->c:Ljava/lang/String;

    .line 10958
    invoke-virtual {v1}, Lcom/coloros/anim/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object v1, v4

    goto :goto_0

    .line 10963
    :cond_0
    iget-object v3, v1, Lcom/coloros/anim/b;->j:Lcom/coloros/anim/b/a;

    if-nez v3, :cond_1

    .line 10964
    new-instance v3, Lcom/coloros/anim/b/a;

    invoke-virtual {v1}, Lcom/coloros/anim/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v5

    iget-object v6, v1, Lcom/coloros/anim/b;->c:Lcom/coloros/anim/i;

    invoke-direct {v3, v5, v6}, Lcom/coloros/anim/b/a;-><init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/coloros/anim/i;)V

    iput-object v3, v1, Lcom/coloros/anim/b;->j:Lcom/coloros/anim/b/a;

    .line 10967
    :cond_1
    iget-object v1, v1, Lcom/coloros/anim/b;->j:Lcom/coloros/anim/b/a;

    :goto_0
    const/4 v3, 0x0

    if-eqz v1, :cond_8

    .line 11062
    iget-object v4, v1, Lcom/coloros/anim/b/a;->a:Lcom/coloros/anim/c/i;

    .line 12023
    iput-object v2, v4, Lcom/coloros/anim/c/i;->a:Ljava/lang/Object;

    .line 12024
    iput-object p2, v4, Lcom/coloros/anim/c/i;->b:Ljava/lang/Object;

    .line 11063
    iget-object v4, v1, Lcom/coloros/anim/b/a;->b:Ljava/util/Map;

    iget-object v5, v1, Lcom/coloros/anim/b/a;->a:Lcom/coloros/anim/c/i;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Typeface;

    if-eqz v4, :cond_2

    goto :goto_4

    .line 12074
    :cond_2
    iget-object v4, v1, Lcom/coloros/anim/b/a;->c:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Typeface;

    if-eqz v4, :cond_3

    goto :goto_1

    .line 12092
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fonts/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/coloros/anim/b/a;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 12093
    iget-object v5, v1, Lcom/coloros/anim/b/a;->d:Landroid/content/res/AssetManager;

    invoke-static {v5, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 12096
    iget-object v5, v1, Lcom/coloros/anim/b/a;->c:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v2, "Italic"

    .line 12102
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v5, "Bold"

    .line 12103
    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz v2, :cond_4

    if-eqz p2, :cond_4

    const/4 p2, 0x3

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    const/4 p2, 0x2

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    const/4 p2, 0x1

    goto :goto_2

    :cond_6
    move p2, v3

    .line 12112
    :goto_2
    invoke-virtual {v4}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    if-ne v2, p2, :cond_7

    goto :goto_3

    .line 12116
    :cond_7
    invoke-static {v4, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p2

    move-object v4, p2

    .line 11069
    :goto_3
    iget-object p2, v1, Lcom/coloros/anim/b/a;->b:Ljava/util/Map;

    iget-object v1, v1, Lcom/coloros/anim/b/a;->a:Lcom/coloros/anim/c/i;

    invoke-interface {p2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_4
    if-nez v4, :cond_9

    return-void

    .line 214
    :cond_9
    iget-object p2, p1, Lcom/coloros/anim/c/b;->a:Ljava/lang/String;

    .line 215
    iget-object v1, p0, Lcom/coloros/anim/c/c/h;->n:Lcom/coloros/anim/b;

    .line 12739
    iget-object v1, v1, Lcom/coloros/anim/b;->d:Lcom/coloros/anim/p;

    if-eqz v1, :cond_b

    .line 13086
    iget-boolean v2, v1, Lcom/coloros/anim/p;->b:Z

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcom/coloros/anim/p;->a:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 13087
    iget-object v1, v1, Lcom/coloros/anim/p;->a:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_5

    .line 13090
    :cond_a
    iget-boolean v2, v1, Lcom/coloros/anim/p;->b:Z

    if-eqz v2, :cond_b

    .line 13091
    iget-object v1, v1, Lcom/coloros/anim/p;->a:Ljava/util/Map;

    invoke-interface {v1, p2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_b
    :goto_5
    iget-object v1, p0, Lcom/coloros/anim/c/c/h;->j:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 220
    iget-object v1, p0, Lcom/coloros/anim/c/c/h;->j:Landroid/graphics/Paint;

    iget-wide v4, p1, Lcom/coloros/anim/c/b;->c:D

    invoke-static {}, Lcom/coloros/anim/f/g;->a()F

    move-result v2

    float-to-double v6, v2

    mul-double/2addr v4, v6

    double-to-float v2, v4

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 221
    iget-object v1, p0, Lcom/coloros/anim/c/c/h;->k:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/coloros/anim/c/c/h;->j:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 222
    iget-object v1, p0, Lcom/coloros/anim/c/c/h;->k:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/coloros/anim/c/c/h;->j:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 225
    iget-wide v1, p1, Lcom/coloros/anim/c/b;->f:D

    double-to-float v1, v1

    invoke-static {}, Lcom/coloros/anim/f/g;->a()F

    move-result v2

    mul-float/2addr v1, v2

    .line 228
    invoke-static {p2}, Lcom/coloros/anim/c/c/h;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 229
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    :goto_6
    if-ge v3, v2, :cond_c

    .line 232
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 233
    iget-object v5, p0, Lcom/coloros/anim/c/c/h;->k:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 236
    iget v6, p1, Lcom/coloros/anim/c/b;->d:I

    invoke-static {v6, p4, v5}, Lcom/coloros/anim/c/c/h;->a(ILandroid/graphics/Canvas;F)V

    add-int/lit8 v5, v2, -0x1

    int-to-float v5, v5

    mul-float/2addr v5, v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    int-to-float v6, v3

    mul-float/2addr v6, v1

    sub-float/2addr v6, v5

    const/4 v5, 0x0

    .line 241
    invoke-virtual {p4, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 244
    invoke-direct {p0, v4, p1, p4, v0}, Lcom/coloros/anim/c/c/h;->a(Ljava/lang/String;Lcom/coloros/anim/c/b;Landroid/graphics/Canvas;F)V

    .line 247
    invoke-virtual {p4, p3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_c
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/coloros/anim/c/b;Landroid/graphics/Canvas;F)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 260
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 261
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 14339
    iget-object v3, p0, Lcom/coloros/anim/c/c/h;->g:[C

    aput-char v2, v3, v0

    .line 14340
    iget-boolean v3, p2, Lcom/coloros/anim/c/b;->k:Z

    if-eqz v3, :cond_0

    .line 14341
    iget-object v3, p0, Lcom/coloros/anim/c/c/h;->g:[C

    iget-object v4, p0, Lcom/coloros/anim/c/c/h;->j:Landroid/graphics/Paint;

    invoke-static {v3, v4, p3}, Lcom/coloros/anim/c/c/h;->a([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 14342
    iget-object v3, p0, Lcom/coloros/anim/c/c/h;->g:[C

    iget-object v4, p0, Lcom/coloros/anim/c/c/h;->k:Landroid/graphics/Paint;

    invoke-static {v3, v4, p3}, Lcom/coloros/anim/c/c/h;->a([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 14344
    :cond_0
    iget-object v3, p0, Lcom/coloros/anim/c/c/h;->g:[C

    iget-object v4, p0, Lcom/coloros/anim/c/c/h;->k:Landroid/graphics/Paint;

    invoke-static {v3, v4, p3}, Lcom/coloros/anim/c/c/h;->a([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 14345
    iget-object v3, p0, Lcom/coloros/anim/c/c/h;->g:[C

    iget-object v4, p0, Lcom/coloros/anim/c/c/h;->j:Landroid/graphics/Paint;

    invoke-static {v3, v4, p3}, Lcom/coloros/anim/c/c/h;->a([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 263
    :goto_1
    iget-object v3, p0, Lcom/coloros/anim/c/c/h;->g:[C

    aput-char v2, v3, v0

    .line 264
    iget-object v2, p0, Lcom/coloros/anim/c/c/h;->j:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v2

    .line 266
    iget v3, p2, Lcom/coloros/anim/c/b;->e:I

    int-to-float v3, v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    .line 267
    iget-object v4, p0, Lcom/coloros/anim/c/c/h;->s:Lcom/coloros/anim/a/b/a;

    if-eqz v4, :cond_1

    .line 268
    invoke-virtual {v4}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v3, v4

    :cond_1
    mul-float/2addr v3, p4

    add-float/2addr v2, v3

    const/4 v3, 0x0

    .line 271
    invoke-virtual {p3, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static a([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 8

    .line 350
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 353
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v7, p1

    .line 356
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 96
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/anim/c/c/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 98
    iget-object p2, p0, Lcom/coloros/anim/c/c/h;->o:Lcom/coloros/anim/a;

    .line 2124
    iget-object p2, p2, Lcom/coloros/anim/a;->i:Landroid/graphics/Rect;

    .line 98
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/coloros/anim/c/c/h;->o:Lcom/coloros/anim/a;

    .line 3124
    iget-object p3, p3, Lcom/coloros/anim/a;->i:Landroid/graphics/Rect;

    .line 98
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/coloros/anim/g/b;)V
    .locals 1
    .param p2    # Lcom/coloros/anim/g/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/coloros/anim/g/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 377
    invoke-super {p0, p1, p2}, Lcom/coloros/anim/c/c/a;->a(Ljava/lang/Object;Lcom/coloros/anim/g/b;)V

    .line 378
    sget-object v0, Lcom/coloros/anim/d;->a:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/c/c/h;->p:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {v0, p2}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/g/b;)V

    return-void

    .line 380
    :cond_0
    sget-object v0, Lcom/coloros/anim/d;->b:Ljava/lang/Integer;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/coloros/anim/c/c/h;->q:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_1

    .line 381
    invoke-virtual {v0, p2}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/g/b;)V

    return-void

    .line 382
    :cond_1
    sget-object v0, Lcom/coloros/anim/d;->m:Ljava/lang/Float;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/coloros/anim/c/c/h;->r:Lcom/coloros/anim/a/b/a;

    if-eqz v0, :cond_2

    .line 383
    invoke-virtual {v0, p2}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/g/b;)V

    return-void

    .line 384
    :cond_2
    sget-object v0, Lcom/coloros/anim/d;->n:Ljava/lang/Float;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/coloros/anim/c/c/h;->s:Lcom/coloros/anim/a/b/a;

    if-eqz p1, :cond_3

    .line 385
    invoke-virtual {p1, p2}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/g/b;)V

    :cond_3
    return-void
.end method

.method final b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "TextLayer#draw"

    .line 103
    invoke-static {v3}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 105
    iget-object v4, v0, Lcom/coloros/anim/c/c/h;->n:Lcom/coloros/anim/b;

    invoke-virtual {v4}, Lcom/coloros/anim/b;->e()Z

    move-result v4

    if-nez v4, :cond_0

    .line 106
    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 108
    :cond_0
    iget-object v4, v0, Lcom/coloros/anim/c/c/h;->m:Lcom/coloros/anim/a/b/n;

    invoke-virtual {v4}, Lcom/coloros/anim/a/b/n;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/anim/c/b;

    .line 109
    iget-object v5, v0, Lcom/coloros/anim/c/c/h;->o:Lcom/coloros/anim/a;

    .line 3158
    iget-object v5, v5, Lcom/coloros/anim/a;->d:Ljava/util/Map;

    .line 109
    iget-object v6, v4, Lcom/coloros/anim/c/b;->b:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/anim/c/d;

    if-nez v5, :cond_1

    .line 112
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 116
    :cond_1
    iget-object v6, v0, Lcom/coloros/anim/c/c/h;->p:Lcom/coloros/anim/a/b/a;

    if-eqz v6, :cond_2

    .line 117
    iget-object v7, v0, Lcom/coloros/anim/c/c/h;->j:Landroid/graphics/Paint;

    invoke-virtual {v6}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 119
    :cond_2
    iget-object v6, v0, Lcom/coloros/anim/c/c/h;->j:Landroid/graphics/Paint;

    iget v7, v4, Lcom/coloros/anim/c/b;->h:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    :goto_0
    iget-object v6, v0, Lcom/coloros/anim/c/c/h;->q:Lcom/coloros/anim/a/b/a;

    if-eqz v6, :cond_3

    .line 123
    iget-object v7, v0, Lcom/coloros/anim/c/c/h;->k:Landroid/graphics/Paint;

    invoke-virtual {v6}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 125
    :cond_3
    iget-object v6, v0, Lcom/coloros/anim/c/c/h;->k:Landroid/graphics/Paint;

    iget v7, v4, Lcom/coloros/anim/c/b;->i:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    :goto_1
    iget-object v6, v0, Lcom/coloros/anim/c/c/h;->d:Lcom/coloros/anim/a/b/o;

    .line 3165
    iget-object v6, v6, Lcom/coloros/anim/a/b/o;->e:Lcom/coloros/anim/a/b/a;

    const/16 v7, 0x64

    if-nez v6, :cond_4

    move v6, v7

    goto :goto_2

    .line 127
    :cond_4
    iget-object v6, v0, Lcom/coloros/anim/c/c/h;->d:Lcom/coloros/anim/a/b/o;

    .line 4165
    iget-object v6, v6, Lcom/coloros/anim/a/b/o;->e:Lcom/coloros/anim/a/b/a;

    .line 127
    invoke-virtual {v6}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_2
    mul-int/lit16 v6, v6, 0xff

    .line 128
    div-int/2addr v6, v7

    .line 129
    iget-object v7, v0, Lcom/coloros/anim/c/c/h;->j:Landroid/graphics/Paint;

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 130
    iget-object v7, v0, Lcom/coloros/anim/c/c/h;->k:Landroid/graphics/Paint;

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 132
    iget-object v6, v0, Lcom/coloros/anim/c/c/h;->r:Lcom/coloros/anim/a/b/a;

    if-eqz v6, :cond_5

    .line 133
    iget-object v7, v0, Lcom/coloros/anim/c/c/h;->k:Landroid/graphics/Paint;

    invoke-virtual {v6}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_3

    .line 135
    :cond_5
    invoke-static/range {p2 .. p2}, Lcom/coloros/anim/f/g;->a(Landroid/graphics/Matrix;)F

    move-result v6

    .line 136
    iget-object v7, v0, Lcom/coloros/anim/c/c/h;->k:Landroid/graphics/Paint;

    iget-wide v8, v4, Lcom/coloros/anim/c/b;->j:D

    invoke-static {}, Lcom/coloros/anim/f/g;->a()F

    move-result v10

    float-to-double v10, v10

    mul-double/2addr v8, v10

    float-to-double v10, v6

    mul-double/2addr v8, v10

    double-to-float v6, v8

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 139
    :goto_3
    iget-object v6, v0, Lcom/coloros/anim/c/c/h;->n:Lcom/coloros/anim/b;

    invoke-virtual {v6}, Lcom/coloros/anim/b;->e()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 5151
    iget-wide v6, v4, Lcom/coloros/anim/c/b;->c:D

    double-to-float v6, v6

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    .line 5152
    invoke-static/range {p2 .. p2}, Lcom/coloros/anim/f/g;->a(Landroid/graphics/Matrix;)F

    move-result v7

    .line 5154
    iget-object v8, v4, Lcom/coloros/anim/c/b;->a:Ljava/lang/String;

    .line 5157
    iget-wide v9, v4, Lcom/coloros/anim/c/b;->f:D

    double-to-float v9, v9

    invoke-static {}, Lcom/coloros/anim/f/g;->a()F

    move-result v10

    mul-float/2addr v9, v10

    .line 5160
    invoke-static {v8}, Lcom/coloros/anim/c/c/h;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 5161
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v10, :cond_f

    .line 5164
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v15, 0x0

    .line 5278
    :goto_5
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v15, v14, :cond_7

    .line 5279
    invoke-virtual {v13, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move-object/from16 v16, v8

    .line 6019
    iget-object v8, v5, Lcom/coloros/anim/c/d;->a:Ljava/lang/String;

    move-object/from16 v17, v3

    .line 6027
    iget-object v3, v5, Lcom/coloros/anim/c/d;->c:Ljava/lang/String;

    .line 5280
    invoke-static {v14, v8, v3}, Lcom/coloros/anim/c/e;->a(CLjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 5281
    iget-object v8, v0, Lcom/coloros/anim/c/c/h;->o:Lcom/coloros/anim/a;

    .line 6154
    iget-object v8, v8, Lcom/coloros/anim/a;->f:Landroidx/collection/SparseArrayCompat;

    .line 5281
    invoke-virtual {v8, v3}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/anim/c/e;

    if-eqz v3, :cond_6

    move-object v8, v13

    float-to-double v13, v11

    .line 7043
    iget-wide v2, v3, Lcom/coloros/anim/c/e;->b:D

    move/from16 v18, v12

    float-to-double v11, v6

    mul-double/2addr v2, v11

    .line 5285
    invoke-static {}, Lcom/coloros/anim/f/g;->a()F

    move-result v11

    float-to-double v11, v11

    mul-double/2addr v2, v11

    float-to-double v11, v7

    mul-double/2addr v2, v11

    add-double/2addr v13, v2

    double-to-float v2, v13

    move v11, v2

    goto :goto_6

    :cond_6
    move/from16 v18, v12

    move-object v8, v13

    :goto_6
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p2

    move-object v13, v8

    move-object/from16 v8, v16

    move-object/from16 v3, v17

    move/from16 v12, v18

    goto :goto_5

    :cond_7
    move-object/from16 v17, v3

    move-object/from16 v16, v8

    move/from16 v18, v12

    move-object v8, v13

    .line 5167
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5170
    iget v2, v4, Lcom/coloros/anim/c/b;->d:I

    invoke-static {v2, v1, v11}, Lcom/coloros/anim/c/c/h;->a(ILandroid/graphics/Canvas;F)V

    add-int/lit8 v2, v10, -0x1

    int-to-float v2, v2

    mul-float/2addr v2, v9

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move/from16 v11, v18

    int-to-float v3, v11

    mul-float/2addr v3, v9

    sub-float/2addr v3, v2

    const/4 v2, 0x0

    .line 5175
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x0

    .line 7187
    :goto_7
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_e

    .line 7188
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 8019
    iget-object v12, v5, Lcom/coloros/anim/c/d;->a:Ljava/lang/String;

    .line 8027
    iget-object v13, v5, Lcom/coloros/anim/c/d;->c:Ljava/lang/String;

    .line 7189
    invoke-static {v3, v12, v13}, Lcom/coloros/anim/c/e;->a(CLjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 7190
    iget-object v12, v0, Lcom/coloros/anim/c/c/h;->o:Lcom/coloros/anim/a;

    .line 8154
    iget-object v12, v12, Lcom/coloros/anim/a;->f:Landroidx/collection/SparseArrayCompat;

    .line 7190
    invoke-virtual {v12, v3}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/anim/c/e;

    if-eqz v3, :cond_d

    .line 8360
    iget-object v12, v0, Lcom/coloros/anim/c/c/h;->l:Ljava/util/Map;

    invoke-interface {v12, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 8361
    iget-object v12, v0, Lcom/coloros/anim/c/c/h;->l:Ljava/util/Map;

    invoke-interface {v12, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    move-object/from16 v19, v8

    move/from16 v18, v9

    move/from16 v20, v10

    goto :goto_9

    .line 9035
    :cond_8
    iget-object v12, v3, Lcom/coloros/anim/c/e;->a:Ljava/util/List;

    .line 8364
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    .line 8365
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v13}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v15, 0x0

    :goto_8
    if-ge v15, v13, :cond_9

    .line 8367
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v8

    move-object/from16 v8, v18

    check-cast v8, Lcom/coloros/anim/c/b/n;

    move/from16 v18, v9

    .line 8368
    new-instance v9, Lcom/coloros/anim/a/a/d;

    move/from16 v20, v10

    iget-object v10, v0, Lcom/coloros/anim/c/c/h;->n:Lcom/coloros/anim/b;

    invoke-direct {v9, v10, v0, v8}, Lcom/coloros/anim/a/a/d;-><init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;Lcom/coloros/anim/c/b/n;)V

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move/from16 v9, v18

    move-object/from16 v8, v19

    move/from16 v10, v20

    goto :goto_8

    :cond_9
    move-object/from16 v19, v8

    move/from16 v18, v9

    move/from16 v20, v10

    .line 8370
    iget-object v8, v0, Lcom/coloros/anim/c/c/h;->l:Ljava/util/Map;

    invoke-interface {v8, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v12, v14

    :goto_9
    const/4 v8, 0x0

    .line 8311
    :goto_a
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_b

    .line 8312
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/coloros/anim/a/a/d;

    invoke-virtual {v9}, Lcom/coloros/anim/a/a/d;->e()Landroid/graphics/Path;

    move-result-object v9

    .line 8313
    iget-object v10, v0, Lcom/coloros/anim/c/c/h;->h:Landroid/graphics/RectF;

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v13}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 8314
    iget-object v10, v0, Lcom/coloros/anim/c/c/h;->i:Landroid/graphics/Matrix;

    move-object/from16 v14, p2

    invoke-virtual {v10, v14}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 8315
    iget-object v10, v0, Lcom/coloros/anim/c/c/h;->i:Landroid/graphics/Matrix;

    iget-wide v13, v4, Lcom/coloros/anim/c/b;->g:D

    neg-double v13, v13

    double-to-float v13, v13

    invoke-static {}, Lcom/coloros/anim/f/g;->a()F

    move-result v14

    mul-float/2addr v13, v14

    const/4 v14, 0x0

    invoke-virtual {v10, v14, v13}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 8316
    iget-object v10, v0, Lcom/coloros/anim/c/c/h;->i:Landroid/graphics/Matrix;

    invoke-virtual {v10, v6, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 8317
    iget-object v10, v0, Lcom/coloros/anim/c/c/h;->i:Landroid/graphics/Matrix;

    invoke-virtual {v9, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 8318
    iget-boolean v10, v4, Lcom/coloros/anim/c/b;->k:Z

    if-eqz v10, :cond_a

    .line 8319
    iget-object v10, v0, Lcom/coloros/anim/c/c/h;->j:Landroid/graphics/Paint;

    invoke-static {v9, v10, v1}, Lcom/coloros/anim/c/c/h;->a(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 8320
    iget-object v10, v0, Lcom/coloros/anim/c/c/h;->k:Landroid/graphics/Paint;

    invoke-static {v9, v10, v1}, Lcom/coloros/anim/c/c/h;->a(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_b

    .line 8322
    :cond_a
    iget-object v10, v0, Lcom/coloros/anim/c/c/h;->k:Landroid/graphics/Paint;

    invoke-static {v9, v10, v1}, Lcom/coloros/anim/c/c/h;->a(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 8323
    iget-object v10, v0, Lcom/coloros/anim/c/c/h;->j:Landroid/graphics/Paint;

    invoke-static {v9, v10, v1}, Lcom/coloros/anim/c/c/h;->a(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 9043
    :cond_b
    iget-wide v8, v3, Lcom/coloros/anim/c/e;->b:D

    double-to-float v3, v8

    mul-float/2addr v3, v6

    .line 7196
    invoke-static {}, Lcom/coloros/anim/f/g;->a()F

    move-result v8

    mul-float/2addr v3, v8

    mul-float/2addr v3, v7

    .line 7198
    iget v8, v4, Lcom/coloros/anim/c/b;->e:I

    int-to-float v8, v8

    const/high16 v9, 0x41200000    # 10.0f

    div-float/2addr v8, v9

    .line 7199
    iget-object v9, v0, Lcom/coloros/anim/c/c/h;->s:Lcom/coloros/anim/a/b/a;

    if-eqz v9, :cond_c

    .line 7200
    invoke-virtual {v9}, Lcom/coloros/anim/a/b/a;->f()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    add-float/2addr v8, v9

    :cond_c
    mul-float/2addr v8, v7

    add-float/2addr v3, v8

    const/4 v8, 0x0

    .line 7203
    invoke-virtual {v1, v3, v8}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_c

    :cond_d
    move-object/from16 v19, v8

    move/from16 v18, v9

    move/from16 v20, v10

    const/4 v8, 0x0

    :goto_c
    add-int/lit8 v2, v2, 0x1

    move/from16 v9, v18

    move-object/from16 v8, v19

    move/from16 v10, v20

    goto/16 :goto_7

    :cond_e
    move/from16 v18, v9

    move/from16 v20, v10

    .line 5181
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v12, v11, 0x1

    move-object/from16 v2, p2

    move-object/from16 v8, v16

    move-object/from16 v3, v17

    goto/16 :goto_4

    :cond_f
    move-object/from16 v17, v3

    goto :goto_d

    :cond_10
    move-object/from16 v17, v3

    .line 142
    invoke-direct {v0, v4, v5, v2, v1}, Lcom/coloros/anim/c/c/h;->a(Lcom/coloros/anim/c/b;Lcom/coloros/anim/c/d;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V

    .line 145
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 146
    invoke-static/range {v17 .. v17}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    return-void
.end method
