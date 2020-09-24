.class public Lcom/oppo/camera/ui/preview/e;
.super Lcom/oppo/camera/gl/t;
.source "CameraScreenNail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/preview/e$b;,
        Lcom/oppo/camera/ui/preview/e$a;
    }
.end annotation


# instance fields
.field private A:Landroid/content/Context;

.field private B:Lcom/oppo/camera/ui/preview/l;

.field private C:Lcom/oppo/camera/ui/preview/b;

.field private D:Lcom/oppo/camera/gl/s;

.field private E:Lcom/oppo/camera/gl/s;

.field private F:Lcom/oppo/camera/gl/d;

.field private G:Lcom/oppo/camera/ui/preview/e$b;

.field private H:I

.field private final p:[F

.field private q:I

.field private r:F

.field private s:F

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oppo/camera/ui/preview/e$a;Z)V
    .locals 4

    .line 102
    invoke-direct {p0}, Lcom/oppo/camera/gl/t;-><init>()V

    const/16 v0, 0x10

    .line 72
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/e;->p:[F

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/oppo/camera/ui/preview/e;->q:I

    const/4 v1, 0x0

    .line 76
    iput v1, p0, Lcom/oppo/camera/ui/preview/e;->r:F

    .line 77
    iput v1, p0, Lcom/oppo/camera/ui/preview/e;->s:F

    .line 80
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/e;->u:Z

    .line 84
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/e;->w:Z

    const/4 v1, 0x1

    .line 85
    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/e;->x:Z

    .line 86
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/e;->y:Z

    .line 87
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/e;->z:Z

    const/4 v2, 0x0

    .line 89
    iput-object v2, p0, Lcom/oppo/camera/ui/preview/e;->A:Landroid/content/Context;

    .line 90
    new-instance v3, Lcom/oppo/camera/ui/preview/l;

    invoke-direct {v3}, Lcom/oppo/camera/ui/preview/l;-><init>()V

    iput-object v3, p0, Lcom/oppo/camera/ui/preview/e;->B:Lcom/oppo/camera/ui/preview/l;

    .line 91
    iput-object v2, p0, Lcom/oppo/camera/ui/preview/e;->C:Lcom/oppo/camera/ui/preview/b;

    .line 95
    iput-object v2, p0, Lcom/oppo/camera/ui/preview/e;->G:Lcom/oppo/camera/ui/preview/e$b;

    .line 96
    iput v0, p0, Lcom/oppo/camera/ui/preview/e;->H:I

    .line 103
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/e;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 104
    :try_start_0
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/e;->A:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/oppo/camera/ui/preview/e;->g:Lcom/oppo/camera/ui/preview/e$a;

    .line 106
    new-instance p1, Lcom/oppo/camera/ui/preview/k;

    invoke-direct {p1}, Lcom/oppo/camera/ui/preview/k;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/e;->C:Lcom/oppo/camera/ui/preview/b;

    if-nez p3, :cond_0

    move v0, v1

    .line 107
    :cond_0
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/e;->u:Z

    .line 108
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/e;)Lcom/oppo/camera/gl/p;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/oppo/camera/ui/preview/e;->e:Lcom/oppo/camera/gl/p;

    return-object p0
.end method

.method private a(Lcom/oppo/camera/gl/h;)V
    .locals 3

    .line 410
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/e;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/gl/g;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/e;->D:Lcom/oppo/camera/gl/s;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/oppo/camera/ui/preview/e;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;Lcom/oppo/camera/gl/s;[F)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/e;I)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/oppo/camera/gl/t;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/ui/preview/e;)Lcom/oppo/camera/gl/p;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/oppo/camera/ui/preview/e;->e:Lcom/oppo/camera/gl/p;

    return-object p0
.end method

.method static synthetic c(Lcom/oppo/camera/ui/preview/e;)Lcom/oppo/camera/ui/preview/e$b;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/oppo/camera/ui/preview/e;->G:Lcom/oppo/camera/ui/preview/e$b;

    return-object p0
