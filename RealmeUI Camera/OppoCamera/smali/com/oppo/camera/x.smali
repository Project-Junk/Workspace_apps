.class public Lcom/oppo/camera/x;
.super Ljava/lang/Object;
.source "ZoomManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/x$a;,
        Lcom/oppo/camera/x$c;,
        Lcom/oppo/camera/x$b;
    }
.end annotation


# static fields
.field private static final a:[F


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:Landroid/graphics/Rect;

.field private j:F

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Lcom/oppo/camera/x$a;

.field private p:Lcom/oppo/camera/ui/preview/o;

.field private q:Landroid/os/Handler;

.field private r:Landroid/os/HandlerThread;

.field private s:Landroid/view/ScaleGestureDetector;

.field private t:Landroid/app/Activity;

.field private u:I

.field private v:Z

.field private w:I

.field private x:Lcom/oppo/camera/i;

.field private y:Lcom/oppo/camera/d/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 55
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oppo/camera/x;->a:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/i;Lcom/oppo/camera/d/b;)V
    .locals 3

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/x;->b:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/x;->c:Ljava/util/ArrayList;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 59
    iput v0, p0, Lcom/oppo/camera/x;->d:F

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/oppo/camera/x;->e:F

    .line 61
    iput v0, p0, Lcom/oppo/camera/x;->f:F

    .line 62
    iput v0, p0, Lcom/oppo/camera/x;->g:F

    .line 63
    iput v0, p0, Lcom/oppo/camera/x;->h:F

    const/4 v1, 0x0

    .line 64
    iput-object v1, p0, Lcom/oppo/camera/x;->i:Landroid/graphics/Rect;

    .line 65
    iput v0, p0, Lcom/oppo/camera/x;->j:F

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/oppo/camera/x;->k:I

    const/4 v2, 0x1

    .line 67
    iput-boolean v2, p0, Lcom/oppo/camera/x;->l:Z

    .line 68
    iput-boolean v0, p0, Lcom/oppo/camera/x;->m:Z

    .line 69
    iput-boolean v0, p0, Lcom/oppo/camera/x;->n:Z

    .line 70
    iput-object v1, p0, Lcom/oppo/camera/x;->o:Lcom/oppo/camera/x$a;

    .line 71
    iput-object v1, p0, Lcom/oppo/camera/x;->p:Lcom/oppo/camera/ui/preview/o;

    .line 72
    iput-object v1, p0, Lcom/oppo/camera/x;->q:Landroid/os/Handler;

    .line 73
    iput-object v1, p0, Lcom/oppo/camera/x;->r:Landroid/os/HandlerThread;

    .line 74
    iput-object v1, p0, Lcom/oppo/camera/x;->s:Landroid/view/ScaleGestureDetector;

    .line 75
    iput-object v1, p0, Lcom/oppo/camera/x;->t:Landroid/app/Activity;

    .line 76
    iput v0, p0, Lcom/oppo/camera/x;->u:I

    .line 77
    iput-boolean v0, p0, Lcom/oppo/camera/x;->v:Z

    .line 78
    iput v0, p0, Lcom/oppo/camera/x;->w:I

    .line 79
    iput-object v1, p0, Lcom/oppo/camera/x;->x:Lcom/oppo/camera/i;

    .line 80
    iput-object v1, p0, Lcom/oppo/camera/x;->y:Lcom/oppo/camera/d/b;

    .line 83
    iput-object p1, p0, Lcom/oppo/camera/x;->t:Landroid/app/Activity;

    .line 84
    iput-object p2, p0, Lcom/oppo/camera/x;->x:Lcom/oppo/camera/i;

    .line 85
    iput-object p3, p0, Lcom/oppo/camera/x;->y:Lcom/oppo/camera/d/b;

    .line 86
    new-instance p1, Lcom/oppo/camera/ui/preview/o;

    iget-object p2, p0, Lcom/oppo/camera/x;->t:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcom/oppo/camera/ui/preview/o;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oppo/camera/x;->p:Lcom/oppo/camera/ui/preview/o;

    .line 87
    iget-object p1, p0, Lcom/oppo/camera/x;->t:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06032a

    .line 88
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/x;->k:I

    .line 90
    iget-object p1, p0, Lcom/oppo/camera/x;->p:Lcom/oppo/camera/ui/preview/o;

    new-instance p2, Lcom/oppo/camera/x$1;

    invoke-direct {p2, p0}, Lcom/oppo/camera/x$1;-><init>(Lcom/oppo/camera/x;)V

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/o;->setOnSeekBarChangeListener(Lcom/oppo/camera/ui/g$a;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/x;)Lcom/oppo/camera/x$a;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/oppo/camera/x;->o:Lcom/oppo/camera/x$a;

    return-object p0
