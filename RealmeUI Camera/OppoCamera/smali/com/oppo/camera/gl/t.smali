.class public abstract Lcom/oppo/camera/gl/t;
.super Ljava/lang/Object;
.source "SurfaceTextureScreenNail.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/gl/t$a;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/Object;

.field protected b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oppo/camera/gl/g;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Lcom/oppo/camera/gl/s;

.field protected d:Lcom/oppo/camera/gl/n;

.field protected e:Lcom/oppo/camera/gl/p;

.field protected f:Landroid/os/Handler;

.field protected g:Lcom/oppo/camera/ui/preview/e$a;

.field protected h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oppo/camera/gl/t$a;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Lcom/oppo/camera/ui/preview/a/i;

.field protected j:Lcom/oppo/camera/gl/GLRootView;

.field protected k:I

.field protected l:I

.field protected m:Ljava/lang/Object;

.field protected n:J

.field protected o:I

.field private final p:Ljava/lang/Object;

.field private q:Landroid/graphics/SurfaceTexture;

.field private r:[F

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:I

.field private w:I

.field private x:F

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/gl/t;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    .line 52
    iput-object v0, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    .line 53
    iput-object v0, p0, Lcom/oppo/camera/gl/t;->d:Lcom/oppo/camera/gl/n;

    .line 54
    iput-object v0, p0, Lcom/oppo/camera/gl/t;->e:Lcom/oppo/camera/gl/p;

    .line 55
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/gl/t;->f:Landroid/os/Handler;

    .line 56
    iput-object v0, p0, Lcom/oppo/camera/gl/t;->g:Lcom/oppo/camera/ui/preview/e$a;

    .line 57
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/gl/t;->h:Ljava/util/HashMap;

    .line 59
    iput-object v0, p0, Lcom/oppo/camera/gl/t;->i:Lcom/oppo/camera/ui/preview/a/i;

    .line 60
    iput-object v0, p0, Lcom/oppo/camera/gl/t;->j:Lcom/oppo/camera/gl/GLRootView;

    .line 64
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/gl/t;->m:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 65
    iput-wide v1, p0, Lcom/oppo/camera/gl/t;->n:J

    const/4 v1, 0x0

    .line 67
    iput v1, p0, Lcom/oppo/camera/gl/t;->o:I

    .line 75
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/oppo/camera/gl/t;->p:Ljava/lang/Object;

    .line 76
    iput-object v0, p0, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    const/16 v0, 0x10

    .line 77
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oppo/camera/gl/t;->r:[F

    .line 78
    iput-boolean v1, p0, Lcom/oppo/camera/gl/t;->s:Z

    .line 79
    iput-boolean v1, p0, Lcom/oppo/camera/gl/t;->t:Z

    .line 80
    iput-boolean v1, p0, Lcom/oppo/camera/gl/t;->u:Z

    const/4 v0, -0x1

    .line 81
    iput v0, p0, Lcom/oppo/camera/gl/t;->v:I

    .line 82
    iput v0, p0, Lcom/oppo/camera/gl/t;->w:I

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/oppo/camera/gl/t;->x:F

    .line 84
    iput v1, p0, Lcom/oppo/camera/gl/t;->y:I

    .line 85
    iput v1, p0, Lcom/oppo/camera/gl/t;->z:I

    return-void
.end method

.method private static a(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    const/4 v0, 0x0

    .line 160
    invoke-virtual {p0, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 162
    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->release()V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/oppo/camera/gl/h;)V
    .locals 10

    .line 414
    iget-object v0, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/s;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    invoke-virtual {v0, p2}, Lcom/oppo/camera/gl/s;->c(Lcom/oppo/camera/gl/h;)V

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/gl/t;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 421
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/gl/t;->h:Ljava/util/HashMap;

    .line 422
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 424
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/gl/t$a;

    .line 427
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 428
    iget-object v3, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    invoke-virtual {v3}, Lcom/oppo/camera/gl/s;->g()I

    move-result v3

    .line 429
    iget-object v4, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    invoke-virtual {v4}, Lcom/oppo/camera/gl/s;->h()I

    move-result v4

    .line 431
    sget-object v5, Lcom/oppo/camera/gl/t$a;->f:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v5, :cond_1

    .line 432
    iget-object v5, p0, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oppo/camera/gl/g;

    iget-object v9, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    invoke-virtual {p0, p2, v5, v9, v8}, Lcom/oppo/camera/gl/t;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;Lcom/oppo/camera/gl/s;[F)V

    .line 433
    iget-object p2, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    invoke-virtual {p2}, Lcom/oppo/camera/gl/s;->d()I

    move-result p2

    invoke-static {p2, v3, v4}, Lcom/oppo/camera/o/d;->b(III)Landroid/graphics/Bitmap;

    move-result-object v8

    goto/16 :goto_1

    .line 434
    :cond_1
    sget-object v5, Lcom/oppo/camera/gl/t$a;->g:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 435
    iget-object v5, p0, Lcom/oppo/camera/gl/t;->i:Lcom/oppo/camera/ui/preview/a/i;

    iget-object v8, p0, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/camera/gl/g;

    iget-object v9, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    invoke-interface {v5, p2, v8, v9}, Lcom/oppo/camera/ui/preview/a/i;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;Lcom/oppo/camera/gl/s;)Z

    .line 436
    iget-object p2, p0, Lcom/oppo/camera/gl/t;->e:Lcom/oppo/camera/gl/p;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/t$a;->b()I

    move-result v5

    .line 437
    invoke-virtual {v0}, Lcom/oppo/camera/gl/t$a;->a()Z

    move-result v8

    .line 436
    invoke-virtual {p2, v3, v4, v5, v8}, Lcom/oppo/camera/gl/p;->a(IIIZ)V

    .line 438
    iget-object p2, p0, Lcom/oppo/camera/gl/t;->e:Lcom/oppo/camera/gl/p;

    iget-object v5, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    invoke-virtual {v5}, Lcom/oppo/camera/gl/s;->d()I

    move-result v5

    invoke-virtual {p2, v5, v3, v4}, Lcom/oppo/camera/gl/p;->a(III)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 439
    invoke-virtual {v0, p2}, Lcom/oppo/camera/gl/t$a;->a(Landroid/graphics/Bitmap;)V

    .line 440
    iget-object p2, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    invoke-virtual {p2}, Lcom/oppo/camera/gl/s;->d()I

    move-result p2

    invoke-static {p2, v3, v4}, Lcom/oppo/camera/o/d;->b(III)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 442
    iget-object v3, p0, Lcom/oppo/camera/gl/t;->m:Ljava/lang/Object;

    monitor-enter v3

    .line 443
    :try_start_1
    iget-boolean p2, v0, Lcom/oppo/camera/gl/t$a;->h:Z

    if-eqz p2, :cond_2

    .line 444
    iget-wide v4, p0, Lcom/oppo/camera/gl/t;->n:J

    goto :goto_0

    :cond_2
    move-wide v4, v6

    .line 447
    :goto_0
    iput-wide v6, p0, Lcom/oppo/camera/gl/t;->n:J

    .line 448
    monitor-exit v3

    move-wide v6, v4

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 449
    :cond_3
    invoke-static {}, Lcom/oppo/camera/o/d;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 450
    iget-object v3, p0, Lcom/oppo/camera/gl/t;->i:Lcom/oppo/camera/ui/preview/a/i;

    iget-object v4, p0, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/gl/g;

    iget-object v5, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    invoke-interface {v3, p2, v4, v5}, Lcom/oppo/camera/ui/preview/a/i;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;Lcom/oppo/camera/gl/s;)Z

    .line 451
    iget-object p2, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    invoke-virtual {p2}, Lcom/oppo/camera/gl/s;->d()I

    move-result p2

    iget-object v3, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    invoke-virtual {v3}, Lcom/oppo/camera/gl/s;->g()I

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    .line 452
    invoke-virtual {v4}, Lcom/oppo/camera/gl/s;->h()I

    move-result v4

    const-string v5, "preview"

    .line 451
    invoke-static {p2, v3, v4, v5}, Lcom/oppo/camera/o/d;->a(IIILjava/lang/String;)V

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    if-eqz v8, :cond_5

    .line 456
    invoke-virtual {v0, v8, v6, v7}, Lcom/oppo/camera/gl/t$a;->a(Landroid/graphics/Bitmap;J)V

    .line 458
    iget-object p2, p0, Lcom/oppo/camera/gl/t;->p:Ljava/lang/Object;

    monitor-enter p2

    .line 459
    :try_start_2
    iget-object v0, p0, Lcom/oppo/camera/gl/t;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    monitor-exit p2

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 463
    :cond_5
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "capturePreview, dump bitmap use time: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", timeStamp: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SurfaceTextureScreenNail"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_2
    move-exception p1

    .line 422
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1
.end method

.method private h()Z
    .locals 11

    .line 381
    iget-object v0, p0, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    .line 386
    iget-object v2, p0, Lcom/oppo/camera/gl/t;->p:Ljava/lang/Object;

    monitor-enter v2

    .line 387
    :try_start_0
    iget-object v3, p0, Lcom/oppo/camera/gl/t;->h:Ljava/util/HashMap;

    .line 388
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 392
    sget-object v2, Lcom/oppo/camera/gl/t$a;->g:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 393
    sget-object v2, Lcom/oppo/camera/gl/t$a;->g:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/gl/t$a;

    .line 395
    iget-object v6, p0, Lcom/oppo/camera/gl/t;->m:Ljava/lang/Object;

    monitor-enter v6

    .line 396
    :try_start_1
    iget-wide v7, p0, Lcom/oppo/camera/gl/t;->n:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    iget-wide v7, p0, Lcom/oppo/camera/gl/t;->n:J

    cmp-long v7, v0, v7

    if-ltz v7, :cond_0

    move v7, v4

    goto :goto_0

    :cond_0
    move v7, v5

    :goto_0
    const-string v8, "SurfaceTextureScreenNail"

    .line 398
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "needCapturePreview, previewTimestamp: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mCaptureTimestamp: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/oppo/camera/gl/t;->n:J

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", timeStampMatched: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", size: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-static {v8, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 403
    iget-boolean v0, v2, Lcom/oppo/camera/gl/t$a;->h:Z

    if-eqz v0, :cond_1

    if-eqz v7, :cond_2

    :cond_1
    move v0, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 401
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    move v0, v5

    .line 406
    :goto_1
    invoke-static {}, Lcom/oppo/camera/o/d;->a()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/oppo/camera/gl/t$a;->f:Ljava/lang/String;

    .line 407
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v5

    goto :goto_3

    :cond_4
    :goto_2
    move v0, v4

    .line 410
    :goto_3
    iget-object v1, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    move v4, v5

    :goto_4
    return v4

    :catchall_1
    move-exception v0

    .line 388
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 4

    const-string v0, "SurfaceTextureScreenNail"

    const-string v1, "acquireSurfaceTexture"

    .line 181
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lcom/oppo/camera/gl/g;

    const v1, 0x8d65

    invoke-direct {v0, v1}, Lcom/oppo/camera/gl/g;-><init>(I)V

    .line 185
    new-instance v2, Lcom/oppo/camera/gl/g;

    invoke-direct {v2, v1}, Lcom/oppo/camera/gl/g;-><init>(I)V

    .line 186
    new-instance v3, Lcom/oppo/camera/gl/g;

    invoke-direct {v3, v1}, Lcom/oppo/camera/gl/g;-><init>(I)V

    .line 188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    .line 189
    iget-object v1, p0, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p0, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/gl/g;

    .line 195
    iget v2, p0, Lcom/oppo/camera/gl/t;->k:I

    iget v3, p0, Lcom/oppo/camera/gl/t;->l:I

    invoke-virtual {v1, v2, v3}, Lcom/oppo/camera/gl/g;->a(II)V

    goto :goto_0

    .line 198
    :cond_1
    new-instance v0, Lcom/oppo/camera/gl/s;

    iget v1, p0, Lcom/oppo/camera/gl/t;->k:I

    iget v2, p0, Lcom/oppo/camera/gl/t;->l:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/oppo/camera/gl/s;-><init>(IIZ)V

    iput-object v0, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    .line 200
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/gl/g;

    invoke-virtual {v1}, Lcom/oppo/camera/gl/g;->d()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    .line 201
    iget-object v0, p0, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/oppo/camera/gl/t;->f:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 203
    iget-object v0, p0, Lcom/oppo/camera/gl/t;->i:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_2

    .line 204
    iget-object v1, p0, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/preview/a/i;->a(Landroid/graphics/SurfaceTexture;)V

    .line 205
    iget-object v0, p0, Lcom/oppo/camera/gl/t;->i:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/preview/a/i;->a(Z)V

    .line 209
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 211
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 214
    :goto_1
    monitor-enter p0

    .line 215
    :try_start_1
    iput-boolean v3, p0, Lcom/oppo/camera/gl/t;->s:Z

    .line 216
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(I)V
    .locals 0

    .line 111
    monitor-enter p0

    .line 112
    :try_start_0
    iput p1, p0, Lcom/oppo/camera/gl/t;->o:I

    .line 113
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(II)V
    .locals 5

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSize(), height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceTextureScreenNail"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iput p1, p0, Lcom/oppo/camera/gl/t;->k:I

    .line 292
    iput p2, p0, Lcom/oppo/camera/gl/t;->l:I

    .line 294
    iget-object v0, p0, Lcom/oppo/camera/gl/t;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 295
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    if-eqz v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    invoke-virtual {v1}, Lcom/oppo/camera/gl/s;->l()V

    const/4 v1, 0x0

    .line 297
    iput-object v1, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    .line 300
    :cond_0
    new-instance v1, Lcom/oppo/camera/gl/s;

    iget v2, p0, Lcom/oppo/camera/gl/t;->k:I

    iget v3, p0, Lcom/oppo/camera/gl/t;->l:I

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/oppo/camera/gl/s;-><init>(IIZ)V

    iput-object v1, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    .line 301
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    iget-object v0, p0, Lcom/oppo/camera/gl/t;->i:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_1

    .line 304
    invoke-interface {v0, p1, p2}, Lcom/oppo/camera/ui/preview/a/i;->b(II)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 301
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcom/oppo/camera/gl/GLRootView;)V
    .locals 1

    .line 167
    iput-object p1, p0, Lcom/oppo/camera/gl/t;->j:Lcom/oppo/camera/gl/GLRootView;

    .line 169
    iget-object p1, p0, Lcom/oppo/camera/gl/t;->i:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz p1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/oppo/camera/gl/t;->j:Lcom/oppo/camera/gl/GLRootView;

    invoke-interface {p1, v0}, Lcom/oppo/camera/ui/preview/a/i;->a(Lcom/oppo/camera/gl/GLRootView;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/gl/h;IIIII)V
    .locals 9

    .line 333
    monitor-enter p0

    .line 334
    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/camera/gl/t;->s:Z

    if-nez v0, :cond_0

    .line 335
    monitor-exit p0

    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/gl/g;

    invoke-virtual {v1}, Lcom/oppo/camera/gl/g;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    const/4 v0, 0x2

    .line 339
    invoke-interface {p1, v0}, Lcom/oppo/camera/gl/h;->a(I)V

    .line 340
    invoke-interface {p1}, Lcom/oppo/camera/gl/h;->d()I

    move-result v1

    iput v1, p0, Lcom/oppo/camera/gl/t;->y:I

    .line 341
    invoke-interface {p1}, Lcom/oppo/camera/gl/h;->e()I

    move-result v1

    iput v1, p0, Lcom/oppo/camera/gl/t;->z:I

    .line 342
    invoke-interface {p1, p4, p5}, Lcom/oppo/camera/gl/h;->a(II)V

    .line 343
    div-int/lit8 v1, p4, 0x2

    add-int/2addr v1, p2

    .line 344
    div-int/lit8 v3, p5, 0x2

    add-int/2addr v3, p3

    int-to-float v4, v1

    int-to-float v5, v3

    .line 347
    invoke-interface {p1, v4, v5}, Lcom/oppo/camera/gl/h;->a(FF)V

    .line 349
    iget-boolean v4, p0, Lcom/oppo/camera/gl/t;->u:Z

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v4, :cond_2

    .line 350
    iget v4, p0, Lcom/oppo/camera/gl/t;->x:F

    const/4 v7, 0x0

    sub-float/2addr v4, v7

    const v7, 0x3a83126f    # 0.001f

    cmpg-float v4, v4, v7

    if-gez v4, :cond_1

    .line 351
    sget-object v4, Lcom/oppo/camera/config/ConfigDataBase;->KEY_VIDEO_EIS_PREVIEW_SCALE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v4}, Lcom/oppo/camera/config/CameraConfig;->getConfigFloatValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)F

    move-result v4

    iput v4, p0, Lcom/oppo/camera/gl/t;->x:F

    .line 354
    :cond_1
    iget v4, p0, Lcom/oppo/camera/gl/t;->x:F

    iget v7, p0, Lcom/oppo/camera/gl/t;->x:F

    neg-float v7, v7

    invoke-interface {p1, v4, v7, v6}, Lcom/oppo/camera/gl/h;->a(FFF)V

    goto :goto_0

    .line 356
    :cond_2
    invoke-interface {p1, v6, v5, v6}, Lcom/oppo/camera/gl/h;->a(FFF)V

    :goto_0
    const/4 v4, 0x1

    if-ne p6, v4, :cond_3

    .line 360
    invoke-interface {p1, v5, v6, v6}, Lcom/oppo/camera/gl/h;->a(FFF)V

    goto :goto_1

    :cond_3
    if-ne p6, v0, :cond_4

    .line 362
    invoke-interface {p1, v6, v5, v6}, Lcom/oppo/camera/gl/h;->a(FFF)V

    :cond_4
    :goto_1
    neg-int p6, v1

    int-to-float p6, p6

    neg-int v0, v3

    int-to-float v0, v0

    .line 365
    invoke-interface {p1, p6, v0}, Lcom/oppo/camera/gl/h;->a(FF)V

    .line 367
    iget-object p6, p0, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p6}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 368
    iget-object p6, p0, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/oppo/camera/gl/t;->r:[F

    invoke-virtual {p6, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 370
    iget-object v3, p0, Lcom/oppo/camera/gl/t;->i:Lcom/oppo/camera/ui/preview/a/i;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/oppo/camera/ui/preview/a/i;->a(Lcom/oppo/camera/gl/h;IIII)Z

    move-result p6

    if-nez p6, :cond_5

    .line 371
    iget-object p6, p0, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    invoke-virtual {p6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    move-object v1, p6

    check-cast v1, Lcom/oppo/camera/gl/c;

    iget-object v2, p0, Lcom/oppo/camera/gl/t;->r:[F

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/oppo/camera/gl/h;->a(Lcom/oppo/camera/gl/c;[FIIII)V

    .line 374
    :cond_5
    iget p2, p0, Lcom/oppo/camera/gl/t;->y:I

    iget p3, p0, Lcom/oppo/camera/gl/t;->z:I

    invoke-interface {p1, p2, p3}, Lcom/oppo/camera/gl/h;->a(II)V

    .line 375
    invoke-interface {p1}, Lcom/oppo/camera/gl/h;->f()V

    .line 376
    iget-object p1, p0, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 377
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;Lcom/oppo/camera/gl/s;[F)V
    .locals 7

    if-nez p3, :cond_0

    return-void

    .line 321
    :cond_0
    invoke-virtual {p3}, Lcom/oppo/camera/gl/s;->e()I

    move-result v5

    .line 322
    invoke-virtual {p3}, Lcom/oppo/camera/gl/s;->f()I

    move-result v6

    .line 323
    invoke-interface {p1, p3}, Lcom/oppo/camera/gl/h;->a(Lcom/oppo/camera/gl/s;)V

    const/4 p3, 0x0

    int-to-float v0, v6

    .line 324
    invoke-interface {p1, p3, v0}, Lcom/oppo/camera/gl/h;->a(FF)V

    const/high16 p3, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 325
    invoke-interface {p1, v0, p3, v0}, Lcom/oppo/camera/gl/h;->a(FFF)V

    .line 327
    iget-object p3, p0, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/oppo/camera/gl/t;->r:[F

    invoke-virtual {p3, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    if-eqz p4, :cond_1

    goto :goto_0

    .line 328
    :cond_1
    iget-object p4, p0, Lcom/oppo/camera/gl/t;->r:[F

    :goto_0
    move-object v2, p4

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v6}, Lcom/oppo/camera/gl/h;->a(Lcom/oppo/camera/gl/c;[FIIII)V

    .line 329
    invoke-interface {p1}, Lcom/oppo/camera/gl/h;->h()V

    return-void
.end method

.method public a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/ui/menu/levelcontrol/f;IIII)V
    .locals 13

    move-object v1, p0

    move-object v0, p1

    move-object v2, p2

    .line 468
    monitor-enter p0

    if-eqz v2, :cond_0

    .line 470
    :try_start_0
    iget-object v0, v1, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    iget-object v3, v1, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/gl/g;

    invoke-virtual {v3}, Lcom/oppo/camera/gl/g;->d()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    .line 472
    iget-object v0, v1, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/gl/g;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/g;->d()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/oppo/camera/ui/menu/levelcontrol/f;->b(I)V

    .line 474
    iget-object v0, v1, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    if-eqz v0, :cond_a

    .line 476
    iget-boolean v2, v1, Lcom/oppo/camera/gl/t;->s:Z

    if-nez v2, :cond_1

    .line 477
    monitor-exit p0

    return-void

    :cond_1
    const-string v2, "Surfacetexture.draw"

    .line 480
    invoke-static {v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 482
    iget-object v2, v1, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    iget-object v3, v1, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/gl/g;

    invoke-virtual {v3}, Lcom/oppo/camera/gl/g;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    const/4 v2, 0x2

    .line 483
    invoke-interface {p1, v2}, Lcom/oppo/camera/gl/h;->a(I)V

    .line 485
    div-int/lit8 v2, p5, 0x2

    add-int v2, p3, v2

    .line 486
    div-int/lit8 v3, p6, 0x2

    add-int v3, p4, v3

    int-to-float v4, v2

    int-to-float v5, v3

    .line 488
    invoke-interface {p1, v4, v5}, Lcom/oppo/camera/gl/h;->a(FF)V

    .line 490
    iget-boolean v4, v1, Lcom/oppo/camera/gl/t;->u:Z

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_3

    .line 491
    iget v4, v1, Lcom/oppo/camera/gl/t;->x:F

    const/4 v6, 0x0

    sub-float/2addr v4, v6

    const v6, 0x3a83126f    # 0.001f

    cmpg-float v4, v4, v6

    if-gez v4, :cond_2

    .line 492
    sget-object v4, Lcom/oppo/camera/config/ConfigDataBase;->KEY_VIDEO_EIS_PREVIEW_SCALE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v4}, Lcom/oppo/camera/config/CameraConfig;->getConfigFloatValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)F

    move-result v4

    iput v4, v1, Lcom/oppo/camera/gl/t;->x:F

    .line 495
    :cond_2
    iget v4, v1, Lcom/oppo/camera/gl/t;->x:F

    iget v6, v1, Lcom/oppo/camera/gl/t;->x:F

    neg-float v6, v6

    invoke-interface {p1, v4, v6, v5}, Lcom/oppo/camera/gl/h;->a(FFF)V

    goto :goto_0

    :cond_3
    const/high16 v4, -0x40800000    # -1.0f

    .line 497
    invoke-interface {p1, v5, v4, v5}, Lcom/oppo/camera/gl/h;->a(FFF)V

    :goto_0
    neg-int v2, v2

    int-to-float v2, v2

    neg-int v3, v3

    int-to-float v3, v3

    .line 500
    invoke-interface {p1, v2, v3}, Lcom/oppo/camera/gl/h;->a(FF)V

    .line 501
    iget-object v2, v1, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 502
    iget-object v2, v1, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    iget-object v3, v1, Lcom/oppo/camera/gl/t;->r:[F

    invoke-virtual {v2, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 504
    iget-object v2, v1, Lcom/oppo/camera/gl/t;->i:Lcom/oppo/camera/ui/preview/a/i;

    iget-object v3, v1, Lcom/oppo/camera/gl/t;->r:[F

    invoke-interface {v2, v3}, Lcom/oppo/camera/ui/preview/a/i;->a([F)V

    .line 505
    invoke-direct {p0}, Lcom/oppo/camera/gl/t;->h()Z

    move-result v11

    .line 509
    iget-object v2, v1, Lcom/oppo/camera/gl/t;->p:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    :try_start_1
    iget-object v12, v1, Lcom/oppo/camera/gl/t;->h:Ljava/util/HashMap;

    .line 511
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 513
    :try_start_2
    iget-object v2, v1, Lcom/oppo/camera/gl/t;->i:Lcom/oppo/camera/ui/preview/a/i;

    iget-object v3, v1, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/oppo/camera/gl/g;

    iget v9, v1, Lcom/oppo/camera/gl/t;->o:I

    move-object v3, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-interface/range {v2 .. v9}, Lcom/oppo/camera/ui/preview/a/i;->a(Lcom/oppo/camera/gl/h;Lcom/oppo/camera/gl/g;IIIII)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v11, :cond_6

    .line 515
    sget-object v2, Lcom/oppo/camera/gl/t$a;->g:Ljava/lang/String;

    invoke-interface {v12, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 516
    sget-object v2, Lcom/oppo/camera/gl/t$a;->g:Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/oppo/camera/gl/t;->a(Ljava/lang/String;Lcom/oppo/camera/gl/h;)V

    goto :goto_1

    :cond_4
    if-eqz v11, :cond_5

    .line 519
    sget-object v2, Lcom/oppo/camera/gl/t$a;->g:Ljava/lang/String;

    invoke-interface {v12, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 520
    sget-object v2, Lcom/oppo/camera/gl/t$a;->g:Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/oppo/camera/gl/t;->a(Ljava/lang/String;Lcom/oppo/camera/gl/h;)V

    .line 523
    :cond_5
    iget-object v2, v1, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/oppo/camera/gl/c;

    iget-object v4, v1, Lcom/oppo/camera/gl/t;->r:[F

    move-object v2, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/oppo/camera/gl/h;->a(Lcom/oppo/camera/gl/c;[FIIII)V

    .line 526
    :cond_6
    :goto_1
    invoke-virtual {p0, v10}, Lcom/oppo/camera/gl/t;->a(I)V

    if-eqz v11, :cond_8

    .line 529
    invoke-static {}, Lcom/oppo/camera/o/d;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    .line 530
    invoke-direct {p0, v2, p1}, Lcom/oppo/camera/gl/t;->a(Ljava/lang/String;Lcom/oppo/camera/gl/h;)V

    goto :goto_2

    .line 531
    :cond_7
    sget-object v2, Lcom/oppo/camera/gl/t$a;->f:Ljava/lang/String;

    invoke-interface {v12, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 532
    sget-object v2, Lcom/oppo/camera/gl/t$a;->f:Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/oppo/camera/gl/t;->a(Ljava/lang/String;Lcom/oppo/camera/gl/h;)V

    .line 536
    :cond_8
    :goto_2
    invoke-interface {p1}, Lcom/oppo/camera/gl/h;->f()V

    .line 538
    iget-object v2, v1, Lcom/oppo/camera/gl/t;->i:Lcom/oppo/camera/ui/preview/a/i;

    move-object v3, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-interface/range {v2 .. v7}, Lcom/oppo/camera/ui/preview/a/i;->b(Lcom/oppo/camera/gl/h;IIII)Z

    .line 540
    iget v0, v1, Lcom/oppo/camera/gl/t;->v:I

    if-ltz v0, :cond_9

    iget v0, v1, Lcom/oppo/camera/gl/t;->w:I

    if-ltz v0, :cond_9

    iget-boolean v0, v1, Lcom/oppo/camera/gl/t;->t:Z

    if-eqz v0, :cond_9

    .line 541
    iget-object v0, v1, Lcom/oppo/camera/gl/t;->g:Lcom/oppo/camera/ui/preview/e$a;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/e$a;->J()V

    .line 544
    :cond_9
    iget-object v0, v1, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    const-string v0, "Surfacetexture.draw"

    .line 546
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 511
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    .line 548
    :cond_a
    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public a(Lcom/oppo/camera/gl/t$a;ZZLjava/lang/String;)V
    .locals 3

    .line 118
    monitor-enter p0

    :try_start_0
    const-string v0, "SurfaceTextureScreenNail"

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCaptureOnePreviewCallback, cb: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", needCheckTimestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iput-boolean p3, p1, Lcom/oppo/camera/gl/t$a;->h:Z

    .line 123
    iput-boolean p2, p1, Lcom/oppo/camera/gl/t$a;->i:Z

    .line 125
    iget-object p2, p0, Lcom/oppo/camera/gl/t;->p:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    :try_start_1
    iget-object p3, p0, Lcom/oppo/camera/gl/t;->h:Ljava/util/HashMap;

    invoke-virtual {p3, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :try_start_2
    sget-object p1, Lcom/oppo/camera/gl/t$a;->f:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 130
    invoke-virtual {p0, p1}, Lcom/oppo/camera/gl/t;->a(I)V

    .line 131
    iget-object p1, p0, Lcom/oppo/camera/gl/t;->g:Lcom/oppo/camera/ui/preview/e$a;

    invoke-interface {p1}, Lcom/oppo/camera/ui/preview/e$a;->J()V

    .line 133
    :cond_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 127
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 133
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public a(Lcom/oppo/camera/ui/preview/a/i;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/oppo/camera/gl/t;->i:Lcom/oppo/camera/ui/preview/a/i;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 137
    iget-object v0, p0, Lcom/oppo/camera/gl/t;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/gl/t;->h:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/gl/t;->h:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/oppo/camera/gl/t;->h:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 143
    iget-object v1, p0, Lcom/oppo/camera/gl/t;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    :try_start_1
    sget-object v0, Lcom/oppo/camera/gl/t$a;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x0

    .line 145
    iput-wide v2, p0, Lcom/oppo/camera/gl/t;->n:J

    .line 147
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 141
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public a(Z)V
    .locals 0

    .line 175
    monitor-enter p0

    .line 176
    :try_start_0
    iput-boolean p1, p0, Lcom/oppo/camera/gl/t;->u:Z

    .line 177
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public c()V
    .locals 3

    const-string v0, "SurfaceTextureScreenNail"

    const-string v1, "releaseSurfaceTexture"

    .line 224
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    monitor-enter p0

    const/4 v0, 0x0

    .line 227
    :try_start_0
    iput-boolean v0, p0, Lcom/oppo/camera/gl/t;->s:Z

    .line 228
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    iget-object v1, p0, Lcom/oppo/camera/gl/t;->i:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v1, :cond_0

    .line 231
    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/preview/a/i;->a(Z)V

    .line 232
    iget-object v0, p0, Lcom/oppo/camera/gl/t;->i:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/a/i;->g()V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {v0}, Lcom/oppo/camera/gl/s;->l()V

    .line 237
    iput-object v1, p0, Lcom/oppo/camera/gl/t;->c:Lcom/oppo/camera/gl/s;

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 241
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/gl/g;

    .line 242
    invoke-virtual {v2}, Lcom/oppo/camera/gl/g;->l()V

    goto :goto_0

    .line 245
    :cond_2
    iput-object v1, p0, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    .line 248
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_4

    .line 249
    invoke-static {v0}, Lcom/oppo/camera/gl/t;->a(Landroid/graphics/SurfaceTexture;)V

    .line 250
    iput-object v1, p0, Lcom/oppo/camera/gl/t;->q:Landroid/graphics/SurfaceTexture;

    .line 252
    iget-object v0, p0, Lcom/oppo/camera/gl/t;->i:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_4

    .line 253
    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/preview/a/i;->a(Landroid/graphics/SurfaceTexture;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    .line 228
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 4

    .line 281
    iget-object v0, p0, Lcom/oppo/camera/gl/t;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/gl/g;

    .line 283
    iget v2, p0, Lcom/oppo/camera/gl/t;->k:I

    iget v3, p0, Lcom/oppo/camera/gl/t;->l:I

    invoke-virtual {v1, v2, v3}, Lcom/oppo/camera/gl/g;->a(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e()I
    .locals 1

    .line 309
    iget v0, p0, Lcom/oppo/camera/gl/t;->k:I

    return v0
.end method

.method public f()I
    .locals 1

    .line 313
    iget v0, p0, Lcom/oppo/camera/gl/t;->l:I

    return v0
.end method

.method public g()Z
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/oppo/camera/gl/t;->i:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_0

    .line 553
    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/a/i;->e()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