.end method

.method static synthetic d(Lcom/oppo/camera/ui/preview/e;)Ljava/lang/Object;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/oppo/camera/ui/preview/e;->a:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic e(Lcom/oppo/camera/ui/preview/e;)Lcom/oppo/camera/ui/preview/e$a;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/oppo/camera/ui/preview/e;->g:Lcom/oppo/camera/ui/preview/e$a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 119
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/e;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 120
    :try_start_0
    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/e;->v:Z

    .line 121
    invoke-super {p0}, Lcom/oppo/camera/gl/t;->a()V

    .line 122
    new-instance v1, Lcom/oppo/camera/gl/s;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/e;->e()I

    move-result v2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/e;->f()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/oppo/camera/gl/s;-><init>(IIZ)V

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/e;->D:Lcom/oppo/camera/gl/s;

    .line 123
    new-instance v1, Lcom/oppo/camera/gl/s;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/e;->e()I

    move-result v2

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/e;->f()I

    move-result v3

    invoke-direct {v1, v2, v3, v4}, Lcom/oppo/camera/gl/s;-><init>(IIZ)V

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/e;->E:Lcom/oppo/camera/gl/s;

    .line 124
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(II)V
    .locals 0

    .line 129
    invoke-super {p0, p1, p2}, Lcom/oppo/camera/gl/t;->a(II)V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;I)V
    .locals 2

    const-string v0, "CameraScreenNail"

    const-string v1, "setGaussianBlurBitmap"

    .line 186
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iput p2, p0, Lcom/oppo/camera/ui/preview/e;->H:I

    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_0

    .line 191
    new-instance p2, Lcom/oppo/camera/gl/d;

    invoke-direct {p2, p1}, Lcom/oppo/camera/gl/d;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lcom/oppo/camera/ui/preview/e;->F:Lcom/oppo/camera/gl/d;

    .line 193
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/e;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 194
    :try_start_0
    iget-object p2, p0, Lcom/oppo/camera/ui/preview/e;->g:Lcom/oppo/camera/ui/preview/e$a;

    invoke-interface {p2}, Lcom/oppo/camera/ui/preview/e$a;->J()V

    const/4 p2, 0x5

    .line 195
    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/preview/e;->b(I)V

    .line 196
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_0
    const/4 p1, 0x0

    .line 198
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/preview/e;->b(I)V

    .line 199
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/e;->G:Lcom/oppo/camera/ui/preview/e$b;

    invoke-interface {p1}, Lcom/oppo/camera/ui/preview/e$b;->d()V

    :goto_0
    return-void
.end method

