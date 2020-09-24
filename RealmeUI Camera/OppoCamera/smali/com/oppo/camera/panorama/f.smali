.class public Lcom/oppo/camera/panorama/f;
.super Landroid/view/View;
.source "PanoramaProgressBar.java"


# static fields
.field private static a:I = 0x0

.field private static b:I = 0x0

.field private static c:I = 0x0

.field private static d:I = 0x0

.field private static e:I = 0x6

.field private static f:I = 0x78

.field private static g:I = 0x78

.field private static h:I = 0x0

.field private static i:I = 0x24

.field private static j:I = 0x24

.field private static k:I


# instance fields
.field private A:Landroid/graphics/drawable/Drawable;

.field private B:Landroid/graphics/drawable/Drawable;

.field private C:Landroid/graphics/drawable/Drawable;

.field private D:Landroid/graphics/Rect;

.field private E:Landroid/graphics/Rect;

.field private F:Landroid/graphics/Rect;

.field private G:Landroid/graphics/Rect;

.field private H:Landroid/content/res/Resources;

.field private I:Landroid/graphics/Paint;

.field private J:Landroid/graphics/Path;

.field private K:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Bitmap;

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 78
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/oppo/camera/panorama/f;->l:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 51
    iput-boolean v1, p0, Lcom/oppo/camera/panorama/f;->m:Z

    .line 52
    iput-boolean v1, p0, Lcom/oppo/camera/panorama/f;->n:Z

    const/4 v2, 0x1

    .line 53
    iput v2, p0, Lcom/oppo/camera/panorama/f;->o:I

    .line 54
    iput v1, p0, Lcom/oppo/camera/panorama/f;->p:I

    .line 55
    iput v1, p0, Lcom/oppo/camera/panorama/f;->q:I

    .line 56
    iput v1, p0, Lcom/oppo/camera/panorama/f;->r:I

    .line 57
    iput v1, p0, Lcom/oppo/camera/panorama/f;->s:I

    .line 58
    iput v1, p0, Lcom/oppo/camera/panorama/f;->t:I

    .line 59
    iput v1, p0, Lcom/oppo/camera/panorama/f;->u:I

    .line 60
    iput v1, p0, Lcom/oppo/camera/panorama/f;->v:I

    .line 61
    iput v1, p0, Lcom/oppo/camera/panorama/f;->w:I

    .line 62
    iput v1, p0, Lcom/oppo/camera/panorama/f;->x:I

    .line 63
    iput v1, p0, Lcom/oppo/camera/panorama/f;->y:I

    const/4 v1, 0x4

    .line 64
    iput v1, p0, Lcom/oppo/camera/panorama/f;->z:I

    .line 65
    iput-object v0, p0, Lcom/oppo/camera/panorama/f;->A:Landroid/graphics/drawable/Drawable;

    .line 66
    iput-object v0, p0, Lcom/oppo/camera/panorama/f;->B:Landroid/graphics/drawable/Drawable;

    .line 67
    iput-object v0, p0, Lcom/oppo/camera/panorama/f;->C:Landroid/graphics/drawable/Drawable;

    .line 68
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/panorama/f;->D:Landroid/graphics/Rect;

    .line 69
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/panorama/f;->E:Landroid/graphics/Rect;

    .line 70
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/panorama/f;->F:Landroid/graphics/Rect;

    .line 71
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/panorama/f;->G:Landroid/graphics/Rect;

    .line 72
    iput-object v0, p0, Lcom/oppo/camera/panorama/f;->H:Landroid/content/res/Resources;

    .line 73
    iput-object v0, p0, Lcom/oppo/camera/panorama/f;->I:Landroid/graphics/Paint;

    .line 74
    iput-object v0, p0, Lcom/oppo/camera/panorama/f;->J:Landroid/graphics/Path;

    .line 75
    iput-object v0, p0, Lcom/oppo/camera/panorama/f;->K:Landroid/graphics/Paint;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/panorama/f;->H:Landroid/content/res/Resources;

    .line 81
    iget-object p1, p0, Lcom/oppo/camera/panorama/f;->H:Landroid/content/res/Resources;

    const v0, 0x7f070367

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/panorama/f;->C:Landroid/graphics/drawable/Drawable;

    .line 82
    iget-object p1, p0, Lcom/oppo/camera/panorama/f;->H:Landroid/content/res/Resources;

    const v0, 0x7f070163

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/panorama/f;->A:Landroid/graphics/drawable/Drawable;

    .line 83
    iget-object p1, p0, Lcom/oppo/camera/panorama/f;->H:Landroid/content/res/Resources;

    const v0, 0x7f070164

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/panorama/f;->B:Landroid/graphics/drawable/Drawable;

    .line 84
    iget-object p1, p0, Lcom/oppo/camera/panorama/f;->H:Landroid/content/res/Resources;

    const v0, 0x7f06032f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/oppo/camera/panorama/f;->f:I

    .line 85
    iget-object p1, p0, Lcom/oppo/camera/panorama/f;->H:Landroid/content/res/Resources;

    const v0, 0x7f06032d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/oppo/camera/panorama/f;->g:I

    .line 86
    iget-object p1, p0, Lcom/oppo/camera/panorama/f;->H:Landroid/content/res/Resources;

    const v0, 0x7f060332

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/oppo/camera/panorama/f;->e:I

    .line 87
    iget-object p1, p0, Lcom/oppo/camera/panorama/f;->H:Landroid/content/res/Resources;

    const v0, 0x7f060333

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/oppo/camera/panorama/f;->i:I

    .line 88
    iget-object p1, p0, Lcom/oppo/camera/panorama/f;->H:Landroid/content/res/Resources;

    const v0, 0x7f06032e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/oppo/camera/panorama/f;->j:I

    .line 89
    iget-object p1, p0, Lcom/oppo/camera/panorama/f;->H:Landroid/content/res/Resources;

    const v0, 0x7f060334

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/panorama/f;->z:I

    .line 90
    iget-object p1, p0, Lcom/oppo/camera/panorama/f;->H:Landroid/content/res/Resources;

    const v0, 0x7f05015c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    sput p1, Lcom/oppo/camera/panorama/f;->k:I

    return-void
