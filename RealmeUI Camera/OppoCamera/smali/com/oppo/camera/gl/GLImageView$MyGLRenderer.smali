.class public Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;
.super Ljava/lang/Object;
.source "GLImageView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/gl/GLImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyGLRenderer"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/gl/GLImageView;

.field private final b:[F

.field private final c:[F

.field private final d:[F

.field private e:Lcom/oppo/camera/gl/GLImageView$Rectangle;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:I


# direct methods
.method public constructor <init>(Lcom/oppo/camera/gl/GLImageView;)V
    .locals 1

    .line 289
    iput-object p1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    .line 292
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->b:[F

    .line 293
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->c:[F

    .line 294
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->d:[F

    const/4 p1, 0x0

    .line 297
    iput p1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->f:I

    .line 298
    iput p1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->g:I

    .line 299
    iput p1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->h:I

    .line 300
    iput p1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->i:I

    .line 301
    iput p1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->j:I

    .line 302
    iput p1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->k:I

    .line 303
    iput p1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->l:I

    .line 304
    iput p1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->m:I

    .line 305
    iput p1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->n:I

    .line 306
    iput p1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->o:I

    .line 307
    iput p1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->p:I

    const-string p1, "uniform mat4 uMVPMatrix;\nattribute vec3 aPosition;\nattribute vec2 aTextureCoord;\nattribute vec3 aNormal;\nvarying vec2  TexCoord;\nvarying vec4 vPosition;\nvoid main(void){ vec4 tpos = vec4(aPosition,1.0);\n vec4 ecPosition = uMVPMatrix * tpos;\n TexCoord        = aTextureCoord;\n gl_Position     = ecPosition;\n vPosition\t\t = ecPosition;\n}\n"

    .line 309
    iput-object p1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->q:Ljava/lang/String;

    const-string p1, " precision mediump float;\n varying vec2  TexCoord;\n varying vec4 vPosition;\n uniform float uAlpha;\n uniform float uModeTop;\n uniform float uModeBottom;\n uniform float uRed;\n uniform float uGreen;\n uniform float uBlue;\n uniform int uRenderType;\n uniform sampler2D sTexture;\n uniform vec4 vColor;\n void main(void){ \n vec4 color = texture2D(sTexture, TexCoord);\n if (uRenderType == 0) { \n if (vPosition.y > uModeTop || vPosition.y < uModeBottom) {\n gl_FragColor.r = uRed;\n gl_FragColor.g = uGreen;\n gl_FragColor.b = uBlue;\n gl_FragColor.a = uAlpha;\n } else {\n gl_FragColor = color * 0.0;}\n } else {\n if (vPosition.y > uModeTop || vPosition.y < uModeBottom) {\n gl_FragColor.r = uRed;\n gl_FragColor.g = uGreen;\n gl_FragColor.b = uBlue;\n gl_FragColor.a = uAlpha;\n } else {\n gl_FragColor = color * uAlpha;}\n }\n }\n"

    .line 324
    iput-object p1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->r:Ljava/lang/String;

    return-void
.end method

.method private a(ILjava/lang/String;)I
    .locals 0

    .line 563
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    .line 564
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    .line 565
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 566
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    .line 567
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 568
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    return p1
.end method

.method private a()V
    .locals 3

    .line 376
    iget-object v0, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->q:Ljava/lang/String;

    const v1, 0x8b31

    invoke-direct {p0, v1, v0}, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a(ILjava/lang/String;)I

    move-result v0

    .line 377
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    .line 378
    iget-object v1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->r:Ljava/lang/String;

    const v2, 0x8b30

    invoke-direct {p0, v2, v1}, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a(ILjava/lang/String;)I

    move-result v1

    .line 379
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    .line 381
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    iput v2, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->f:I

    .line 382
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    .line 383
    iget v2, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->f:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 384
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    .line 385
    iget v0, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->f:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 386
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    .line 387
    iget v0, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->f:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 388
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    .line 390
    iget v0, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->f:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->g:I

    .line 391
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    .line 392
    iget v0, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->f:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->h:I

    .line 393
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    .line 394
    iget v0, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->f:I

    const-string v1, "uAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->j:I

    .line 395
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    .line 396
    iget v0, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->f:I

    const-string v1, "uModeTop"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->k:I

    .line 397
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    .line 398
    iget v0, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->f:I

    const-string v1, "uModeBottom"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->l:I

    .line 399
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    .line 400
    iget v0, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->f:I

    const-string v1, "uRenderType"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->m:I

    .line 401
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    .line 402
    iget v0, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->f:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->i:I

    .line 403
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    .line 404
    iget v0, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->f:I

    const-string v1, "uRed"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->n:I

    .line 405
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    .line 406
    iget v0, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->f:I

    const-string v1, "uGreen"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->o:I

    .line 407
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    .line 408
    iget v0, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->f:I

    const-string v1, "uBlue"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->p:I

    .line 409
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    return-void
.end method

.method private a(I)V
    .locals 2

    const-string v0, "MyGLRenderer"

    const-string v1, "init2DTexture()"

    .line 573
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xde1

    .line 575
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 576
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    const p1, 0x812f

    const/16 v1, 0x2802

    .line 577
    invoke-static {v0, v1, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 578
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    const/16 v1, 0x2803

    .line 579
    invoke-static {v0, v1, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 580
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    const/16 p1, 0x2601

    const/16 v1, 0x2800

    .line 581
    invoke-static {v0, v1, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 582
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    const/16 v1, 0x2801

    .line 583
    invoke-static {v0, v1, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 584
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 23

    move-object/from16 v0, p0

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrawFrame, mBitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v2}, Lcom/oppo/camera/gl/GLImageView;->b(Lcom/oppo/camera/gl/GLImageView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mRadius: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v2}, Lcom/oppo/camera/gl/GLImageView;->c(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mbTextureUpdated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    .line 415
    invoke-static {v2}, Lcom/oppo/camera/gl/GLImageView;->d(Lcom/oppo/camera/gl/GLImageView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mScaleFrameIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v2}, Lcom/oppo/camera/gl/GLImageView;->e(Lcom/oppo/camera/gl/GLImageView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mTopGain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v2}, Lcom/oppo/camera/gl/GLImageView;->f(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MyGLRenderer"

    .line 414
    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v1, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v1}, Lcom/oppo/camera/gl/GLImageView;->c(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v1

    iget-object v2, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v2}, Lcom/oppo/camera/gl/GLImageView;->g(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_9

    iget-object v1, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    .line 418
    invoke-static {v1}, Lcom/oppo/camera/gl/GLImageView;->c(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-lez v1, :cond_9

    iget-object v1, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    .line 419
    invoke-static {v1}, Lcom/oppo/camera/gl/GLImageView;->b(Lcom/oppo/camera/gl/GLImageView;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    .line 420
    invoke-static {v1}, Lcom/oppo/camera/gl/GLImageView;->b(Lcom/oppo/camera/gl/GLImageView;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v1}, Lcom/oppo/camera/gl/GLImageView;->b(Lcom/oppo/camera/gl/GLImageView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_9

    :cond_0
    iget-object v1, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    sget-object v3, Lcom/oppo/camera/gl/GLImageView$AnimatorState;->BLUR_FADE_END:Lcom/oppo/camera/gl/GLImageView$AnimatorState;

    .line 421
    invoke-static {v1, v3}, Lcom/oppo/camera/gl/GLImageView;->a(Lcom/oppo/camera/gl/GLImageView;Lcom/oppo/camera/gl/GLImageView$AnimatorState;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 425
    :cond_1
    iget-object v1, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v1}, Lcom/oppo/camera/gl/GLImageView;->d(Lcom/oppo/camera/gl/GLImageView;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v1}, Lcom/oppo/camera/gl/GLImageView;->e(Lcom/oppo/camera/gl/GLImageView;)I

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    const-string v1, "GLImageView.onDrawFrame"

    .line 429
    invoke-static {v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 431
    iget-object v3, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/oppo/camera/gl/GLImageView;->a(Lcom/oppo/camera/gl/GLImageView;Z)Z

    .line 432
    iget v3, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->f:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 433
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    const/16 v3, 0xbd0

    .line 434
    invoke-static {v3}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 435
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    .line 436
    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 437
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    const/16 v3, 0x4100

    .line 438
    invoke-static {v3}, Landroid/opengl/GLES20;->glClear(I)V

    .line 439
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    const/16 v3, 0xbe2

    .line 440
    invoke-static {v3}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 441
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    const/4 v3, 0x1

    .line 442
    invoke-static {v3, v3}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 443
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    const v3, 0x84c0

    .line 444
    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 445
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    const/16 v3, 0xde1

    .line 446
    iget v5, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->s:I

    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 447
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    .line 449
    iget-object v6, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->d:[F

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, -0x3fc00000    # -3.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    invoke-static/range {v6 .. v16}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 450
    iget-object v3, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->b:[F

    const/16 v18, 0x0

    iget-object v5, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->c:[F

    const/16 v20, 0x0

    iget-object v6, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->d:[F

    const/16 v22, 0x0

    move-object/from16 v17, v3

    move-object/from16 v19, v5

    move-object/from16 v21, v6

    invoke-static/range {v17 .. v22}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 451
    iget v3, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->j:I

    iget-object v5, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v5}, Lcom/oppo/camera/gl/GLImageView;->h(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v5

    cmpl-float v5, v5, v2

    if-lez v5, :cond_3

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    iget-object v5, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v5}, Lcom/oppo/camera/gl/GLImageView;->i(Lcom/oppo/camera/gl/GLImageView;)Landroid/view/animation/PathInterpolator;

    move-result-object v5

    iget-object v6, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v6}, Lcom/oppo/camera/gl/GLImageView;->c(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v6

    iget-object v7, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v7}, Lcom/oppo/camera/gl/GLImageView;->g(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v7

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v5

    :goto_0
    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 452
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    .line 453
    iget v3, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->n:I

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 454
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    .line 455
    iget v3, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->o:I

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 456
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    .line 457
    iget v3, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->p:I

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 458
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    .line 460
    iget-object v5, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->e:Lcom/oppo/camera/gl/GLImageView$Rectangle;

    iget-object v6, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->b:[F

    iget v7, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->g:I

    iget v8, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->h:I

    iget v9, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->i:I

    iget v10, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->k:I

    iget v11, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->l:I

    iget v12, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->m:I

    invoke-virtual/range {v5 .. v12}, Lcom/oppo/camera/gl/GLImageView$Rectangle;->draw([FIIIIII)V

    .line 463
    iget-object v3, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v3}, Lcom/oppo/camera/gl/GLImageView;->c(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v5

    iget-object v6, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v6}, Lcom/oppo/camera/gl/GLImageView;->h(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v6

    add-float/2addr v5, v6

    invoke-static {v3, v5}, Lcom/oppo/camera/gl/GLImageView;->a(Lcom/oppo/camera/gl/GLImageView;F)F

    .line 465
    iget-object v3, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v3}, Lcom/oppo/camera/gl/GLImageView;->c(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v3

    cmpg-float v3, v3, v2

    if-gtz v3, :cond_5

    .line 466
    iget-object v1, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    sget-object v3, Lcom/oppo/camera/gl/GLImageView$AnimatorState;->BLUR_FADE_OUT:Lcom/oppo/camera/gl/GLImageView$AnimatorState;

    invoke-static {v1, v3}, Lcom/oppo/camera/gl/GLImageView;->a(Lcom/oppo/camera/gl/GLImageView;Lcom/oppo/camera/gl/GLImageView$AnimatorState;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 467
    iget-object v1, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v1}, Lcom/oppo/camera/gl/GLImageView;->j(Lcom/oppo/camera/gl/GLImageView;)Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer$1;

    invoke-direct {v3, v0}, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer$1;-><init>(Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 474
    iget-object v1, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    sget-object v3, Lcom/oppo/camera/gl/GLImageView$AnimatorState;->BLUR_FADE_END:Lcom/oppo/camera/gl/GLImageView$AnimatorState;

    invoke-virtual {v1, v3}, Lcom/oppo/camera/gl/GLImageView;->setAnimatorState(Lcom/oppo/camera/gl/GLImageView$AnimatorState;)V

    .line 475
    iget-object v1, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v1, v4}, Lcom/oppo/camera/gl/GLImageView;->a(Lcom/oppo/camera/gl/GLImageView;I)I

    .line 476
    iget-object v1, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v1, v2}, Lcom/oppo/camera/gl/GLImageView;->b(Lcom/oppo/camera/gl/GLImageView;F)F

    .line 477
    iget-object v1, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v1, v2}, Lcom/oppo/camera/gl/GLImageView;->c(Lcom/oppo/camera/gl/GLImageView;F)F

    .line 478
    iget-object v1, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {}, Lcom/oppo/camera/gl/GLImageView;->d()F

    move-result v2

    invoke-static {v1, v2}, Lcom/oppo/camera/gl/GLImageView;->d(Lcom/oppo/camera/gl/GLImageView;F)F

    .line 479
    iget-object v1, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {}, Lcom/oppo/camera/gl/GLImageView;->d()F

    move-result v2

    invoke-static {v1, v2}, Lcom/oppo/camera/gl/GLImageView;->a(Lcom/oppo/camera/gl/GLImageView;F)F

    :cond_4
    return-void

    .line 485
    :cond_5
    iget-object v2, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v2}, Lcom/oppo/camera/gl/GLImageView;->c(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v2

    iget-object v3, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v3}, Lcom/oppo/camera/gl/GLImageView;->g(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v3

    invoke-static {}, Lcom/oppo/camera/gl/GLImageView;->d()F

    move-result v4

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_7

    .line 486
    iget-object v1, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v1}, Lcom/oppo/camera/gl/GLImageView;->g(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/oppo/camera/gl/GLImageView;->a(Lcom/oppo/camera/gl/GLImageView;F)F

    .line 488
    iget-object v1, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v1}, Lcom/oppo/camera/gl/GLImageView;->e(Lcom/oppo/camera/gl/GLImageView;)I

    move-result v1

    if-lez v1, :cond_6

    iget-object v1, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v1}, Lcom/oppo/camera/gl/GLImageView;->e(Lcom/oppo/camera/gl/GLImageView;)I

    move-result v1

    const/16 v2, 0x19

    if-ge v1, v2, :cond_6

    .line 489
    iget-object v1, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-virtual {v1}, Lcom/oppo/camera/gl/GLImageView;->requestRender()V

    :cond_6
    return-void

    .line 493
    :cond_7
    iget-object v2, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v2}, Lcom/oppo/camera/gl/GLImageView;->c(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v2

    iget-object v3, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v3}, Lcom/oppo/camera/gl/GLImageView;->g(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_8

    iget-object v2, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v2}, Lcom/oppo/camera/gl/GLImageView;->c(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v2

    iget-object v3, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v3}, Lcom/oppo/camera/gl/GLImageView;->g(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v3

    invoke-static {}, Lcom/oppo/camera/gl/GLImageView;->d()F

    move-result v4

    add-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8

    .line 494
    iget-object v2, v0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v2}, Lcom/oppo/camera/gl/GLImageView;->g(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v3

    invoke-static {v2, v3}, Lcom/oppo/camera/gl/GLImageView;->a(Lcom/oppo/camera/gl/GLImageView;F)F

    .line 497
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->updateTexture()V

    .line 499
    invoke-static {v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    :cond_9
    :goto_1
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 8

    .line 504
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSurfaceChanged, width: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", height: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MyGLRenderer"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto/16 :goto_0

    .line 512
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {p1, p2}, Lcom/oppo/camera/gl/GLImageView;->b(Lcom/oppo/camera/gl/GLImageView;I)I

    .line 513
    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {p1, p3}, Lcom/oppo/camera/gl/GLImageView;->c(Lcom/oppo/camera/gl/GLImageView;I)I

    .line 514
    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {p1}, Lcom/oppo/camera/gl/GLImageView;->k(Lcom/oppo/camera/gl/GLImageView;)I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {p3}, Lcom/oppo/camera/gl/GLImageView;->l(Lcom/oppo/camera/gl/GLImageView;)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/oppo/camera/gl/GLImageView;->e(Lcom/oppo/camera/gl/GLImageView;F)F

    .line 516
    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {p1}, Lcom/oppo/camera/gl/GLImageView;->b(Lcom/oppo/camera/gl/GLImageView;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {p1}, Lcom/oppo/camera/gl/GLImageView;->b(Lcom/oppo/camera/gl/GLImageView;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 517
    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {p1}, Lcom/oppo/camera/gl/GLImageView;->a(Lcom/oppo/camera/gl/GLImageView;)Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;

    move-result-object p1

    iget-object p2, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {p2}, Lcom/oppo/camera/gl/GLImageView;->b(Lcom/oppo/camera/gl/GLImageView;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iget-object p3, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {p3}, Lcom/oppo/camera/gl/GLImageView;->b(Lcom/oppo/camera/gl/GLImageView;)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->updateModeParam(II)V

    .line 520
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {p1}, Lcom/oppo/camera/gl/GLImageView;->k(Lcom/oppo/camera/gl/GLImageView;)I

    move-result p1

    iget-object p2, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {p2}, Lcom/oppo/camera/gl/GLImageView;->l(Lcom/oppo/camera/gl/GLImageView;)I

    move-result p2

    const/4 p3, 0x0

    invoke-static {p3, p3, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 521
    iget-object v0, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->c:[F

    const/4 v1, 0x0

    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {p1}, Lcom/oppo/camera/gl/GLImageView;->m(Lcom/oppo/camera/gl/GLImageView;)F

    move-result p1

    neg-float v2, p1

    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {p1}, Lcom/oppo/camera/gl/GLImageView;->m(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x40400000    # 3.0f

    const/high16 v7, 0x40e00000    # 7.0f

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 523
    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {p1}, Lcom/oppo/camera/gl/GLImageView;->d(Lcom/oppo/camera/gl/GLImageView;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 524
    invoke-virtual {p0}, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->updateTexture()V

    :cond_2
    return-void

    .line 507
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error! onSurfaceChanged, W ="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", H ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    const-string p1, "MyGLRenderer"

    const-string p2, "onSurfaceCreated"

    .line 361
    invoke-static {p1, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xb71

    .line 363
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 364
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    .line 365
    invoke-direct {p0}, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a()V

    const/4 p1, 0x1

    .line 366
    new-array p2, p1, [I

    const/4 v0, 0x0

    .line 367
    invoke-static {p1, p2, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 368
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    .line 369
    aget p1, p2, v0

    iput p1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->s:I

    .line 370
    iget p1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->s:I

    invoke-direct {p0, p1}, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a(I)V

    .line 371
    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-static {p1, p2}, Lcom/oppo/camera/gl/GLImageView;->a(Lcom/oppo/camera/gl/GLImageView;F)F

    .line 372
    iget-object p1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {p1, v0}, Lcom/oppo/camera/gl/GLImageView;->a(Lcom/oppo/camera/gl/GLImageView;I)I

    return-void
.end method

.method public setChangeToSize(I)V
    .locals 2

    .line 588
    iget-object v0, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->e:Lcom/oppo/camera/gl/GLImageView$Rectangle;

    if-nez v0, :cond_0

    .line 589
    new-instance v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;

    iget-object v1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-direct {v0, v1}, Lcom/oppo/camera/gl/GLImageView$Rectangle;-><init>(Lcom/oppo/camera/gl/GLImageView;)V

    iput-object v0, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->e:Lcom/oppo/camera/gl/GLImageView$Rectangle;

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->e:Lcom/oppo/camera/gl/GLImageView$Rectangle;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/gl/GLImageView$Rectangle;->setChangeToSize(I)V

    return-void
.end method

.method public updateModeParam(II)V
    .locals 2

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateModeParam, width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MyGLRenderer"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->e:Lcom/oppo/camera/gl/GLImageView$Rectangle;

    if-nez v0, :cond_0

    .line 556
    new-instance v0, Lcom/oppo/camera/gl/GLImageView$Rectangle;

    iget-object v1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-direct {v0, v1}, Lcom/oppo/camera/gl/GLImageView$Rectangle;-><init>(Lcom/oppo/camera/gl/GLImageView;)V

    iput-object v0, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->e:Lcom/oppo/camera/gl/GLImageView$Rectangle;

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->e:Lcom/oppo/camera/gl/GLImageView$Rectangle;

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    invoke-virtual {v0, p1}, Lcom/oppo/camera/gl/GLImageView$Rectangle;->updateSize(F)V

    return-void
.end method

.method public updateTexture()V
    .locals 5

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTextureSource, bitmap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v1}, Lcom/oppo/camera/gl/GLImageView;->b(Lcom/oppo/camera/gl/GLImageView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRadius: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v1}, Lcom/oppo/camera/gl/GLImageView;->c(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MyGLRenderer"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    monitor-enter v0

    .line 532
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v1}, Lcom/oppo/camera/gl/GLImageView;->b(Lcom/oppo/camera/gl/GLImageView;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v1}, Lcom/oppo/camera/gl/GLImageView;->b(Lcom/oppo/camera/gl/GLImageView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v1}, Lcom/oppo/camera/gl/GLImageView;->c(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_1

    .line 533
    iget-object v1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v1}, Lcom/oppo/camera/gl/GLImageView;->g(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v1

    iget-object v2, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v2}, Lcom/oppo/camera/gl/GLImageView;->i(Lcom/oppo/camera/gl/GLImageView;)Landroid/view/animation/PathInterpolator;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v3}, Lcom/oppo/camera/gl/GLImageView;->c(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v4}, Lcom/oppo/camera/gl/GLImageView;->g(Lcom/oppo/camera/gl/GLImageView;)F

    move-result v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v1, v2

    .line 534
    iget-object v2, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v2}, Lcom/oppo/camera/gl/GLImageView;->b(Lcom/oppo/camera/gl/GLImageView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/oppo/camera/o/d;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "oppo.dump.blurAnim"

    const-string v3, "false"

    .line 536
    invoke-static {v2, v3}, Lcom/oppo/camera/debug/DebugUtil;->debugPropertyEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 537
    iget-object v2, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-static {v2}, Lcom/oppo/camera/gl/GLImageView;->n(Lcom/oppo/camera/gl/GLImageView;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "blur_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_bitmap"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "blurAnim"

    .line 537
    invoke-static {v2, v1, v3, v4}, Lcom/oppo/camera/o/d;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 542
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0xde1

    const/4 v3, 0x0

    .line 543
    invoke-static {v2, v3, v1, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 544
    iget-object v1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/oppo/camera/gl/GLImageView;->a(Lcom/oppo/camera/gl/GLImageView;Z)Z

    .line 545
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    .line 546
    iget-object v1, p0, Lcom/oppo/camera/gl/GLImageView$MyGLRenderer;->a:Lcom/oppo/camera/gl/GLImageView;

    invoke-virtual {v1}, Lcom/oppo/camera/gl/GLImageView;->requestRender()V

    .line 549
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