.method public a(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    .line 154
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/e;->m:Ljava/lang/Object;

    monitor-enter p1

    .line 155
    :try_start_0
    iput-wide p3, p0, Lcom/oppo/camera/ui/preview/e;->n:J

    const-string p2, "CameraScreenNail"

    .line 157
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onCaptureStarted: mCaptureTimestamp: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p4, p0, Lcom/oppo/camera/ui/preview/e;->n:J

    invoke-virtual {p3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public a(Lcom/oppo/camera/gl/h;IIII)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 249
    invoke-super/range {v0 .. v6}, Lcom/oppo/camera/gl/t;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/ui/menu/levelcontrol/f;IIII)V

    return-void
.end method

.method public a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/ui/menu/levelcontrol/f;IIII)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v9, p5

    move/from16 v10, p6

    .line 256
    iget-object v11, v1, Lcom/oppo/camera/ui/preview/e;->a:Ljava/lang/Object;

    monitor-enter v11

    .line 257
    :try_start_0
    iget-boolean v2, v1, Lcom/oppo/camera/ui/preview/e;->t:Z

    const/4 v12, 0x1

    if-nez v2, :cond_0

    .line 258
    iput-boolean v12, v1, Lcom/oppo/camera/ui/preview/e;->t:Z

    .line 261
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/preview/e;->b()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 263
    iget-boolean v2, v1, Lcom/oppo/camera/ui/preview/e;->v:Z

    if-nez v2, :cond_1

    goto/16 :goto_7

    :cond_1
    if-eqz p2, :cond_2

    .line 268
    invoke-super/range {p0 .. p6}, Lcom/oppo/camera/gl/t;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/ui/menu/levelcontrol/f;IIII)V

    goto/16 :goto_6

    :cond_2
    if-eqz v0, :cond_16

    const/16 v2, 0xb

    .line 271
    iget v3, v1, Lcom/oppo/camera/ui/preview/e;->q:I

    const v4, 0x3e99999a    # 0.3f

    if-ne v2, v3, :cond_4

    .line 272
    iget v2, v1, Lcom/oppo/camera/ui/preview/e;->r:F

    iget v3, v1, Lcom/oppo/camera/ui/preview/e;->s:F

    add-float/2addr v2, v3

    iput v2, v1, Lcom/oppo/camera/ui/preview/e;->r:F

    .line 273
    invoke-interface/range {p1 .. p1}, Lcom/oppo/camera/gl/h;->c()V

    .line 275
    iget v2, v1, Lcom/oppo/camera/ui/preview/e;->r:F

    float-to-double v2, v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, v5

    if-gtz v2, :cond_3

    .line 276
    invoke-interface {v0, v4}, Lcom/oppo/camera/gl/h;->a(F)V

    .line 277
    invoke-super/range {p0 .. p6}, Lcom/oppo/camera/gl/t;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/ui/menu/levelcontrol/f;IIII)V

    .line 278
    invoke-interface/range {p1 .. p1}, Lcom/oppo/camera/gl/h;->f()V

    .line 279
    monitor-exit v11

    return-void

    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    .line 281
    iput v2, v1, Lcom/oppo/camera/ui/preview/e;->r:F

    .line 282
    iget v2, v1, Lcom/oppo/camera/ui/preview/e;->r:F

    invoke-interface {v0, v2}, Lcom/oppo/camera/gl/h;->a(F)V

    .line 284
    invoke-super/range {p0 .. p6}, Lcom/oppo/camera/gl/t;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/ui/menu/levelcontrol/f;IIII)V

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/preview/e;->k()V

    .line 286
    invoke-interface/range {p1 .. p1}, Lcom/oppo/camera/gl/h;->f()V

    .line 287
    monitor-exit v11

    return-void

    .line 291
    :cond_4
    iget v2, v1, Lcom/oppo/camera/ui/preview/e;->q:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_5

    .line 292
    invoke-interface/range {p1 .. p1}, Lcom/oppo/camera/gl/h;->c()V

    .line 293
    invoke-interface {v0, v4}, Lcom/oppo/camera/gl/h;->a(F)V

    .line 294
    invoke-super/range {p0 .. p6}, Lcom/oppo/camera/gl/t;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/ui/menu/levelcontrol/f;IIII)V

    .line 295
    invoke-interface/range {p1 .. p1}, Lcom/oppo/camera/gl/h;->f()V

    .line 296
    monitor-exit v11

    return-void

    .line 299
    :cond_5
    iget v2, v1, Lcom/oppo/camera/ui/preview/e;->q:I

    if-nez v2, :cond_7

    .line 300
    invoke-super/range {p0 .. p6}, Lcom/oppo/camera/gl/t;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/ui/menu/levelcontrol/f;IIII)V

    .line 302
    iget-boolean v0, v1, Lcom/oppo/camera/ui/preview/e;->w:Z

    if-nez v0, :cond_6

    .line 303
    iput-boolean v12, v1, Lcom/oppo/camera/ui/preview/e;->w:Z

    const-string v0, "CameraScreenNail"

    const-string v2, "CameraTest First Frame Draw"

    .line 305
    invoke-static {v0, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_6
    monitor-exit v11

    return-void

    .line 311
    :cond_7
    iget v2, v1, Lcom/oppo/camera/ui/preview/e;->q:I

    const/16 v13, 0x9

    const/4 v14, 0x4

    const/4 v8, 0x0

    if-eq v2, v12, :cond_e

    const/4 v3, 0x2

    if-eq v2, v3, :cond_d

    const/4 v3, 0x5

    const/16 v7, 0x8

    const/4 v4, 0x6

    if-eq v2, v3, :cond_9

    if-eq v2, v4, :cond_a

    const/4 v3, 0x7

    if-eq v2, v3, :cond_a

    if-eq v2, v7, :cond_8

    move/from16 v12, p3

    move v15, v8

    const/4 v2, 0x3

    move/from16 v8, p4

    goto/16 :goto_3

    :cond_8
    move v15, v8

    goto :goto_0

    .line 313
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/oppo/camera/ui/preview/e;->a(Lcom/oppo/camera/gl/h;)V

    .line 314
    iget-object v2, v1, Lcom/oppo/camera/ui/preview/e;->C:Lcom/oppo/camera/ui/preview/b;

    invoke-interface {v2, v9, v10}, Lcom/oppo/camera/ui/preview/b;->a(II)V

    .line 315
    iget-object v2, v1, Lcom/oppo/camera/ui/preview/e;->g:Lcom/oppo/camera/ui/preview/e$a;

    invoke-interface {v2}, Lcom/oppo/camera/ui/preview/e$a;->K()V

    .line 316
    invoke-virtual {v1, v4}, Lcom/oppo/camera/ui/preview/e;->b(I)V

    .line 325
    :cond_a
    iget-boolean v2, v1, Lcom/oppo/camera/ui/preview/e;->y:Z

    if-eqz v2, :cond_b

    .line 326
    monitor-exit v11

    return-void

    .line 329
    :cond_b
    iget-object v2, v1, Lcom/oppo/camera/ui/preview/e;->C:Lcom/oppo/camera/ui/preview/b;

    iget-object v6, v1, Lcom/oppo/camera/ui/preview/e;->D:Lcom/oppo/camera/gl/s;

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v16, v6

    move/from16 v6, p5

    move v12, v7

    move/from16 v7, p6

    move v15, v8

    move-object/from16 v8, v16

    invoke-interface/range {v2 .. v8}, Lcom/oppo/camera/ui/preview/b;->b(Lcom/oppo/camera/gl/h;IIIILcom/oppo/camera/gl/c;)Z

    .line 330
    invoke-super/range {p0 .. p6}, Lcom/oppo/camera/gl/t;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/ui/menu/levelcontrol/f;IIII)V

    .line 331
    invoke-virtual {v1, v12}, Lcom/oppo/camera/ui/preview/e;->b(I)V

    .line 334
    :goto_0
    iget-object v2, v1, Lcom/oppo/camera/ui/preview/e;->C:Lcom/oppo/camera/ui/preview/b;

    iget-object v3, v1, Lcom/oppo/camera/ui/preview/e;->G:Lcom/oppo/camera/ui/preview/e$b;

    iget v4, v1, Lcom/oppo/camera/ui/preview/e;->H:I

    invoke-interface {v3, v4}, Lcom/oppo/camera/ui/preview/e$b;->a(I)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/oppo/camera/ui/preview/b;->a(I)V

    .line 335
    iget-object v2, v1, Lcom/oppo/camera/ui/preview/e;->C:Lcom/oppo/camera/ui/preview/b;

    iget-object v3, v1, Lcom/oppo/camera/ui/preview/e;->A:Landroid/content/Context;

    iget-object v4, v1, Lcom/oppo/camera/ui/preview/e;->G:Lcom/oppo/camera/ui/preview/e$b;

    invoke-interface {v2, v3, v4}, Lcom/oppo/camera/ui/preview/b;->a(Landroid/content/Context;Lcom/oppo/camera/ui/preview/e$b;)V

    .line 337
    iget-object v2, v1, Lcom/oppo/camera/ui/preview/e;->A:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/oppo/camera/ui/preview/e$2;

    invoke-direct {v3, v1}, Lcom/oppo/camera/ui/preview/e$2;-><init>(Lcom/oppo/camera/ui/preview/e;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 344
    iput-boolean v15, v1, Lcom/oppo/camera/ui/preview/e;->z:Z

    .line 345
    invoke-virtual {v1, v13}, Lcom/oppo/camera/ui/preview/e;->b(I)V

    .line 346
    iget-boolean v2, v1, Lcom/oppo/camera/ui/preview/e;->u:Z

    if-nez v2, :cond_c

    const/4 v2, 0x1

    goto :goto_1

    :cond_c
    move v2, v15

    :goto_1
    iput-boolean v2, v1, Lcom/oppo/camera/ui/preview/e;->u:Z

    move/from16 v12, p3

    move/from16 v8, p4

    goto :goto_2

    :cond_d
    move v15, v8

    .line 355
    invoke-direct/range {p0 .. p1}, Lcom/oppo/camera/ui/preview/e;->a(Lcom/oppo/camera/gl/h;)V

    .line 356
    iget-object v2, v1, Lcom/oppo/camera/ui/preview/e;->B:Lcom/oppo/camera/ui/preview/l;

    move/from16 v12, p3

    move/from16 v8, p4

    invoke-virtual {v2, v12, v8, v9, v10}, Lcom/oppo/camera/ui/preview/l;->a(IIII)V

    .line 357
    invoke-virtual {v1, v14}, Lcom/oppo/camera/ui/preview/e;->b(I)V

    :goto_2
    const/4 v2, 0x3

    goto :goto_3

    :cond_e
    move/from16 v12, p3

    move v15, v8

    move/from16 v8, p4

    .line 350
    invoke-direct/range {p0 .. p1}, Lcom/oppo/camera/ui/preview/e;->a(Lcom/oppo/camera/gl/h;)V

    const/4 v2, 0x3

    .line 351
    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/preview/e;->b(I)V

    .line 364
    :goto_3
    iget v3, v1, Lcom/oppo/camera/ui/preview/e;->q:I

    if-eq v3, v2, :cond_f

    iget v2, v1, Lcom/oppo/camera/ui/preview/e;->q:I

    if-eq v2, v14, :cond_f

    iget v2, v1, Lcom/oppo/camera/ui/preview/e;->q:I

    if-ne v2, v13, :cond_16

    .line 367
    :cond_f
    iget v2, v1, Lcom/oppo/camera/ui/preview/e;->q:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_10

    goto :goto_4

    .line 368
    :cond_10
    iget v2, v1, Lcom/oppo/camera/ui/preview/e;->q:I

    if-ne v2, v14, :cond_11

    .line 369
    iget-object v2, v1, Lcom/oppo/camera/ui/preview/e;->B:Lcom/oppo/camera/ui/preview/l;

    iget-object v3, v1, Lcom/oppo/camera/ui/preview/e;->D:Lcom/oppo/camera/gl/s;

    invoke-virtual {v2, v0, v1, v3}, Lcom/oppo/camera/ui/preview/l;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/ui/preview/e;Lcom/oppo/camera/gl/s;)Z

    move-result v2

    goto :goto_5

    .line 371
    :cond_11
    iget-object v2, v1, Lcom/oppo/camera/ui/preview/e;->F:Lcom/oppo/camera/gl/d;

    if-eqz v2, :cond_12

    .line 372
    iget-object v2, v1, Lcom/oppo/camera/ui/preview/e;->C:Lcom/oppo/camera/ui/preview/b;

    iget-object v14, v1, Lcom/oppo/camera/ui/preview/e;->F:Lcom/oppo/camera/gl/d;

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object v8, v14

    invoke-interface/range {v2 .. v8}, Lcom/oppo/camera/ui/preview/b;->a(Lcom/oppo/camera/gl/h;IIIILcom/oppo/camera/gl/c;)Z

    move-result v8

    move v2, v8

    goto :goto_5

    :cond_12
    :goto_4
    move v2, v15

    :goto_5
    if-eqz v2, :cond_13

    .line 377
    iget-object v0, v1, Lcom/oppo/camera/ui/preview/e;->g:Lcom/oppo/camera/ui/preview/e$a;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/e$a;->J()V

    goto :goto_6

    .line 379
    :cond_13
    iget v2, v1, Lcom/oppo/camera/ui/preview/e;->q:I

    if-ne v2, v13, :cond_15

    .line 380
    iget-boolean v2, v1, Lcom/oppo/camera/ui/preview/e;->z:Z

    if-eqz v2, :cond_14

    .line 381
    iget-object v2, v1, Lcom/oppo/camera/ui/preview/e;->A:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/oppo/camera/ui/preview/e$3;

    invoke-direct {v3, v1}, Lcom/oppo/camera/ui/preview/e$3;-><init>(Lcom/oppo/camera/ui/preview/e;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 388
    invoke-virtual {v1, v15}, Lcom/oppo/camera/ui/preview/e;->b(I)V

    .line 391
    :cond_14
    iget-object v2, v1, Lcom/oppo/camera/ui/preview/e;->F:Lcom/oppo/camera/gl/d;

    if-eqz v2, :cond_15

    .line 393
    iget-object v2, v1, Lcom/oppo/camera/ui/preview/e;->C:Lcom/oppo/camera/ui/preview/b;

    invoke-interface {v2}, Lcom/oppo/camera/ui/preview/b;->a()F

    move-result v2

    invoke-interface {v0, v2}, Lcom/oppo/camera/gl/h;->a(F)V

    .line 394
    iget-object v3, v1, Lcom/oppo/camera/ui/preview/e;->F:Lcom/oppo/camera/gl/d;

    move-object/from16 v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-interface/range {v2 .. v7}, Lcom/oppo/camera/gl/h;->a(Lcom/oppo/camera/gl/c;IIII)V

    .line 395
    iget-object v0, v1, Lcom/oppo/camera/ui/preview/e;->g:Lcom/oppo/camera/ui/preview/e$a;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/e$a;->J()V

    .line 396
    monitor-exit v11

    return-void

    .line 402
    :cond_15
    invoke-super/range {p0 .. p6}, Lcom/oppo/camera/gl/t;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/ui/menu/levelcontrol/f;IIII)V

    .line 406
    :cond_16
    :goto_6
    monitor-exit v11

    return-void

    .line 264
    :cond_17
    :goto_7
    monitor-exit v11

    return-void

    :catchall_0
    move-exception v0

    .line 406
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/oppo/camera/ui/preview/e$b;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/e;->G:Lcom/oppo/camera/ui/preview/e$b;

    return-void
