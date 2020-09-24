.class public Lcom/oppo/camera/ui/preview/h;
.super Ljava/lang/Object;
.source "FocusManager.java"

# interfaces
.implements Lcom/oppo/camera/c;
.implements Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar$OnSeekBarChangeListener;
.implements Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/preview/h$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:Lcom/oppo/camera/ui/preview/c;

.field private D:Lcom/oppo/camera/i;

.field private E:I

.field private F:I

.field private G:Z

.field private H:Ljava/lang/String;

.field private I:F

.field private J:F

.field private K:F

.field private L:F

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:Z

.field private R:Z

.field private a:Z

.field private b:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Landroid/app/Activity;

.field private k:Lcom/oppo/camera/ui/preview/FaceView;

.field private l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

.field private m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

.field private n:Z

.field private o:Lcom/oppo/camera/ui/RotateImageView;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Landroid/os/Handler;

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/i;Lcom/oppo/camera/ui/preview/c;)V
    .locals 4

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->a:Z

    .line 99
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->b:Z

    .line 100
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->g:Z

    .line 101
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->h:Z

    .line 102
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->i:Z

    const/4 v1, 0x0

    .line 104
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    .line 105
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/h;->k:Lcom/oppo/camera/ui/preview/FaceView;

    .line 106
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    .line 108
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    .line 109
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->n:Z

    .line 110
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/h;->o:Lcom/oppo/camera/ui/RotateImageView;

    const/4 v2, -0x1

    .line 112
    iput v2, p0, Lcom/oppo/camera/ui/preview/h;->p:I

    .line 113
    iput v0, p0, Lcom/oppo/camera/ui/preview/h;->q:I

    const/4 v2, 0x1

    .line 114
    iput v2, p0, Lcom/oppo/camera/ui/preview/h;->r:I

    const/4 v3, 0x2

    .line 115
    iput v3, p0, Lcom/oppo/camera/ui/preview/h;->s:I

    .line 116
    iget v3, p0, Lcom/oppo/camera/ui/preview/h;->p:I

    iput v3, p0, Lcom/oppo/camera/ui/preview/h;->t:I

    .line 118
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    .line 120
    iput v2, p0, Lcom/oppo/camera/ui/preview/h;->v:I

    .line 122
    iput v0, p0, Lcom/oppo/camera/ui/preview/h;->x:I

    .line 123
    iput v0, p0, Lcom/oppo/camera/ui/preview/h;->y:I

    .line 124
    iput v0, p0, Lcom/oppo/camera/ui/preview/h;->z:I

    .line 125
    iput v0, p0, Lcom/oppo/camera/ui/preview/h;->A:I

    .line 126
    iput v0, p0, Lcom/oppo/camera/ui/preview/h;->B:I

    .line 128
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    .line 129
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/h;->D:Lcom/oppo/camera/i;

    const/4 v1, 0x4

    .line 131
    iput v1, p0, Lcom/oppo/camera/ui/preview/h;->E:I

    .line 132
    iput v0, p0, Lcom/oppo/camera/ui/preview/h;->F:I

    .line 133
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->G:Z

    const-string v1, "normal"

    .line 134
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/h;->H:Ljava/lang/String;

    const/4 v1, 0x0

    .line 136
    iput v1, p0, Lcom/oppo/camera/ui/preview/h;->I:F

    .line 137
    iput v1, p0, Lcom/oppo/camera/ui/preview/h;->J:F

    .line 138
    iput v1, p0, Lcom/oppo/camera/ui/preview/h;->K:F

    .line 139
    iput v1, p0, Lcom/oppo/camera/ui/preview/h;->L:F

    .line 141
    iput v0, p0, Lcom/oppo/camera/ui/preview/h;->M:I

    .line 142
    iput v0, p0, Lcom/oppo/camera/ui/preview/h;->N:I

    .line 143
    iput v0, p0, Lcom/oppo/camera/ui/preview/h;->O:I

    .line 144
    iput v0, p0, Lcom/oppo/camera/ui/preview/h;->P:I

    .line 146
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->Q:Z

    .line 147
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->R:Z

    .line 150
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    .line 151
    iput-object p2, p0, Lcom/oppo/camera/ui/preview/h;->D:Lcom/oppo/camera/i;

    .line 152
    new-instance p1, Lcom/oppo/camera/ui/preview/h$a;

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oppo/camera/ui/preview/h$a;-><init>(Lcom/oppo/camera/ui/preview/h;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    .line 153
    iput-object p3, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    return-void
.end method

.method private F()V
    .locals 13

    .line 287
    iget v2, p0, Lcom/oppo/camera/ui/preview/h;->F:I

    const-wide/16 v0, 0x3e8

    const/16 v3, 0x8

    const/4 v4, 0x6

    const/4 v5, 0x7

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 340
    :pswitch_0
    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->E:I

    iget-boolean v1, p0, Lcom/oppo/camera/ui/preview/h;->G:Z

    invoke-direct {p0, v0, v6, v1}, Lcom/oppo/camera/ui/preview/h;->a(IZZ)V

    goto/16 :goto_0

    .line 308
    :pswitch_1
    iget-boolean v2, p0, Lcom/oppo/camera/ui/preview/h;->a:Z

    if-eqz v2, :cond_0

    .line 309
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v2, v6, v6}, Lcom/oppo/camera/ui/preview/c;->b(ZZ)V

    .line 312
    :cond_0
    iget v2, p0, Lcom/oppo/camera/ui/preview/h;->E:I

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/oppo/camera/ui/preview/h;->G:Z

    invoke-direct {p0, v2, v6, v7}, Lcom/oppo/camera/ui/preview/h;->a(IZZ)V

    .line 314
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    if-eqz v2, :cond_4

    .line 315
    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 316
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 317
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 318
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v2, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 292
    :pswitch_2
    iget-boolean v2, p0, Lcom/oppo/camera/ui/preview/h;->a:Z

    if-eqz v2, :cond_1

    .line 293
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v2, v6, v6}, Lcom/oppo/camera/ui/preview/c;->b(ZZ)V

    .line 296
    :cond_1
    iget v8, p0, Lcom/oppo/camera/ui/preview/h;->E:I

    iget v9, p0, Lcom/oppo/camera/ui/preview/h;->F:I

    const/4 v10, 0x0

    iget-boolean v11, p0, Lcom/oppo/camera/ui/preview/h;->G:Z

    const/4 v12, 0x1

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/oppo/camera/ui/preview/h;->a(IIZZZ)V

    .line 298
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    if-eqz v2, :cond_4

    .line 299
    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 300
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 301
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 302
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v2, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 332
    :pswitch_3
    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->x:I

    if-ne v6, v0, :cond_2

    return-void

    .line 336
    :cond_2
    iget v1, p0, Lcom/oppo/camera/ui/preview/h;->E:I

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/oppo/camera/ui/preview/h;->G:Z

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/ui/preview/h;->a(IIZZZ)V

    goto :goto_0

    .line 324
    :pswitch_4
    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->x:I

    if-ne v6, v0, :cond_3

    return-void

    .line 328
    :cond_3
    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->G:Z

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/preview/h;->g(Z)V

    :cond_4
    :goto_0
    :pswitch_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private G()V
    .locals 3

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doCapture, mAfFocusState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/preview/h;->F:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/c;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 466
    :cond_0
    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->g:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    sget v0, Lcom/oppo/camera/v;->s:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 472
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/preview/h;->d(I)V

    .line 473
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/c;->e()V

    .line 474
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v0, v2}, Lcom/oppo/camera/ui/preview/c;->a(Z)V

    .line 475
    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/preview/h;->d(I)V

    .line 476
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    .line 467
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v0, v1, v2}, Lcom/oppo/camera/ui/preview/c;->a(ZZ)V

    .line 468
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v0, v2}, Lcom/oppo/camera/ui/preview/c;->a(Z)V

    return-void
