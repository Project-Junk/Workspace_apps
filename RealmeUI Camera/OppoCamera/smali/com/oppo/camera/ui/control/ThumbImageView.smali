.class public Lcom/oppo/camera/ui/control/ThumbImageView;
.super Lcom/oppo/camera/ui/j;
.source "ThumbImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/control/ThumbImageView$a;
    }
.end annotation


# static fields
.field public static a:I


# instance fields
.field private final b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:J

.field private j:J

.field private k:F

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Landroid/graphics/Bitmap;

.field private p:Landroid/graphics/Bitmap;

.field private q:Landroid/graphics/Bitmap;

.field private r:Landroid/graphics/Rect;

.field private s:Landroid/graphics/Rect;

.field private t:Landroid/graphics/Rect;

.field private u:Landroid/graphics/Rect;

.field private v:Landroid/graphics/drawable/Drawable;

.field private w:Landroid/graphics/drawable/Drawable;

.field private x:Lcom/a/a/f;

.field private y:Lcom/oppo/camera/ui/control/ThumbImageView$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/ui/control/ThumbImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/ui/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 63
    iput p2, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->c:I

    .line 64
    iput p2, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->d:I

    .line 65
    iput p2, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->e:I

    .line 66
    iput p2, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->f:I

    .line 67
    iput p2, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->g:I

    .line 68
    iput p2, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->h:I

    const-wide/16 v0, 0x0

    .line 70
    iput-wide v0, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->i:J

    .line 71
    iput-wide v0, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->j:J

    const/high16 v0, 0x3f000000    # 0.5f

    .line 72
    iput v0, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->k:F

    .line 74
    iput-boolean p2, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->l:Z

    .line 75
    iput-boolean p2, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->m:Z

    .line 76
    iput-boolean p2, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->n:Z

    const/4 p2, 0x0

    .line 78
    iput-object p2, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->o:Landroid/graphics/Bitmap;

    .line 79
    iput-object p2, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->p:Landroid/graphics/Bitmap;

    .line 80
    iput-object p2, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->q:Landroid/graphics/Bitmap;

    .line 82
    iput-object p2, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->r:Landroid/graphics/Rect;

    .line 83
    iput-object p2, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->s:Landroid/graphics/Rect;

    .line 84
    iput-object p2, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->t:Landroid/graphics/Rect;

    .line 85
    iput-object p2, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->u:Landroid/graphics/Rect;

    .line 86
    iput-object p2, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->v:Landroid/graphics/drawable/Drawable;

    .line 87
    iput-object p2, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->w:Landroid/graphics/drawable/Drawable;

    .line 89
    iput-object p2, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->x:Lcom/a/a/f;

    .line 90
    iput-object p2, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->y:Lcom/oppo/camera/ui/control/ThumbImageView$a;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06041e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->b:I

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0703db

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->v:Landroid/graphics/drawable/Drawable;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06041f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/oppo/camera/ui/control/ThumbImageView;->a:I

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/control/ThumbImageView;)F
    .locals 0

    .line 46
    iget p0, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->k:F

    return p0
.end method

.method static synthetic a(Lcom/oppo/camera/ui/control/ThumbImageView;F)F
    .locals 0

    .line 46
    iput p1, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->k:F

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/ui/control/ThumbImageView;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->h:I

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/ui/control/ThumbImageView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->w:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private b()V
    .locals 6

    const-string v0, "ThumbImageView"

    const-string v1, "startNewThumbAnimation()"

    .line 347
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 349
    iput v0, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->h:I

    const/4 v1, 0x0

    .line 350
    iput v1, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->f:I

    .line 351
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/ThumbImageView;->getPaddingLeft()I

    move-result v2

    .line 352
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/ThumbImageView;->getWidth()I

    move-result v3

    mul-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    .line 353
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/ThumbImageView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v4

    .line 355
    iget-object v4, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->x:Lcom/a/a/f;

    if-nez v4, :cond_0

    .line 356
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/ThumbImageView;->c()V

    .line 359
    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v1, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->u:Landroid/graphics/Rect;

    .line 360
    new-instance v1, Landroid/graphics/Rect;

    div-int/2addr v3, v0

    add-int/2addr v3, v2

    div-int/2addr v5, v0

    add-int/2addr v2, v5

    invoke-direct {v1, v3, v2, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->t:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 361
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/control/ThumbImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 363
    iget-object v0, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->x:Lcom/a/a/f;

    const-wide v1, 0x3fd3333340000000L    # 0.30000001192092896

    invoke-virtual {v0, v1, v2}, Lcom/a/a/f;->a(D)Lcom/a/a/f;

    move-result-object v0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v0, v1, v2}, Lcom/a/a/f;->b(D)Lcom/a/a/f;

    return-void
.end method