.end method

.method public b(I)V
    .locals 4

    .line 241
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/e;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "CameraScreenNail"

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAnimState, state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oppo/camera/ui/preview/e;->q:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iput p1, p0, Lcom/oppo/camera/ui/preview/e;->q:I

    .line 245
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(II)V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/e;->i:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/e;->i:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v0, p1, p2}, Lcom/oppo/camera/ui/preview/a/i;->a(II)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 490
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/e;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 491
    :try_start_0
    iget-boolean v1, p0, Lcom/oppo/camera/ui/preview/e;->x:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 492
    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/e;->x:Z

    .line 494
    iget-boolean v1, p0, Lcom/oppo/camera/ui/preview/e;->x:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/ui/preview/e;->t:Z

    if-eqz v1, :cond_0

    .line 495
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/e;->g:Lcom/oppo/camera/ui/preview/e$a;

    invoke-interface {v1}, Lcom/oppo/camera/ui/preview/e$a;->J()V

    .line 499
    :cond_0
    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/e;->x:Z

    .line 500
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/e;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_0
    invoke-super {p0}, Lcom/oppo/camera/gl/t;->c()V

    const/4 v1, 0x0

    .line 137
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/preview/e;->b(I)V

    .line 138
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c(II)V
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/e;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 462
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/e;->C:Lcom/oppo/camera/ui/preview/b;

    invoke-interface {v1, p1, p2}, Lcom/oppo/camera/ui/preview/b;->b(II)V

    .line 463
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public h()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/e;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 113
    :try_start_0
    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/e;->w:Z

    .line 114
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public i()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/e;->i:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/a/i;->h()V

    .line 143
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/e;->j:Lcom/oppo/camera/gl/GLRootView;

    new-instance v1, Lcom/oppo/camera/ui/preview/e$1;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/preview/e$1;-><init>(Lcom/oppo/camera/ui/preview/e;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public j()V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/e;->i:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/e;->i:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/a/i;->a()V

    .line 208
    :cond_0
    new-instance v0, Lcom/oppo/camera/gl/p;

    invoke-direct {v0}, Lcom/oppo/camera/gl/p;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/e;->e:Lcom/oppo/camera/gl/p;

    return-void
.end method

.method public k()V
    .locals 2

    const-string v0, "CameraScreenNail"

    const-string v1, "animateOpenEnd"

    .line 231
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 233
    iput v0, p0, Lcom/oppo/camera/ui/preview/e;->r:F

    .line 235
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/e;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 236
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/preview/e;->b(I)V

    .line 237
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public l()V
    .locals 2

    .line 467
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/e;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 468
    :try_start_0
    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/e;->z:Z

    .line 469
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public m()V
    .locals 2

    const-string v0, "CameraScreenNail"

    const-string v1, "forceRequestRender"

    .line 473
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/e;->A:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 476
    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/ui/preview/e$4;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/preview/e$4;-><init>(Lcom/oppo/camera/ui/preview/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    const-string v0, "CameraScreenNail.onFrameAvailable"

    .line 422
    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/e;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 425
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/e;->b()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eq v1, p1, :cond_0

    const-string p1, "CameraScreenNail"

    const-string v1, "****************GOT U HERE!"

    .line 426
    invoke-static {p1, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "CameraScreenNail.onFrameAvailable"

    .line 428
    invoke-static {p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    .line 430
    monitor-exit v0

    return-void

    .line 433
    :cond_0
    iget-boolean p1, p0, Lcom/oppo/camera/ui/preview/e;->v:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 434
    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/e;->v:Z

    const-string p1, "CameraScreenNail"

    const-string v1, "CameraTest First Frame available"

    .line 436
    invoke-static {p1, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :cond_1
    iget-boolean p1, p0, Lcom/oppo/camera/ui/preview/e;->t:Z

    if-eqz p1, :cond_2

    .line 440
    iget p1, p0, Lcom/oppo/camera/ui/preview/e;->q:I

    .line 444
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/e;->g:Lcom/oppo/camera/ui/preview/e$a;

    invoke-interface {p1}, Lcom/oppo/camera/ui/preview/e$a;->L()V

    .line 447
    iget-boolean p1, p0, Lcom/oppo/camera/ui/preview/e;->x:Z

    if-eqz p1, :cond_2

    .line 448
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/e;->g:Lcom/oppo/camera/ui/preview/e$a;

    invoke-interface {p1}, Lcom/oppo/camera/ui/preview/e$a;->J()V

    .line 451
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "CameraScreenNail.onFrameAvailable"

    .line 453
    invoke-static {p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 451
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