.end method

.method private H()V
    .locals 4

    .line 688
    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->O:I

    iget v1, p0, Lcom/oppo/camera/ui/preview/h;->P:I

    iget v2, p0, Lcom/oppo/camera/ui/preview/h;->A:I

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oppo/camera/ui/preview/h;->a(IIIZ)V

    return-void
.end method

.method private I()V
    .locals 3

    .line 901
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 902
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->setVisibility(I)V

    .line 903
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->setBarVisibility(Z)V

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/oppo/camera/ui/preview/h;->t:I

    iget v2, p0, Lcom/oppo/camera/ui/preview/h;->p:I

    if-ne v1, v2, :cond_1

    .line 908
    invoke-virtual {v0}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->getValue()F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_2

    .line 910
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->resetProgress()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 911
    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/preview/h;->a(F)V

    .line 914
    :cond_2
    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->p:I

    iput v0, p0, Lcom/oppo/camera/ui/preview/h;->t:I

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/preview/c;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    return-object p0
.end method

.method private a(F)V
    .locals 3

    .line 1098
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    if-eqz v0, :cond_1

    .line 1102
    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/c;->q()I

    move-result v0

    .line 1103
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v1}, Lcom/oppo/camera/ui/preview/c;->r()I

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    return-void

    :cond_0
    int-to-float v2, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v2, v0

    float-to-int p1, v2

    .line 1111
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/preview/c;->a(I)V

    :cond_1
    return-void
.end method