.end method

.method private f()V
    .locals 1

    .line 399
    iget-boolean v0, p0, Lcom/oppo/camera/panorama/f;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 400
    iput-boolean v0, p0, Lcom/oppo/camera/panorama/f;->m:Z

    const/4 v0, 0x0

    .line 401
    iput v0, p0, Lcom/oppo/camera/panorama/f;->w:I

    .line 402
    iput v0, p0, Lcom/oppo/camera/panorama/f;->x:I

    .line 403
    invoke-virtual {p0}, Lcom/oppo/camera/panorama/f;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    .line 395
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    double-to-float p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    return p1
.end method

.method public a(IIII)V
    .locals 1

    .line 94
    sput p1, Lcom/oppo/camera/panorama/f;->a:I

    .line 95
    sput p2, Lcom/oppo/camera/panorama/f;->b:I

    .line 96
    sput p3, Lcom/oppo/camera/panorama/f;->c:I

    .line 97
    sput p4, Lcom/oppo/camera/panorama/f;->d:I

    .line 99
    iget-object p1, p0, Lcom/oppo/camera/panorama/f;->E:Landroid/graphics/Rect;

    sget p2, Lcom/oppo/camera/panorama/f;->c:I

    sget p3, Lcom/oppo/camera/panorama/f;->d:I

    sget p4, Lcom/oppo/camera/panorama/f;->a:I

    add-int/2addr p4, p2

    sget v0, Lcom/oppo/camera/panorama/f;->b:I

    add-int/2addr v0, p3

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 101
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/panorama/f;->I:Landroid/graphics/Paint;

    .line 102
    iget-object p1, p0, Lcom/oppo/camera/panorama/f;->I:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    iget-object p1, p0, Lcom/oppo/camera/panorama/f;->I:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    iget-object p1, p0, Lcom/oppo/camera/panorama/f;->I:Landroid/graphics/Paint;

    sget p2, Lcom/oppo/camera/panorama/f;->e:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    iget-object p1, p0, Lcom/oppo/camera/panorama/f;->I:Landroid/graphics/Paint;

    sget p2, Lcom/oppo/camera/panorama/f;->k:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/panorama/f;->J:Landroid/graphics/Path;

    .line 108
    iget-object p1, p0, Lcom/oppo/camera/panorama/f;->J:Landroid/graphics/Path;

    sget p2, Lcom/oppo/camera/panorama/f;->c:I

    int-to-float p2, p2

    sget p3, Lcom/oppo/camera/panorama/f;->d:I

    iget-object p4, p0, Lcom/oppo/camera/panorama/f;->E:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 109
    iget-object p1, p0, Lcom/oppo/camera/panorama/f;->J:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/oppo/camera/panorama/f;->E:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    sget p3, Lcom/oppo/camera/panorama/f;->d:I

    iget-object p4, p0, Lcom/oppo/camera/panorama/f;->E:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 111
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/panorama/f;->K:Landroid/graphics/Paint;

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;II)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/oppo/camera/panorama/f;->l:Landroid/graphics/Bitmap;

    .line 364
    iput p3, p0, Lcom/oppo/camera/panorama/f;->u:I

    .line 366
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/oppo/camera/panorama/f;->v:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/oppo/camera/panorama/f;->t:I

    .line 368
    invoke-virtual {p0}, Lcom/oppo/camera/panorama/f;->invalidate()V

    return-void
.end method

