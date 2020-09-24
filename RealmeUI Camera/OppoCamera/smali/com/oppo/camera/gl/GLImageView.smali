.class public Lcom/oppo/camera/gl/GLImageView;
.super Landroid/opengl/GLSurfaceView;
.source "GLImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/gl/GLImageView$Rectangle;,
        Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;,
        Lcom/oppo/camera/gl/GLImageView$BlurAnimationEndListener;,
        Lcom/oppo/camera/gl/GLImageView$AnimatorState;
    }
.end annotation


# static fields
.field private static a:F = 2.5f


# instance fields
.field private final b:Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;

.field private final c:Landroid/view/animation/PathInterpolator;

.field private final d:Landroid/view/animation/PathInterpolator;

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:Landroid/content/Context;

.field private r:Landroid/graphics/Bitmap;

.field private s:Lcom/oppo/camera/gl/GLImageView$AnimatorState;

.field private t:Landroid/os/Handler;

.field private u:Lcom/oppo/camera/gl/GLImageView$BlurAnimationEndListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 138
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 100
    sget v0, Lcom/oppo/camera/gl/GLImageView;->a:F

    iput v0, p0, Lcom/oppo/camera/gl/GLImageView;->e:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 101
    iput v0, p0, Lcom/oppo/camera/gl/GLImageView;->f:F

    const/high16 v0, 0x41700000    # 15.0f

    .line 103
    iput v0, p0, Lcom/oppo/camera/gl/GLImageView;->h:F

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lcom/oppo/camera/gl/GLImageView;->i:F

    .line 105
    iput v0, p0, Lcom/oppo/camera/gl/GLImageView;->j:F

    const/16 v1, 0x438

    .line 107
    iput v1, p0, Lcom/oppo/camera/gl/GLImageView;->k:I

    const/16 v1, 0x8e8

    .line 108
    iput v1, p0, Lcom/oppo/camera/gl/GLImageView;->l:I

    const/4 v1, 0x0

    .line 109
    iput v1, p0, Lcom/oppo/camera/gl/GLImageView;->m:I

    .line 110
    iput v1, p0, Lcom/oppo/camera/gl/GLImageView;->n:I

    .line 111
    iput v1, p0, Lcom/oppo/camera/gl/GLImageView;->o:I

    .line 113
    iput-boolean v1, p0, Lcom/oppo/camera/gl/GLImageView;->p:Z

    const/4 v2, 0x0

    .line 115
    iput-object v2, p0, Lcom/oppo/camera/gl/GLImageView;->q:Landroid/content/Context;

    .line 116
    iput-object v2, p0, Lcom/oppo/camera/gl/GLImageView;->r:Landroid/graphics/Bitmap;

    .line 117
    sget-object v3, Lcom/oppo/camera/gl/GLImageView$AnimatorState;->BLUR_FADE_END:Lcom/oppo/camera/gl/GLImageView$AnimatorState;

    iput-object v3, p0, Lcom/oppo/camera/gl/GLImageView;->s:Lcom/oppo/camera/gl/GLImageView$AnimatorState;

    .line 118
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/oppo/camera/gl/GLImageView;->t:Landroid/os/Handler;

    .line 139
    iput-object p1, p0, Lcom/oppo/camera/gl/GLImageView;->q:Landroid/content/Context;

    const/4 v3, 0x2

    .line 140
    invoke-virtual {p0, v3}, Lcom/oppo/camera/gl/GLImageView;->setEGLContextClientVersion(I)V

    const/16 v5, 0x8

    const/16 v6, 0x8

    const/16 v7, 0x8

    const/16 v8, 0x8

    const/16 v9, 0x10

    const/4 v10, 0x0

    move-object v4, p0

    .line 141
    invoke-virtual/range {v4 .. v10}, Lcom/oppo/camera/gl/GLImageView;->setEGLConfigChooser(IIIIII)V

    .line 143
    invoke-virtual {p0, v2}, Lcom/oppo/camera/gl/GLImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 144
    new-instance v2, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;

    invoke-direct {v2, p0}, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;-><init>(Lcom/oppo/camera/gl/GLImageView;)V

    iput-object v2, p0, Lcom/oppo/camera/gl/GLImageView;->b:Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;

    .line 145
    iget-object v2, p0, Lcom/oppo/camera/gl/GLImageView;->b:Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;

    invoke-virtual {p0, v2}, Lcom/oppo/camera/gl/GLImageView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 v2, 0x1

    .line 146
    invoke-virtual {p0, v2}, Lcom/oppo/camera/gl/GLImageView;->setZOrderMediaOverlay(Z)V

    .line 147
    invoke-virtual {p0}, Lcom/oppo/camera/gl/GLImageView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    const/4 v3, -0x2

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 148
    invoke-virtual {p0, v1}, Lcom/oppo/camera/gl/GLImageView;->setRenderMode(I)V

    .line 149
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3eb33333    # 0.35f

    const v4, 0x3f1eb852    # 0.62f

    const v5, 0x3e4ccccd    # 0.2f

    invoke-direct {v1, v3, v4, v5, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/oppo/camera/gl/GLImageView;->c:Landroid/view/animation/PathInterpolator;

    .line 150
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f28f5c3    # 0.66f

    invoke-direct {v1, v3, v0, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/oppo/camera/gl/GLImageView;->d:Landroid/view/animation/PathInterpolator;

    .line 152
    invoke-static {}, Lcom/oppo/camera/o/d;->L()I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/gl/GLImageView;->l:I

    .line 153
    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/gl/GLImageView;->k:I

    .line 154
    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/oppo/camera/o/d;->M()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/gl/GLImageView;->g:F

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06043d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/gl/GLImageView;->o:I

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GLImageView, mMaxRadius: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oppo/camera/gl/GLImageView;->h:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GLImageView"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/gl/GLImageView;F)F
    .locals 0

    .line 69
    iput p1, p0, Lcom/oppo/camera/gl/GLImageView;->f:F

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/gl/GLImageView;I)I
    .locals 0

    .line 69
    iput p1, p0, Lcom/oppo/camera/gl/GLImageView;->n:I

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/gl/GLImageView;)Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/oppo/camera/gl/GLImageView;->b:Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;

    return-object p0
