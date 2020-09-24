.class public Lcom/coloros/settings/feature/face/OriginMaskView;
.super Landroid/view/View;
.source "OriginMaskView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/face/OriginMaskView$a;
    }
.end annotation


# static fields
.field private static b:I

.field private static c:F


# instance fields
.field private A:Landroid/graphics/Rect;

.field private B:Z

.field a:Landroid/view/Window;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:I

.field private m:I

.field private n:Landroid/graphics/Paint;

.field private o:Landroid/graphics/Paint;

.field private p:Landroid/graphics/Paint;

.field private q:Landroid/graphics/Rect;

.field private r:Landroid/graphics/Rect;

.field private s:Lcom/coloros/settings/feature/face/OriginMaskView$a;

.field private t:Z

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Z

.field private z:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 82
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->t:Z

    const/4 v0, 0x2

    .line 76
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->z:[I

    .line 83
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/face/OriginMaskView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 67
    iput-boolean p2, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->t:Z

    const/4 p2, 0x2

    .line 76
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->z:[I

    .line 88
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/face/OriginMaskView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(I)V
    .locals 5

    .line 135
    iget v0, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->m:I

    if-ge p1, v0, :cond_0

    return-void

    .line 138
    :cond_0
    iget v0, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->l:I

    if-le p1, v0, :cond_1

    return-void

    .line 142
    :cond_1
    iput p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->m:I

    .line 143
    iget-object v0, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->s:Lcom/coloros/settings/feature/face/OriginMaskView$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/face/OriginMaskView$a;->removeMessages(I)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    .line 145
    iput-boolean v1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->y:Z

    goto :goto_0

    .line 147
    :cond_2
    iget v0, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->l:I

    const/4 v2, 0x0

    if-ge p1, v0, :cond_3

    .line 148
    iget-object v0, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->s:Lcom/coloros/settings/feature/face/OriginMaskView$a;

    add-int/lit8 p1, p1, 0x2

    .line 149
    invoke-virtual {v0, v1, p1, v2}, Lcom/coloros/settings/feature/face/OriginMaskView$a;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v3, 0x1e

    .line 148
    invoke-virtual {v0, p1, v3, v4}, Lcom/coloros/settings/feature/face/OriginMaskView$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 151
    :cond_3
    iput-boolean v2, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->y:Z

    .line 153
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/OriginMaskView;->invalidate()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .line 92
    invoke-static {p1}, Lcom/coloros/settings/utils/q;->e(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->B:Z

    .line 93
    iget-object p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 94
    iget-boolean v0, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->B:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0704d9

    goto :goto_0

    :cond_0
    const v0, 0x7f0704db

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/coloros/settings/feature/face/OriginMaskView;->b:I

    .line 95
    iget-boolean v0, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->B:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0704d8

    goto :goto_1

    :cond_1
    const v0, 0x7f0704da

    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->w:I

    const v0, 0x7f0704d7

    .line 96
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->x:I

    .line 98
    sget p1, Lcom/coloros/settings/feature/face/OriginMaskView;->b:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    sput p1, Lcom/coloros/settings/feature/face/OriginMaskView;->c:F

    .line 100
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->n:Landroid/graphics/Paint;

    .line 101
    iget-object p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->n:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    iget-object p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->n:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 104
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->o:Landroid/graphics/Paint;

    .line 105
    iget-object p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 106
    iget-object p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->o:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 107
    iget-object p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->o:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 108
    iget-object p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->o:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 109
    iget-object p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->o:Landroid/graphics/Paint;

    sget v1, Lcom/coloros/settings/feature/face/OriginMaskView;->b:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 110
    iget-object p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->o:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->mContext:Landroid/content/Context;

    const v2, 0x7f0600e6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->p:Landroid/graphics/Paint;

    .line 113
    iget-object p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 114
    iget-object p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->p:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 115
    iget-object p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->p:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->mContext:Landroid/content/Context;

    const v1, 0x7f0600e5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->r:Landroid/graphics/Rect;

    .line 118
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->q:Landroid/graphics/Rect;

    .line 119
    new-instance p1, Lcom/coloros/settings/feature/face/OriginMaskView$a;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/face/OriginMaskView$a;-><init>(Lcom/coloros/settings/feature/face/OriginMaskView;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->s:Lcom/coloros/settings/feature/face/OriginMaskView$a;

    .line 120
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->A:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/face/OriginMaskView;Landroid/os/Message;)V
    .locals 2

    .line 1339
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

    const-string v1, "OriginMaskView"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1345
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/face/OriginMaskView;->a(I)V

    :goto_0
    return-void

    .line 1342
    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/face/OriginMaskView;->a(I)V

    return-void
.end method

.method private getLastGaussFrame()Landroid/graphics/Bitmap;
    .locals 5

    .line 319
    iget-object v0, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->A:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->A:Landroid/graphics/Rect;

    .line 320
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x0

    .line 319
    invoke-static {v0, v1, v2, v3, v3}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 321
    iget-object v1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->a:Landroid/view/Window;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v4, 0x2000

    .line 322
    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1312
    iput-object v2, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->a:Landroid/view/Window;

    :cond_0
    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 328
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 327
    invoke-static {v0, v3, v3, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 329
    invoke-static {}, Lcom/oppo/launcher/graphic/GaussianBlur;->getInstance()Lcom/oppo/launcher/graphic/GaussianBlur;

    move-result-object v1

    const/16 v2, 0x19

    const v3, 0x3f4ccccd    # 0.8f

    const/4 v4, 0x1

    .line 332
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/oppo/launcher/graphic/GaussianBlur;->generateGaussianBitmap(Landroid/graphics/Bitmap;IFZ)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_1
    return-object v2
.end method


# virtual methods
.method public final a(II)Landroid/graphics/Rect;
    .locals 7

    .line 200
    iget-boolean v0, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->t:Z

    if-eqz v0, :cond_2

    const-string v0, ", Width = "

    const-string v1, "preview Hight : "

    const-string v2, "OriginMaskView"

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget v0, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->v:I

    int-to-float v0, v0

    int-to-float p2, p2

    div-float/2addr v0, p2

    .line 207
    iget p2, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->u:I

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 209
    iget p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->d:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 210
    iget v1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->e:I

    int-to-float v1, v1

    div-float/2addr v1, p2

    float-to-int v1, v1

    .line 211
    iget v3, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->f:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v3, v3

    .line 212
    iget v4, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->g:I

    int-to-float v4, v4

    div-float/2addr v4, p2

    float-to-int v4, v4

    .line 213
    iget v5, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->x:I

    .line 215
    iget-object v6, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->r:Landroid/graphics/Rect;

    sub-int/2addr p1, v5

    sub-int/2addr v1, v5

    add-int/2addr v3, v5

    add-int/2addr v4, v5

    invoke-virtual {v6, p1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x0

    .line 217
    iput-boolean p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->t:Z

    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "scaleX : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", scaleY = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", mMaskRect : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->r:Landroid/graphics/Rect;

    .line 219
    invoke-virtual {p2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 218
    invoke-static {v2, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 202
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->r:Landroid/graphics/Rect;

    return-object p1
.end method

.method public getShownRect()Landroid/graphics/Rect;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->q:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    .line 227
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 228
    iget v1, v0, Lcom/coloros/settings/feature/face/OriginMaskView;->d:I

    iget v2, v0, Lcom/coloros/settings/feature/face/OriginMaskView;->f:I

    add-int v3, v1, v2

    const/4 v11, 0x1

    shr-int/2addr v3, v11

    int-to-float v12, v3

    .line 229
    iget v3, v0, Lcom/coloros/settings/feature/face/OriginMaskView;->e:I

    iget v4, v0, Lcom/coloros/settings/feature/face/OriginMaskView;->g:I

    add-int/2addr v3, v4

    shr-int/2addr v3, v11

    int-to-float v13, v3

    sub-int/2addr v2, v1

    shr-int/lit8 v1, v2, 0x1

    int-to-float v14, v1

    .line 231
    iget-boolean v1, v0, Lcom/coloros/settings/feature/face/OriginMaskView;->y:Z

    if-nez v1, :cond_0

    .line 232
    iget-object v1, v0, Lcom/coloros/settings/feature/face/OriginMaskView;->n:Landroid/graphics/Paint;

    invoke-virtual {v10, v12, v13, v14, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 235
    :cond_0
    iget v1, v0, Lcom/coloros/settings/feature/face/OriginMaskView;->m:I

    mul-int/lit16 v1, v1, 0x168

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float v7, v1, v2

    .line 237
    iget-boolean v1, v0, Lcom/coloros/settings/feature/face/OriginMaskView;->B:Z

    if-eqz v1, :cond_3

    const v1, -0xf4a301

    .line 1251
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 1252
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 1253
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const v5, -0xea1b49

    .line 1254
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v6

    .line 1255
    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v8

    .line 1256
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

    .line 1261
    new-array v11, v9, [I

    .line 1265
    iget v15, v0, Lcom/coloros/settings/feature/face/OriginMaskView;->m:I

    add-int/lit8 v15, v15, 0x2a

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v9, :cond_2

    add-int v17, v1, v15

    .line 1267
    rem-int/lit8 v17, v17, 0x64

    const/16 v9, 0x21

    if-gt v1, v9, :cond_1

    .line 1269
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

    .line 1272
    invoke-static {v3, v15, v2, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v11, v17

    const v2, -0xf4a301

    goto :goto_1

    :cond_1
    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v18, v15

    const v2, -0xf4a301

    .line 1274
    aput v2, v11, v17

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move/from16 v15, v18

    move/from16 v2, v19

    move/from16 v3, v20

    const/16 v9, 0x64

    goto :goto_0

    .line 1277
    :cond_2
    new-instance v1, Landroid/graphics/SweepGradient;

    const/4 v2, 0x0

    invoke-direct {v1, v12, v13, v11, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 1278
    iget-object v2, v0, Lcom/coloros/settings/feature/face/OriginMaskView;->o:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 240
    :cond_3
    iget v2, v0, Lcom/coloros/settings/feature/face/OriginMaskView;->h:F

    iget v3, v0, Lcom/coloros/settings/feature/face/OriginMaskView;->i:F

    iget v4, v0, Lcom/coloros/settings/feature/face/OriginMaskView;->j:F

    iget v5, v0, Lcom/coloros/settings/feature/face/OriginMaskView;->k:F

    const/high16 v6, -0x3d4c0000    # -90.0f

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/coloros/settings/feature/face/OriginMaskView;->o:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    const/4 v11, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 243
    iget-boolean v1, v0, Lcom/coloros/settings/feature/face/OriginMaskView;->y:Z

    if-eqz v1, :cond_5

    .line 244
    invoke-direct/range {p0 .. p0}, Lcom/coloros/settings/feature/face/OriginMaskView;->getLastGaussFrame()Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "OriginMaskView"

    if-eqz v1, :cond_4

    .line 1283
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1284
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1285
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v11, v11, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1286
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1287
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1289
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    const/4 v7, 0x1

    .line 1290
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1291
    invoke-virtual {v4, v14, v14, v14, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1293
    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v8, 0x0

    .line 1294
    invoke-virtual {v4, v1, v8, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1296
    invoke-virtual {v6}, Landroid/graphics/Paint;->reset()V

    .line 1297
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1298
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1299
    iget v1, v0, Lcom/coloros/settings/feature/face/OriginMaskView;->d:I

    int-to-float v1, v1

    iget v4, v0, Lcom/coloros/settings/feature/face/OriginMaskView;->e:I

    int-to-float v4, v4

    invoke-virtual {v10, v3, v1, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const-string v1, "draw gaussBitmap end"

    .line 1301
    invoke-static {v2, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v1, "draw gaussBitmap null end"

    .line 1303
    invoke-static {v2, v1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :goto_2
    iget-object v1, v0, Lcom/coloros/settings/feature/face/OriginMaskView;->p:Landroid/graphics/Paint;

    invoke-virtual {v10, v12, v13, v14, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 158
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 160
    iget-object p2, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->z:[I

    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/face/OriginMaskView;->getLocationOnScreen([I)V

    .line 162
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "onLayout top = "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", location = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->z:[I

    const/4 p4, 0x0

    aget p3, p3, p4

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->z:[I

    const/4 p5, 0x1

    aget p3, p3, p5

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "OriginMaskView"

    invoke-static {p3, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1169
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/OriginMaskView;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->v:I

    .line 1170
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/OriginMaskView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->u:I

    .line 1173
    iget p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->v:I

    div-int/lit8 p1, p1, 0x6

    .line 1174
    iget p2, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->w:I

    sub-int v0, p1, p2

    .line 1178
    iput v0, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->d:I

    mul-int/lit8 v0, p1, 0x2

    sub-int/2addr v0, p2

    .line 1179
    iput v0, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->e:I

    mul-int/lit8 v0, p1, 0x5

    add-int/2addr v0, p2

    .line 1180
    iput v0, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->f:I

    mul-int/lit8 p1, p1, 0x6

    add-int/2addr p1, p2

    .line 1181
    iput p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->g:I

    .line 1183
    iget-object p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->q:Landroid/graphics/Rect;

    iget p2, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->d:I

    iget v0, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->e:I

    iget v1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->f:I

    iget v2, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->g:I

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1184
    iget-object p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->A:Landroid/graphics/Rect;

    iget p2, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->d:I

    iget-object v0, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->z:[I

    aget v1, v0, p4

    add-int/2addr p2, v1

    iget v1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->e:I

    aget v2, v0, p5

    add-int/2addr v1, v2

    iget v2, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->f:I

    aget p4, v0, p4

    add-int/2addr v2, p4

    iget p4, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->g:I

    aget p5, v0, p5

    add-int/2addr p4, p5

    invoke-virtual {p1, p2, v1, v2, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1187
    iget p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->d:I

    int-to-float p1, p1

    sget p2, Lcom/coloros/settings/feature/face/OriginMaskView;->c:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->h:F

    .line 1188
    iget p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->e:I

    int-to-float p1, p1

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->i:F

    .line 1189
    iget p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->f:I

    int-to-float p1, p1

    add-float/2addr p1, p2

    iput p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->j:F

    .line 1190
    iget p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->g:I

    int-to-float p1, p1

    add-float/2addr p1, p2

    iput p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->k:F

    .line 1192
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "mTop "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mBottom = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->g:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mLeft "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->d:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mRight "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->f:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 4

    .line 124
    iput p1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->l:I

    const/4 v0, 0x0

    if-lez p1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->s:Lcom/coloros/settings/feature/face/OriginMaskView$a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/coloros/settings/feature/face/OriginMaskView$a;->removeMessages(I)V

    .line 127
    iget-object v1, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->s:Lcom/coloros/settings/feature/face/OriginMaskView$a;

    add-int/lit8 p1, p1, -0x14

    add-int/lit8 p1, p1, 0x2

    .line 128
    invoke-virtual {v1, v2, p1, v0}, Lcom/coloros/settings/feature/face/OriginMaskView$a;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v2, 0x0

    .line 127
    invoke-virtual {v1, p1, v2, v3}, Lcom/coloros/settings/feature/face/OriginMaskView$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 130
    :cond_0
    iput v0, p0, Lcom/coloros/settings/feature/face/OriginMaskView;->m:I

    return-void
.end method