.end method

.method private a(FZ)V
    .locals 1

    .line 485
    invoke-direct {p0, p1}, Lcom/oppo/camera/x;->c(F)V

    const/4 v0, 0x0

    .line 487
    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/camera/x;->a(FZZ)V

    return-void
.end method

.method private a(FZZ)V
    .locals 5

    .line 491
    iget p3, p0, Lcom/oppo/camera/x;->d:F

    invoke-static {p3, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 495
    :cond_0
    iput p1, p0, Lcom/oppo/camera/x;->d:F

    .line 500
    iget-boolean p3, p0, Lcom/oppo/camera/x;->m:Z

    if-eqz p3, :cond_2

    .line 501
    sget-object p3, Lcom/oppo/camera/x;->a:[F

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p3, v1

    cmpg-float v3, p1, v2

    if-gez v3, :cond_1

    const v3, 0x3dcccccd    # 0.1f

    sub-float v3, v2, v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_1

    .line 503
    iget-object v3, p0, Lcom/oppo/camera/x;->i:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    div-float v2, v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    div-float v2, v3, v2

    cmpl-float v3, p1, v2

    if-ltz v3, :cond_1

    move p1, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const p3, 0x3727c5ac    # 1.0E-5f

    add-float/2addr p1, p3

    const p3, 0x3c23d70a    # 0.01f

    div-float/2addr p1, p3

    float-to-int p1, p1

    int-to-float p1, p1

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p1, p3

    .line 517
    iget p3, p0, Lcom/oppo/camera/x;->g:F

    iget v0, p0, Lcom/oppo/camera/x;->j:F

    invoke-static {p1, p3, v0}, Lcom/oppo/camera/o/d;->a(FFF)F

    move-result p1

    .line 519
    iget p3, p0, Lcom/oppo/camera/x;->e:F

    invoke-static {p1, p3}, Ljava/lang/Float;->compare(FF)I

    move-result p3

    if-eqz p3, :cond_3

    .line 520
    iget-object p3, p0, Lcom/oppo/camera/x;->o:Lcom/oppo/camera/x$a;

    const/4 v0, 0x1

    invoke-interface {p3, p1, v0, p2}, Lcom/oppo/camera/x$a;->a(FZZ)V

    .line 521
    iput p1, p0, Lcom/oppo/camera/x;->e:F

    .line 524
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "changeZoom, mZoomValue: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/oppo/camera/x;->d:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", mHalZoomValue: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/oppo/camera/x;->e:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ZoomManager"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/x;FZ)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/x;->a(FZ)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/x;FZZ)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/camera/x;->a(FZZ)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/x;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/oppo/camera/x;->d(I)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/x;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/oppo/camera/x;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/x;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/oppo/camera/x;->i()V

    return-void
.end method

.method static synthetic c(Lcom/oppo/camera/x;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/oppo/camera/x;->q:Landroid/os/Handler;

    return-object p0
.end method

.method private c(F)V
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/oppo/camera/x;->o:Lcom/oppo/camera/x$a;

    invoke-interface {v0}, Lcom/oppo/camera/x$a;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/x;->p:Lcom/oppo/camera/ui/preview/o;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/o;->d(F)F

    move-result p1

    .line 467
    iget v0, p0, Lcom/oppo/camera/x;->f:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 472
    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_2

    .line 473
    iput p1, p0, Lcom/oppo/camera/x;->f:F

    .line 474
    iget-object p1, p0, Lcom/oppo/camera/x;->o:Lcom/oppo/camera/x$a;

    invoke-interface {p1}, Lcom/oppo/camera/x$a;->l()V

    return-void

    .line 480
    :cond_3
    iput p1, p0, Lcom/oppo/camera/x;->f:F

    .line 481
    iget-object p1, p0, Lcom/oppo/camera/x;->o:Lcom/oppo/camera/x$a;

    invoke-interface {p1}, Lcom/oppo/camera/x$a;->k()V

    return-void
.end method

.method private d(I)V
    .locals 5

    .line 604
    iget-object v0, p0, Lcom/oppo/camera/x;->o:Lcom/oppo/camera/x$a;

    if-eqz v0, :cond_3

    .line 605
    new-instance v0, Lcom/oppo/camera/statistics/model/ZoomAdjustMsgData;

    iget-object v1, p0, Lcom/oppo/camera/x;->t:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oppo/camera/statistics/model/ZoomAdjustMsgData;-><init>(Landroid/content/Context;)V

    .line 606
    iget-object v1, p0, Lcom/oppo/camera/x;->o:Lcom/oppo/camera/x$a;

    invoke-interface {v1}, Lcom/oppo/camera/x$a;->i()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput v1, v0, Lcom/oppo/camera/statistics/model/ZoomAdjustMsgData;->mCaptureType:I

    .line 607
    iget-object v1, p0, Lcom/oppo/camera/x;->x:Lcom/oppo/camera/i;

    const-string v3, ""

    const-string v4, "pref_camera_mode_key"

    invoke-virtual {v1, v4, v3}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/ZoomAdjustMsgData;->mCaptureMode:Ljava/lang/String;

    .line 608
    iget-object v1, p0, Lcom/oppo/camera/x;->x:Lcom/oppo/camera/i;

    const-string v4, "pref_camera_id_key"

    invoke-virtual {v1, v4, v3}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/ZoomAdjustMsgData;->mCameraId:Ljava/lang/String;

    .line 609
    iget v1, p0, Lcom/oppo/camera/x;->w:I

    iput v1, v0, Lcom/oppo/camera/statistics/model/ZoomAdjustMsgData;->mOrientation:I

    .line 610
    iput p1, v0, Lcom/oppo/camera/statistics/model/ZoomAdjustMsgData;->mZoomType:I

    .line 611
    invoke-virtual {p0}, Lcom/oppo/camera/x;->f()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oppo/camera/statistics/model/ZoomAdjustMsgData;->mZoomValue:Ljava/lang/String;

    .line 613
    iget-object p1, p0, Lcom/oppo/camera/x;->y:Lcom/oppo/camera/d/b;

    if-eqz p1, :cond_2

    .line 614
    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 615
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oppo/camera/statistics/model/ZoomAdjustMsgData;->mCameraEnterType:Ljava/lang/String;

    goto :goto_0

    .line 616
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/x;->y:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    .line 617
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oppo/camera/statistics/model/ZoomAdjustMsgData;->mCameraEnterType:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 619
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oppo/camera/statistics/model/ZoomAdjustMsgData;->mCameraEnterType:Ljava/lang/String;

    .line 622
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/x;->y:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->V()Z

    move-result p1

    iput-boolean p1, v0, Lcom/oppo/camera/statistics/model/ZoomAdjustMsgData;->mbVideoRecording:Z

    .line 625
    :cond_2
    invoke-virtual {v0}, Lcom/oppo/camera/statistics/model/ZoomAdjustMsgData;->report()V

    :cond_3
    return-void
.end method

.method static synthetic d(Lcom/oppo/camera/x;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/oppo/camera/x;->l:Z

    return p0
.end method

.method static synthetic e(Lcom/oppo/camera/x;)Lcom/oppo/camera/d/b;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/oppo/camera/x;->y:Lcom/oppo/camera/d/b;

    return-object p0
.end method

.method static synthetic f(Lcom/oppo/camera/x;)F
    .locals 0

    .line 41
    iget p0, p0, Lcom/oppo/camera/x;->d:F

    return p0
.end method

.method static synthetic g(Lcom/oppo/camera/x;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/oppo/camera/x;->m:Z

    return p0
.end method

.method static synthetic h(Lcom/oppo/camera/x;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/oppo/camera/x;->n:Z

    return p0
.end method

.method static synthetic i(Lcom/oppo/camera/x;)Lcom/oppo/camera/i;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/oppo/camera/x;->x:Lcom/oppo/camera/i;

    return-object p0
.end method

.method private i()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/oppo/camera/x;->r:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HANDLER_THREAD_NAME"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oppo/camera/x;->r:Landroid/os/HandlerThread;

    .line 155
    iget-object v0, p0, Lcom/oppo/camera/x;->r:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/x;->q:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 159
    new-instance v0, Lcom/oppo/camera/x$2;

    iget-object v1, p0, Lcom/oppo/camera/x;->r:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/x$2;-><init>(Lcom/oppo/camera/x;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oppo/camera/x;->q:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method static synthetic j(Lcom/oppo/camera/x;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/oppo/camera/x;->v:Z

    return p0
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 242
    iget v0, p0, Lcom/oppo/camera/x;->d:F

    return v0
.end method

.method public a(FF)F
    .locals 2

    .line 337
    iget v0, p0, Lcom/oppo/camera/x;->j:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 341
    :cond_0
    iget v0, p0, Lcom/oppo/camera/x;->k:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p2, p2

    const v0, 0x3dcccccd    # 0.1f

    mul-float/2addr p2, v0

    add-float/2addr p1, p2

    .line 343
    iget p2, p0, Lcom/oppo/camera/x;->g:F

    iget v0, p0, Lcom/oppo/camera/x;->j:F

    invoke-static {p1, p2, v0}, Lcom/oppo/camera/o/d;->a(FFF)F

    move-result p1

    return p1
.end method

.method public a(I)V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/oppo/camera/x;->p:Lcom/oppo/camera/ui/preview/o;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/o;->setVisibility(I)V

    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/oppo/camera/x;->p:Lcom/oppo/camera/ui/preview/o;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/preview/o;->a(IZ)V

    .line 277
    iput p1, p0, Lcom/oppo/camera/x;->w:I

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/x;->t:Landroid/app/Activity;

    const v1, 0x7f0800e5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 329
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    .line 331
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 332
    iget-object v2, p0, Lcom/oppo/camera/x;->p:Lcom/oppo/camera/ui/preview/o;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 333
    iget-object p1, p0, Lcom/oppo/camera/x;->p:Lcom/oppo/camera/ui/preview/o;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/o;->setVisibility(I)V

    return-void
.end method

.method public a(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/oppo/camera/x;->q:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 292
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 293
    iput-boolean v0, p0, Lcom/oppo/camera/x;->l:Z

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/x;->p:Lcom/oppo/camera/ui/preview/o;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/o;->a(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public a(Lcom/oppo/camera/x$a;)V
    .locals 3

    .line 233
    iput-object p1, p0, Lcom/oppo/camera/x;->o:Lcom/oppo/camera/x$a;

    .line 234
    iget-object p1, p0, Lcom/oppo/camera/x;->p:Lcom/oppo/camera/ui/preview/o;

    new-instance v0, Lcom/oppo/camera/x$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/x$c;-><init>(Lcom/oppo/camera/x;Lcom/oppo/camera/x$1;)V

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/o;->setZoomListener(Lcom/oppo/camera/ui/preview/n;)V

    .line 236
    iget-object p1, p0, Lcom/oppo/camera/x;->s:Landroid/view/ScaleGestureDetector;

    if-nez p1, :cond_0

    .line 237
    new-instance p1, Landroid/view/ScaleGestureDetector;

    iget-object v0, p0, Lcom/oppo/camera/x;->t:Landroid/app/Activity;

    new-instance v2, Lcom/oppo/camera/x$b;

    invoke-direct {v2, p0, v1}, Lcom/oppo/camera/x$b;-><init>(Lcom/oppo/camera/x;Lcom/oppo/camera/x$1;)V

    invoke-direct {p1, v0, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/oppo/camera/x;->s:Landroid/view/ScaleGestureDetector;

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;ZZZFFLandroid/graphics/Rect;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;ZZZFF",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 377
    iput-boolean p2, p0, Lcom/oppo/camera/x;->v:Z

    .line 378
    iput p6, p0, Lcom/oppo/camera/x;->h:F

    .line 379
    iput-object p7, p0, Lcom/oppo/camera/x;->i:Landroid/graphics/Rect;

    .line 380
    iput-boolean p3, p0, Lcom/oppo/camera/x;->m:Z

    .line 381
    iput-boolean p4, p0, Lcom/oppo/camera/x;->n:Z

    .line 382
    iput p5, p0, Lcom/oppo/camera/x;->d:F

    .line 383
    iput p5, p0, Lcom/oppo/camera/x;->e:F

    const/4 p2, 0x0

    .line 384
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lcom/oppo/camera/x;->g:F

    .line 385
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/oppo/camera/x;->j:F

    .line 387
    iget-object p1, p0, Lcom/oppo/camera/x;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 388
    iget-object p1, p0, Lcom/oppo/camera/x;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 390
    iget p1, p0, Lcom/oppo/camera/x;->g:F

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    const p2, 0x3f19999a    # 0.6f

    if-gez p1, :cond_0

    .line 391
    iget-object p1, p0, Lcom/oppo/camera/x;->b:Ljava/util/ArrayList;

    iget p4, p0, Lcom/oppo/camera/x;->g:F

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object p1, p0, Lcom/oppo/camera/x;->c:Ljava/util/ArrayList;

    iget p4, p0, Lcom/oppo/camera/x;->g:F

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 393
    :cond_0
    iget-boolean p1, p0, Lcom/oppo/camera/x;->n:Z

    if-eqz p1, :cond_1

    .line 394
    iget-object p1, p0, Lcom/oppo/camera/x;->b:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/x;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object p1, p0, Lcom/oppo/camera/x;->b:Ljava/util/ArrayList;

    const/high16 p4, 0x40000000    # 2.0f

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    iget p1, p0, Lcom/oppo/camera/x;->j:F

    cmpl-float p5, p1, p4

    const/high16 p6, 0x40a00000    # 5.0f

    if-lez p5, :cond_2

    .line 401
    iget-object p5, p0, Lcom/oppo/camera/x;->b:Ljava/util/ArrayList;

    invoke-static {p1, p6}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/x;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object p1, p0, Lcom/oppo/camera/x;->c:Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    iget p1, p0, Lcom/oppo/camera/x;->j:F

    invoke-static {p1, p6}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-ltz p1, :cond_3

    .line 408
    iget-object p1, p0, Lcom/oppo/camera/x;->c:Ljava/util/ArrayList;

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    iget p1, p0, Lcom/oppo/camera/x;->j:F

    const/high16 p3, 0x41200000    # 10.0f

    invoke-static {p1, p3}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-lez p1, :cond_3

    .line 411
    iget-object p1, p0, Lcom/oppo/camera/x;->c:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/x;->p:Lcom/oppo/camera/ui/preview/o;

    iget-object p1, p0, Lcom/oppo/camera/x;->y:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->W()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    iget p2, p0, Lcom/oppo/camera/x;->d:F

    :goto_1
    move v1, p2

    iget v2, p0, Lcom/oppo/camera/x;->g:F

    iget v3, p0, Lcom/oppo/camera/x;->j:F

    iget-object v4, p0, Lcom/oppo/camera/x;->c:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/oppo/camera/x;->b:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/oppo/camera/x;->y:Lcom/oppo/camera/d/b;

    .line 416
    invoke-interface {p1}, Lcom/oppo/camera/d/b;->W()Z

    move-result p1

    xor-int/lit8 v6, p1, 0x1

    .line 415
    invoke-virtual/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/o;->a(FFFLjava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 418
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "initializeZoom, mMinZoomValue: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/oppo/camera/x;->g:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", mMaxZoomValue: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/oppo/camera/x;->j:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ZoomManager"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/oppo/camera/x;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 264
    iget-object p1, p0, Lcom/oppo/camera/x;->p:Lcom/oppo/camera/ui/preview/o;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/o;->setEnabled(Z)V

    goto :goto_0

    .line 267
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/x;->p:Lcom/oppo/camera/ui/preview/o;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/o;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(F)Z
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/oppo/camera/x;->p:Lcom/oppo/camera/ui/preview/o;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/o;->b(F)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/oppo/camera/x;->s:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_2

    .line 423
    iget-object v0, p0, Lcom/oppo/camera/x;->o:Lcom/oppo/camera/x$a;

    invoke-interface {v0}, Lcom/oppo/camera/x$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/x;->v:Z

    if-eqz v0, :cond_2

    .line 424
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 425
    iget-object v0, p0, Lcom/oppo/camera/x;->s:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/x;->p:Lcom/oppo/camera/ui/preview/o;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/o;->a(Landroid/view/MotionEvent;)V

    .line 430
    iget-boolean p1, p0, Lcom/oppo/camera/x;->v:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/x;->s:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public b(F)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/oppo/camera/x;->o:Lcom/oppo/camera/x$a;

    invoke-interface {v0, p1}, Lcom/oppo/camera/x$a;->a(F)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/x;->y:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->W()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 631
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/x;->t:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0703e0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 2

    .line 281
    invoke-virtual {p0}, Lcom/oppo/camera/x;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ZoomManager"

    const-string v1, "performShow, isSupportZoomMenu is false, so return"

    .line 282
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/x;->p:Lcom/oppo/camera/ui/preview/o;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/o;->b()V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/oppo/camera/x;->p:Lcom/oppo/camera/ui/preview/o;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/o;->setLayoutDirection(I)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/oppo/camera/x;->y:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 444
    :cond_0
    iget v0, p0, Lcom/oppo/camera/x;->d:F

    if-eqz p1, :cond_1

    const p1, 0x3dcccccd    # 0.1f

    goto :goto_0

    :cond_1
    const p1, -0x42333333    # -0.1f

    :goto_0
    add-float/2addr v0, p1

    const p1, 0x3727c5ac    # 1.0E-5f

    add-float/2addr v0, p1

    .line 448
    iget p1, p0, Lcom/oppo/camera/x;->g:F

    iget v1, p0, Lcom/oppo/camera/x;->j:F

    invoke-static {v0, p1, v1}, Lcom/oppo/camera/o/d;->a(FFF)F

    move-result p1

    .line 450
    iget v0, p0, Lcom/oppo/camera/x;->d:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    return-void

    .line 454
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oppo/camera/x;->a(F)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 455
    invoke-direct {p0, p1, v0, v0}, Lcom/oppo/camera/x;->a(FZZ)V

    const/4 p1, 0x3

    .line 456
    invoke-direct {p0, p1}, Lcom/oppo/camera/x;->d(I)V

    :cond_3
    return-void
.end method

.method public c()V
    .locals 2

    .line 308
    invoke-virtual {p0}, Lcom/oppo/camera/x;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ZoomManager"

    const-string v1, "performCollapse, isSupportZoomMenu is false, so return"

    .line 309
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/x;->q:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 315
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 316
    iput-boolean v0, p0, Lcom/oppo/camera/x;->l:Z

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/x;->p:Lcom/oppo/camera/ui/preview/o;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/o;->K_()V

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 528
    iget v0, p0, Lcom/oppo/camera/x;->u:I

    if-ne v0, p1, :cond_0

    return-void

    .line 532
    :cond_0
    iput p1, p0, Lcom/oppo/camera/x;->u:I

    .line 533
    iget-object v0, p0, Lcom/oppo/camera/x;->p:Lcom/oppo/camera/ui/preview/o;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/o;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 534
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 535
    iget-object p1, p0, Lcom/oppo/camera/x;->p:Lcom/oppo/camera/ui/preview/o;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/o;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public d()Z
    .locals 2

    .line 347
    invoke-virtual {p0}, Lcom/oppo/camera/x;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ZoomManager"

    const-string v1, "isZoomMenuExpand, isSupportZoomMenu is false, so return"

    .line 348
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/x;->p:Lcom/oppo/camera/ui/preview/o;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/o;->e()Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/oppo/camera/x;->r:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 359
    iput-object v1, p0, Lcom/oppo/camera/x;->r:Landroid/os/HandlerThread;

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/x;->q:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 363
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 364
    iput-object v1, p0, Lcom/oppo/camera/x;->q:Landroid/os/Handler;

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/x;->p:Lcom/oppo/camera/ui/preview/o;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/o;->a()V

    const/4 v0, 0x1

    .line 368
    iput-boolean v0, p0, Lcom/oppo/camera/x;->l:Z

    .line 370
    iget-object v0, p0, Lcom/oppo/camera/x;->o:Lcom/oppo/camera/x$a;

    invoke-interface {v0}, Lcom/oppo/camera/x$a;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 371
    iget-object v0, p0, Lcom/oppo/camera/x;->p:Lcom/oppo/camera/ui/preview/o;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/o;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/oppo/camera/x;->p:Lcom/oppo/camera/ui/preview/o;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/o;->getCurrentValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/oppo/camera/x;->o:Lcom/oppo/camera/x$a;

    invoke-interface {v0}, Lcom/oppo/camera/x$a;->a()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/oppo/camera/x;->p:Lcom/oppo/camera/ui/preview/o;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/o;->d()Z

    move-result v0

    return v0
.end method
