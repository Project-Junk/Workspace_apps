.class Lcom/oppo/camera/ui/menu/b/c$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "HeadlineGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/ui/menu/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/menu/b/c;

.field private b:F

.field private c:I


# direct methods
.method private constructor <init>(Lcom/oppo/camera/ui/menu/b/c;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/oppo/camera/ui/menu/b/c$a;->a:Lcom/oppo/camera/ui/menu/b/c;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 p1, 0x0

    .line 283
    iput p1, p0, Lcom/oppo/camera/ui/menu/b/c$a;->b:F

    const/4 p1, 0x0

    .line 284
    iput p1, p0, Lcom/oppo/camera/ui/menu/b/c$a;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/ui/menu/b/c;Lcom/oppo/camera/ui/menu/b/c$1;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/b/c$a;-><init>(Lcom/oppo/camera/ui/menu/b/c;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "HeadlineGLSurfaceView"

    const-string v1, "DefaultGestureDetector, onDown"

    .line 288
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 290
    iput v0, p0, Lcom/oppo/camera/ui/menu/b/c$a;->b:F

    .line 291
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c$a;->a:Lcom/oppo/camera/ui/menu/b/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oppo/camera/ui/menu/b/c;->a(Lcom/oppo/camera/ui/menu/b/c;Z)Z

    .line 292
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c$a;->a:Lcom/oppo/camera/ui/menu/b/c;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/oppo/camera/ui/menu/b/c;->a(Lcom/oppo/camera/ui/menu/b/c;I)I

    .line 293
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/c$a;->c:I

    .line 295
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c$a;->a:Lcom/oppo/camera/ui/menu/b/c;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/b/c;->d(Lcom/oppo/camera/ui/menu/b/c;)Lcom/oppo/camera/ui/menu/b/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c$a;->a:Lcom/oppo/camera/ui/menu/b/c;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/b/c;->d(Lcom/oppo/camera/ui/menu/b/c;)Lcom/oppo/camera/ui/menu/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/b/f;->c()V

    .line 299
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .line 352
    iget v0, p0, Lcom/oppo/camera/ui/menu/b/c$a;->b:F

    const v1, 0x3f99999a    # 1.2f

    div-float v1, p3, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/ui/menu/b/c$a;->b:F

    .line 354
    iget v0, p0, Lcom/oppo/camera/ui/menu/b/c$a;->c:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "HeadlineGLSurfaceView"

    if-eq v0, v1, :cond_0

    const-string p1, "DefaultGestureDetector, onScroll, Not the same event."

    .line 355
    invoke-static {v3, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c$a;->a:Lcom/oppo/camera/ui/menu/b/c;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/b/c;->e(Lcom/oppo/camera/ui/menu/b/c;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string p1, "DefaultGestureDetector, onScroll, can\'t response TouchEvent."

    .line 361
    invoke-static {v3, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c$a;->a:Lcom/oppo/camera/ui/menu/b/c;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/b/c;->f(Lcom/oppo/camera/ui/menu/b/c;)Lcom/oppo/camera/ui/menu/b/c$e;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c$a;->a:Lcom/oppo/camera/ui/menu/b/c;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/b/c;->f(Lcom/oppo/camera/ui/menu/b/c;)Lcom/oppo/camera/ui/menu/b/c$e;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/ui/menu/b/c$e;->G()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "DefaultGestureDetector, onScroll, return when isCapturingOrVideoRecording"

    .line 367
    invoke-static {v3, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 372
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultGestureDetector,  onScroll, mOffSetDistance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/menu/b/c$a;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c$a;->a:Lcom/oppo/camera/ui/menu/b/c;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/b/c;->g(Lcom/oppo/camera/ui/menu/b/c;)I

    move-result v0

    if-lez v0, :cond_3

    iget v0, p0, Lcom/oppo/camera/ui/menu/b/c$a;->b:F

    .line 375
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/b/c$a;->a:Lcom/oppo/camera/ui/menu/b/c;

    invoke-static {v1}, Lcom/oppo/camera/ui/menu/b/c;->g(Lcom/oppo/camera/ui/menu/b/c;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c$a;->a:Lcom/oppo/camera/ui/menu/b/c;

    .line 376
    invoke-static {v0}, Lcom/oppo/camera/ui/menu/b/c;->d(Lcom/oppo/camera/ui/menu/b/c;)Lcom/oppo/camera/ui/menu/b/f;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 377
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/b/c$a;->a:Lcom/oppo/camera/ui/menu/b/c;

    invoke-static {p1}, Lcom/oppo/camera/ui/menu/b/c;->d(Lcom/oppo/camera/ui/menu/b/c;)Lcom/oppo/camera/ui/menu/b/f;

    move-result-object p2

    iget p3, p0, Lcom/oppo/camera/ui/menu/b/c$a;->b:F

    invoke-virtual {p2, p3}, Lcom/oppo/camera/ui/menu/b/f;->b(F)I

    move-result p2

    invoke-static {p1, p2}, Lcom/oppo/camera/ui/menu/b/c;->a(Lcom/oppo/camera/ui/menu/b/c;I)I

    .line 378
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/b/c$a;->a:Lcom/oppo/camera/ui/menu/b/c;

    invoke-static {p1, v2}, Lcom/oppo/camera/ui/menu/b/c;->a(Lcom/oppo/camera/ui/menu/b/c;Z)Z

    return v2

    .line 383
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 304
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c$a;->a:Lcom/oppo/camera/ui/menu/b/c;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/b/c;->e(Lcom/oppo/camera/ui/menu/b/c;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "HeadlineGLSurfaceView"

    const-string v0, "DefaultGestureDetector, onSingleTapUp, can\'t response TouchEvent."

    .line 305
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c$a;->a:Lcom/oppo/camera/ui/menu/b/c;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/b/c;->f(Lcom/oppo/camera/ui/menu/b/c;)Lcom/oppo/camera/ui/menu/b/c$e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c$a;->a:Lcom/oppo/camera/ui/menu/b/c;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/b/c;->f(Lcom/oppo/camera/ui/menu/b/c;)Lcom/oppo/camera/ui/menu/b/c$e;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/ui/menu/b/c$e;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "HeadlineGLSurfaceView"

    const-string v0, "DefaultGestureDetector, onSingleTapUp, return when isCapturingOrVideoRecording"

    .line 311
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c$a;->a:Lcom/oppo/camera/ui/menu/b/c;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/b/c;->e()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c$a;->a:Lcom/oppo/camera/ui/menu/b/c;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/b/c;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    .line 323
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DefaultGestureDetector, onSingleTapUp, x: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HeadlineGLSurfaceView"

    invoke-static {v3, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v2, p0, Lcom/oppo/camera/ui/menu/b/c$a;->a:Lcom/oppo/camera/ui/menu/b/c;

    invoke-static {v2}, Lcom/oppo/camera/ui/menu/b/c;->g(Lcom/oppo/camera/ui/menu/b/c;)I

    move-result v2

    if-lez v2, :cond_5

    const/4 v2, 0x0

    .line 328
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-ltz v2, :cond_5

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/b/c$a;->a:Lcom/oppo/camera/ui/menu/b/c;

    .line 329
    invoke-static {v2}, Lcom/oppo/camera/ui/menu/b/c;->g(Lcom/oppo/camera/ui/menu/b/c;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-gtz v2, :cond_5

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/b/c$a;->a:Lcom/oppo/camera/ui/menu/b/c;

    .line 330
    invoke-static {v2}, Lcom/oppo/camera/ui/menu/b/c;->d(Lcom/oppo/camera/ui/menu/b/c;)Lcom/oppo/camera/ui/menu/b/f;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 331
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/b/c$a;->a:Lcom/oppo/camera/ui/menu/b/c;

    invoke-static {p1}, Lcom/oppo/camera/ui/menu/b/c;->d(Lcom/oppo/camera/ui/menu/b/c;)Lcom/oppo/camera/ui/menu/b/f;

    move-result-object p1

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/b/c$a;->a:Lcom/oppo/camera/ui/menu/b/c;

    invoke-static {v2}, Lcom/oppo/camera/ui/menu/b/c;->g(Lcom/oppo/camera/ui/menu/b/c;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/b/f;->a(F)I

    move-result p1

    .line 332
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c$a;->a:Lcom/oppo/camera/ui/menu/b/c;

    invoke-static {v0, v1}, Lcom/oppo/camera/ui/menu/b/c;->a(Lcom/oppo/camera/ui/menu/b/c;Z)Z

    .line 334
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/b/c$a;->a:Lcom/oppo/camera/ui/menu/b/c;

    invoke-static {v0}, Lcom/oppo/camera/ui/menu/b/c;->h(Lcom/oppo/camera/ui/menu/b/c;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-ltz p1, :cond_3

    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/b/c$a;->a:Lcom/oppo/camera/ui/menu/b/c;

    invoke-static {v1, p1}, Lcom/oppo/camera/ui/menu/b/c;->b(Lcom/oppo/camera/ui/menu/b/c;I)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    :goto_0
    if-ltz p1, :cond_4

    .line 339
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/b/c$a;->a:Lcom/oppo/camera/ui/menu/b/c;

    invoke-static {p1}, Lcom/oppo/camera/ui/menu/b/c;->f(Lcom/oppo/camera/ui/menu/b/c;)Lcom/oppo/camera/ui/menu/b/c$e;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 340
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/b/c$a;->a:Lcom/oppo/camera/ui/menu/b/c;

    invoke-static {p1}, Lcom/oppo/camera/ui/menu/b/c;->f(Lcom/oppo/camera/ui/menu/b/c;)Lcom/oppo/camera/ui/menu/b/c$e;

    move-result-object p1

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/b/c$a;->a:Lcom/oppo/camera/ui/menu/b/c;

    invoke-static {v1}, Lcom/oppo/camera/ui/menu/b/c;->c(Lcom/oppo/camera/ui/menu/b/c;)I

    move-result v1

    invoke-interface {p1, v1}, Lcom/oppo/camera/ui/menu/b/c$e;->i(I)V

    .line 342
    :cond_4
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 347
    :cond_5
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_6
    :goto_2
    const-string p1, "HeadlineGLSurfaceView"

    const-string v0, "DefaultGestureDetector, onSingleTapUp, can\'t response TouchEvent , isAnimationRunning or View is not visible"

    .line 317
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
