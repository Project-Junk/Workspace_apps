.class public Lcom/coloros/settings/feature/face/FaceRecordAnimView;
.super Landroid/opengl/GLSurfaceView;
.source "FaceRecordAnimView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/face/FaceRecordAnimView$a;
    }
.end annotation


# instance fields
.field private A:Landroid/view/animation/OppoBezierInterpolator;

.field private B:Landroid/animation/AnimatorSet;

.field private C:F

.field private D:F

.field private E:I

.field private F:F

.field private G:F

.field private H:F

.field private I:Lcom/coloros/settings/feature/face/a/i;

.field private J:Lcom/coloros/settings/feature/face/a/b;

.field private K:Lcom/coloros/settings/feature/face/a/h;

.field private L:Lcom/coloros/settings/feature/face/a/e;

.field private M:Lcom/coloros/settings/feature/face/FaceRecordAnimView$a;

.field a:F

.field b:F

.field c:F

.field d:F

.field e:Z

.field f:Z

.field g:F

.field h:F

.field i:I

.field j:I

.field private k:I

.field private l:J

.field private m:J

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:Z

.field private v:Z

.field private w:F

.field private x:F

.field private y:F

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/face/FaceRecordAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    .line 143
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 90
    iput p1, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->a:F

    .line 91
    iput p1, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->b:F

    .line 92
    iput p1, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->c:F

    const/4 p2, 0x0

    .line 95
    iput p2, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->k:I

    const-wide/16 v0, 0x0

    .line 96
    iput-wide v0, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->l:J

    .line 97
    iput-wide v0, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->m:J

    .line 98
    iput p1, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->n:F

    .line 99
    iput p1, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->d:F

    const v0, 0x3dcccccd    # 0.1f

    .line 102
    iput v0, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->o:F

    const v0, 0x3f666666    # 0.9f

    .line 103
    iput v0, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->p:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 104
    iput v0, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->q:F

    const v0, 0x3f147ae1    # 0.58f

    .line 105
    iput v0, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->r:F

    const/high16 v0, -0x3fa00000    # -3.5f

    .line 106
    iput v0, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->s:F

    .line 107
    iput p1, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->t:F

    .line 110
    iput-boolean p2, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->e:Z

    .line 111
    iput-boolean p2, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->u:Z

    .line 112
    iput-boolean p2, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->v:Z

    .line 113
    iput-boolean p2, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->f:Z

    .line 114
    iput p1, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->g:F

    .line 115
    iput p1, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->h:F

    .line 116
    iput p1, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->w:F

    .line 117
    iput p1, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->x:F

    .line 118
    iput p1, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->y:F

    .line 119
    iput p2, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->i:I

    .line 120
    iput p2, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->z:I

    .line 121
    iput p2, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->j:I

    .line 122
    new-instance v0, Landroid/view/animation/OppoBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Landroid/view/animation/OppoBezierInterpolator;-><init>(DDDDZ)V

    iput-object v0, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->A:Landroid/view/animation/OppoBezierInterpolator;

    .line 126
    iput p1, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->C:F

    .line 127
    iput p1, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->D:F

    .line 129
    iput p2, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->E:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 130
    iput p1, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->F:F

    const/4 p1, 0x2

    .line 144
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->setEGLContextClientVersion(I)V

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v0, p0

    .line 145
    invoke-virtual/range {v0 .. v6}, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->setEGLConfigChooser(IIIIII)V

    .line 148
    new-instance v0, Lcom/coloros/settings/feature/face/a/e;

    invoke-direct {v0}, Lcom/coloros/settings/feature/face/a/e;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->L:Lcom/coloros/settings/feature/face/a/e;

    .line 149
    new-instance v0, Lcom/coloros/settings/feature/face/a/i;

    invoke-direct {v0}, Lcom/coloros/settings/feature/face/a/i;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->I:Lcom/coloros/settings/feature/face/a/i;

    .line 150
    new-instance v0, Lcom/coloros/settings/feature/face/a/b;

    invoke-direct {v0}, Lcom/coloros/settings/feature/face/a/b;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->J:Lcom/coloros/settings/feature/face/a/b;

    .line 151
    new-instance v0, Lcom/coloros/settings/feature/face/a/h;

    invoke-direct {v0}, Lcom/coloros/settings/feature/face/a/h;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->K:Lcom/coloros/settings/feature/face/a/h;

    .line 1163
    new-array v0, p1, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x21

    .line 1164
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1165
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1166
    new-instance v1, Lcom/coloros/settings/feature/face/FaceRecordAnimView$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/face/FaceRecordAnimView$1;-><init>(Lcom/coloros/settings/feature/face/FaceRecordAnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1172
    new-instance v1, Landroid/view/animation/OppoBezierInterpolator;

    const-wide v3, 0x3fd51eb860000000L    # 0.33000001311302185

    const-wide/16 v5, 0x0

    const-wide v7, 0x3fe570a3e0000000L    # 0.6700000166893005

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const/4 v11, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v11}, Landroid/view/animation/OppoBezierInterpolator;-><init>(DDDDZ)V

    .line 1174
    new-array v2, p1, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    .line 1175
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1176
    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1177
    new-instance v3, Lcom/coloros/settings/feature/face/FaceRecordAnimView$2;

    invoke-direct {v3, p0}, Lcom/coloros/settings/feature/face/FaceRecordAnimView$2;-><init>(Lcom/coloros/settings/feature/face/FaceRecordAnimView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1183
    new-array v3, p1, [F

    fill-array-data v3, :array_2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v4, 0x1d3

    .line 1186
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1187
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1188
    new-instance v4, Lcom/coloros/settings/feature/face/FaceRecordAnimView$3;

    invoke-direct {v4, p0}, Lcom/coloros/settings/feature/face/FaceRecordAnimView$3;-><init>(Lcom/coloros/settings/feature/face/FaceRecordAnimView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1194
    new-array v4, p1, [F

    fill-array-data v4, :array_3

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    .line 1195
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1196
    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1197
    new-instance v1, Lcom/coloros/settings/feature/face/FaceRecordAnimView$4;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/face/FaceRecordAnimView$4;-><init>(Lcom/coloros/settings/feature/face/FaceRecordAnimView;)V

    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1204
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x3

    .line 1205
    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, p2

    const/4 v0, 0x1

    aput-object v2, v5, v0

    aput-object v3, v5, p1

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 1206
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->B:Landroid/animation/AnimatorSet;

    .line 1207
    iget-object v2, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->B:Landroid/animation/AnimatorSet;

    new-array p1, p1, [Landroid/animation/Animator;

    aput-object v1, p1, p2

    aput-object v4, p1, v0

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const p1, 0x42a78000    # 83.75f

    .line 153
    iput p1, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->G:F

    .line 155
    invoke-virtual {p0, p0}, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 156
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->setRenderMode(I)V

    .line 158
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->setZOrderOnTop(Z)V

    .line 159
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 p2, -0x2

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Lcom/coloros/settings/feature/face/FaceRecordAnimView;F)F
    .locals 0

    .line 37
    iput p1, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->C:F

    return p1
.end method

.method static synthetic a(Lcom/coloros/settings/feature/face/FaceRecordAnimView;)Lcom/coloros/settings/feature/face/a/i;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->I:Lcom/coloros/settings/feature/face/a/i;

    return-object p0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/face/FaceRecordAnimView;F)F
    .locals 0

    .line 37
    iput p1, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->D:F

    return p1
.end method

.method static synthetic b(Lcom/coloros/settings/feature/face/FaceRecordAnimView;)V
    .locals 5

    .line 11483
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->K:Lcom/coloros/settings/feature/face/a/h;

    .line 12296
    iget-object v1, v0, Lcom/coloros/settings/feature/face/a/h;->p:Lcom/coloros/settings/feature/face/a/d;

    if-eqz v1, :cond_0

    .line 12297
    iget-object v1, v0, Lcom/coloros/settings/feature/face/a/h;->p:Lcom/coloros/settings/feature/face/a/d;

    const/4 v2, 0x0

    .line 13060
    iput-object v2, v1, Lcom/coloros/settings/feature/face/a/d;->c:[F

    .line 12298
    iput-object v2, v0, Lcom/coloros/settings/feature/face/a/h;->p:Lcom/coloros/settings/feature/face/a/d;

    .line 12301
    :cond_0
    iget v1, v0, Lcom/coloros/settings/feature/face/a/h;->q:I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 12302
    iget v1, v0, Lcom/coloros/settings/feature/face/a/h;->q:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 12303
    iput v2, v0, Lcom/coloros/settings/feature/face/a/h;->q:I

    .line 12306
    :cond_1
    iget-object v1, v0, Lcom/coloros/settings/feature/face/a/h;->r:[I

    aget v1, v1, v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    .line 12307
    iget-object v1, v0, Lcom/coloros/settings/feature/face/a/h;->r:[I

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 12308
    iget-object v1, v0, Lcom/coloros/settings/feature/face/a/h;->r:[I

    aput v4, v1, v2

    .line 12311
    :cond_2
    iget-object v1, v0, Lcom/coloros/settings/feature/face/a/h;->v:[I

    aget v1, v1, v2

    if-eqz v1, :cond_3

    .line 12312
    iget-object v1, v0, Lcom/coloros/settings/feature/face/a/h;->v:[I

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 12313
    iget-object v0, v0, Lcom/coloros/settings/feature/face/a/h;->v:[I

    aput v2, v0, v2

    .line 11484
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->I:Lcom/coloros/settings/feature/face/a/i;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/face/a/i;->a()V

    .line 11485
    iget-object p0, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->J:Lcom/coloros/settings/feature/face/a/b;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/a/b;->a()V

    return-void
.end method

.method private b()Z
    .locals 2

    .line 387
    iget v0, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->i:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getStartAnimProgress()F
    .locals 2

    .line 382
    iget v0, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->i:I

    int-to-float v0, v0

    const/high16 v1, 0x41f00000    # 30.0f

    div-float/2addr v0, v1

    .line 383
    iget-object v1, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->A:Landroid/view/animation/OppoBezierInterpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/OppoBezierInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-string v0, "FaceRecordAnimView"

    const-string v1, "end"

    .line 451
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 452
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->v:Z

    const/4 v0, 0x0

    .line 453
    iput v0, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->z:I

    .line 454
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->B:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public getParticleAnimDuration()J
    .locals 2

    const-wide/16 v0, 0xc8

    return-wide v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->B:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->B:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    const/4 v0, 0x0

    .line 492
    iput-object v0, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->B:Landroid/animation/AnimatorSet;

    .line 494
    :cond_0
    new-instance v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView$6;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/face/FaceRecordAnimView$6;-><init>(Lcom/coloros/settings/feature/face/FaceRecordAnimView;)V

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->queueEvent(Ljava/lang/Runnable;)V

    .line 500
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 21

    move-object/from16 v0, p0

    .line 7334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 7336
    iget-wide v3, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->l:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    const/4 v8, 0x0

    if-nez v7, :cond_0

    .line 7337
    iput-wide v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->l:J

    goto :goto_0

    :cond_0
    sub-long v3, v1, v3

    const-wide/16 v9, 0x3e8

    cmp-long v3, v3, v9

    if-lez v3, :cond_1

    .line 7343
    iput-wide v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->l:J

    .line 7344
    iput v8, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->k:I

    .line 7348
    :cond_1
    :goto_0
    iget-wide v3, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->m:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 7349
    iput-wide v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->m:J

    .line 7351
    :cond_2
    iget-wide v3, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->m:J

    sub-long v3, v1, v3

    long-to-float v3, v3

    const v4, 0x3a83126f    # 0.001f

    mul-float/2addr v3, v4

    iput v3, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->n:F

    .line 7352
    iput-wide v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->m:J

    .line 7353
    invoke-direct/range {p0 .. p0}, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->b()Z

    move-result v1

    if-nez v1, :cond_3

    .line 7354
    iget v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->d:F

    iget v2, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->n:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->d:F

    .line 7356
    :cond_3
    iget v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->k:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->k:I

    .line 8364
    iget-boolean v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->e:Z

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    .line 8365
    iget v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->i:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->i:I

    .line 8366
    invoke-direct/range {p0 .. p0}, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->getStartAnimProgress()F

    move-result v1

    .line 8367
    iget v5, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->w:F

    invoke-static {v5, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-gez v5, :cond_4

    .line 8368
    iput v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->w:F

    .line 8370
    :cond_4
    iget v5, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->o:F

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-gez v5, :cond_5

    mul-float/2addr v1, v6

    .line 8371
    iput v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->o:F

    .line 8373
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->b()Z

    move-result v1

    if-nez v1, :cond_6

    .line 8374
    iput-boolean v8, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->e:Z

    .line 8375
    iput v4, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->w:F

    .line 8376
    iput-boolean v2, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->u:Z

    .line 9315
    :cond_6
    iget-boolean v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->v:Z

    if-eqz v1, :cond_9

    .line 9316
    iget v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->z:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->z:I

    .line 9317
    iget v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->z:I

    int-to-float v1, v1

    const/high16 v5, 0x41a00000    # 20.0f

    div-float/2addr v1, v5

    .line 9318
    iget v5, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->x:F

    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-gez v5, :cond_7

    mul-float/2addr v6, v1

    .line 9319
    iput v6, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->x:F

    .line 9321
    :cond_7
    iget v5, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->y:F

    invoke-static {v5, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-gez v5, :cond_8

    .line 9322
    iput v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->y:F

    .line 9324
    :cond_8
    iget v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->z:I

    const/16 v5, 0x14

    if-lt v1, v5, :cond_9

    .line 9325
    iput v4, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->y:F

    .line 9326
    iput v4, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->x:F

    .line 9327
    iput v8, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->z:I

    .line 9328
    iput-boolean v8, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->v:Z

    .line 8278
    :cond_9
    iget-object v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->L:Lcom/coloros/settings/feature/face/a/e;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/face/a/e;->a()V

    .line 8280
    iget-object v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->L:Lcom/coloros/settings/feature/face/a/e;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/face/a/e;->b()V

    .line 8283
    invoke-direct/range {p0 .. p0}, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->b()Z

    move-result v1

    if-nez v1, :cond_a

    .line 8284
    iget v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->b:F

    iget v5, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->n:F

    iget v6, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->r:F

    mul-float/2addr v6, v5

    add-float/2addr v1, v6

    iput v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->b:F

    .line 8285
    iget v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->a:F

    iget v6, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->s:F

    mul-float/2addr v6, v5

    add-float/2addr v1, v6

    iput v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->a:F

    .line 8286
    iget v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->c:F

    iget v6, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->t:F

    mul-float/2addr v5, v6

    add-float/2addr v1, v5

    iput v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->c:F

    .line 8289
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->getStartAnimProgress()F

    move-result v1

    .line 8290
    invoke-direct/range {p0 .. p0}, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->b()Z

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    if-eqz v5, :cond_b

    mul-float v5, v1, v6

    sub-float v5, v6, v5

    goto :goto_1

    :cond_b
    iget v5, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->b:F

    .line 8292
    :goto_1
    iget-object v7, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->L:Lcom/coloros/settings/feature/face/a/e;

    invoke-virtual {v7, v5, v3, v4, v4}, Lcom/coloros/settings/feature/face/a/e;->a(FFFF)V

    .line 8293
    invoke-direct/range {p0 .. p0}, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->b()Z

    move-result v5

    if-eqz v5, :cond_c

    const/high16 v5, 0x42340000    # 45.0f

    mul-float/2addr v1, v5

    sub-float/2addr v5, v1

    goto :goto_2

    :cond_c
    iget v5, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->a:F

    .line 8297
    :goto_2
    iget-object v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->L:Lcom/coloros/settings/feature/face/a/e;

    invoke-virtual {v1, v5, v4, v3, v4}, Lcom/coloros/settings/feature/face/a/e;->a(FFFF)V

    .line 8298
    iget-object v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->L:Lcom/coloros/settings/feature/face/a/e;

    iget v5, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->c:F

    const/high16 v7, 0x42b40000    # 90.0f

    add-float/2addr v5, v7

    invoke-virtual {v1, v5, v4, v4, v3}, Lcom/coloros/settings/feature/face/a/e;->a(FFFF)V

    .line 8301
    iget-boolean v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->f:Z

    if-eqz v1, :cond_e

    .line 8302
    iget v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->j:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->j:I

    .line 8303
    iget v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->j:I

    const/16 v5, 0xa

    if-ge v1, v5, :cond_d

    int-to-float v1, v1

    div-float/2addr v1, v6

    goto :goto_3

    :cond_d
    iget v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->q:F

    .line 8305
    :goto_3
    iget v5, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->g:F

    iget v7, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->q:F

    sub-float/2addr v7, v5

    mul-float/2addr v1, v7

    add-float/2addr v1, v5

    goto :goto_4

    .line 8307
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->b()Z

    move-result v1

    if-eqz v1, :cond_f

    iget v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->w:F

    goto :goto_4

    :cond_f
    move v1, v3

    .line 8308
    :goto_4
    iput v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->h:F

    .line 8311
    iget-object v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->L:Lcom/coloros/settings/feature/face/a/e;

    iget v5, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->h:F

    .line 10051
    iget-object v1, v1, Lcom/coloros/settings/feature/face/a/e;->c:[F

    invoke-static {v1, v8, v5, v5, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 10243
    iget-boolean v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->u:Z

    if-eqz v1, :cond_15

    .line 10246
    iget v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->F:F

    iget v5, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->E:I

    int-to-float v7, v5

    cmpl-float v1, v1, v7

    const/16 v7, 0x168

    if-ltz v1, :cond_10

    if-lt v5, v7, :cond_15

    .line 10249
    :cond_10
    iget v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->E:I

    int-to-float v5, v1

    iget v9, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->F:F

    sub-float/2addr v5, v9

    cmpl-float v9, v5, v4

    if-lez v9, :cond_11

    const/high16 v10, 0x41980000    # 19.0f

    cmpg-float v10, v5, v10

    if-gtz v10, :cond_11

    if-eq v1, v7, :cond_11

    div-float/2addr v5, v6

    const/high16 v1, 0x3e800000    # 0.25f

    add-float/2addr v5, v1

    const v1, 0x40733333    # 3.8f

    mul-float/2addr v5, v1

    .line 10253
    iput v5, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->H:F

    goto :goto_5

    :cond_11
    if-lez v9, :cond_13

    .line 10255
    iget v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->E:I

    if-ne v1, v7, :cond_12

    const/high16 v1, 0x41400000    # 12.0f

    cmpg-float v1, v5, v1

    if-gez v1, :cond_12

    const/high16 v5, 0x41400000    # 12.0f

    :cond_12
    const v1, 0x3ec28f5c    # 0.38f

    mul-float/2addr v5, v1

    .line 10259
    iget v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->G:F

    div-float/2addr v5, v1

    add-float/2addr v5, v3

    const v1, 0x40733333    # 3.8f

    mul-float/2addr v5, v1

    iput v5, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->H:F

    .line 10262
    :cond_13
    :goto_5
    iget v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->F:F

    iget v3, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->H:F

    add-float/2addr v1, v3

    iput v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->F:F

    .line 10263
    iget v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->F:F

    float-to-int v1, v1

    if-lt v1, v7, :cond_14

    cmpl-float v3, v3, v4

    if-lez v3, :cond_14

    .line 10265
    iput v4, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->H:F

    .line 10266
    iget-object v3, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->M:Lcom/coloros/settings/feature/face/FaceRecordAnimView$a;

    invoke-interface {v3}, Lcom/coloros/settings/feature/face/FaceRecordAnimView$a;->a()V

    .line 10268
    :cond_14
    iget v3, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->n:F

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x43480000    # 200.0f

    div-float/2addr v3, v4

    .line 10269
    iget-object v4, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->I:Lcom/coloros/settings/feature/face/a/i;

    invoke-virtual {v4, v1, v3}, Lcom/coloros/settings/feature/face/a/i;->a(IF)V

    .line 10270
    iget-object v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->J:Lcom/coloros/settings/feature/face/a/b;

    iget-object v3, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->I:Lcom/coloros/settings/feature/face/a/i;

    invoke-virtual {v3}, Lcom/coloros/settings/feature/face/a/i;->b()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/coloros/settings/feature/face/a/b;->a(I)V

    .line 237
    :cond_15
    iget-object v1, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->K:Lcom/coloros/settings/feature/face/a/h;

    iget-object v3, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->J:Lcom/coloros/settings/feature/face/a/b;

    invoke-virtual {v3}, Lcom/coloros/settings/feature/face/a/b;->b()I

    move-result v3

    iget-object v4, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->L:Lcom/coloros/settings/feature/face/a/e;

    .line 11033
    iget-object v9, v4, Lcom/coloros/settings/feature/face/a/e;->d:[F

    const/4 v10, 0x0

    iget-object v11, v4, Lcom/coloros/settings/feature/face/a/e;->b:[F

    const/4 v12, 0x0

    iget-object v13, v4, Lcom/coloros/settings/feature/face/a/e;->c:[F

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 11034
    iget-object v15, v4, Lcom/coloros/settings/feature/face/a/e;->d:[F

    const/16 v16, 0x0

    iget-object v5, v4, Lcom/coloros/settings/feature/face/a/e;->a:[F

    const/16 v18, 0x0

    iget-object v6, v4, Lcom/coloros/settings/feature/face/a/e;->d:[F

    const/16 v20, 0x0

    move-object/from16 v17, v5

    move-object/from16 v19, v6

    invoke-static/range {v15 .. v20}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 11035
    iget-object v4, v4, Lcom/coloros/settings/feature/face/a/e;->d:[F

    .line 238
    iget v5, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->o:F

    iget v6, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->C:F

    iget v7, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->D:F

    if-eqz v4, :cond_18

    .line 11236
    array-length v9, v4

    const/16 v10, 0x10

    if-ne v9, v10, :cond_18

    .line 11239
    iget v9, v1, Lcom/coloros/settings/feature/face/a/h;->t:I

    iget v10, v1, Lcom/coloros/settings/feature/face/a/h;->u:I

    invoke-static {v8, v8, v9, v10}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/16 v9, 0x4100

    .line 11240
    invoke-static {v9}, Landroid/opengl/GLES20;->glClear(I)V

    .line 11241
    iget v9, v1, Lcom/coloros/settings/feature/face/a/h;->q:I

    invoke-static {v9}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 11242
    iget v9, v1, Lcom/coloros/settings/feature/face/a/h;->n:I

    invoke-static {v9, v2, v8, v4, v8}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 11243
    iget-object v4, v1, Lcom/coloros/settings/feature/face/a/h;->r:[I

    aget v4, v4, v8

    const v9, 0x8892

    invoke-static {v9, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 11244
    iget v10, v1, Lcom/coloros/settings/feature/face/a/h;->a:I

    const/4 v11, 0x3

    const/16 v12, 0x1406

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 11246
    invoke-static {v9, v8}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 11248
    invoke-static {v8}, Landroid/opengl/GLES20;->glDepthMask(Z)V

    const/16 v4, 0xbe2

    .line 11249
    invoke-static {v4}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v9, 0x302

    const/16 v10, 0x303

    .line 11250
    invoke-static {v9, v10}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 11253
    iget v9, v1, Lcom/coloros/settings/feature/face/a/h;->l:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_16

    const v9, 0x84c0

    .line 11254
    invoke-static {v9}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v9, 0xde1

    .line 11255
    iget-object v11, v1, Lcom/coloros/settings/feature/face/a/h;->v:[I

    aget v11, v11, v8

    invoke-static {v9, v11}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 11256
    iget v9, v1, Lcom/coloros/settings/feature/face/a/h;->l:I

    invoke-static {v9, v8}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 11258
    :cond_16
    iget v9, v1, Lcom/coloros/settings/feature/face/a/h;->m:I

    if-eq v9, v10, :cond_17

    const v9, 0x84c1

    .line 11259
    invoke-static {v9}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v9, 0xde1

    .line 11260
    invoke-static {v9, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 11261
    iget v3, v1, Lcom/coloros/settings/feature/face/a/h;->m:I

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 11263
    :cond_17
    iget v3, v1, Lcom/coloros/settings/feature/face/a/h;->h:I

    iget v9, v1, Lcom/coloros/settings/feature/face/a/h;->t:I

    int-to-float v9, v9

    iget v10, v1, Lcom/coloros/settings/feature/face/a/h;->u:I

    int-to-float v10, v10

    invoke-static {v3, v9, v10}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 11264
    iget v3, v1, Lcom/coloros/settings/feature/face/a/h;->b:I

    iget-object v9, v1, Lcom/coloros/settings/feature/face/a/h;->x:[F

    aget v9, v9, v8

    iget-object v10, v1, Lcom/coloros/settings/feature/face/a/h;->x:[F

    aget v10, v10, v2

    iget-object v11, v1, Lcom/coloros/settings/feature/face/a/h;->x:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    iget-object v13, v1, Lcom/coloros/settings/feature/face/a/h;->x:[F

    const/4 v14, 0x3

    aget v13, v13, v14

    invoke-static {v3, v9, v10, v11, v13}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 11267
    iget v3, v1, Lcom/coloros/settings/feature/face/a/h;->c:I

    iget-object v9, v1, Lcom/coloros/settings/feature/face/a/h;->y:[F

    aget v9, v9, v8

    iget-object v10, v1, Lcom/coloros/settings/feature/face/a/h;->y:[F

    aget v10, v10, v2

    iget-object v11, v1, Lcom/coloros/settings/feature/face/a/h;->y:[F

    aget v11, v11, v12

    iget-object v13, v1, Lcom/coloros/settings/feature/face/a/h;->y:[F

    aget v13, v13, v14

    invoke-static {v3, v9, v10, v11, v13}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 11270
    iget v3, v1, Lcom/coloros/settings/feature/face/a/h;->d:I

    iget-object v9, v1, Lcom/coloros/settings/feature/face/a/h;->z:[F

    aget v9, v9, v8

    iget-object v10, v1, Lcom/coloros/settings/feature/face/a/h;->z:[F

    aget v10, v10, v2

    iget-object v11, v1, Lcom/coloros/settings/feature/face/a/h;->z:[F

    aget v11, v11, v12

    iget-object v13, v1, Lcom/coloros/settings/feature/face/a/h;->z:[F

    aget v13, v13, v14

    invoke-static {v3, v9, v10, v11, v13}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 11273
    iget v3, v1, Lcom/coloros/settings/feature/face/a/h;->e:I

    iget-object v9, v1, Lcom/coloros/settings/feature/face/a/h;->A:[F

    aget v9, v9, v8

    iget-object v10, v1, Lcom/coloros/settings/feature/face/a/h;->A:[F

    aget v10, v10, v2

    iget-object v11, v1, Lcom/coloros/settings/feature/face/a/h;->A:[F

    aget v11, v11, v12

    iget-object v13, v1, Lcom/coloros/settings/feature/face/a/h;->A:[F

    aget v13, v13, v14

    invoke-static {v3, v9, v10, v11, v13}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 11276
    iget v3, v1, Lcom/coloros/settings/feature/face/a/h;->f:I

    iget-object v9, v1, Lcom/coloros/settings/feature/face/a/h;->B:[F

    aget v9, v9, v8

    iget-object v10, v1, Lcom/coloros/settings/feature/face/a/h;->B:[F

    aget v10, v10, v2

    iget-object v11, v1, Lcom/coloros/settings/feature/face/a/h;->B:[F

    aget v11, v11, v12

    iget-object v13, v1, Lcom/coloros/settings/feature/face/a/h;->B:[F

    aget v13, v13, v14

    invoke-static {v3, v9, v10, v11, v13}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 11279
    iget v3, v1, Lcom/coloros/settings/feature/face/a/h;->g:I

    iget-object v9, v1, Lcom/coloros/settings/feature/face/a/h;->C:[F

    aget v9, v9, v8

    iget-object v10, v1, Lcom/coloros/settings/feature/face/a/h;->C:[F

    aget v10, v10, v2

    iget-object v11, v1, Lcom/coloros/settings/feature/face/a/h;->C:[F

    aget v11, v11, v12

    iget-object v12, v1, Lcom/coloros/settings/feature/face/a/h;->C:[F

    aget v12, v12, v14

    invoke-static {v3, v9, v10, v11, v12}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 11282
    iget v3, v1, Lcom/coloros/settings/feature/face/a/h;->i:I

    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 11283
    iget v3, v1, Lcom/coloros/settings/feature/face/a/h;->j:I

    invoke-static {v3, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 11284
    iget v3, v1, Lcom/coloros/settings/feature/face/a/h;->k:I

    invoke-static {v3, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 11285
    iget v3, v1, Lcom/coloros/settings/feature/face/a/h;->o:I

    iget v5, v1, Lcom/coloros/settings/feature/face/a/h;->w:F

    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 11287
    iget v3, v1, Lcom/coloros/settings/feature/face/a/h;->a:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 11288
    iget v3, v1, Lcom/coloros/settings/feature/face/a/h;->s:I

    invoke-static {v8, v8, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 11289
    iget v1, v1, Lcom/coloros/settings/feature/face/a/h;->a:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 11291
    invoke-static {v4}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 11292
    invoke-static {v2}, Landroid/opengl/GLES20;->glDepthMask(Z)V

    return-void

    .line 11237
    :cond_18
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "matrix should not be null or length is not 16"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onPause()V
    .locals 0

    .line 478
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 11

    const/4 p1, 0x0

    .line 224
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 225
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->K:Lcom/coloros/settings/feature/face/a/h;

    .line 5229
    iput p2, p1, Lcom/coloros/settings/feature/face/a/h;->t:I

    .line 5230
    iput p3, p1, Lcom/coloros/settings/feature/face/a/h;->u:I

    .line 5231
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x44870000    # 1080.0f

    div-float/2addr v0, v1

    iput v0, p1, Lcom/coloros/settings/feature/face/a/h;->w:F

    int-to-float p1, p2

    int-to-float p2, p3

    div-float v3, p1, p2

    .line 227
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->L:Lcom/coloros/settings/feature/face/a/e;

    neg-float v2, v3

    .line 6061
    iget-object v0, p1, Lcom/coloros/settings/feature/face/a/e;->a:[F

    const/4 v1, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x40800000    # 4.0f

    const/high16 v7, 0x42c80000    # 100.0f

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 228
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->L:Lcom/coloros/settings/feature/face/a/e;

    .line 7056
    iget-object v0, p1, Lcom/coloros/settings/feature/face/a/e;->b:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 212
    invoke-static {v1, v1, v1, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 213
    invoke-static {}, Lcom/coloros/settings/feature/face/a/f;->a()V

    .line 214
    iget-object v2, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->L:Lcom/coloros/settings/feature/face/a/e;

    invoke-virtual {v2}, Lcom/coloros/settings/feature/face/a/e;->a()V

    .line 215
    iget-object v2, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->L:Lcom/coloros/settings/feature/face/a/e;

    invoke-virtual {v2}, Lcom/coloros/settings/feature/face/a/e;->b()V

    .line 216
    iget-object v2, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->I:Lcom/coloros/settings/feature/face/a/i;

    invoke-virtual {v2}, Lcom/coloros/settings/feature/face/a/i;->e()V

    .line 217
    iget-object v2, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->J:Lcom/coloros/settings/feature/face/a/b;

    invoke-virtual {v2}, Lcom/coloros/settings/feature/face/a/b;->e()V

    .line 218
    iget-object v2, v0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->K:Lcom/coloros/settings/feature/face/a/h;

    .line 2167
    iget-object v3, v2, Lcom/coloros/settings/feature/face/a/h;->r:[I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 2168
    iget-object v3, v2, Lcom/coloros/settings/feature/face/a/h;->r:[I

    aget v3, v3, v5

    const v6, 0x8892

    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 2170
    iget-object v3, v2, Lcom/coloros/settings/feature/face/a/h;->p:Lcom/coloros/settings/feature/face/a/d;

    .line 3052
    iget-object v7, v3, Lcom/coloros/settings/feature/face/a/d;->c:[F

    const/16 v8, 0x10

    const/4 v9, 0x4

    const/4 v10, 0x3

    if-eqz v7, :cond_0

    .line 3053
    iget-object v1, v3, Lcom/coloros/settings/feature/face/a/d;->c:[F

    goto/16 :goto_6

    .line 3055
    :cond_0
    iget v7, v3, Lcom/coloros/settings/feature/face/a/d;->a:F

    iget v11, v3, Lcom/coloros/settings/feature/face/a/d;->b:I

    mul-float v12, v7, v7

    const v13, 0x3fb0e443

    div-float/2addr v12, v13

    float-to-double v12, v12

    .line 3084
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v12, v12

    const v13, 0x3f1e377a

    mul-float/2addr v13, v12

    const/16 v14, 0x24

    .line 3087
    new-array v14, v14, [F

    aput v1, v14, v5

    aput v12, v14, v4

    neg-float v15, v13

    const/16 v16, 0x2

    aput v15, v14, v16

    aput v1, v14, v10

    aput v12, v14, v9

    const/16 v17, 0x5

    aput v13, v14, v17

    const/16 v17, 0x6

    aput v12, v14, v17

    const/16 v17, 0x7

    aput v13, v14, v17

    const/16 v17, 0x8

    aput v1, v14, v17

    const/16 v17, 0x9

    aput v13, v14, v17

    const/16 v17, 0xa

    aput v1, v14, v17

    const/16 v17, 0xb

    neg-float v6, v12

    aput v6, v14, v17

    const/16 v17, 0xc

    aput v15, v14, v17

    const/16 v17, 0xd

    aput v1, v14, v17

    const/16 v17, 0xe

    aput v6, v14, v17

    const/16 v17, 0xf

    aput v6, v14, v17

    aput v13, v14, v8

    const/16 v17, 0x11

    aput v1, v14, v17

    const/16 v17, 0x12

    aput v15, v14, v17

    const/16 v17, 0x13

    aput v1, v14, v17

    const/16 v17, 0x14

    aput v12, v14, v17

    const/16 v17, 0x15

    aput v13, v14, v17

    const/16 v17, 0x16

    aput v1, v14, v17

    const/16 v17, 0x17

    aput v12, v14, v17

    const/16 v17, 0x18

    aput v12, v14, v17

    const/16 v12, 0x19

    aput v15, v14, v12

    const/16 v12, 0x1a

    aput v1, v14, v12

    const/16 v12, 0x1b

    aput v1, v14, v12

    const/16 v12, 0x1c

    aput v6, v14, v12

    const/16 v12, 0x1d

    aput v15, v14, v12

    const/16 v12, 0x1e

    aput v6, v14, v12

    const/16 v12, 0x1f

    aput v15, v14, v12

    const/16 v12, 0x20

    aput v1, v14, v12

    const/16 v12, 0x21

    aput v1, v14, v12

    const/16 v1, 0x22

    aput v6, v14, v1

    const/16 v1, 0x23

    aput v13, v14, v1

    const/16 v1, 0x3c

    .line 3102
    new-array v6, v1, [S

    fill-array-data v6, :array_0

    const/16 v12, 0xb4

    .line 3270
    new-array v12, v12, [F

    move v13, v5

    move v15, v13

    :goto_0
    if-ge v13, v1, :cond_1

    .line 3272
    aget-short v17, v6, v13

    add-int/lit8 v18, v15, 0x0

    mul-int/lit8 v17, v17, 0x3

    add-int/lit8 v19, v17, 0x0

    .line 3273
    aget v19, v14, v19

    aput v19, v12, v18

    add-int/lit8 v18, v15, 0x1

    add-int/lit8 v19, v17, 0x1

    .line 3274
    aget v19, v14, v19

    aput v19, v12, v18

    add-int/lit8 v18, v15, 0x2

    add-int/lit8 v17, v17, 0x2

    .line 3275
    aget v17, v14, v17

    aput v17, v12, v18

    add-int/2addr v15, v10

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 3128
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v6, v5

    :goto_1
    const/16 v13, 0xb4

    if-ge v6, v13, :cond_4

    .line 3130
    new-instance v13, Lcom/coloros/settings/feature/face/a/j;

    add-int/lit8 v14, v6, 0x0

    aget v14, v12, v14

    add-int/lit8 v15, v6, 0x1

    aget v15, v12, v15

    add-int/lit8 v17, v6, 0x2

    aget v8, v12, v17

    invoke-direct {v13, v14, v15, v8}, Lcom/coloros/settings/feature/face/a/j;-><init>(FFF)V

    .line 3133
    new-instance v8, Lcom/coloros/settings/feature/face/a/j;

    add-int/lit8 v14, v6, 0x3

    aget v14, v12, v14

    add-int/lit8 v15, v6, 0x4

    aget v15, v12, v15

    add-int/lit8 v17, v6, 0x5

    aget v10, v12, v17

    invoke-direct {v8, v14, v15, v10}, Lcom/coloros/settings/feature/face/a/j;-><init>(FFF)V

    .line 3136
    new-instance v10, Lcom/coloros/settings/feature/face/a/j;

    add-int/lit8 v14, v6, 0x6

    aget v14, v12, v14

    add-int/lit8 v15, v6, 0x7

    aget v15, v12, v15

    add-int/lit8 v17, v6, 0x8

    aget v9, v12, v17

    invoke-direct {v10, v14, v15, v9}, Lcom/coloros/settings/feature/face/a/j;-><init>(FFF)V

    move v9, v5

    :goto_2
    if-gt v9, v11, :cond_3

    .line 3140
    invoke-static {v7, v13, v8, v11, v9}, Lcom/coloros/settings/feature/face/a/d;->a(FLcom/coloros/settings/feature/face/a/j;Lcom/coloros/settings/feature/face/a/j;II)Lcom/coloros/settings/feature/face/a/j;

    move-result-object v14

    .line 3141
    invoke-static {v7, v13, v10, v11, v9}, Lcom/coloros/settings/feature/face/a/d;->a(FLcom/coloros/settings/feature/face/a/j;Lcom/coloros/settings/feature/face/a/j;II)Lcom/coloros/settings/feature/face/a/j;

    move-result-object v15

    move v4, v5

    :goto_3
    if-gt v4, v9, :cond_2

    .line 3143
    invoke-static {v7, v14, v15, v9, v4}, Lcom/coloros/settings/feature/face/a/d;->a(FLcom/coloros/settings/feature/face/a/j;Lcom/coloros/settings/feature/face/a/j;II)Lcom/coloros/settings/feature/face/a/j;

    move-result-object v0

    move/from16 v20, v7

    .line 4059
    iget-object v7, v0, Lcom/coloros/settings/feature/face/a/j;->a:[F

    aget v7, v7, v5

    .line 3144
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4067
    iget-object v7, v0, Lcom/coloros/settings/feature/face/a/j;->a:[F

    const/16 v17, 0x1

    aget v7, v7, v17

    .line 3145
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4075
    iget-object v0, v0, Lcom/coloros/settings/feature/face/a/j;->a:[F

    aget v0, v0, v16

    .line 3146
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move/from16 v7, v20

    goto :goto_3

    :cond_2
    move/from16 v20, v7

    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    goto :goto_2

    :cond_3
    move/from16 v20, v7

    add-int/lit8 v6, v6, 0x9

    const/4 v4, 0x1

    const/16 v8, 0x10

    const/4 v9, 0x4

    const/4 v10, 0x3

    move-object/from16 v0, p0

    goto/16 :goto_1

    .line 3151
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [F

    .line 3153
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v5

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    add-int/lit8 v7, v4, 0x1

    if-eqz v6, :cond_5

    .line 3154
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    goto :goto_5

    :cond_5
    const/high16 v6, 0x7fc00000    # Float.NaN

    :goto_5
    aput v6, v0, v4

    move v4, v7

    goto :goto_4

    .line 3055
    :cond_6
    iput-object v0, v3, Lcom/coloros/settings/feature/face/a/d;->c:[F

    .line 3056
    iget-object v1, v3, Lcom/coloros/settings/feature/face/a/d;->c:[F

    .line 2171
    :goto_6
    array-length v0, v1

    iput v0, v2, Lcom/coloros/settings/feature/face/a/h;->s:I

    .line 2172
    iget v0, v2, Lcom/coloros/settings/feature/face/a/h;->s:I

    const/4 v3, 0x4

    mul-int/2addr v0, v3

    .line 2173
    iget v3, v2, Lcom/coloros/settings/feature/face/a/h;->s:I

    const/4 v4, 0x3

    div-int/2addr v3, v4

    iput v3, v2, Lcom/coloros/settings/feature/face/a/h;->s:I

    .line 2174
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 2175
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const v1, 0x88e4

    const v4, 0x8892

    .line 2177
    invoke-static {v4, v0, v3, v1}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 2178
    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const-string v0, "SphereParticleGLActor initVertex"

    .line 2179
    invoke-static {v0}, Lcom/coloros/settings/feature/face/a/c;->a(Ljava/lang/String;)V

    .line 4203
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x10

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    .line 4205
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 4206
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 4207
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, -0x1

    .line 4208
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4209
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v4, 0x41000000    # 8.0f

    const/high16 v6, 0x41000000    # 8.0f

    const/high16 v7, 0x40e00000    # 7.0f

    .line 4210
    invoke-virtual {v1, v4, v6, v7, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4213
    iget-object v1, v2, Lcom/coloros/settings/feature/face/a/h;->v:[I

    aget v1, v1, v5

    const/16 v3, 0xde1

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2801

    const/16 v4, 0x2601

    .line 4214
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2800

    .line 4216
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2802

    const v4, 0x812f

    .line 4218
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    .line 4220
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 4222
    invoke-static {v3, v5, v0, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 4224
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const-string v0, "precision highp float;\nattribute vec4 aPosition;\nuniform mat4 uMVPMatrix;\nuniform sampler2D uProgressTexture;\nuniform float uCenterRatioRadius;\nuniform float uEndAnimPntSize;\nuniform float uEndAnimScale;\nuniform float uPointSizeScale;\n\nvarying float vProgress;\nvarying float vPosZ;\n\nvoid main() {\n    vec4 pntPos = uMVPMatrix * aPosition;\n    float homogeneousDenominator = 1.0 / pntPos.w;\n    pntPos *= homogeneousDenominator;\n    float distance = sqrt(pntPos.x * pntPos.x + pntPos.y * pntPos.y);\n    vPosZ = pntPos.z;\n    float theta = acos(dot(pntPos.xy,vec2(0.0,1.0))/distance);\n    if (pntPos.x < 0.0) {\n        theta = 3.14159*2.0 - theta;\n    }\n    if ((pntPos.y < 0.0) && (abs(pntPos.x) < 0.001)) {\n        theta = 3.14159;\n    }\n    float progress = texture2D(uProgressTexture , vec2(theta / (3.14159*2.0) , 0.5)).r;\n    vProgress = progress;\n\n    vec4 finalPosition = vec4(0.0);\n    gl_PointSize = 0.0;\n    if (distance > uCenterRatioRadius) {\n        float minSize = 5.0;\n        float pntSize = distance * distance * distance * distance * 50.0 + uEndAnimPntSize * 5.0;\n        float finalSize = (pntSize < minSize) ? minSize : pntSize;\n        gl_PointSize = finalSize * uPointSizeScale;\n    }\n    pntPos = pntPos + 0.15 * progress * (1.0-uEndAnimScale) * vec4(pntPos.xyz,0.0);\n    distance = sqrt(pntPos.x * pntPos.x + pntPos.y * pntPos.y);\n    finalPosition = pntPos ;\n     if (distance < uCenterRatioRadius) {\n         gl_PointSize = 0.0;\n         finalPosition = vec4(0.0);\n     }\n    gl_Position = finalPosition;\n}\n"

    const-string v1, "precision highp float;\nuniform sampler2D uTexture;\nuniform vec2 uViewport;\nuniform vec4 uInnerColorTop;\nuniform vec4 uInnerColorBottom;\nuniform vec4 uInnerColorMix;\nuniform vec4 uOuterColorTop;\nuniform vec4 uOuterColorBottom;\nuniform vec4 uOuterColorMix;\nuniform float uEndAnimPntSize;\nvarying float vProgress;\nvarying float vPosZ;\n\nconst int ZERO = 0;\nconst int ONE = 1;\n\nvoid main() {\n    vec4 colorTop=mix(uOuterColorTop, uInnerColorTop, vProgress);\n    vec4 colorBottom=mix(uOuterColorBottom, uInnerColorBottom, vProgress);\n    vec4 colorMix=mix(uOuterColorMix, uInnerColorMix, vProgress);\n\n    float pointMixFactor=abs(float(ONE) - gl_FragCoord.y / uViewport.y);\n    vec4 color = vec4(mix(colorTop.r,colorBottom.r, pointMixFactor), mix(colorTop.g, colorBottom.g, pointMixFactor), mix(colorTop.b,colorBottom.b, pointMixFactor), float(ONE));\n\t\n    if (vPosZ > 0.675){//0.675 is an experience value\n        color = mix(vec4(colorMix.rgb , float(ONE)) , color , pointMixFactor * 0.4);\n    }\n\t\n    vec4 texColor = texture2D(uTexture, gl_PointCoord);\n    color *= texColor;\n    color.rgb /= color.a;\n    color = color + vec4(vec3(uEndAnimPntSize), float(ZERO));\n    gl_FragColor = color;\n}\n"

    .line 5183
    invoke-static {v0, v1}, Lcom/coloros/settings/feature/face/a/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/coloros/settings/feature/face/a/h;->q:I

    .line 5184
    iget v0, v2, Lcom/coloros/settings/feature/face/a/h;->q:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/coloros/settings/feature/face/a/h;->a:I

    .line 5185
    iget v0, v2, Lcom/coloros/settings/feature/face/a/h;->q:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/coloros/settings/feature/face/a/h;->n:I

    .line 5186
    iget v0, v2, Lcom/coloros/settings/feature/face/a/h;->q:I

    const-string v1, "uInnerColorTop"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/coloros/settings/feature/face/a/h;->b:I

    .line 5187
    iget v0, v2, Lcom/coloros/settings/feature/face/a/h;->q:I

    const-string v1, "uInnerColorBottom"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/coloros/settings/feature/face/a/h;->c:I

    .line 5188
    iget v0, v2, Lcom/coloros/settings/feature/face/a/h;->q:I

    const-string v1, "uInnerColorMix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/coloros/settings/feature/face/a/h;->d:I

    .line 5189
    iget v0, v2, Lcom/coloros/settings/feature/face/a/h;->q:I

    const-string v1, "uOuterColorTop"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/coloros/settings/feature/face/a/h;->e:I

    .line 5190
    iget v0, v2, Lcom/coloros/settings/feature/face/a/h;->q:I

    const-string v1, "uOuterColorBottom"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/coloros/settings/feature/face/a/h;->f:I

    .line 5191
    iget v0, v2, Lcom/coloros/settings/feature/face/a/h;->q:I

    const-string v1, "uOuterColorMix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/coloros/settings/feature/face/a/h;->g:I

    .line 5192
    iget v0, v2, Lcom/coloros/settings/feature/face/a/h;->q:I

    const-string v1, "uViewport"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/coloros/settings/feature/face/a/h;->h:I

    .line 5193
    iget v0, v2, Lcom/coloros/settings/feature/face/a/h;->q:I

    const-string v1, "uCenterRatioRadius"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/coloros/settings/feature/face/a/h;->i:I

    .line 5194
    iget v0, v2, Lcom/coloros/settings/feature/face/a/h;->q:I

    const-string v1, "uEndAnimPntSize"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/coloros/settings/feature/face/a/h;->j:I

    .line 5195
    iget v0, v2, Lcom/coloros/settings/feature/face/a/h;->q:I

    const-string v1, "uEndAnimScale"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/coloros/settings/feature/face/a/h;->k:I

    .line 5196
    iget v0, v2, Lcom/coloros/settings/feature/face/a/h;->q:I

    const-string v1, "uTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/coloros/settings/feature/face/a/h;->l:I

    .line 5197
    iget v0, v2, Lcom/coloros/settings/feature/face/a/h;->q:I

    const-string v1, "uProgressTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/coloros/settings/feature/face/a/h;->m:I

    .line 5198
    iget v0, v2, Lcom/coloros/settings/feature/face/a/h;->q:I

    const-string v1, "uPointSizeScale"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/coloros/settings/feature/face/a/h;->o:I

    const-string v0, "SphereParticleGLActor initShader"

    .line 5199
    invoke-static {v0}, Lcom/coloros/settings/feature/face/a/c;->a(Ljava/lang/String;)V

    const-string v0, "onSurfaceCreated"

    .line 219
    invoke-static {v0}, Lcom/coloros/settings/feature/face/a/f;->a(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
        0x0s
        0x3s
        0x4s
        0x0s
        0x4s
        0x5s
        0x0s
        0x5s
        0x1s
        0x1s
        0x6s
        0x7s
        0x1s
        0x7s
        0x2s
        0x2s
        0x7s
        0x8s
        0x2s
        0x8s
        0x3s
        0x3s
        0x8s
        0x9s
        0x3s
        0x9s
        0x4s
        0x4s
        0x9s
        0xas
        0x4s
        0xas
        0x5s
        0x5s
        0xas
        0x6s
        0x5s
        0x6s
        0x1s
        0x6s
        0xbs
        0x7s
        0x7s
        0xbs
        0x8s
        0x8s
        0xbs
        0x9s
        0x9s
        0xbs
        0xas
        0xas
        0xbs
        0x6s
    .end array-data
.end method

.method public setMaxScale(F)V
    .locals 0

    .line 437
    iput p1, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->q:F

    return-void
.end method

.method public setMinScale(F)V
    .locals 0

    .line 433
    iput p1, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->p:F

    return-void
.end method

.method public setOnProgressCallBack(Lcom/coloros/settings/feature/face/FaceRecordAnimView$a;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->M:Lcom/coloros/settings/feature/face/FaceRecordAnimView$a;

    return-void
.end method

.method public setTargetProgress(I)V
    .locals 2

    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    const v0, 0x43a78000    # 335.0f

    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v0, 0x42a00000    # 80.0f

    div-float/2addr v1, v0

    float-to-int v0, v1

    .line 459
    iput v0, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->E:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x168

    .line 462
    iput v0, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->E:I

    :goto_0
    if-nez p1, :cond_1

    const/high16 p1, -0x40800000    # -1.0f

    .line 465
    iput p1, p0, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->F:F

    .line 467
    new-instance p1, Lcom/coloros/settings/feature/face/FaceRecordAnimView$5;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/face/FaceRecordAnimView$5;-><init>(Lcom/coloros/settings/feature/face/FaceRecordAnimView;)V

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