.method public a()Z
    .locals 2

    .line 115
    iget v0, p0, Lcom/oppo/camera/panorama/f;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected a(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 408
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 409
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 411
    iget-object v1, p0, Lcom/oppo/camera/panorama/f;->E:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/oppo/camera/panorama/f;->t:I

    iget v0, p0, Lcom/oppo/camera/panorama/f;->v:I

    if-ne p1, v0, :cond_0

    .line 412
    invoke-direct {p0}, Lcom/oppo/camera/panorama/f;->f()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 12

    .line 119
    iget v0, p0, Lcom/oppo/camera/panorama/f;->o:I

    const/high16 v1, 0x41f00000    # 30.0f

    const/4 v2, 0x0

    const/16 v3, 0x1e

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v0, v4, :cond_8

    if-eq v0, v5, :cond_0

    goto/16 :goto_0

    .line 192
    :cond_0
    sget v0, Lcom/oppo/camera/panorama/f;->c:I

    sget v6, Lcom/oppo/camera/panorama/f;->a:I

    add-int/2addr v6, v0

    sget v7, Lcom/oppo/camera/panorama/f;->i:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/oppo/camera/panorama/f;->r:I

    .line 193
    iget v6, p0, Lcom/oppo/camera/panorama/f;->r:I

    iget v7, p0, Lcom/oppo/camera/panorama/f;->t:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/oppo/camera/panorama/f;->p:I

    .line 194
    sget v6, Lcom/oppo/camera/panorama/f;->d:I

    iput v6, p0, Lcom/oppo/camera/panorama/f;->q:I

    .line 195
    iget v6, p0, Lcom/oppo/camera/panorama/f;->q:I

    sget v7, Lcom/oppo/camera/panorama/f;->b:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/oppo/camera/panorama/f;->s:I

    .line 197
    iget v6, p0, Lcom/oppo/camera/panorama/f;->p:I

    if-gt v6, v0, :cond_1

    .line 198
    iput v0, p0, Lcom/oppo/camera/panorama/f;->p:I

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/panorama/f;->F:Landroid/graphics/Rect;

    iget v6, p0, Lcom/oppo/camera/panorama/f;->p:I

    iget v7, p0, Lcom/oppo/camera/panorama/f;->q:I

    iget v8, p0, Lcom/oppo/camera/panorama/f;->z:I

    add-int/2addr v7, v8

    iget v9, p0, Lcom/oppo/camera/panorama/f;->r:I

    iget v10, p0, Lcom/oppo/camera/panorama/f;->s:I

    sub-int/2addr v10, v8

    invoke-virtual {v0, v6, v7, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 203
    iget-object v0, p0, Lcom/oppo/camera/panorama/f;->E:Landroid/graphics/Rect;

    sget v6, Lcom/oppo/camera/panorama/f;->c:I

    iget v7, p0, Lcom/oppo/camera/panorama/f;->q:I

    sget v8, Lcom/oppo/camera/panorama/f;->a:I

    add-int/2addr v8, v6

    iget v9, p0, Lcom/oppo/camera/panorama/f;->s:I

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 204
    iget-object v0, p0, Lcom/oppo/camera/panorama/f;->D:Landroid/graphics/Rect;

    sget v6, Lcom/oppo/camera/panorama/f;->c:I

    iget v7, p0, Lcom/oppo/camera/panorama/f;->q:I

    iget-object v8, p0, Lcom/oppo/camera/panorama/f;->E:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    sget v9, Lcom/oppo/camera/panorama/f;->e:I

    sub-int/2addr v8, v9

    div-int/2addr v8, v5

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/oppo/camera/panorama/f;->E:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget v9, p0, Lcom/oppo/camera/panorama/f;->s:I

    iget-object v10, p0, Lcom/oppo/camera/panorama/f;->E:Landroid/graphics/Rect;

    .line 205
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    sget v11, Lcom/oppo/camera/panorama/f;->e:I

    sub-int/2addr v10, v11

    div-int/2addr v10, v5

    sub-int/2addr v9, v10

    .line 204
    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 207
    iget-boolean v0, p0, Lcom/oppo/camera/panorama/f;->m:Z

    if-eqz v0, :cond_6

    .line 208
    iget v0, p0, Lcom/oppo/camera/panorama/f;->x:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/oppo/camera/panorama/f;->x:I

    .line 209
    sget v0, Lcom/oppo/camera/panorama/f;->h:I

    int-to-float v0, v0

    iget v6, p0, Lcom/oppo/camera/panorama/f;->x:I

    int-to-float v6, v6

    div-float/2addr v6, v1

    invoke-virtual {p0, v6}, Lcom/oppo/camera/panorama/f;->a(F)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/oppo/camera/panorama/f;->w:I

    .line 212
    iget v0, p0, Lcom/oppo/camera/panorama/f;->x:I

    if-ne v0, v3, :cond_2

    .line 213
    sget v0, Lcom/oppo/camera/panorama/f;->h:I

    iput v0, p0, Lcom/oppo/camera/panorama/f;->w:I

    .line 216
    :cond_2
    iget-boolean v0, p0, Lcom/oppo/camera/panorama/f;->n:Z

    if-eqz v0, :cond_3

    .line 217
    iget-object v0, p0, Lcom/oppo/camera/panorama/f;->G:Landroid/graphics/Rect;

    iget v1, p0, Lcom/oppo/camera/panorama/f;->p:I

    sget v3, Lcom/oppo/camera/panorama/f;->j:I

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/oppo/camera/panorama/f;->w:I

    sget v4, Lcom/oppo/camera/panorama/f;->h:I

    sget v6, Lcom/oppo/camera/panorama/f;->f:I

    sub-int/2addr v4, v6

    sub-int/2addr v3, v4

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/oppo/camera/panorama/f;->q:I

    iget-object v4, p0, Lcom/oppo/camera/panorama/f;->E:Landroid/graphics/Rect;

    .line 219
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sget v6, Lcom/oppo/camera/panorama/f;->g:I

    sub-int/2addr v4, v6

    div-int/2addr v4, v5

    add-int/2addr v3, v4

    iget v4, p0, Lcom/oppo/camera/panorama/f;->u:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/oppo/camera/panorama/f;->p:I

    sget v6, Lcom/oppo/camera/panorama/f;->j:I

    sub-int/2addr v4, v6

    iget v6, p0, Lcom/oppo/camera/panorama/f;->s:I

    iget-object v7, p0, Lcom/oppo/camera/panorama/f;->E:Landroid/graphics/Rect;

    .line 221
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    sget v8, Lcom/oppo/camera/panorama/f;->g:I

    sub-int/2addr v7, v8

    div-int/2addr v7, v5

    sub-int/2addr v6, v7

    iget v5, p0, Lcom/oppo/camera/panorama/f;->u:I

    add-int/2addr v6, v5

    .line 217
    invoke-virtual {v0, v1, v3, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 223
    iget-object v0, p0, Lcom/oppo/camera/panorama/f;->G:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/oppo/camera/panorama/f;->G:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    sget v1, Lcom/oppo/camera/panorama/f;->f:I

    if-lt v0, v1, :cond_10

    .line 224
    iget-object v0, p0, Lcom/oppo/camera/panorama/f;->G:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    sget v3, Lcom/oppo/camera/panorama/f;->f:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 225
    iput v2, p0, Lcom/oppo/camera/panorama/f;->w:I

    .line 226
    iput v2, p0, Lcom/oppo/camera/panorama/f;->x:I

    goto/16 :goto_0

    .line 229
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/panorama/f;->G:Landroid/graphics/Rect;

    iget v1, p0, Lcom/oppo/camera/panorama/f;->p:I

    sget v2, Lcom/oppo/camera/panorama/f;->j:I

    sub-int/2addr v1, v2

    sget v2, Lcom/oppo/camera/panorama/f;->f:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/camera/panorama/f;->w:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/camera/panorama/f;->q:I

    iget-object v6, p0, Lcom/oppo/camera/panorama/f;->E:Landroid/graphics/Rect;

    .line 230
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sget v7, Lcom/oppo/camera/panorama/f;->g:I

    sub-int/2addr v6, v7

    div-int/2addr v6, v5

    add-int/2addr v2, v6

    iget v6, p0, Lcom/oppo/camera/panorama/f;->u:I

    add-int/2addr v2, v6

    iget v6, p0, Lcom/oppo/camera/panorama/f;->p:I

    sget v7, Lcom/oppo/camera/panorama/f;->j:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/oppo/camera/panorama/f;->w:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/oppo/camera/panorama/f;->s:I

    iget-object v8, p0, Lcom/oppo/camera/panorama/f;->E:Landroid/graphics/Rect;

    .line 232
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    sget v9, Lcom/oppo/camera/panorama/f;->g:I

    sub-int/2addr v8, v9

    div-int/2addr v8, v5

    sub-int/2addr v7, v8

    iget v5, p0, Lcom/oppo/camera/panorama/f;->u:I

    add-int/2addr v7, v5

    .line 229
    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 234
    iget-object v0, p0, Lcom/oppo/camera/panorama/f;->G:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sget v1, Lcom/oppo/camera/panorama/f;->c:I

    sget v2, Lcom/oppo/camera/panorama/f;->i:I

    add-int v5, v1, v2

    sget v6, Lcom/oppo/camera/panorama/f;->j:I

    add-int/2addr v5, v6

    iget v7, p0, Lcom/oppo/camera/panorama/f;->v:I

    add-int/2addr v5, v7

    if-ge v0, v5, :cond_4

    .line 235
    iget-object v0, p0, Lcom/oppo/camera/panorama/f;->G:Landroid/graphics/Rect;

    add-int/2addr v1, v2

    add-int/2addr v1, v6

    add-int/2addr v1, v7

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 238
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/panorama/f;->G:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/oppo/camera/panorama/f;->G:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/oppo/camera/panorama/f;->x:I

    if-ne v0, v3, :cond_10

    .line 240
    :cond_5
    invoke-virtual {p0}, Lcom/oppo/camera/panorama/f;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0092

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/panorama/f;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/oppo/camera/panorama/f;->G:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 242
    iput v4, p0, Lcom/oppo/camera/panorama/f;->o:I

    .line 243
    iput-boolean v4, p0, Lcom/oppo/camera/panorama/f;->n:Z

    goto/16 :goto_0

    .line 247
    :cond_6
    iget v0, p0, Lcom/oppo/camera/panorama/f;->p:I

    sget v1, Lcom/oppo/camera/panorama/f;->c:I

    sget v2, Lcom/oppo/camera/panorama/f;->i:I

    add-int/2addr v2, v1

    sget v3, Lcom/oppo/camera/panorama/f;->j:I

    add-int/2addr v2, v3

    sget v4, Lcom/oppo/camera/panorama/f;->f:I

    add-int/2addr v2, v4

    if-gt v0, v2, :cond_7

    .line 248
    iget-object v0, p0, Lcom/oppo/camera/panorama/f;->G:Landroid/graphics/Rect;

    add-int/2addr v1, v3

    iget v2, p0, Lcom/oppo/camera/panorama/f;->q:I

    iget-object v3, p0, Lcom/oppo/camera/panorama/f;->E:Landroid/graphics/Rect;

    .line 249
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget v4, Lcom/oppo/camera/panorama/f;->g:I

    sub-int/2addr v3, v4

    div-int/2addr v3, v5

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/camera/panorama/f;->u:I

    add-int/2addr v2, v3

    sget v3, Lcom/oppo/camera/panorama/f;->c:I

    sget v4, Lcom/oppo/camera/panorama/f;->j:I

    add-int/2addr v3, v4

    sget v4, Lcom/oppo/camera/panorama/f;->f:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/oppo/camera/panorama/f;->s:I

    iget-object v6, p0, Lcom/oppo/camera/panorama/f;->E:Landroid/graphics/Rect;

    .line 251
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sget v7, Lcom/oppo/camera/panorama/f;->g:I

    sub-int/2addr v6, v7

    div-int/2addr v6, v5

    sub-int/2addr v4, v6

    iget v5, p0, Lcom/oppo/camera/panorama/f;->u:I

    add-int/2addr v4, v5

    .line 248
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 253
    :cond_7
    iget-object v1, p0, Lcom/oppo/camera/panorama/f;->G:Landroid/graphics/Rect;

    sub-int/2addr v0, v3

    sub-int/2addr v0, v4

    iget v2, p0, Lcom/oppo/camera/panorama/f;->q:I

    iget-object v3, p0, Lcom/oppo/camera/panorama/f;->E:Landroid/graphics/Rect;

    .line 254
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget v4, Lcom/oppo/camera/panorama/f;->g:I

    sub-int/2addr v3, v4

    div-int/2addr v3, v5

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/camera/panorama/f;->u:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/camera/panorama/f;->p:I

    sget v4, Lcom/oppo/camera/panorama/f;->j:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/oppo/camera/panorama/f;->s:I

    iget-object v6, p0, Lcom/oppo/camera/panorama/f;->E:Landroid/graphics/Rect;

    .line 256
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sget v7, Lcom/oppo/camera/panorama/f;->g:I

    sub-int/2addr v6, v7

    div-int/2addr v6, v5

    sub-int/2addr v4, v6

    iget v5, p0, Lcom/oppo/camera/panorama/f;->u:I

    add-int/2addr v4, v5

    .line 253
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 121
    :cond_8
    sget v0, Lcom/oppo/camera/panorama/f;->c:I

    sget v6, Lcom/oppo/camera/panorama/f;->i:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/oppo/camera/panorama/f;->p:I

    .line 122
    iget v0, p0, Lcom/oppo/camera/panorama/f;->p:I

    iget v6, p0, Lcom/oppo/camera/panorama/f;->t:I

    add-int/2addr v6, v0

    iput v6, p0, Lcom/oppo/camera/panorama/f;->r:I

    .line 123
    sget v6, Lcom/oppo/camera/panorama/f;->d:I

    iput v6, p0, Lcom/oppo/camera/panorama/f;->q:I

    .line 124
    iget v6, p0, Lcom/oppo/camera/panorama/f;->q:I

    sget v7, Lcom/oppo/camera/panorama/f;->b:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/oppo/camera/panorama/f;->s:I

    .line 126
    iget v6, p0, Lcom/oppo/camera/panorama/f;->r:I

    if-lt v0, v6, :cond_9

    .line 127
    iput v6, p0, Lcom/oppo/camera/panorama/f;->p:I

    .line 130
    :cond_9
    iget-object v0, p0, Lcom/oppo/camera/panorama/f;->F:Landroid/graphics/Rect;

    iget v6, p0, Lcom/oppo/camera/panorama/f;->p:I

    iget v7, p0, Lcom/oppo/camera/panorama/f;->q:I

    iget v8, p0, Lcom/oppo/camera/panorama/f;->z:I

    add-int/2addr v7, v8

    iget v9, p0, Lcom/oppo/camera/panorama/f;->r:I

    iget v10, p0, Lcom/oppo/camera/panorama/f;->s:I

    sub-int/2addr v10, v8

    invoke-virtual {v0, v6, v7, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 132
    iget-object v0, p0, Lcom/oppo/camera/panorama/f;->E:Landroid/graphics/Rect;

    sget v6, Lcom/oppo/camera/panorama/f;->c:I

    iget v7, p0, Lcom/oppo/camera/panorama/f;->q:I

    sget v8, Lcom/oppo/camera/panorama/f;->a:I

    add-int/2addr v8, v6

    iget v9, p0, Lcom/oppo/camera/panorama/f;->s:I

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 133
    iget-object v0, p0, Lcom/oppo/camera/panorama/f;->D:Landroid/graphics/Rect;

    sget v6, Lcom/oppo/camera/panorama/f;->c:I

    iget v7, p0, Lcom/oppo/camera/panorama/f;->q:I

    iget-object v8, p0, Lcom/oppo/camera/panorama/f;->E:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    sget v9, Lcom/oppo/camera/panorama/f;->e:I

    sub-int/2addr v8, v9

    div-int/2addr v8, v5

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/oppo/camera/panorama/f;->E:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget v9, p0, Lcom/oppo/camera/panorama/f;->s:I

    iget-object v10, p0, Lcom/oppo/camera/panorama/f;->E:Landroid/graphics/Rect;

    .line 134
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    sget v11, Lcom/oppo/camera/panorama/f;->e:I

    sub-int/2addr v10, v11

    div-int/2addr v10, v5

    sub-int/2addr v9, v10

    .line 133
    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 136
    iget-boolean v0, p0, Lcom/oppo/camera/panorama/f;->m:Z

    if-eqz v0, :cond_e

    .line 137
    iget v0, p0, Lcom/oppo/camera/panorama/f;->x:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/oppo/camera/panorama/f;->x:I

    .line 138
    sget v0, Lcom/oppo/camera/panorama/f;->h:I

    int-to-float v0, v0

    iget v6, p0, Lcom/oppo/camera/panorama/f;->x:I

    int-to-float v6, v6

    div-float/2addr v6, v1

    invoke-virtual {p0, v6}, Lcom/oppo/camera/panorama/f;->a(F)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/oppo/camera/panorama/f;->w:I

    .line 141
    iget v0, p0, Lcom/oppo/camera/panorama/f;->x:I

    if-ne v0, v3, :cond_a

    .line 142
    sget v0, Lcom/oppo/camera/panorama/f;->h:I

    iput v0, p0, Lcom/oppo/camera/panorama/f;->w:I

    .line 145
    :cond_a
    iget-boolean v0, p0, Lcom/oppo/camera/panorama/f;->n:Z

    if-eqz v0, :cond_b

    .line 146
    iget-object v0, p0, Lcom/oppo/camera/panorama/f;->G:Landroid/graphics/Rect;

    iget v1, p0, Lcom/oppo/camera/panorama/f;->r:I

    sget v3, Lcom/oppo/camera/panorama/f;->j:I

    add-int/2addr v1, v3

    iget v3, p0, Lcom/oppo/camera/panorama/f;->q:I

    iget-object v4, p0, Lcom/oppo/camera/panorama/f;->E:Landroid/graphics/Rect;

    .line 147
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sget v6, Lcom/oppo/camera/panorama/f;->g:I

    sub-int/2addr v4, v6

    div-int/2addr v4, v5

    add-int/2addr v3, v4

    iget v4, p0, Lcom/oppo/camera/panorama/f;->u:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/oppo/camera/panorama/f;->r:I

    sget v6, Lcom/oppo/camera/panorama/f;->j:I

    add-int/2addr v4, v6

    iget v6, p0, Lcom/oppo/camera/panorama/f;->w:I

    sget v7, Lcom/oppo/camera/panorama/f;->h:I

    sget v8, Lcom/oppo/camera/panorama/f;->f:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    add-int/2addr v4, v6

    iget v6, p0, Lcom/oppo/camera/panorama/f;->s:I

    iget-object v7, p0, Lcom/oppo/camera/panorama/f;->E:Landroid/graphics/Rect;

    .line 150
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    sget v8, Lcom/oppo/camera/panorama/f;->g:I

    sub-int/2addr v7, v8

    div-int/2addr v7, v5

    sub-int/2addr v6, v7

    iget v5, p0, Lcom/oppo/camera/panorama/f;->u:I

    add-int/2addr v6, v5

    .line 146
    invoke-virtual {v0, v1, v3, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 152
    iget-object v0, p0, Lcom/oppo/camera/panorama/f;->G:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/oppo/camera/panorama/f;->G:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    sget v1, Lcom/oppo/camera/panorama/f;->f:I

    if-lt v0, v1, :cond_10

    .line 153
    iget-object v0, p0, Lcom/oppo/camera/panorama/f;->G:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sget v3, Lcom/oppo/camera/panorama/f;->f:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 154
    iput v2, p0, Lcom/oppo/camera/panorama/f;->w:I

    .line 155
    iput v2, p0, Lcom/oppo/camera/panorama/f;->x:I

    goto/16 :goto_0

    .line 158
    :cond_b
    iget-object v0, p0, Lcom/oppo/camera/panorama/f;->G:Landroid/graphics/Rect;

    iget v1, p0, Lcom/oppo/camera/panorama/f;->r:I

    sget v2, Lcom/oppo/camera/panorama/f;->j:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/camera/panorama/f;->w:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/camera/panorama/f;->q:I

    iget-object v6, p0, Lcom/oppo/camera/panorama/f;->E:Landroid/graphics/Rect;

    .line 159
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sget v7, Lcom/oppo/camera/panorama/f;->g:I

    sub-int/2addr v6, v7

    div-int/2addr v6, v5

    add-int/2addr v2, v6

    iget v6, p0, Lcom/oppo/camera/panorama/f;->u:I

    add-int/2addr v2, v6

    iget v6, p0, Lcom/oppo/camera/panorama/f;->r:I

    sget v7, Lcom/oppo/camera/panorama/f;->j:I

    add-int/2addr v6, v7

    sget v7, Lcom/oppo/camera/panorama/f;->f:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/oppo/camera/panorama/f;->w:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/oppo/camera/panorama/f;->s:I

    iget-object v8, p0, Lcom/oppo/camera/panorama/f;->E:Landroid/graphics/Rect;

    .line 161
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    sget v9, Lcom/oppo/camera/panorama/f;->g:I

    sub-int/2addr v8, v9

    div-int/2addr v8, v5

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/oppo/camera/panorama/f;->u:I

    add-int/2addr v7, v8

    .line 158
    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 163
    iget-object v0, p0, Lcom/oppo/camera/panorama/f;->G:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sget v1, Lcom/oppo/camera/panorama/f;->c:I

    sget v2, Lcom/oppo/camera/panorama/f;->a:I

    add-int v6, v1, v2

    sget v7, Lcom/oppo/camera/panorama/f;->i:I

    sub-int/2addr v6, v7

    sget v8, Lcom/oppo/camera/panorama/f;->j:I

    sub-int/2addr v6, v8

    iget v9, p0, Lcom/oppo/camera/panorama/f;->v:I

    sub-int/2addr v6, v9

    if-le v0, v6, :cond_c

    .line 164
    iget-object v0, p0, Lcom/oppo/camera/panorama/f;->G:Landroid/graphics/Rect;

    add-int/2addr v1, v2

    sub-int/2addr v1, v7

    sub-int/2addr v1, v8

    sub-int/2addr v1, v9

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 167
    :cond_c
    iget-object v0, p0, Lcom/oppo/camera/panorama/f;->G:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/oppo/camera/panorama/f;->G:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_d

    iget v0, p0, Lcom/oppo/camera/panorama/f;->x:I

    if-ne v0, v3, :cond_10

    .line 169
    :cond_d
    invoke-virtual {p0}, Lcom/oppo/camera/panorama/f;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0093

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/panorama/f;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/oppo/camera/panorama/f;->G:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 171
    iput v5, p0, Lcom/oppo/camera/panorama/f;->o:I

    .line 172
    iput-boolean v4, p0, Lcom/oppo/camera/panorama/f;->n:Z

    goto :goto_0

    .line 176
    :cond_e
    iget v0, p0, Lcom/oppo/camera/panorama/f;->r:I

    sget v1, Lcom/oppo/camera/panorama/f;->j:I

    add-int v2, v0, v1

    sget v3, Lcom/oppo/camera/panorama/f;->f:I

    add-int/2addr v2, v3

    sget v4, Lcom/oppo/camera/panorama/f;->c:I

    sget v6, Lcom/oppo/camera/panorama/f;->a:I

    add-int v7, v4, v6

    sub-int/2addr v7, v1

    if-lt v2, v7, :cond_f

    .line 177
    iget-object v0, p0, Lcom/oppo/camera/panorama/f;->G:Landroid/graphics/Rect;

    add-int/2addr v4, v6

    sub-int/2addr v4, v3

    sub-int/2addr v4, v1

    iget v1, p0, Lcom/oppo/camera/panorama/f;->q:I

    iget-object v2, p0, Lcom/oppo/camera/panorama/f;->E:Landroid/graphics/Rect;

    .line 178
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sget v3, Lcom/oppo/camera/panorama/f;->g:I

    sub-int/2addr v2, v3

    div-int/2addr v2, v5

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/camera/panorama/f;->u:I

    add-int/2addr v1, v2

    sget v2, Lcom/oppo/camera/panorama/f;->c:I

    sget v3, Lcom/oppo/camera/panorama/f;->a:I

    add-int/2addr v2, v3

    sget v3, Lcom/oppo/camera/panorama/f;->j:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/oppo/camera/panorama/f;->s:I

    iget-object v6, p0, Lcom/oppo/camera/panorama/f;->E:Landroid/graphics/Rect;

    .line 180
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sget v7, Lcom/oppo/camera/panorama/f;->g:I

    sub-int/2addr v6, v7

    div-int/2addr v6, v5

    sub-int/2addr v3, v6

    iget v5, p0, Lcom/oppo/camera/panorama/f;->u:I

    add-int/2addr v3, v5

    .line 177
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 182
    :cond_f
    iget-object v2, p0, Lcom/oppo/camera/panorama/f;->G:Landroid/graphics/Rect;

    add-int/2addr v0, v1

    iget v1, p0, Lcom/oppo/camera/panorama/f;->q:I

    iget-object v3, p0, Lcom/oppo/camera/panorama/f;->E:Landroid/graphics/Rect;

    .line 183
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget v4, Lcom/oppo/camera/panorama/f;->g:I

    sub-int/2addr v3, v4

    div-int/2addr v3, v5

    add-int/2addr v1, v3

    iget v3, p0, Lcom/oppo/camera/panorama/f;->u:I

    add-int/2addr v1, v3

    iget v3, p0, Lcom/oppo/camera/panorama/f;->r:I

    sget v4, Lcom/oppo/camera/panorama/f;->j:I

    add-int/2addr v3, v4

    sget v4, Lcom/oppo/camera/panorama/f;->f:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/oppo/camera/panorama/f;->s:I

    iget-object v6, p0, Lcom/oppo/camera/panorama/f;->E:Landroid/graphics/Rect;

    .line 185
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sget v7, Lcom/oppo/camera/panorama/f;->g:I

    sub-int/2addr v6, v7

    div-int/2addr v6, v5

    sub-int/2addr v4, v6

    iget v5, p0, Lcom/oppo/camera/panorama/f;->u:I

    add-int/2addr v4, v5

    .line 182
    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_10
    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/oppo/camera/panorama/f;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 335
    iput-object v0, p0, Lcom/oppo/camera/panorama/f;->l:Landroid/graphics/Bitmap;

    :cond_0
    const/4 v0, 0x0

    .line 338
    iput v0, p0, Lcom/oppo/camera/panorama/f;->p:I

    .line 339
    iput v0, p0, Lcom/oppo/camera/panorama/f;->q:I

    .line 340
    iput v0, p0, Lcom/oppo/camera/panorama/f;->r:I

    .line 341
    iput v0, p0, Lcom/oppo/camera/panorama/f;->s:I

    .line 342
    iput v0, p0, Lcom/oppo/camera/panorama/f;->t:I

    .line 344
    iput v0, p0, Lcom/oppo/camera/panorama/f;->u:I

    .line 345
    iput v0, p0, Lcom/oppo/camera/panorama/f;->v:I

    .line 346
    iget-object v1, p0, Lcom/oppo/camera/panorama/f;->F:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 347
    iput-boolean v0, p0, Lcom/oppo/camera/panorama/f;->m:Z

    .line 349
    iput v0, p0, Lcom/oppo/camera/panorama/f;->w:I

    .line 350
    iput v0, p0, Lcom/oppo/camera/panorama/f;->x:I

    return-void
.end method

.method public d()V
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/oppo/camera/panorama/f;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 386
    iput-object v0, p0, Lcom/oppo/camera/panorama/f;->l:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 391
    iget-boolean v0, p0, Lcom/oppo/camera/panorama/f;->m:Z

    return v0
.end method

.method public getFrameSize()I
    .locals 1

    .line 372
    iget v0, p0, Lcom/oppo/camera/panorama/f;->v:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 324
    invoke-virtual {p0}, Lcom/oppo/camera/panorama/f;->b()V

    .line 325
    invoke-virtual {p0, p1}, Lcom/oppo/camera/panorama/f;->setDisplay(Landroid/graphics/Canvas;)V

    .line 327
    iget-boolean p1, p0, Lcom/oppo/camera/panorama/f;->m:Z

    if-eqz p1, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/oppo/camera/panorama/f;->invalidate()V

    :cond_0
    return-void
.end method

.method public setDisplay(Landroid/graphics/Canvas;)V
    .locals 4

    .line 268
    iget-object v0, p0, Lcom/oppo/camera/panorama/f;->C:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oppo/camera/panorama/f;->E:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 269
    iget-object v0, p0, Lcom/oppo/camera/panorama/f;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 271
    iget-object v0, p0, Lcom/oppo/camera/panorama/f;->J:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oppo/camera/panorama/f;->I:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 273
    iget-object v0, p0, Lcom/oppo/camera/panorama/f;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 274
    iget-object v1, p0, Lcom/oppo/camera/panorama/f;->F:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oppo/camera/panorama/f;->F:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/camera/panorama/f;->K:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 275
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 276
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 279
    :cond_0
    iget v0, p0, Lcom/oppo/camera/panorama/f;->o:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/panorama/f;->A:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/oppo/camera/panorama/f;->G:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 287
    iget-object v0, p0, Lcom/oppo/camera/panorama/f;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/panorama/f;->B:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/oppo/camera/panorama/f;->G:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 282
    iget-object v0, p0, Lcom/oppo/camera/panorama/f;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 294
    :goto_0
    iget-boolean p1, p0, Lcom/oppo/camera/panorama/f;->n:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/oppo/camera/panorama/f;->w:I

    if-nez p1, :cond_3

    .line 295
    iput-boolean v0, p0, Lcom/oppo/camera/panorama/f;->m:Z

    .line 296
    iput-boolean v0, p0, Lcom/oppo/camera/panorama/f;->n:Z

    const-string p1, "PanoramaProgressBar"

    const-string v2, "setDisplay, animate end"

    .line 297
    invoke-static {p1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/panorama/f;->K:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->reset()V

    .line 302
    iget-boolean p1, p0, Lcom/oppo/camera/panorama/f;->m:Z

    if-eqz p1, :cond_7

    .line 303
    iget-boolean p1, p0, Lcom/oppo/camera/panorama/f;->n:Z

    if-eqz p1, :cond_4

    .line 304
    iget p1, p0, Lcom/oppo/camera/panorama/f;->y:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/oppo/camera/panorama/f;->y:I

    goto :goto_1

    .line 306
    :cond_4
    iget p1, p0, Lcom/oppo/camera/panorama/f;->y:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/oppo/camera/panorama/f;->y:I

    .line 309
    :goto_1
    iget p1, p0, Lcom/oppo/camera/panorama/f;->y:I

    const/16 v1, 0xa

    if-lt p1, v1, :cond_5

    .line 310
    iput v1, p0, Lcom/oppo/camera/panorama/f;->y:I

    .line 311
    iget-object p1, p0, Lcom/oppo/camera/panorama/f;->K:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_2

    :cond_5
    if-gtz p1, :cond_6

    .line 313
    iput v0, p0, Lcom/oppo/camera/panorama/f;->y:I

    .line 314
    iget-object p1, p0, Lcom/oppo/camera/panorama/f;->K:Landroid/graphics/Paint;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_2

    .line 316
    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/panorama/f;->K:Landroid/graphics/Paint;

    sub-int/2addr v1, p1

    int-to-float p1, v1

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr p1, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_7
    :goto_2
    return-void
.end method

.method public setFrameSize(I)V
    .locals 2

    .line 376
    iput p1, p0, Lcom/oppo/camera/panorama/f;->v:I

    .line 378
    sget p1, Lcom/oppo/camera/panorama/f;->h:I

    if-nez p1, :cond_0

    .line 379
    sget p1, Lcom/oppo/camera/panorama/f;->a:I

    iget v0, p0, Lcom/oppo/camera/panorama/f;->v:I

    sget v1, Lcom/oppo/camera/panorama/f;->i:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    sget v0, Lcom/oppo/camera/panorama/f;->f:I

    add-int/2addr p1, v0

    sput p1, Lcom/oppo/camera/panorama/f;->h:I

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 356
    iput-object v0, p0, Lcom/oppo/camera/panorama/f;->l:Landroid/graphics/Bitmap;

    .line 359
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