.method private a(IIIZ)V
    .locals 3

    if-eqz p4, :cond_1

    .line 693
    iget-object p4, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    if-eqz v2, :cond_0

    .line 694
    invoke-virtual {v2}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->getAlpha()F

    move-result v2

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    const-string v1, "alpha"

    .line 693
    invoke-static {p4, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    const-wide/16 v0, 0x12c

    .line 695
    invoke-virtual {p4, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 696
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->start()V

    .line 697
    new-instance v0, Lcom/oppo/camera/ui/preview/h$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oppo/camera/ui/preview/h$2;-><init>(Lcom/oppo/camera/ui/preview/h;III)V

    invoke-virtual {p4, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    .line 712
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/oppo/camera/ui/preview/h;->a(III)V

    return-void
.end method

.method private a(IIZZZ)V
    .locals 1

    .line 369
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFocusSuccess, mode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FocusManager"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->g()Z

    .line 373
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->k:Lcom/oppo/camera/ui/preview/FaceView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/FaceView;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-nez p4, :cond_1

    .line 378
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->f()V

    .line 380
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->setAlpha(F)V

    .line 381
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    invoke-virtual {p1, p3, p5}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->a(ZZ)V

    .line 383
    iget-boolean p1, p0, Lcom/oppo/camera/ui/preview/h;->R:Z

    if-eqz p1, :cond_1

    .line 384
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private a(IZZ)V
    .locals 2

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFocusFail, mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FocusManager"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->g()Z

    .line 394
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->k:Lcom/oppo/camera/ui/preview/FaceView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/FaceView;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 399
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->f()V

    .line 401
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p3}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->setAlpha(F)V

    .line 402
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->b(Z)V

    :cond_1
    return-void
.end method

.method private a([Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;)V
    .locals 2

    const-string v0, "FocusManager"

    const-string v1, "Start autofocus."

    .line 762
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->k:Lcom/oppo/camera/ui/preview/FaceView;

    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/FaceView;->c()V

    .line 769
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->z()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 770
    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/h;->Q:Z

    .line 773
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v0, v1, p1, p2}, Lcom/oppo/camera/ui/preview/c;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;)V

    .line 774
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/preview/h;->d(I)V

    .line 775
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->s()V

    .line 776
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/h;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/h;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    return-object p0
.end method

.method static synthetic c(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    return-object p0
.end method

.method static synthetic d(Lcom/oppo/camera/ui/preview/h;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/h;->I()V

    return-void
.end method

.method static synthetic e(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/RotateImageView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/oppo/camera/ui/preview/h;->o:Lcom/oppo/camera/ui/RotateImageView;

    return-object p0
.end method

.method static synthetic f(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/preview/FaceView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/oppo/camera/ui/preview/h;->k:Lcom/oppo/camera/ui/preview/FaceView;

    return-object p0
.end method

.method static synthetic g(Lcom/oppo/camera/ui/preview/h;)Landroid/os/Handler;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    return-object p0
.end method

.method private g(Z)V
    .locals 2

    const-string v0, "FocusManager"

    const-string v1, "onFocusStart"

    .line 352
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->k:Lcom/oppo/camera/ui/preview/FaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/FaceView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 359
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->x()V

    goto :goto_0

    .line 361
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->f()V

    .line 363
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->setAlpha(F)V

    .line 364
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->a()V

    :goto_0
    return-void
.end method

.method static synthetic h(Lcom/oppo/camera/ui/preview/h;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/h;->G()V

    return-void
.end method

.method static synthetic i(Lcom/oppo/camera/ui/preview/h;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/h;->F()V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 2

    .line 1145
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1146
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->w()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1147
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    const-string v1, "func_reset_auto_focus"

    .line 1148
    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/preview/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1150
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public B()V
    .locals 4

    .line 1155
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1156
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->w()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1158
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    const-string v1, "func_reset_auto_focus"

    .line 1159
    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/preview/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1161
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public C()Z
    .locals 3

    .line 1168
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "FocusManager"

    const-string v2, "isFocusIndicatorAshed() is null"

    .line 1169
    invoke-static {v0, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    .line 1174
    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->getAlpha()F

    move-result v0

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    if-eqz v0, :cond_1

    .line 1176
    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public D()Z
    .locals 1

    .line 1184
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public E()Z
    .locals 3

    .line 1188
    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->F:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->G:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public a()V
    .locals 2

    .line 1194
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 1195
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 220
    iput p1, p0, Lcom/oppo/camera/ui/preview/h;->v:I

    return-void
.end method

.method public a(II)V
    .locals 1

    .line 224
    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->y:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->z:I

    if-eq v0, p2, :cond_1

    .line 225
    :cond_0
    iput p1, p0, Lcom/oppo/camera/ui/preview/h;->y:I

    .line 226
    iput p2, p0, Lcom/oppo/camera/ui/preview/h;->z:I

    :cond_1
    return-void
.end method

.method public a(III)V
    .locals 5

    .line 716
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 718
    iget v1, p0, Lcom/oppo/camera/ui/preview/h;->N:I

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    const/16 v4, 0x5a

    if-eq v1, v4, :cond_2

    const/16 v4, 0xb4

    if-eq v1, v4, :cond_4

    const/16 p1, 0x10e

    if-eq v1, p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p2, p3

    .line 740
    iget p1, p0, Lcom/oppo/camera/ui/preview/h;->z:I

    sub-int/2addr p1, v2

    if-lt p2, p1, :cond_1

    neg-int p1, p3

    .line 741
    invoke-virtual {v0, p1, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_1
    neg-int p1, p3

    .line 743
    iget p2, p0, Lcom/oppo/camera/ui/preview/h;->M:I

    add-int/2addr p3, p2

    invoke-virtual {v0, p1, p3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_2
    if-gt p2, v2, :cond_3

    neg-int p1, p3

    .line 732
    iget p2, p0, Lcom/oppo/camera/ui/preview/h;->M:I

    add-int/2addr p3, p2

    invoke-virtual {v0, p1, p3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_3
    neg-int p1, p3

    .line 734
    invoke-virtual {v0, p1, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_4
    add-int/2addr p1, p3

    .line 722
    iget p2, p0, Lcom/oppo/camera/ui/preview/h;->y:I

    sub-int/2addr p2, v2

    if-lt p1, p2, :cond_5

    neg-int p1, p3

    .line 723
    invoke-virtual {v0, p1, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 725
    :cond_5
    iget p1, p0, Lcom/oppo/camera/ui/preview/h;->M:I

    invoke-virtual {v0, p1, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_0
    return-void
.end method

.method public a(IIZ)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 564
    iget-boolean v4, v0, Lcom/oppo/camera/ui/preview/h;->g:Z

    if-eqz v4, :cond_d

    iget v4, v0, Lcom/oppo/camera/ui/preview/h;->x:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz v3, :cond_2

    .line 569
    iget-object v4, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    if-eqz v4, :cond_1

    .line 570
    invoke-interface {v4, v1, v2}, Lcom/oppo/camera/ui/preview/c;->a(II)V

    .line 573
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/ui/preview/h;->I()V

    .line 576
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/preview/h;->f()V

    .line 578
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSingleTapUp, fromUserTouch: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "FocusManager"

    invoke-static {v6, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iput-boolean v3, v0, Lcom/oppo/camera/ui/preview/h;->i:Z

    .line 582
    iget v4, v0, Lcom/oppo/camera/ui/preview/h;->A:I

    .line 583
    iget v7, v0, Lcom/oppo/camera/ui/preview/h;->B:I

    .line 585
    iget-object v8, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    const/4 v9, 0x1

    if-eqz v8, :cond_5

    invoke-interface {v8}, Lcom/oppo/camera/ui/preview/c;->k()Z

    move-result v8

    if-nez v8, :cond_5

    .line 586
    iget-object v8, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v8}, Lcom/oppo/camera/ui/preview/c;->d()I

    move-result v8

    invoke-static {v8}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    const-string v10, "key_fixed_focus_lens_support_tap_shutter"

    .line 587
    invoke-interface {v8, v10}, Lcom/oppo/camera/ui/preview/c;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 588
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/preview/h;->i()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v8}, Lcom/oppo/camera/ui/preview/c;->f()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 589
    iget-object v1, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v1, v9}, Lcom/oppo/camera/ui/preview/c;->a(Z)V

    .line 590
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/ui/preview/h;->G()V

    return-void

    .line 592
    :cond_4
    iget-object v8, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    if-eqz v8, :cond_5

    invoke-interface {v8}, Lcom/oppo/camera/ui/preview/c;->j()Z

    move-result v8

    if-nez v8, :cond_5

    const-string v1, "onSingleTapUp(), front camera not support touch ae"

    .line 593
    invoke-static {v6, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 601
    :cond_5
    iget-object v6, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    if-eqz v6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/preview/h;->r()I

    move-result v6

    if-ne v9, v6, :cond_7

    .line 602
    iget-object v6, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    if-eqz v6, :cond_6

    .line 603
    invoke-interface {v6}, Lcom/oppo/camera/ui/preview/c;->m()V

    .line 606
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/preview/h;->q()V

    .line 607
    iput-boolean v3, v0, Lcom/oppo/camera/ui/preview/h;->i:Z

    .line 610
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/preview/h;->i()Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v3}, Lcom/oppo/camera/ui/preview/c;->f()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 611
    iget-object v3, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v3, v9}, Lcom/oppo/camera/ui/preview/c;->a(Z)V

    .line 612
    iget-object v3, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v3, v6, v9}, Lcom/oppo/camera/ui/preview/c;->a(ZZ)V

    .line 615
    :cond_8
    iget v3, v0, Lcom/oppo/camera/ui/preview/h;->y:I

    .line 616
    iget v8, v0, Lcom/oppo/camera/ui/preview/h;->z:I

    .line 619
    iget-object v10, v0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    invoke-virtual {v10}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 620
    div-int/lit8 v11, v4, 0x2

    sub-int v11, v1, v11

    sub-int/2addr v3, v4

    invoke-static {v11, v6, v3}, Lcom/oppo/camera/o/d;->a(III)I

    move-result v3

    .line 621
    div-int/lit8 v11, v7, 0x2

    sub-int v11, v2, v11

    sub-int/2addr v8, v7

    invoke-static {v11, v6, v8}, Lcom/oppo/camera/o/d;->a(III)I

    move-result v7

    .line 622
    invoke-virtual {v10, v3, v7, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 624
    invoke-virtual {v10}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v8

    const/16 v10, 0xd

    .line 625
    aput v6, v8, v10

    .line 626
    iget-object v8, v0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    invoke-virtual {v8}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->requestLayout()V

    .line 628
    iput v3, v0, Lcom/oppo/camera/ui/preview/h;->O:I

    .line 629
    iput v7, v0, Lcom/oppo/camera/ui/preview/h;->P:I

    .line 630
    invoke-direct {v0, v3, v7, v4, v6}, Lcom/oppo/camera/ui/preview/h;->a(IIIZ)V

    .line 633
    iget-object v3, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    if-eqz v3, :cond_9

    .line 634
    invoke-interface {v3}, Lcom/oppo/camera/ui/preview/c;->b()V

    .line 637
    :cond_9
    iget-object v3, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    const-wide/16 v7, 0xfa0

    const/4 v4, 0x6

    if-eqz v3, :cond_a

    invoke-interface {v3}, Lcom/oppo/camera/ui/preview/c;->k()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 638
    iget-object v3, v0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 640
    iget-boolean v3, v0, Lcom/oppo/camera/ui/preview/h;->i:Z

    if-eqz v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/preview/h;->z()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 641
    iget-object v3, v0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 645
    :cond_a
    iget-object v3, v0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->a()V

    .line 647
    iget-object v3, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    if-eqz v3, :cond_b

    invoke-interface {v3}, Lcom/oppo/camera/ui/preview/c;->i()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 648
    iget-object v3, v0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    invoke-virtual {v3}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->show()V

    .line 651
    :cond_b
    iget-object v3, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    if-eqz v3, :cond_d

    .line 652
    invoke-interface {v3}, Lcom/oppo/camera/ui/preview/c;->s()Landroid/graphics/Rect;

    move-result-object v3

    .line 653
    invoke-static {}, Lcom/oppo/camera/a;->d()I

    move-result v19

    int-to-float v1, v1

    int-to-float v2, v2

    .line 655
    iget v12, v0, Lcom/oppo/camera/ui/preview/h;->y:I

    iget v13, v0, Lcom/oppo/camera/ui/preview/h;->z:I

    iget v14, v0, Lcom/oppo/camera/ui/preview/h;->A:I

    iget-boolean v15, v0, Lcom/oppo/camera/ui/preview/h;->h:Z

    iget v11, v0, Lcom/oppo/camera/ui/preview/h;->w:I

    const/16 v17, 0x0

    move v10, v1

    move/from16 v16, v11

    move v11, v2

    move-object/from16 v18, v3

    invoke-static/range {v10 .. v19}, Lcom/oppo/camera/a;->a(FFIIIZIILandroid/graphics/Rect;I)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v15

    .line 658
    iget-object v10, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v10}, Lcom/oppo/camera/ui/preview/c;->k()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 659
    invoke-static {}, Lcom/oppo/camera/a;->c()I

    move-result v19

    .line 660
    iget v12, v0, Lcom/oppo/camera/ui/preview/h;->y:I

    iget v13, v0, Lcom/oppo/camera/ui/preview/h;->z:I

    iget v14, v0, Lcom/oppo/camera/ui/preview/h;->A:I

    iget-boolean v4, v0, Lcom/oppo/camera/ui/preview/h;->h:Z

    iget v5, v0, Lcom/oppo/camera/ui/preview/h;->w:I

    const/16 v17, 0x0

    move v10, v1

    move v11, v2

    move-object v1, v15

    move v15, v4

    move/from16 v16, v5

    move-object/from16 v18, v3

    invoke-static/range {v10 .. v19}, Lcom/oppo/camera/a;->a(FFIIIZIILandroid/graphics/Rect;I)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    .line 663
    invoke-direct {v0, v2, v1}, Lcom/oppo/camera/ui/preview/h;->a([Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;)V

    .line 665
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/preview/h;->i()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 666
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/preview/h;->k()V

    goto :goto_0

    :cond_c
    move-object v1, v15

    .line 669
    iget-object v2, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/oppo/camera/ui/preview/c;->a([Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;)V

    .line 670
    iput-boolean v6, v0, Lcom/oppo/camera/ui/preview/h;->Q:Z

    .line 671
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/ui/preview/h;->s()V

    .line 673
    iget-object v1, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    const-string v2, "key_fixed_focus_lens_support_metering"

    invoke-interface {v1, v2}, Lcom/oppo/camera/ui/preview/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, v0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    .line 674
    invoke-interface {v1}, Lcom/oppo/camera/ui/preview/c;->d()I

    move-result v1

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 676
    iget-object v1, v0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 677
    iget-object v1, v0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 678
    iget-object v1, v0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v1, v9, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 680
    iget-object v1, v0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 681
    iget-object v1, v0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_d
    :goto_0
    return-void
.end method

.method public a(II[II)V
    .locals 2

    .line 259
    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->F:I

    if-eq v0, p1, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_1

    .line 263
    :cond_0
    iput p1, p0, Lcom/oppo/camera/ui/preview/h;->F:I

    .line 264
    iput p2, p0, Lcom/oppo/camera/ui/preview/h;->E:I

    const/4 v0, 0x0

    .line 265
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->G:Z

    if-eqz p3, :cond_2

    .line 268
    aget p3, p3, v0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->G:Z

    .line 271
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateFocusState, state: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mode: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isPdaf: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/oppo/camera/ui/preview/h;->G:Z

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FocusManager"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_4

    const/4 p1, 0x3

    if-eq p4, p1, :cond_4

    const/4 p1, 0x4

    if-eq p4, p1, :cond_4

    const/4 p1, 0x5

    if-ne p4, p1, :cond_3

    goto :goto_0

    .line 282
    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 283
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 277
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateFocusState, return, cameraState: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    const-string v0, "pref_camera_timer_shutter_key"

    .line 431
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 432
    iget-object p2, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    const v1, 0x7f0f015c

    .line 433
    invoke-virtual {p2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 432
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 435
    iget-object p2, p0, Lcom/oppo/camera/ui/preview/h;->H:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 436
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/h;->H:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/RotateImageView;)V
    .locals 2

    .line 247
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/h;->o:Lcom/oppo/camera/ui/RotateImageView;

    .line 249
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->o:Lcom/oppo/camera/ui/RotateImageView;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const v0, 0x7f0800f4

    const/4 v1, 0x5

    .line 251
    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, 0x6

    .line 252
    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, 0x7

    .line 253
    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0x8

    .line 254
    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 255
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->o:Lcom/oppo/camera/ui/RotateImageView;

    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->N:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/oppo/camera/ui/RotateImageView;->a(IZ)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    const-string v0, "FocusManager"

    const-string v1, "initialized"

    .line 213
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->g:Z

    .line 216
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/preview/h;->b(Z)V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 959
    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->t:I

    iget v1, p0, Lcom/oppo/camera/ui/preview/h;->p:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 960
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    if-eqz v0, :cond_0

    .line 961
    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->n:Z

    if-nez v0, :cond_2

    .line 964
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 965
    iput-boolean v3, p0, Lcom/oppo/camera/ui/preview/h;->n:Z

    :cond_1
    return v2

    .line 972
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const-wide/16 v4, 0x3e8

    const/4 v1, 0x7

    if-le v0, v3, :cond_4

    .line 973
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    if-eqz p1, :cond_3

    .line 974
    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return v2

    .line 982
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_13

    const/16 v6, 0xb4

    if-eq v0, v3, :cond_f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    goto/16 :goto_5

    .line 1002
    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6

    return v2

    .line 1006
    :cond_6
    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->K:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 1007
    iget v1, p0, Lcom/oppo/camera/ui/preview/h;->L:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v1, v4

    .line 1012
    iget v4, p0, Lcom/oppo/camera/ui/preview/h;->N:I

    if-eqz v4, :cond_9

    if-ne v4, v6, :cond_7

    goto :goto_1

    :cond_7
    const/16 v0, 0x5a

    if-ne v4, v0, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    neg-float v0, v1

    :goto_0
    move v1, v3

    goto :goto_2

    .line 1014
    :cond_9
    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v4, v1

    if-ltz v1, :cond_a

    goto :goto_0

    :cond_a
    move v1, v2

    :goto_2
    const/high16 v4, 0x41000000    # 8.0f

    if-eqz v1, :cond_e

    .line 1023
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_e

    iget v1, p0, Lcom/oppo/camera/ui/preview/h;->t:I

    iget v5, p0, Lcom/oppo/camera/ui/preview/h;->r:I

    if-ne v1, v5, :cond_e

    .line 1024
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_b

    .line 1025
    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->setAlpha(F)V

    .line 1028
    :cond_b
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/h;->o:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz v1, :cond_c

    .line 1029
    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/RotateImageView;->setAlpha(F)V

    .line 1032
    :cond_c
    iget v1, p0, Lcom/oppo/camera/ui/preview/h;->z:I

    int-to-float v1, v1

    div-float v1, v0, v1

    const/high16 v5, 0x42480000    # 50.0f

    mul-float/2addr v1, v5

    .line 1034
    iget-object v5, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    if-eqz v5, :cond_d

    .line 1035
    invoke-virtual {v5, v2}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->setAlpha(F)V

    .line 1036
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    invoke-virtual {v2, v3}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->setBarVisibility(Z)V

    .line 1037
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    invoke-virtual {v2, v1}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->setMoveProgress(F)V

    .line 1040
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/oppo/camera/ui/preview/h;->K:F

    .line 1041
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/preview/h;->L:F

    move v2, v3

    .line 1045
    :cond_e
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v4

    if-lez p1, :cond_16

    iget p1, p0, Lcom/oppo/camera/ui/preview/h;->t:I

    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->q:I

    if-ne p1, v0, :cond_16

    .line 1046
    iget p1, p0, Lcom/oppo/camera/ui/preview/h;->r:I

    iput p1, p0, Lcom/oppo/camera/ui/preview/h;->t:I

    goto/16 :goto_5

    .line 1052
    :cond_f
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    if-eqz v0, :cond_10

    .line 1053
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1056
    :cond_10
    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->J:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 1057
    iget v1, p0, Lcom/oppo/camera/ui/preview/h;->I:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr v1, p1

    .line 1059
    iget p1, p0, Lcom/oppo/camera/ui/preview/h;->t:I

    iget v4, p0, Lcom/oppo/camera/ui/preview/h;->r:I

    if-ne p1, v4, :cond_16

    .line 1060
    iget p1, p0, Lcom/oppo/camera/ui/preview/h;->s:I

    iput p1, p0, Lcom/oppo/camera/ui/preview/h;->t:I

    .line 1062
    iget p1, p0, Lcom/oppo/camera/ui/preview/h;->N:I

    const/high16 v4, 0x41a00000    # 20.0f

    if-eqz p1, :cond_12

    if-ne p1, v6, :cond_11

    goto :goto_3

    .line 1067
    :cond_11
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v4

    if-lez p1, :cond_16

    goto :goto_4

    .line 1063
    :cond_12
    :goto_3
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x437a0000    # 250.0f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_16

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v4

    if-lez p1, :cond_16

    :goto_4
    move v2, v3

    goto :goto_5

    .line 984
    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/oppo/camera/ui/preview/h;->I:F

    .line 985
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/preview/h;->J:F

    .line 986
    iget p1, p0, Lcom/oppo/camera/ui/preview/h;->I:F

    iput p1, p0, Lcom/oppo/camera/ui/preview/h;->L:F

    .line 987
    iget p1, p0, Lcom/oppo/camera/ui/preview/h;->J:F

    iput p1, p0, Lcom/oppo/camera/ui/preview/h;->K:F

    .line 989
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    if-eqz p1, :cond_14

    const/4 v0, 0x6

    .line 990
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 991
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 992
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 995
    :cond_14
    iget p1, p0, Lcom/oppo/camera/ui/preview/h;->t:I

    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->p:I

    if-eq p1, v0, :cond_15

    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->s:I

    if-ne p1, v0, :cond_16

    .line 996
    :cond_15
    iget p1, p0, Lcom/oppo/camera/ui/preview/h;->q:I

    iput p1, p0, Lcom/oppo/camera/ui/preview/h;->t:I

    :cond_16
    :goto_5
    return v2
.end method

.method public b()V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    const v1, 0x7f0800ed

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/FaceView;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/h;->k:Lcom/oppo/camera/ui/preview/FaceView;

    .line 159
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060231

    .line 160
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oppo/camera/ui/preview/h;->A:I

    .line 161
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oppo/camera/ui/preview/h;->B:I

    const v1, 0x7f060230

    .line 162
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/ui/preview/h;->M:I

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 236
    invoke-virtual {v0, p1, v1}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->setOrientation(IZ)V

    .line 239
    :cond_0
    iput p1, p0, Lcom/oppo/camera/ui/preview/h;->N:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 231
    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/h;->h:Z

    return-void
.end method

.method public c()V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->D:Lcom/oppo/camera/i;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    const v2, 0x7f0f015c

    .line 167
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_timer_shutter_key"

    .line 166
    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/h;->H:Ljava/lang/String;

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 243
    iput p1, p0, Lcom/oppo/camera/ui/preview/h;->w:I

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 539
    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/h;->a:Z

    return-void
.end method

.method public d()V
    .locals 0

    .line 171
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->v()V

    .line 172
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->o()V

    return-void
.end method

.method public d(I)V
    .locals 2

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFocusState(), mFocusState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/preview/h;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "=>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iput p1, p0, Lcom/oppo/camera/ui/preview/h;->x:I

    return-void
.end method

.method public d(Z)V
    .locals 4

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sceenCenterTouchFocus(), delay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_0

    .line 548
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const-wide/16 v2, 0x258

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 550
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    if-eqz p1, :cond_1

    .line 551
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {p1}, Lcom/oppo/camera/ui/preview/c;->d()I

    move-result p1

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 552
    iget p1, p0, Lcom/oppo/camera/ui/preview/h;->y:I

    div-int/lit8 p1, p1, 0x2

    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->z:I

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/oppo/camera/ui/preview/h;->a(IIZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    .line 177
    iput-object v0, p0, Lcom/oppo/camera/ui/preview/h;->k:Lcom/oppo/camera/ui/preview/FaceView;

    .line 178
    iput-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    .line 179
    iput-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    .line 181
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {v1}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->c()V

    .line 183
    iput-object v0, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 2

    .line 1337
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 1341
    :cond_0
    new-instance v1, Lcom/oppo/camera/ui/preview/h$5;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/ui/preview/h$5;-><init>(Lcom/oppo/camera/ui/preview/h;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 937
    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/h;->b:Z

    return-void
.end method

.method public f()V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    if-nez v0, :cond_2

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    const v2, 0x7f0800f8

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    const v2, 0x7f0b0068

    .line 191
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 193
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    const v1, 0x7f0800f4

    if-nez v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    .line 195
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->setOnFocusIndicatorDisappearListener(Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout$c;)V

    .line 196
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    iget v2, p0, Lcom/oppo/camera/ui/preview/h;->N:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->setRotation(F)V

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    if-nez v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    const v2, 0x7f0800d9

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    .line 201
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->setOnSeekBarChangeListener(Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar$OnSeekBarChangeListener;)V

    .line 203
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x1

    .line 204
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, 0x6

    .line 205
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 207
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    iget v1, p0, Lcom/oppo/camera/ui/preview/h;->N:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->setOrientation(IZ)V

    :cond_2
    return-void
.end method

.method public f(I)V
    .locals 2

    .line 1352
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 1356
    :cond_0
    new-instance v1, Lcom/oppo/camera/ui/preview/h$6;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/ui/preview/h$6;-><init>(Lcom/oppo/camera/ui/preview/h;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f(Z)V
    .locals 0

    .line 1333
    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/h;->R:Z

    return-void
.end method

.method public g()Z
    .locals 3

    .line 407
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 409
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 410
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/h;->G()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public h()V
    .locals 2

    .line 419
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/ui/preview/h$1;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/preview/h$1;-><init>(Lcom/oppo/camera/ui/preview/h;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public i()Z
    .locals 4

    .line 442
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 446
    :cond_0
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/h;->D:Lcom/oppo/camera/i;

    const v3, 0x7f0f018b

    .line 447
    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "pref_camera_tap_shutter_key"

    .line 446
    invoke-virtual {v2, v3, v0}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    .line 448
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    if-eqz v0, :cond_1

    .line 450
    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    .line 451
    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/c;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->v:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->i:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    .line 455
    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/c;->o()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    .line 456
    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/preview/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public j()Z
    .locals 1

    .line 480
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->k()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public k()V
    .locals 4

    const-string v0, "FocusManager"

    const-string v1, "delayCapture"

    .line 490
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 492
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/preview/h;->d(I)V

    .line 494
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 495
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 496
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 4

    .line 501
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 503
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 506
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needDelayCapture, mAfFocusState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/preview/h;->F:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->E()Z

    move-result v0

    return v0
.end method

.method public m()V
    .locals 3

    .line 512
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 513
    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/preview/c;->a(Z)V

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v2, 0x5

    .line 517
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 519
    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->x:I

    if-ne v2, v0, :cond_1

    .line 520
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/preview/h;->d(I)V

    :cond_1
    return-void
.end method

.method public n()V
    .locals 2

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkFocusStateBeforeCapture, mFocusState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/preview/h;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->r()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->x:I

    if-ne v0, v1, :cond_0

    .line 534
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->p()V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x0

    .line 754
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/preview/h;->d(I)V

    .line 755
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->t()V

    .line 757
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->Q:Z

    .line 758
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->s()V

    return-void
.end method

.method public onOrientationChange(I)V
    .locals 2

    .line 1089
    iput p1, p0, Lcom/oppo/camera/ui/preview/h;->N:I

    .line 1090
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/h;->H()V

    .line 1092
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h;->o:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz p1, :cond_0

    .line 1093
    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->N:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/oppo/camera/ui/RotateImageView;->a(IZ)V

    :cond_0
    return-void
.end method

.method public onProgressChange(F)V
    .locals 0

    .line 1084
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/preview/h;->a(F)V

    return-void
.end method

.method public p()V
    .locals 2

    const-string v0, "FocusManager"

    const-string v1, "resetAutoFocusMode()"

    .line 780
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    if-eqz v0, :cond_0

    .line 787
    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/c;->l()V

    .line 790
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->q()V

    return-void
.end method

.method public q()V
    .locals 2

    const-string v0, "FocusManager"

    const-string v1, "resetCameraFocusState()"

    .line 794
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->t()V

    .line 798
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->k:Lcom/oppo/camera/ui/preview/FaceView;

    if-eqz v0, :cond_0

    .line 799
    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/FaceView;->d()V

    :cond_0
    const/4 v0, 0x0

    .line 802
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/preview/h;->d(I)V

    .line 803
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public r()I
    .locals 1

    .line 807
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/c;->p()I

    move-result v0

    return v0
.end method

.method public s()V
    .locals 11

    .line 811
    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->g:Z

    if-nez v0, :cond_0

    return-void

    .line 815
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/h;->f()V

    .line 818
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->k:Lcom/oppo/camera/ui/preview/FaceView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/FaceView;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 819
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->k:Lcom/oppo/camera/ui/preview/FaceView;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    .line 821
    :goto_1
    iget-boolean v3, p0, Lcom/oppo/camera/ui/preview/h;->i:Z

    xor-int/2addr v3, v2

    .line 823
    iget-object v4, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const/4 v5, 0x7

    if-eqz v4, :cond_3

    .line 824
    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 827
    :cond_3
    iget-object v4, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->setAlpha(F)V

    .line 829
    iget v4, p0, Lcom/oppo/camera/ui/preview/h;->x:I

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-ne v4, v8, :cond_4

    .line 830
    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/preview/g;->a(Z)V

    goto :goto_2

    :cond_4
    if-ne v4, v7, :cond_5

    .line 832
    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/preview/g;->b(Z)V

    goto :goto_2

    .line 833
    :cond_5
    iget v4, p0, Lcom/oppo/camera/ui/preview/h;->E:I

    if-eq v7, v4, :cond_6

    if-ne v8, v4, :cond_7

    .line 836
    :cond_6
    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/preview/g;->a(Z)V

    .line 839
    :cond_7
    :goto_2
    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->i:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    if-eqz v0, :cond_f

    .line 840
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/c;->d()I

    move-result v0

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    const/4 v3, 0x6

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->Q:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->x:I

    if-eq v0, v8, :cond_9

    if-eq v0, v7, :cond_9

    .line 842
    :cond_8
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 843
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const-wide/16 v9, 0xfa0

    invoke-virtual {v0, v3, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    .line 844
    :cond_9
    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->Q:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    .line 845
    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/c;->d()I

    move-result v0

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-nez v0, :cond_b

    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->x:I

    if-eq v0, v8, :cond_a

    if-ne v0, v7, :cond_b

    .line 847
    :cond_a
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 850
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->o:Lcom/oppo/camera/ui/RotateImageView;

    if-eqz v0, :cond_c

    .line 851
    invoke-virtual {v0, v6}, Lcom/oppo/camera/ui/RotateImageView;->setAlpha(F)V

    .line 854
    :cond_c
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 855
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 857
    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->x:I

    if-eq v0, v8, :cond_d

    if-eq v0, v7, :cond_d

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    .line 859
    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/c;->d()I

    move-result v0

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 860
    :cond_d
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 861
    iput-boolean v2, p0, Lcom/oppo/camera/ui/preview/h;->n:Z

    .line 864
    :cond_e
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/c;->i()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 865
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->l:Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    instance-of v2, v0, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    if-eqz v2, :cond_f

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->b()Z

    move-result v0

    if-nez v0, :cond_f

    .line 866
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->m:Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->setVisibility(I)V

    :cond_f
    return-void
.end method

.method public t()V
    .locals 2

    .line 873
    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 877
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->i:Z

    .line 878
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/ui/preview/h$3;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/preview/h$3;-><init>(Lcom/oppo/camera/ui/preview/h;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public u()V
    .locals 2

    .line 918
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    .line 919
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 920
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 921
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public v()V
    .locals 2

    .line 926
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 927
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 928
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 929
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->u:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public w()Z
    .locals 1

    .line 933
    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/h;->b:Z

    return v0
.end method

.method public x()V
    .locals 2

    .line 941
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 942
    new-instance v1, Lcom/oppo/camera/ui/preview/h$4;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/preview/h$4;-><init>(Lcom/oppo/camera/ui/preview/h;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public y()Z
    .locals 2

    .line 1116
    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->t:I

    iget v1, p0, Lcom/oppo/camera/ui/preview/h;->q:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public z()Z
    .locals 3

    .line 1129
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->D:Lcom/oppo/camera/i;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/h;->j:Landroid/app/Activity;

    const v2, 0x7f0f018b

    .line 1130
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_tap_shutter_key"

    .line 1129
    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1132
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    if-eqz v1, :cond_1

    const-string v1, "on"

    .line 1133
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    .line 1134
    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    .line 1135
    invoke-interface {v0, v2}, Lcom/oppo/camera/ui/preview/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/h;->C:Lcom/oppo/camera/ui/preview/c;

    .line 1136
    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/c;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oppo/camera/ui/preview/h;->v:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