.end method

.method private a(Lcom/oppo/camera/gl/GLImageView$AnimatorState;)Z
    .locals 1

    .line 207
    monitor-enter p0

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/gl/GLImageView;->s:Lcom/oppo/camera/gl/GLImageView$AnimatorState;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 209
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/oppo/camera/gl/GLImageView;Lcom/oppo/camera/gl/GLImageView$AnimatorState;)Z
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/oppo/camera/gl/GLImageView;->a(Lcom/oppo/camera/gl/GLImageView$AnimatorState;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/oppo/camera/gl/GLImageView;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/oppo/camera/gl/GLImageView;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/gl/GLImageView;F)F
    .locals 0

    .line 69
    iput p1, p0, Lcom/oppo/camera/gl/GLImageView;->i:F

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/gl/GLImageView;I)I
    .locals 0

    .line 69
    iput p1, p0, Lcom/oppo/camera/gl/GLImageView;->k:I

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/gl/GLImageView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/oppo/camera/gl/GLImageView;->r:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic c(Lcom/oppo/camera/gl/GLImageView;)F
    .locals 0

    .line 69
    iget p0, p0, Lcom/oppo/camera/gl/GLImageView;->f:F

    return p0
.end method

.method static synthetic c(Lcom/oppo/camera/gl/GLImageView;F)F
    .locals 0

    .line 69
    iput p1, p0, Lcom/oppo/camera/gl/GLImageView;->j:F

    return p1
.end method

.method static synthetic c(Lcom/oppo/camera/gl/GLImageView;I)I
    .locals 0

    .line 69
    iput p1, p0, Lcom/oppo/camera/gl/GLImageView;->l:I

    return p1
.end method

.method static synthetic d()F
    .locals 1

    .line 69
    sget v0, Lcom/oppo/camera/gl/GLImageView;->a:F

    return v0
.end method

.method static synthetic d(Lcom/oppo/camera/gl/GLImageView;F)F
    .locals 0

    .line 69
    iput p1, p0, Lcom/oppo/camera/gl/GLImageView;->e:F

    return p1
.end method

