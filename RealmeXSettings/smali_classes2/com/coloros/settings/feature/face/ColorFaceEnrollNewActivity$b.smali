.class final Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;
.super Lcom/coloros/settings/utils/be;
.source "ColorFaceEnrollNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/settings/utils/be<",
        "Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;Landroid/os/Looper;)V
    .locals 0

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/utils/be;-><init>(Ljava/lang/Object;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 9

    .line 204
    check-cast p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;

    .line 1430
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "msg.what "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoFaceEnrollNewActivity"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x11

    const/16 v2, 0x9

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v4, :cond_10

    const/4 v6, 0x4

    if-eq v0, v6, :cond_f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-eq v0, v3, :cond_d

    const/4 v8, 0x7

    if-eq v0, v8, :cond_8

    const/16 v6, 0x8

    if-eq v0, v6, :cond_7

    if-eq v0, v2, :cond_3

    const/16 p1, 0x10

    if-eq v0, p1, :cond_1

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 1798
    :cond_0
    invoke-virtual {p2, v4}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->a(Z)V

    return-void

    .line 1475
    :cond_1
    invoke-virtual {p2}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->b()V

    .line 1476
    iget-object p1, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->w:Landroid/hardware/face/FaceManager;

    iget-object v0, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->A:[B

    iget-object v1, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->y:Landroid/os/CancellationSignal;

    .line 6376
    iget-object v2, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->x:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    if-nez v2, :cond_2

    .line 6377
    new-instance v2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$2;

    invoke-direct {v2, p2}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$2;-><init>(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;)V

    iput-object v2, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->x:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    .line 6426
    :cond_2
    iget-object v2, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->x:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    .line 1476
    new-array v4, v5, [I

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/hardware/face/FaceManager;->enroll([BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[I)V

    .line 1477
    iget-boolean p1, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->s:Z

    if-eqz p1, :cond_13

    .line 1478
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v6, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->b:J

    sub-long/2addr v0, v6

    .line 1479
    iget-object p1, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->m:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;

    const-wide/16 v6, 0x3e8

    sub-long/2addr v6, v0

    invoke-virtual {p1, v3, v6, v7}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;->sendEmptyMessageDelayed(IJ)Z

    .line 1480
    iput-boolean v5, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->s:Z

    goto/16 :goto_1

    .line 1470
    :cond_3
    iget-boolean v0, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->n:Z

    if-nez v0, :cond_13

    iget-boolean v0, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->o:Z

    if-nez v0, :cond_13

    .line 1471
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 5574
    iget-object v1, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->m:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;

    invoke-virtual {v1, v2}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;->removeMessages(I)V

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    .line 5577
    invoke-virtual {p2}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->a()V

    .line 5579
    iget-object v0, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->z:Landroid/os/Vibrator;

    if-eqz v0, :cond_4

    .line 5580
    iget-object v0, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->z:Landroid/os/Vibrator;

    sget-object v1, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->a:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 5583
    :cond_4
    iget v0, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->v:I

    if-lt v0, v3, :cond_5

    .line 5585
    invoke-virtual {p2, v5}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->b(Z)V

    .line 5586
    invoke-virtual {p2, v5}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->a(Z)V

    return-void

    :cond_5
    if-eqz p1, :cond_6

    .line 5589
    iget-object p2, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->j:Landroid/widget/TextView;

    invoke-static {p2, p1}, Lcom/coloros/settings/feature/face/a;->a(Landroid/widget/TextView;I)V

    :cond_6
    return-void

    .line 1467
    :cond_7
    invoke-virtual {p2}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->c()V

    return-void

    .line 1456
    :cond_8
    iget-object p1, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->m:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;

    invoke-virtual {p1, v2}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;->removeMessages(I)V

    .line 1457
    iget-object p1, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->g:Lcom/coloros/settings/feature/face/FaceRecordAnimView;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->a()V

    .line 2706
    iget-object p1, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->h:Landroid/graphics/Rect;

    if-nez p1, :cond_9

    const-string p1, "OppoFaceEnrollNewActivity"

    const-string v0, "showFinishView mMaskRect is null"

    .line 2707
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2708
    invoke-virtual {p2}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->d()V

    .line 2710
    :cond_9
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p1, v0, :cond_b

    .line 2718
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->f:Landroid/widget/LinearLayout;

    .line 2719
    iget-object p1, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2720
    iget-object p1, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2722
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2724
    iget-object v1, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->h:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2725
    iget-object v1, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->h:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v1, 0xd

    .line 2727
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2728
    iget-object v2, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->c:Landroid/widget/RelativeLayout;

    iget-object v3, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2729
    monitor-enter p2

    .line 2730
    :try_start_0
    iput-boolean v4, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->r:Z

    .line 2731
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2736
    new-instance p1, Lcom/coloros/settings/feature/face/FaceAnimatedSvgView;

    invoke-direct {p1, p2, v5}, Lcom/coloros/settings/feature/face/FaceAnimatedSvgView;-><init>(Landroid/content/Context;B)V

    iput-object p1, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->i:Lcom/coloros/settings/feature/face/FaceAnimatedSvgView;

    .line 2737
    invoke-virtual {p2}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v2, 0x43f00000    # 480.0f

    div-float/2addr p1, v2

    .line 2739
    iget-object v2, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->i:Lcom/coloros/settings/feature/face/FaceAnimatedSvgView;

    invoke-virtual {v2, p1}, Lcom/coloros/settings/feature/face/FaceAnimatedSvgView;->setScale(F)V

    .line 2740
    iget-object p1, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->i:Lcom/coloros/settings/feature/face/FaceAnimatedSvgView;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {p1, v2}, Lcom/coloros/settings/feature/face/FaceAnimatedSvgView;->setPaintWidth(F)V

    .line 2741
    iget-object p1, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->i:Lcom/coloros/settings/feature/face/FaceAnimatedSvgView;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/face/FaceAnimatedSvgView;->setOnAnimationEndListener(Lcom/coloros/settings/feature/face/FaceAnimatedSvgView$b;)V

    .line 2743
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2745
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2746
    iget-object v0, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->f:Landroid/widget/LinearLayout;

    iget-object v1, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->i:Lcom/coloros/settings/feature/face/FaceAnimatedSvgView;

    invoke-virtual {v0, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2747
    monitor-enter p2

    .line 2748
    :try_start_1
    iput-boolean v4, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->q:Z

    .line 2749
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2751
    iget-object p1, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->i:Lcom/coloros/settings/feature/face/FaceAnimatedSvgView;

    .line 3196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/coloros/settings/feature/face/FaceAnimatedSvgView;->a:J

    .line 3197
    invoke-virtual {p1, v4}, Lcom/coloros/settings/feature/face/FaceAnimatedSvgView;->a(I)V

    .line 3198
    invoke-virtual {p1}, Lcom/coloros/settings/feature/face/FaceAnimatedSvgView;->a()V

    .line 2753
    iget-boolean p1, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->p:Z

    if-eqz p1, :cond_a

    .line 2754
    iget-object p1, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->d:Lcom/coloros/settings/feature/face/MaskView;

    invoke-virtual {p1, v5}, Lcom/coloros/settings/feature/face/MaskView;->setVisibility(I)V

    .line 2755
    iput-boolean v5, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->p:Z

    :cond_a
    return-void

    :catchall_0
    move-exception p1

    .line 2749
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 2731
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 3760
    :cond_b
    iget-object p1, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3763
    iget-object p1, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->e:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3764
    iget-object p1, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->e:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 3765
    iget-object p1, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3768
    iget-object p1, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->g:Lcom/coloros/settings/feature/face/FaceRecordAnimView;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->a()V

    .line 3769
    iget-object p1, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 3770
    instance-of v0, p1, Landroid/graphics/drawable/Animatable2;

    if-eqz v0, :cond_c

    .line 3771
    check-cast p1, Landroid/graphics/drawable/Animatable2;

    invoke-interface {p1}, Landroid/graphics/drawable/Animatable2;->start()V

    .line 3772
    new-instance v0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$4;

    invoke-direct {v0, p2}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$4;-><init>(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;)V

    invoke-interface {p1, v0}, Landroid/graphics/drawable/Animatable2;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    :cond_c
    return-void

    .line 4489
    :cond_d
    iget-boolean p1, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->n:Z

    if-nez p1, :cond_e

    iget-boolean p1, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->o:Z

    if-nez p1, :cond_e

    .line 4490
    iget-object p1, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4491
    iget-object p1, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->l:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4492
    iget-object p1, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->l:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4493
    iget-object p1, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->g:Lcom/coloros/settings/feature/face/FaceRecordAnimView;

    const-string v0, "FaceRecordAnimView"

    const-string v1, "start"

    .line 5441
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5442
    iput-boolean v4, p1, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->e:Z

    .line 5443
    iput v5, p1, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->i:I

    .line 5444
    iput v7, p1, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->b:F

    .line 5445
    iput v7, p1, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->a:F

    .line 5446
    iput v7, p1, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->c:F

    .line 5447
    iput v7, p1, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->d:F

    .line 4494
    iget-object p1, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->l:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_e
    return-void

    .line 1464
    :cond_f
    invoke-virtual {p2}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->b()V

    return-void

    .line 1433
    :cond_10
    iget-object v0, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->m:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;

    invoke-virtual {v0, v2}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;->removeMessages(I)V

    .line 1434
    iget-object v0, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->j:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1435
    iput v5, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->v:I

    .line 1436
    iget p1, p1, Landroid/os/Message;->arg1:I

    rsub-int/lit8 p1, p1, 0x5

    const/16 v0, 0x64

    mul-int/2addr p1, v0

    .line 1437
    div-int/2addr p1, v3

    if-lt p1, v0, :cond_11

    move v0, v4

    goto :goto_0

    :cond_11
    move v0, v5

    .line 1441
    :goto_0
    iget-object v2, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->g:Lcom/coloros/settings/feature/face/FaceRecordAnimView;

    invoke-virtual {v2, p1}, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->setTargetProgress(I)V

    if-eqz v0, :cond_12

    .line 1445
    iput-boolean v4, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->u:Z

    .line 1447
    :cond_12
    iget-boolean p1, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->t:Z

    if-eqz p1, :cond_13

    iget-boolean p1, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->u:Z

    if-eqz p1, :cond_13

    .line 1448
    iget-object p1, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->m:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;->sendEmptyMessage(I)Z

    .line 1449
    iput-boolean v5, p2, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->t:Z

    :cond_13
    :goto_1
    return-void
.end method
