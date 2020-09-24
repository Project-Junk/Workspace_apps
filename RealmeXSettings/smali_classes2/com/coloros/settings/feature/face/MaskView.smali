.class public Lcom/coloros/settings/feature/face/MaskView;
.super Landroid/view/View;
.source "MaskView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/face/MaskView$a;
    }
.end annotation


# static fields
.field private static l:I

.field private static m:F


# instance fields
.field private A:Z

.field private B:[I

.field private C:Landroid/graphics/Rect;

.field private D:Z

.field a:I

.field b:I

.field c:I

.field d:I

.field e:Landroid/graphics/Bitmap;

.field f:Landroid/graphics/Rect;

.field g:Z

.field h:I

.field i:I

.field j:I

.field k:Landroid/view/Window;

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:I

.field private s:I

.field private t:Landroid/graphics/Paint;

.field private u:Landroid/graphics/Paint;

.field private v:Landroid/graphics/Paint;

.field private w:Landroid/graphics/Rect;

.field private x:Landroid/graphics/Rect;

.field private y:Lcom/coloros/settings/feature/face/MaskView$a;

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 85
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/MaskView;->g:Z

    const/4 v0, 0x2

    .line 79
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coloros/settings/feature/face/MaskView;->B:[I

    .line 86
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/face/MaskView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 70
    iput-boolean p2, p0, Lcom/coloros/settings/feature/face/MaskView;->g:Z

    const/4 p2, 0x2

    .line 79
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/coloros/settings/feature/face/MaskView;->B:[I

    .line 91
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/face/MaskView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(I)V
    .locals 5

    .line 148
    iget v0, p0, Lcom/coloros/settings/feature/face/MaskView;->s:I

    if-ge p1, v0, :cond_0

    return-void

    .line 151
    :cond_0
    iget v0, p0, Lcom/coloros/settings/feature/face/MaskView;->r:I

    if-le p1, v0, :cond_1

    return-void

    .line 155
    :cond_1
    iput p1, p0, Lcom/coloros/settings/feature/face/MaskView;->s:I

    .line 156
    iget-object v0, p0, Lcom/coloros/settings/feature/face/MaskView;->y:Lcom/coloros/settings/feature/face/MaskView$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/face/MaskView$a;->removeMessages(I)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    .line 158
    iput-boolean v1, p0, Lcom/coloros/settings/feature/face/MaskView;->A:Z

    goto :goto_0

    .line 160
    :cond_2
    iget v0, p0, Lcom/coloros/settings/feature/face/MaskView;->r:I

    const/4 v2, 0x0

    if-ge p1, v0, :cond_3

    .line 161
    iget-object v0, p0, Lcom/coloros/settings/feature/face/MaskView;->y:Lcom/coloros/settings/feature/face/MaskView$a;

    add-int/lit8 p1, p1, 0x2

    .line 162
    invoke-virtual {v0, v1, p1, v2}, Lcom/coloros/settings/feature/face/MaskView$a;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v3, 0x1e

    .line 161
    invoke-virtual {v0, p1, v3, v4}, Lcom/coloros/settings/feature/face/MaskView$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 164
    :cond_3
    iput-boolean v2, p0, Lcom/coloros/settings/feature/face/MaskView;->A:Z

    .line 166
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/MaskView;->invalidate()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .line 95
    invoke-static {p1}, Lcom/coloros/settings/utils/q;->e(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/face/MaskView;->D:Z

    .line 96
    iget-object p1, p0, Lcom/coloros/settings/feature/face/MaskView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 97
    iget-boolean v0, p0, Lcom/coloros/settings/feature/face/MaskView;->D:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0704d9

    goto :goto_0

    :cond_0
    const v0, 0x7f0704db

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/coloros/settings/feature/face/MaskView;->l:I

    .line 98
    iget-boolean v0, p0, Lcom/coloros/settings/feature/face/MaskView;->D:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0704d8

    goto :goto_1

    :cond_1
    const v0, 0x7f0704da

    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/face/MaskView;->z:I

    const v0, 0x7f0704d7

    .line 99
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/face/MaskView;->j:I

    .line 101
    sget p1, Lcom/coloros/settings/feature/face/MaskView;->l:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    sput p1, Lcom/coloros/settings/feature/face/MaskView;->m:F

    .line 103
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/face/MaskView;->t:Landroid/graphics/Paint;

    .line 104
    iget-object p1, p0, Lcom/coloros/settings/feature/face/MaskView;->t:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    iget-object p1, p0, Lcom/coloros/settings/feature/face/MaskView;->t:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 107
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/face/MaskView;->u:Landroid/graphics/Paint;

    .line 108
    iget-object p1, p0, Lcom/coloros/settings/feature/face/MaskView;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 109
    iget-object p1, p0, Lcom/coloros/settings/feature/face/MaskView;->u:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    iget-object p1, p0, Lcom/coloros/settings/feature/face/MaskView;->u:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 111
    iget-object p1, p0, Lcom/coloros/settings/feature/face/MaskView;->u:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 112
    iget-object p1, p0, Lcom/coloros/settings/feature/face/MaskView;->u:Landroid/graphics/Paint;

    sget v1, Lcom/coloros/settings/feature/face/MaskView;->l:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 113
    iget-object p1, p0, Lcom/coloros/settings/feature/face/MaskView;->u:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coloros/settings/feature/face/MaskView;->mContext:Landroid/content/Context;

    const v2, 0x7f0600e6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/face/MaskView;->v:Landroid/graphics/Paint;

    .line 116
    iget-object p1, p0, Lcom/coloros/settings/feature/face/MaskView;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 117
    iget-object p1, p0, Lcom/coloros/settings/feature/face/MaskView;->v:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 118
    iget-object p1, p0, Lcom/coloros/settings/feature/face/MaskView;->v:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/MaskView;->mContext:Landroid/content/Context;

    const v1, 0x7f0600e5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/face/MaskView;->f:Landroid/graphics/Rect;

    .line 121
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/face/MaskView;->w:Landroid/graphics/Rect;

    .line 122
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/face/MaskView;->x:Landroid/graphics/Rect;

    .line 123
    new-instance p1, Lcom/coloros/settings/feature/face/MaskView$a;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/face/MaskView$a;-><init>(Lcom/coloros/settings/feature/face/MaskView;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/face/MaskView;->y:Lcom/coloros/settings/feature/face/MaskView$a;

    .line 124
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/face/MaskView;->C:Landroid/graphics/Rect;

    .line 125
    iget-boolean p1, p0, Lcom/coloros/settings/feature/face/MaskView;->D:Z

    if-nez p1, :cond_2

    .line 126
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/MaskView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f080610

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/face/MaskView;->e:Landroid/graphics/Bitmap;

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/face/MaskView;Landroid/os/Message;)V
    .locals 2

    .line 1378
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessage what = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg.arg1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MaskView"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1384
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/face/MaskView;->a(I)V

    :goto_0
    return-void

    .line 1381
    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/face/MaskView;->a(I)V

    return-void
.end method

.method private getLastGaussFrame()Landroid/graphics/Bitmap;
    .locals 5

    .line 354
    iget-object v0, p0, Lcom/coloros/settings/feature/face/MaskView;->C:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/coloros/settings/feature/face/MaskView;->C:Landroid/graphics/Rect;

    .line 355
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x0

    .line 354
    invoke-static {v0, v1, v2, v3, v3}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 356
    iget-object v1, p0, Lcom/coloros/settings/feature/face/MaskView;->k:Landroid/view/Window;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v4, 0x2000

    .line 357
    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1347
    iput-object v2, p0, Lcom/coloros/settings/feature/face/MaskView;->k:Landroid/view/Window;

    :cond_0
    if-eqz v0, :cond_1

    .line 362
    iget-boolean v1, p0, Lcom/coloros/settings/feature/face/MaskView;->D:Z

    if-eqz v1, :cond_2

    .line 363
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 364
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 363
    invoke-static {v0, v3, v3, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 365
    invoke-static {}, Lcom/oppo/launcher/graphic/GaussianBlur;->getInstance()Lcom/oppo/launcher/graphic/GaussianBlur;

    move-result-object v1

    const/16 v2, 0x19

    const v3, 0x3f4ccccd    # 0.8f

    const/4 v4, 0x1

    .line 368
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/oppo/launcher/graphic/GaussianBlur;->generateGaussianBitmap(Landroid/graphics/Bitmap;IFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getShownRect()Landroid/graphics/Rect;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/coloros/settings/feature/face/MaskView;->w:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    .line 259
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 260
    iget v1, v0, Lcom/coloros/settings/feature/face/MaskView;->a:I

    iget v2, v0, Lcom/coloros/settings/feature/face/MaskView;->c:I

    add-int v3, v1, v2

    const/4 v11, 0x1

    shr-int/2addr v3, v11

    int-to-float v12, v3

    .line 261
    iget v3, v0, Lcom/coloros/settings/feature/face/MaskView;->b:I

    iget v4, v0, Lcom/coloros/settings/feature/face/MaskView;->d:I

    add-int/2addr v3, v4

    shr-int/2addr v3, v11

    int-to-float v13, v3

    sub-int/2addr v2, v1

    shr-int/lit8 v1, v2, 0x1

    int-to-float v14, v1

    .line 263
    iget-boolean v1, v0, Lcom/coloros/settings/feature/face/MaskView;->A:Z

    const/4 v15, 0x0

    if-nez v1, :cond_1

    .line 264
    iget-boolean v1, v0, Lcom/coloros/settings/feature/face/MaskView;->D:Z

    if-nez v1, :cond_0

    .line 265
    iget-object v1, v0, Lcom/coloros/settings/feature/face/MaskView;->x:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/coloros/settings/feature/face/MaskView;->t:Landroid/graphics/Paint;

    invoke-virtual {v10, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 266
    iget-object v1, v0, Lcom/coloros/settings/feature/face/MaskView;->e:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lcom/coloros/settings/feature/face/MaskView;->x:Landroid/graphics/Rect;

    invoke-virtual {v10, v1, v15, v2, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 268
    :cond_0
    iget-object v1, v0, Lcom/coloros/settings/feature/face/MaskView;->t:Landroid/graphics/Paint;

    invoke-virtual {v10, v12, v13, v14, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 272
    :cond_1
    :goto_0
    iget v1, v0, Lcom/coloros/settings/feature/face/MaskView;->s:I

    mul-int/lit16 v1, v1, 0x168

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float v7, v1, v2

    .line 273
    iget-boolean v1, v0, Lcom/coloros/settings/feature/face/MaskView;->D:Z

    if-eqz v1, :cond_4

    const v1, -0xf4a301

    .line 1286
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 1287
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 1288
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const v5, -0xea1b49

    .line 1289
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v6

    .line 1290
    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v8

    .line 1291
    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    sub-int/2addr v6, v2

    int-to-float v6, v6

    const/high16 v16, 0x42040000    # 33.0f

    div-float v6, v6, v16

    sub-int/2addr v8, v3

    int-to-float v8, v8

    div-float v8, v8, v16

    sub-int/2addr v5, v4

    int-to-float v5, v5

    div-float v5, v5, v16

    const/16 v9, 0x64

    .line 1296
    new-array v11, v9, [I

    .line 1300
    iget v15, v0, Lcom/coloros/settings/feature/face/MaskView;->s:I

    add-int/lit8 v15, v15, 0x2a

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v9, :cond_3

    add-int v17, v1, v15

    .line 1302
    rem-int/lit8 v17, v17, 0x64

    const/16 v9, 0x21

    if-gt v1, v9, :cond_2

    .line 1304
    rem-int/lit8 v9, v1, 0x21

    int-to-float v9, v9

    move/from16 v18, v15

    mul-float v15, v6, v9

    float-to-int v15, v15

    add-int/2addr v15, v2

    move/from16 v19, v2

    mul-float v2, v8, v9

    float-to-int v2, v2

    add-int/2addr v2, v3

    mul-float/2addr v9, v5

    float-to-int v9, v9

    add-int/2addr v9, v4

    move/from16 v20, v3

    const/16 v3, 0xff

    .line 1307
    invoke-static {v3, v15, v2, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v11, v17

    const v2, -0xf4a301

    goto :goto_2

    :cond_2
    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v18, v15

    const v2, -0xf4a301

    .line 1309
    aput v2, v11, v17

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move/from16 v15, v18

    move/from16 v2, v19

    move/from16 v3, v20

    const/16 v9, 0x64

    goto :goto_1

    .line 1312
    :cond_3
    new-instance v1, Landroid/graphics/SweepGradient;

    const/4 v2, 0x0

    invoke-direct {v1, v12, v13, v11, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 1313
    iget-object v2, v0, Lcom/coloros/settings/feature/face/MaskView;->u:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 276
    :cond_4
    iget v2, v0, Lcom/coloros/settings/feature/face/MaskView;->n:F

    iget v3, v0, Lcom/coloros/settings/feature/face/MaskView;->o:F

    iget v4, v0, Lcom/coloros/settings/feature/face/MaskView;->p:F

    iget v5, v0, Lcom/coloros/settings/feature/face/MaskView;->q:F

    const/high16 v6, -0x3d4c0000    # -90.0f

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/coloros/settings/feature/face/MaskView;->u:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    const/4 v11, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 278
    iget-boolean v1, v0, Lcom/coloros/settings/feature/face/MaskView;->A:Z

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Lcom/coloros/settings/feature/face/MaskView;->D:Z

    if-eqz v1, :cond_6

    .line 279
    invoke-direct/range {p0 .. p0}, Lcom/coloros/settings/feature/face/MaskView;->getLastGaussFrame()Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "MaskView"

    if-eqz v1, :cond_5

    .line 1318
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1319
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1320
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v11, v11, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1321
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1322
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1324
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    const/4 v7, 0x1

    .line 1325
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1326
    invoke-virtual {v4, v14, v14, v14, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1328
    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v8, 0x0

    .line 1329
    invoke-virtual {v4, v1, v8, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1331
    invoke-virtual {v6}, Landroid/graphics/Paint;->reset()V

    .line 1332
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1333
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1334
    iget v1, v0, Lcom/coloros/settings/feature/face/MaskView;->a:I

    int-to-float v1, v1

    iget v4, v0, Lcom/coloros/settings/feature/face/MaskView;->b:I

    int-to-float v4, v4

    invoke-virtual {v10, v3, v1, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const-string v1, "draw gaussBitmap end"

    .line 1336
    invoke-static {v2, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v1, "draw gaussBitmap null end"

    .line 1338
    invoke-static {v2, v1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :goto_3
    iget-object v1, v0, Lcom/coloros/settings/feature/face/MaskView;->v:Landroid/graphics/Paint;

    invoke-virtual {v10, v12, v13, v14, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_6
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 171
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 173
    iget-object p2, p0, Lcom/coloros/settings/feature/face/MaskView;->B:[I

    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/face/MaskView;->getLocationOnScreen([I)V

    .line 175
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "onLayout top = "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", location = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/coloros/settings/feature/face/MaskView;->B:[I

    const/4 p4, 0x0

    aget p3, p3, p4

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/coloros/settings/feature/face/MaskView;->B:[I

    const/4 p5, 0x1

    aget p3, p3, p5

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "MaskView"

    invoke-static {p3, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 1182
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/MaskView;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/face/MaskView;->i:I

    .line 1183
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/MaskView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/face/MaskView;->h:I

    .line 1187
    iget p1, p0, Lcom/coloros/settings/feature/face/MaskView;->i:I

    div-int/lit8 p2, p1, 0x6

    .line 1188
    iget v0, p0, Lcom/coloros/settings/feature/face/MaskView;->z:I

    sub-int v1, p2, v0

    .line 1192
    iput v1, p0, Lcom/coloros/settings/feature/face/MaskView;->a:I

    .line 1193
    iget-boolean v1, p0, Lcom/coloros/settings/feature/face/MaskView;->D:Z

    if-eqz v1, :cond_0

    mul-int/lit8 p1, p2, 0x2

    sub-int/2addr p1, v0

    .line 1194
    iput p1, p0, Lcom/coloros/settings/feature/face/MaskView;->b:I

    mul-int/lit8 p1, p2, 0x5

    add-int/2addr p1, v0

    .line 1195
    iput p1, p0, Lcom/coloros/settings/feature/face/MaskView;->c:I

    mul-int/lit8 p2, p2, 0x6

    add-int/2addr p2, v0

    .line 1196
    iput p2, p0, Lcom/coloros/settings/feature/face/MaskView;->d:I

    goto :goto_0

    .line 1200
    :cond_0
    div-int/lit8 p1, p1, 0xa

    sub-int p2, p1, v0

    .line 1203
    iput p2, p0, Lcom/coloros/settings/feature/face/MaskView;->a:I

    .line 1204
    iget p2, p0, Lcom/coloros/settings/feature/face/MaskView;->h:I

    div-int/lit8 v1, p2, 0x2

    mul-int/lit8 v2, p1, 0x4

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/coloros/settings/feature/face/MaskView;->b:I

    mul-int/lit8 p1, p1, 0x9

    add-int/2addr p1, v0

    .line 1205
    iput p1, p0, Lcom/coloros/settings/feature/face/MaskView;->c:I

    .line 1206
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v2

    add-int/2addr p2, v0

    iput p2, p0, Lcom/coloros/settings/feature/face/MaskView;->d:I

    .line 1209
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/face/MaskView;->x:Landroid/graphics/Rect;

    iget p2, p0, Lcom/coloros/settings/feature/face/MaskView;->h:I

    iget v0, p0, Lcom/coloros/settings/feature/face/MaskView;->i:I

    sub-int v1, p2, v0

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v0

    invoke-virtual {p1, p4, v1, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1210
    iget-object p1, p0, Lcom/coloros/settings/feature/face/MaskView;->w:Landroid/graphics/Rect;

    iget p2, p0, Lcom/coloros/settings/feature/face/MaskView;->a:I

    iget v0, p0, Lcom/coloros/settings/feature/face/MaskView;->b:I

    iget v1, p0, Lcom/coloros/settings/feature/face/MaskView;->c:I

    iget v2, p0, Lcom/coloros/settings/feature/face/MaskView;->d:I

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1211
    iget-object p1, p0, Lcom/coloros/settings/feature/face/MaskView;->C:Landroid/graphics/Rect;

    iget p2, p0, Lcom/coloros/settings/feature/face/MaskView;->a:I

    iget-object v0, p0, Lcom/coloros/settings/feature/face/MaskView;->B:[I

    aget v1, v0, p4

    add-int/2addr p2, v1

    iget v1, p0, Lcom/coloros/settings/feature/face/MaskView;->b:I

    aget v2, v0, p5

    add-int/2addr v1, v2

    iget v2, p0, Lcom/coloros/settings/feature/face/MaskView;->c:I

    aget p4, v0, p4

    add-int/2addr v2, p4

    iget p4, p0, Lcom/coloros/settings/feature/face/MaskView;->d:I

    aget p5, v0, p5

    add-int/2addr p4, p5

    invoke-virtual {p1, p2, v1, v2, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1214
    iget p1, p0, Lcom/coloros/settings/feature/face/MaskView;->a:I

    int-to-float p1, p1

    sget p2, Lcom/coloros/settings/feature/face/MaskView;->m:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/coloros/settings/feature/face/MaskView;->n:F

    .line 1215
    iget p1, p0, Lcom/coloros/settings/feature/face/MaskView;->b:I

    int-to-float p1, p1

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/coloros/settings/feature/face/MaskView;->o:F

    .line 1216
    iget p1, p0, Lcom/coloros/settings/feature/face/MaskView;->c:I

    int-to-float p1, p1

    add-float/2addr p1, p2

    iput p1, p0, Lcom/coloros/settings/feature/face/MaskView;->p:F

    .line 1217
    iget p1, p0, Lcom/coloros/settings/feature/face/MaskView;->d:I

    int-to-float p1, p1

    add-float/2addr p1, p2

    iput p1, p0, Lcom/coloros/settings/feature/face/MaskView;->q:F

    .line 1219
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "initMaskArea mTop = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/coloros/settings/feature/face/MaskView;->b:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mBottom = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/coloros/settings/feature/face/MaskView;->d:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mLeft = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/coloros/settings/feature/face/MaskView;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mRight = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/coloros/settings/feature/face/MaskView;->c:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/coloros/settings/feature/face/MaskView;->w:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setProgress(I)V
    .locals 4

    .line 137
    iput p1, p0, Lcom/coloros/settings/feature/face/MaskView;->r:I

    const/4 v0, 0x0

    if-lez p1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/coloros/settings/feature/face/MaskView;->y:Lcom/coloros/settings/feature/face/MaskView$a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/coloros/settings/feature/face/MaskView$a;->removeMessages(I)V

    .line 140
    iget-object v1, p0, Lcom/coloros/settings/feature/face/MaskView;->y:Lcom/coloros/settings/feature/face/MaskView$a;

    add-int/lit8 p1, p1, -0x14

    add-int/lit8 p1, p1, 0x2

    .line 141
    invoke-virtual {v1, v2, p1, v0}, Lcom/coloros/settings/feature/face/MaskView$a;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v2, 0x0

    .line 140
    invoke-virtual {v1, p1, v2, v3}, Lcom/coloros/settings/feature/face/MaskView$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 143
    :cond_0
    iput v0, p0, Lcom/coloros/settings/feature/face/MaskView;->s:I

    return-void
.end method