.method static synthetic d(Lcom/oppo/camera/gl/GLImageView;I)I
    .locals 0

    .line 69
    iput p1, p0, Lcom/oppo/camera/gl/GLImageView;->m:I

    return p1
.end method

.method static synthetic d(Lcom/oppo/camera/gl/GLImageView;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/oppo/camera/gl/GLImageView;->p:Z

    return p0
.end method

.method static synthetic e(Lcom/oppo/camera/gl/GLImageView;F)F
    .locals 0

    .line 69
    iput p1, p0, Lcom/oppo/camera/gl/GLImageView;->g:F

    return p1
.end method

.method static synthetic e(Lcom/oppo/camera/gl/GLImageView;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/oppo/camera/gl/GLImageView;->n:I

    return p0
.end method

.method static synthetic f(Lcom/oppo/camera/gl/GLImageView;)F
    .locals 0

    .line 69
    iget p0, p0, Lcom/oppo/camera/gl/GLImageView;->i:F

    return p0
.end method

.method static synthetic g(Lcom/oppo/camera/gl/GLImageView;)F
    .locals 0

    .line 69
    iget p0, p0, Lcom/oppo/camera/gl/GLImageView;->h:F

    return p0
.end method

.method static synthetic h(Lcom/oppo/camera/gl/GLImageView;)F
    .locals 0

    .line 69
    iget p0, p0, Lcom/oppo/camera/gl/GLImageView;->e:F

    return p0
.end method

.method static synthetic i(Lcom/oppo/camera/gl/GLImageView;)Landroid/view/animation/PathInterpolator;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/oppo/camera/gl/GLImageView;->d:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method static synthetic j(Lcom/oppo/camera/gl/GLImageView;)Landroid/os/Handler;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/oppo/camera/gl/GLImageView;->t:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic k(Lcom/oppo/camera/gl/GLImageView;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/oppo/camera/gl/GLImageView;->k:I

    return p0
.end method

.method static synthetic l(Lcom/oppo/camera/gl/GLImageView;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/oppo/camera/gl/GLImageView;->l:I

    return p0
.end method

.method static synthetic m(Lcom/oppo/camera/gl/GLImageView;)F
    .locals 0

    .line 69
    iget p0, p0, Lcom/oppo/camera/gl/GLImageView;->g:F

    return p0
.end method

.method static synthetic n(Lcom/oppo/camera/gl/GLImageView;)Landroid/content/Context;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/oppo/camera/gl/GLImageView;->q:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic o(Lcom/oppo/camera/gl/GLImageView;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/oppo/camera/gl/GLImageView;->m:I

    return p0
.end method

.method static synthetic p(Lcom/oppo/camera/gl/GLImageView;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/oppo/camera/gl/GLImageView;->o:I

    return p0
.end method

.method static synthetic q(Lcom/oppo/camera/gl/GLImageView;)F
    .locals 0

    .line 69
    iget p0, p0, Lcom/oppo/camera/gl/GLImageView;->j:F

    return p0
.end method

.method static synthetic r(Lcom/oppo/camera/gl/GLImageView;)I
    .locals 2

    .line 69
    iget v0, p0, Lcom/oppo/camera/gl/GLImageView;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oppo/camera/gl/GLImageView;->n:I

    return v0
.end method

.method static synthetic s(Lcom/oppo/camera/gl/GLImageView;)Landroid/view/animation/PathInterpolator;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/oppo/camera/gl/GLImageView;->c:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "GLImageView"

    const-string v1, "hideWithNoBlurAnimator"

    .line 213
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    sget-object v0, Lcom/oppo/camera/gl/GLImageView$AnimatorState;->BLUR_FADE_END:Lcom/oppo/camera/gl/GLImageView$AnimatorState;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/gl/GLImageView;->setAnimatorState(Lcom/oppo/camera/gl/GLImageView$AnimatorState;)V

    .line 217
    iget-object v0, p0, Lcom/oppo/camera/gl/GLImageView;->t:Landroid/os/Handler;

    new-instance v1, Lcom/oppo/camera/gl/GLImageView$1;

    invoke-direct {v1, p0}, Lcom/oppo/camera/gl/GLImageView$1;-><init>(Lcom/oppo/camera/gl/GLImageView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .locals 3

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideWithBlurAnimator, mStep: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/gl/GLImageView;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mRadius: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/gl/GLImageView;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLImageView"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    sget-object v0, Lcom/oppo/camera/gl/GLImageView$AnimatorState;->BLUR_FADE_IN:Lcom/oppo/camera/gl/GLImageView$AnimatorState;

    invoke-direct {p0, v0}, Lcom/oppo/camera/gl/GLImageView;->a(Lcom/oppo/camera/gl/GLImageView$AnimatorState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "hideWithBlurAnimator"

    .line 229
    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 231
    sget v1, Lcom/oppo/camera/gl/GLImageView;->a:F

    neg-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/oppo/camera/gl/GLImageView;->e:F

    .line 232
    sget-object v1, Lcom/oppo/camera/gl/GLImageView$AnimatorState;->BLUR_FADE_OUT:Lcom/oppo/camera/gl/GLImageView$AnimatorState;

    invoke-virtual {p0, v1}, Lcom/oppo/camera/gl/GLImageView;->setAnimatorState(Lcom/oppo/camera/gl/GLImageView$AnimatorState;)V

    const/4 v1, 0x1

    .line 233
    iput-boolean v1, p0, Lcom/oppo/camera/gl/GLImageView;->p:Z

    .line 234
    invoke-virtual {p0}, Lcom/oppo/camera/gl/GLImageView;->requestRender()V

    .line 236
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/gl/GLImageView;->t:Landroid/os/Handler;

    new-instance v1, Lcom/oppo/camera/gl/GLImageView$2;

    invoke-direct {v1, p0}, Lcom/oppo/camera/gl/GLImageView$2;-><init>(Lcom/oppo/camera/gl/GLImageView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 245
    sget-object v0, Lcom/oppo/camera/gl/GLImageView$AnimatorState;->BLUR_FADE_END:Lcom/oppo/camera/gl/GLImageView$AnimatorState;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/gl/GLImageView;->setAnimatorState(Lcom/oppo/camera/gl/GLImageView$AnimatorState;)V

    :goto_0
    return-void
.end method

.method public c()Z
    .locals 3

    const-string v0, "GLImageView"

    const-string v1, "startBlurAnimation"

    .line 250
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    sget-object v0, Lcom/oppo/camera/gl/GLImageView$AnimatorState;->BLUR_FADE_OUT:Lcom/oppo/camera/gl/GLImageView$AnimatorState;

    invoke-direct {p0, v0}, Lcom/oppo/camera/gl/GLImageView;->a(Lcom/oppo/camera/gl/GLImageView$AnimatorState;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/oppo/camera/gl/GLImageView$AnimatorState;->BLUR_FADE_END:Lcom/oppo/camera/gl/GLImageView$AnimatorState;

    invoke-direct {p0, v0}, Lcom/oppo/camera/gl/GLImageView;->a(Lcom/oppo/camera/gl/GLImageView$AnimatorState;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 253
    :cond_1
    :goto_0
    sget-object v0, Lcom/oppo/camera/gl/GLImageView$AnimatorState;->BLUR_FADE_IN:Lcom/oppo/camera/gl/GLImageView$AnimatorState;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/gl/GLImageView;->setAnimatorState(Lcom/oppo/camera/gl/GLImageView$AnimatorState;)V

    .line 254
    sget v0, Lcom/oppo/camera/gl/GLImageView;->a:F

    iput v0, p0, Lcom/oppo/camera/gl/GLImageView;->e:F

    .line 256
    iget v1, p0, Lcom/oppo/camera/gl/GLImageView;->f:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    .line 257
    iput v0, p0, Lcom/oppo/camera/gl/GLImageView;->f:F

    .line 260
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/gl/GLImageView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/oppo/camera/gl/GLImageView$3;

    invoke-direct {v1, p0}, Lcom/oppo/camera/gl/GLImageView$3;-><init>(Lcom/oppo/camera/gl/GLImageView;)V

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/gl/GLImageView;->surfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;Ljava/lang/Runnable;)V

    .line 267
    iget-object v0, p0, Lcom/oppo/camera/gl/GLImageView;->t:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public setAnimationEndListener(Lcom/oppo/camera/gl/GLImageView$BlurAnimationEndListener;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/oppo/camera/gl/GLImageView;->u:Lcom/oppo/camera/gl/GLImageView$BlurAnimationEndListener;

    return-void
.end method

.method public setAnimatorState(Lcom/oppo/camera/gl/GLImageView$AnimatorState;)V
    .locals 3

    .line 199
    monitor-enter p0

    :try_start_0
    const-string v0, "GLImageView"

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAnimatorState, state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/gl/GLImageView;->s:Lcom/oppo/camera/gl/GLImageView$AnimatorState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iput-object p1, p0, Lcom/oppo/camera/gl/GLImageView;->s:Lcom/oppo/camera/gl/GLImageView$AnimatorState;

    .line 203
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setChangeToSize(I)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/oppo/camera/gl/GLImageView;->b:Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->setChangeToSize(I)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImageBitmap, bitmap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isRecycle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLImageView"

    .line 165
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_7

    if-eqz p1, :cond_2

    .line 170
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_2
    sget-object v0, Lcom/oppo/camera/gl/GLImageView$AnimatorState;->BLUR_FADE_IN:Lcom/oppo/camera/gl/GLImageView$AnimatorState;

    .line 171
    invoke-direct {p0, v0}, Lcom/oppo/camera/gl/GLImageView;->a(Lcom/oppo/camera/gl/GLImageView$AnimatorState;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string v0, "oppo.dump.blurAnim"

    const-string v1, "false"

    .line 175
    invoke-static {v0, v1}, Lcom/oppo/camera/debug/DebugUtil;->debugPropertyEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 176
    iget-object v0, p0, Lcom/oppo/camera/gl/GLImageView;->q:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "before_blur_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_bitmap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "blurAnim"

    .line 176
    invoke-static {v0, p1, v1, v2}, Lcom/oppo/camera/o/d;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_4
    monitor-enter p0

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/gl/GLImageView;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/gl/GLImageView;->r:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_5

    .line 183
    iget-object v0, p0, Lcom/oppo/camera/gl/GLImageView;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 186
    :cond_5
    invoke-static {p1}, Lcom/oppo/camera/o/d;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/gl/GLImageView;->r:Landroid/graphics/Bitmap;

    const-string p1, "oppo.dump.blurAnim"

    const-string v0, "false"

    .line 188
    invoke-static {p1, v0}, Lcom/oppo/camera/debug/DebugUtil;->debugPropertyEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 189
    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView;->q:Landroid/content/Context;

    iget-object v0, p0, Lcom/oppo/camera/gl/GLImageView;->r:Landroid/graphics/Bitmap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "before_blur_density"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/gl/GLImageView;->r:Landroid/graphics/Bitmap;

    .line 190
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/gl/GLImageView;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_bitmap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "blurAnim"

    .line 189
    invoke-static {p1, v0, v1, v2}, Lcom/oppo/camera/o/d;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView;->b:Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;

    iget-object v0, p0, Lcom/oppo/camera/gl/GLImageView;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/gl/GLImageView;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->updateModeParam(II)V

    return-void

    :catchall_0
    move-exception p1

    .line 193
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_7
    :goto_2
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceDestroyed, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 278
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLImageView"

    .line 277
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 282
    iput p1, p0, Lcom/oppo/camera/gl/GLImageView;->f:F

    const/4 p1, 0x0

    .line 283
    iput p1, p0, Lcom/oppo/camera/gl/GLImageView;->n:I

    .line 284
    sget v0, Lcom/oppo/camera/gl/GLImageView;->a:F

    iput v0, p0, Lcom/oppo/camera/gl/GLImageView;->e:F

    .line 285
    iput-boolean p1, p0, Lcom/oppo/camera/gl/GLImageView;->p:Z

    .line 286
    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView;->u:Lcom/oppo/camera/gl/GLImageView$BlurAnimationEndListener;

    invoke-interface {p1}, Lcom/oppo/camera/gl/GLImageView$BlurAnimationEndListener;->onBlurAnimationEnd()V

    return-void
.end method