.method private c()V
    .locals 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x4044000000000000L    # 40.0

    .line 367
    invoke-static {v0, v1, v2, v3}, Lcom/a/a/g;->b(DD)Lcom/a/a/g;

    move-result-object v0

    .line 369
    invoke-static {}, Lcom/a/a/j;->c()Lcom/a/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/j;->b()Lcom/a/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/f;->a(Lcom/a/a/g;)Lcom/a/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->x:Lcom/a/a/f;

    .line 370
    iget-object v0, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->x:Lcom/a/a/f;

    new-instance v1, Lcom/oppo/camera/ui/control/ThumbImageView$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oppo/camera/ui/control/ThumbImageView$a;-><init>(Lcom/oppo/camera/ui/control/ThumbImageView;Lcom/oppo/camera/ui/control/ThumbImageView$1;)V

    invoke-virtual {v0, v1}, Lcom/a/a/f;->a(Lcom/a/a/h;)Lcom/a/a/f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->o:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 385
    iput-object v1, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->o:Landroid/graphics/Bitmap;

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->p:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 389
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 390
    iput-object v1, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->p:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public a(IZ)V
    .locals 2

    if-ltz p1, :cond_0

    .line 112
    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_0
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    .line 115
    :goto_0
    iget v0, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->d:I

    if-ne p1, v0, :cond_1

    return-void

    .line 119
    :cond_1
    iput p1, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->d:I

    .line 121
    iget p1, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->h:I

    if-eqz p1, :cond_2

    return-void

    :cond_2
    if-eqz p2, :cond_6

    .line 126
    iget p1, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->c:I

    iput p1, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->e:I

    .line 127
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->i:J

    .line 129
    iget p1, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->d:I

    iget p2, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->c:I

    sub-int/2addr p1, p2

    if-ltz p1, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit16 p1, p1, 0x168

    :goto_1
    const/16 p2, 0xb4

    if-le p1, p2, :cond_4

    add-int/lit16 p1, p1, -0x168

    :cond_4
    if-ltz p1, :cond_5

    const/4 p2, 0x1

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    .line 133
    :goto_2
    iput-boolean p2, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->l:Z

    .line 134
    iget-wide v0, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->i:J

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    div-int/lit16 p1, p1, 0x10e

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->j:J

    goto :goto_3

    .line 136
    :cond_6
    iget p1, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->d:I

    iput p1, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->c:I

    .line 139
    :goto_3
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/ThumbImageView;->invalidate()V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;ZZ)V
    .locals 2

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBitmap, mAnimationState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bitmap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isdefault: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mbDefaultBitmap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbImageView"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-boolean v0, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->n:Z

    const/4 v1, 0x0

    .line 300
    iput-boolean v1, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->m:Z

    .line 301
    iput-boolean p3, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->n:Z

    .line 303
    iget p3, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->h:I

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 304
    iput-boolean p2, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->m:Z

    .line 305
    iput-object p1, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->q:Landroid/graphics/Bitmap;

    return-void

    .line 309
    :cond_0
    iget-object p3, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->o:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 310
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 311
    iput-object v1, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->o:Landroid/graphics/Bitmap;

    :cond_1
    if-nez p1, :cond_2

    .line 315
    iget-object p2, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->p:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->o:Landroid/graphics/Bitmap;

    .line 316
    iput-object p1, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->p:Landroid/graphics/Bitmap;

    .line 317
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/control/ThumbImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 321
    iget-boolean p3, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->n:Z

    if-nez p3, :cond_3

    .line 322
    iget-object p3, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p3}, Lcom/oppo/camera/ui/control/ThumbImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 325
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/ThumbImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 326
    iget v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/ThumbImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/ThumbImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 327
    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/ThumbImageView;->getPaddingTop()I

    move-result v1

    sub-int/2addr p3, v1

    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/ThumbImageView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p3, v1

    .line 329
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v1, p3, :cond_5

    .line 330
    :cond_4
    invoke-static {p1, v0, p3}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 333
    :cond_5
    iget p3, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->b:I

    invoke-static {p1, p3}, Lcom/oppo/camera/ui/control/e;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 335
    iget-object p3, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->p:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->o:Landroid/graphics/Bitmap;

    .line 336
    iput-object p1, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->p:Landroid/graphics/Bitmap;

    .line 337
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/ThumbImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget-object v0, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->p:Landroid/graphics/Bitmap;

    invoke-direct {p1, p3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->w:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_6

    .line 339
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/ThumbImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    .line 340
    invoke-direct {p0}, Lcom/oppo/camera/ui/control/ThumbImageView;->b()V

    goto :goto_0

    .line 342
    :cond_6
    iget-object p1, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/control/ThumbImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method protected getDegree()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->d:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 144
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/ThumbImageView;->getPaddingLeft()I

    move-result v0

    .line 145
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/ThumbImageView;->getPaddingTop()I

    move-result v1

    .line 146
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/ThumbImageView;->getWidth()I

    move-result v2

    mul-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    .line 147
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/ThumbImageView;->getHeight()I

    move-result v3

    mul-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    .line 149
    iget-boolean v4, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->n:Z

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v4, :cond_9

    .line 150
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/ThumbImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v4, "ThumbImageView"

    if-nez v1, :cond_0

    const-string p1, "ondraw(), drawable is null 1 ,so return "

    .line 153
    invoke-static {v4, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 157
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 158
    iget v7, v6, Landroid/graphics/Rect;->right:I

    iget v8, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    .line 159
    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v6

    if-eqz v7, :cond_8

    if-nez v8, :cond_1

    goto/16 :goto_3

    .line 166
    :cond_1
    iget v4, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->c:I

    iget v6, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->d:I

    if-eq v4, v6, :cond_5

    .line 167
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v9

    .line 169
    iget-wide v11, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->j:J

    cmp-long v4, v9, v11

    if-gez v4, :cond_4

    .line 170
    iget-wide v11, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->i:J

    sub-long/2addr v9, v11

    long-to-int v4, v9

    .line 171
    iget v6, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->e:I

    iget-boolean v9, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->l:Z

    if-eqz v9, :cond_2

    goto :goto_0

    :cond_2
    neg-int v4, v4

    :goto_0
    mul-int/lit16 v4, v4, 0x10e

    div-int/lit16 v4, v4, 0x3e8

    add-int/2addr v6, v4

    if-ltz v6, :cond_3

    .line 173
    rem-int/lit16 v6, v6, 0x168

    goto :goto_1

    :cond_3
    rem-int/lit16 v6, v6, 0x168

    add-int/lit16 v6, v6, 0x168

    .line 175
    :goto_1
    iput v6, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->c:I

    .line 176
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/ThumbImageView;->invalidate()V

    goto :goto_2

    .line 178
    :cond_4
    iget v4, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->d:I

    iput v4, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->c:I

    .line 182
    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v4

    .line 185
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/ThumbImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v6

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v9, :cond_7

    if-lt v2, v7, :cond_6

    if-ge v3, v8, :cond_7

    :cond_6
    int-to-float v6, v2

    int-to-float v7, v7

    div-float v7, v6, v7

    int-to-float v9, v3

    int-to-float v8, v8

    div-float v8, v9, v8

    .line 186
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    mul-float/2addr v6, v5

    mul-float/2addr v9, v5

    .line 187
    invoke-virtual {p1, v7, v7, v6, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_7
    int-to-float v6, v0

    int-to-float v2, v2

    mul-float/2addr v2, v5

    add-float v7, v6, v2

    int-to-float v3, v3

    mul-float/2addr v3, v5

    add-float/2addr v6, v3

    .line 190
    invoke-virtual {p1, v7, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 191
    iget v5, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->c:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v0, v0

    int-to-float v0, v0

    sub-float v2, v0, v2

    sub-float/2addr v0, v3

    .line 192
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 193
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 194
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_8

    :cond_8
    :goto_3
    const-string p1, "ondraw w and h is zero,so return "

    .line 162
    invoke-static {v4, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 196
    :cond_9
    iget v4, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->h:I

    const/4 v6, 0x0

    if-nez v4, :cond_13

    .line 197
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/ThumbImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_a

    return-void

    .line 203
    :cond_a
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 204
    iget v8, v7, Landroid/graphics/Rect;->right:I

    iget v9, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    .line 205
    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v7

    if-eqz v8, :cond_12

    if-nez v9, :cond_b

    goto/16 :goto_7

    .line 211
    :cond_b
    iget v7, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->c:I

    iget v10, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->d:I

    if-eq v7, v10, :cond_f

    .line 212
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v10

    .line 214
    iget-wide v12, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->j:J

    cmp-long v7, v10, v12

    if-gez v7, :cond_e

    .line 215
    iget-wide v12, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->i:J

    sub-long/2addr v10, v12

    long-to-int v7, v10

    .line 216
    iget v10, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->e:I

    iget-boolean v11, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->l:Z

    if-eqz v11, :cond_c

    goto :goto_4

    :cond_c
    neg-int v7, v7

    :goto_4
    mul-int/lit16 v7, v7, 0x10e

    div-int/lit16 v7, v7, 0x3e8

    add-int/2addr v10, v7

    if-ltz v10, :cond_d

    .line 218
    rem-int/lit16 v10, v10, 0x168

    goto :goto_5

    :cond_d
    rem-int/lit16 v10, v10, 0x168

    add-int/lit16 v10, v10, 0x168

    .line 220
    :goto_5
    iput v10, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->c:I

    .line 221
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/ThumbImageView;->invalidate()V

    goto :goto_6

    .line 223
    :cond_e
    iget v7, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->d:I

    iput v7, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->c:I

    .line 227
    :cond_f
    :goto_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v7

    .line 230
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/ThumbImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v10

    sget-object v11, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v10, v11, :cond_11

    if-lt v2, v8, :cond_10

    if-ge v3, v9, :cond_11

    :cond_10
    int-to-float v10, v2

    int-to-float v8, v8

    div-float v8, v10, v8

    int-to-float v11, v3

    int-to-float v9, v9

    div-float v9, v11, v9

    .line 231
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    mul-float/2addr v10, v5

    mul-float/2addr v11, v5

    .line 232
    invoke-virtual {p1, v8, v8, v10, v11}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_11
    int-to-float v0, v0

    int-to-float v8, v2

    mul-float/2addr v8, v5

    add-float/2addr v0, v8

    int-to-float v1, v1

    int-to-float v8, v3

    mul-float/2addr v8, v5

    add-float/2addr v1, v8

    .line 235
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 237
    iget v0, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->c:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, v5

    neg-int v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, v5

    .line 238
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 239
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x3

    invoke-direct {v0, v6, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 240
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 241
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_8

    :cond_12
    :goto_7
    return-void

    :cond_13
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-ne v4, v8, :cond_17

    int-to-float v4, v0

    int-to-float v10, v2

    mul-float/2addr v10, v5

    add-float/2addr v4, v10

    int-to-float v11, v1

    int-to-float v3, v3

    mul-float/2addr v3, v5

    add-float/2addr v11, v3

    .line 243
    invoke-virtual {p1, v4, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 245
    iget v4, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->c:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v4, v0

    int-to-float v4, v4

    sub-float/2addr v4, v10

    neg-int v1, v1

    int-to-float v1, v1

    sub-float/2addr v1, v3

    .line 246
    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 249
    iget-object v1, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->o:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_14

    .line 250
    iget-object v3, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->s:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->r:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v3, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 253
    :cond_14
    iget-object p1, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->r:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    div-int/2addr v2, v9

    add-int/2addr v0, v2

    if-lt p1, v0, :cond_16

    .line 254
    iget p1, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->f:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->f:I

    .line 256
    iget p1, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->f:I

    const/16 v0, 0x14

    if-le p1, v0, :cond_15

    .line 257
    iput v6, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->h:I

    .line 259
    iget-boolean p1, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->m:Z

    if-eqz p1, :cond_19

    .line 260
    iget-object p1, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->q:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v8, v6}, Lcom/oppo/camera/ui/control/ThumbImageView;->a(Landroid/graphics/Bitmap;ZZ)V

    goto :goto_8

    .line 263
    :cond_15
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/ThumbImageView;->invalidate()V

    goto :goto_8

    .line 266
    :cond_16
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/ThumbImageView;->invalidate()V

    goto :goto_8

    :cond_17
    if-ne v4, v9, :cond_19

    .line 270
    iget v4, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->f:I

    if-ge v4, v9, :cond_18

    add-int/2addr v4, v8

    .line 271
    iput v4, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->f:I

    .line 272
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/ThumbImageView;->invalidate()V

    return-void

    :cond_18
    int-to-float v4, v0

    int-to-float v6, v2

    mul-float v8, v6, v5

    add-float/2addr v4, v8

    int-to-float v10, v1

    int-to-float v11, v3

    mul-float/2addr v11, v5

    add-float/2addr v10, v11

    .line 276
    invoke-virtual {p1, v4, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 278
    iget v4, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->c:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v4, v0

    int-to-float v4, v4

    sub-float/2addr v4, v8

    neg-int v5, v1

    int-to-float v5, v5

    sub-float/2addr v5, v11

    .line 279
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 282
    iget v4, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->k:F

    mul-float/2addr v6, v4

    float-to-int v4, v6

    iput v4, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->g:I

    .line 283
    iget-object v4, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->t:Landroid/graphics/Rect;

    div-int/2addr v2, v9

    add-int/2addr v0, v2

    iget v2, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->g:I

    sub-int v5, v0, v2

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 284
    div-int/2addr v3, v9

    add-int/2addr v1, v3

    sub-int v3, v1, v2

    iput v3, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    .line 285
    iput v0, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    .line 286
    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 288
    iget-object v0, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->p:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_19

    .line 289
    iget-object v1, p0, Lcom/oppo/camera/ui/control/ThumbImageView;->u:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_19
    :goto_8
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setVisibility(I)V
    .locals 0

    .line 375
    invoke-super {p0, p1}, Lcom/oppo/camera/ui/j;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/oppo/camera/ui/control/ThumbImageView;->invalidate()V

    :cond_0
    return-void
.end method