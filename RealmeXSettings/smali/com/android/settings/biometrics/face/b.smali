.class public final Lcom/android/settings/biometrics/face/b;
.super Landroid/graphics/drawable/Drawable;
.source "FaceEnrollAnimationDrawable.java"

# interfaces
.implements Lcom/android/settings/biometrics/BiometricEnrollSidecar$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/android/settings/biometrics/face/c$a;

.field private c:Landroid/graphics/Rect;

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/Paint;

.field private f:Lcom/android/settings/biometrics/face/c;

.field private g:Landroid/animation/TimeAnimator;

.field private final h:Lcom/android/settings/biometrics/face/c$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/biometrics/face/c$a;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 53
    new-instance v0, Lcom/android/settings/biometrics/face/b$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/b$1;-><init>(Lcom/android/settings/biometrics/face/b;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/b;->h:Lcom/android/settings/biometrics/face/c$a;

    .line 65
    iput-object p1, p0, Lcom/android/settings/biometrics/face/b;->a:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/android/settings/biometrics/face/b;->b:Lcom/android/settings/biometrics/face/c$a;

    .line 68
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/face/b;->d:Landroid/graphics/Paint;

    .line 69
    iget-object p1, p0, Lcom/android/settings/biometrics/face/b;->d:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object p1, p0, Lcom/android/settings/biometrics/face/b;->d:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/face/b;->e:Landroid/graphics/Paint;

    .line 73
    iget-object p1, p0, Lcom/android/settings/biometrics/face/b;->e:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    iget-object p1, p0, Lcom/android/settings/biometrics/face/b;->e:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 75
    iget-object p1, p0, Lcom/android/settings/biometrics/face/b;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/biometrics/face/b;)Landroid/animation/TimeAnimator;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settings/biometrics/face/b;->g:Landroid/animation/TimeAnimator;

    return-object p0
.end method

.method private synthetic a(Landroid/animation/TimeAnimator;JJ)V
    .locals 16

    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    move-wide/from16 v3, p4

    .line 102
    iget-object v5, v2, Lcom/android/settings/biometrics/face/b;->f:Lcom/android/settings/biometrics/face/c;

    const/4 v6, 0x0

    .line 3107
    :goto_0
    iget-object v7, v5, Lcom/android/settings/biometrics/face/c;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_b

    .line 3108
    iget-object v7, v5, Lcom/android/settings/biometrics/face/c;->a:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/biometrics/face/a;

    .line 3118
    iget v8, v7, Lcom/android/settings/biometrics/face/a;->k:I

    const/4 v9, 0x4

    const/high16 v10, 0x40000000    # 2.0f

    const v12, 0x3f4ccccd    # 0.8f

    const/4 v13, 0x0

    const v14, 0x3a83126f    # 0.001f

    if-eq v8, v9, :cond_5

    long-to-float v8, v3

    mul-float/2addr v8, v14

    long-to-float v9, v0

    mul-float/2addr v9, v14

    .line 3129
    iget v14, v7, Lcom/android/settings/biometrics/face/a;->n:F

    div-float/2addr v14, v12

    .line 3132
    iget v15, v7, Lcom/android/settings/biometrics/face/a;->k:I

    const/4 v11, 0x2

    const/4 v12, 0x3

    if-eq v15, v11, :cond_0

    iget v11, v7, Lcom/android/settings/biometrics/face/a;->k:I

    if-ne v11, v12, :cond_1

    :cond_0
    iget v11, v7, Lcom/android/settings/biometrics/face/a;->n:F

    cmpl-float v11, v11, v13

    if-lez v11, :cond_1

    .line 3136
    iget v11, v7, Lcom/android/settings/biometrics/face/a;->n:F

    mul-float/2addr v10, v8

    sub-float/2addr v11, v10

    invoke-static {v11, v13}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iput v10, v7, Lcom/android/settings/biometrics/face/a;->n:F

    goto :goto_1

    .line 3137
    :cond_1
    iget v11, v7, Lcom/android/settings/biometrics/face/a;->k:I

    const/4 v13, 0x1

    if-ne v11, v13, :cond_2

    iget v11, v7, Lcom/android/settings/biometrics/face/a;->n:F

    const v13, 0x3f4ccccd    # 0.8f

    cmpg-float v11, v11, v13

    if-gez v11, :cond_2

    .line 3140
    iget v11, v7, Lcom/android/settings/biometrics/face/a;->n:F

    mul-float/2addr v10, v8

    add-float/2addr v11, v10

    iput v11, v7, Lcom/android/settings/biometrics/face/a;->n:F

    .line 3143
    :cond_2
    :goto_1
    iget v10, v7, Lcom/android/settings/biometrics/face/a;->m:F

    iget v11, v7, Lcom/android/settings/biometrics/face/a;->n:F

    mul-float/2addr v8, v11

    add-float/2addr v10, v8

    iput v10, v7, Lcom/android/settings/biometrics/face/a;->m:F

    const/high16 v8, 0x40a00000    # 5.0f

    const v10, 0x40c90fdb

    mul-float/2addr v9, v10

    .line 3146
    iget v10, v7, Lcom/android/settings/biometrics/face/a;->i:F

    add-float/2addr v9, v10

    float-to-double v9, v9

    .line 3148
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v9, v8

    const/high16 v8, 0x41700000    # 15.0f

    add-float/2addr v9, v8

    iput v9, v7, Lcom/android/settings/biometrics/face/a;->l:F

    .line 3150
    iget v8, v7, Lcom/android/settings/biometrics/face/a;->l:F

    const/high16 v9, 0x41200000    # 10.0f

    sub-float/2addr v8, v9

    mul-float/2addr v8, v14

    add-float/2addr v8, v9

    iput v8, v7, Lcom/android/settings/biometrics/face/a;->l:F

    .line 3153
    iget v8, v7, Lcom/android/settings/biometrics/face/a;->h:I

    .line 3154
    iget v9, v7, Lcom/android/settings/biometrics/face/a;->k:I

    const/high16 v10, 0x3f800000    # 1.0f

    if-ne v9, v12, :cond_3

    .line 3155
    iget-object v8, v7, Lcom/android/settings/biometrics/face/a;->c:Landroid/animation/ArgbEvaluator;

    sub-float/2addr v10, v14

    iget v9, v7, Lcom/android/settings/biometrics/face/a;->h:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v11, v7, Lcom/android/settings/biometrics/face/a;->d:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v9, v11}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_2

    .line 3156
    :cond_3
    iget v9, v7, Lcom/android/settings/biometrics/face/a;->j:I

    if-ne v9, v12, :cond_4

    .line 3157
    iget-object v8, v7, Lcom/android/settings/biometrics/face/a;->c:Landroid/animation/ArgbEvaluator;

    sub-float/2addr v10, v14

    iget v9, v7, Lcom/android/settings/biometrics/face/a;->h:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v11, v7, Lcom/android/settings/biometrics/face/a;->d:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v9, v11}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 3160
    :cond_4
    :goto_2
    iget-object v9, v7, Lcom/android/settings/biometrics/face/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 3161
    iget-object v8, v7, Lcom/android/settings/biometrics/face/a;->g:Landroid/graphics/Paint;

    iget v7, v7, Lcom/android/settings/biometrics/face/a;->l:F

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/16 :goto_3

    :cond_5
    long-to-float v8, v3

    mul-float/2addr v8, v14

    long-to-float v9, v0

    mul-float/2addr v9, v14

    .line 3170
    iget v11, v7, Lcom/android/settings/biometrics/face/a;->q:F

    cmpl-float v11, v11, v13

    const v12, 0x3dcccccd    # 0.1f

    if-nez v11, :cond_6

    .line 3171
    iget v11, v7, Lcom/android/settings/biometrics/face/a;->l:F

    const/high16 v14, 0x41700000    # 15.0f

    sub-float v11, v14, v11

    div-float/2addr v11, v12

    iput v11, v7, Lcom/android/settings/biometrics/face/a;->q:F

    .line 3173
    iget v11, v7, Lcom/android/settings/biometrics/face/a;->r:F

    cmpl-float v11, v11, v13

    if-nez v11, :cond_6

    add-float v11, v9, v12

    .line 3174
    iput v11, v7, Lcom/android/settings/biometrics/face/a;->r:F

    .line 3179
    :cond_6
    iget v11, v7, Lcom/android/settings/biometrics/face/a;->n:F

    const v13, 0x3f4ccccd    # 0.8f

    cmpg-float v11, v11, v13

    if-gez v11, :cond_7

    .line 3180
    iget v11, v7, Lcom/android/settings/biometrics/face/a;->n:F

    mul-float/2addr v10, v8

    add-float/2addr v11, v10

    iput v11, v7, Lcom/android/settings/biometrics/face/a;->n:F

    .line 3184
    :cond_7
    iget v10, v7, Lcom/android/settings/biometrics/face/a;->m:F

    iget v11, v7, Lcom/android/settings/biometrics/face/a;->n:F

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    iput v10, v7, Lcom/android/settings/biometrics/face/a;->m:F

    .line 3187
    iget v10, v7, Lcom/android/settings/biometrics/face/a;->o:F

    const/high16 v11, 0x43b40000    # 360.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_8

    .line 3188
    iget v10, v7, Lcom/android/settings/biometrics/face/a;->p:F

    mul-float/2addr v10, v8

    .line 3189
    iget v13, v7, Lcom/android/settings/biometrics/face/a;->o:F

    add-float/2addr v13, v10

    iput v13, v7, Lcom/android/settings/biometrics/face/a;->o:F

    .line 3190
    iget v13, v7, Lcom/android/settings/biometrics/face/a;->p:F

    add-float/2addr v13, v10

    iput v13, v7, Lcom/android/settings/biometrics/face/a;->p:F

    .line 3192
    :cond_8
    iget v10, v7, Lcom/android/settings/biometrics/face/a;->o:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_9

    .line 3193
    iput v11, v7, Lcom/android/settings/biometrics/face/a;->o:F

    .line 3194
    iget-object v10, v7, Lcom/android/settings/biometrics/face/a;->f:Lcom/android/settings/biometrics/face/a$a;

    iget v11, v7, Lcom/android/settings/biometrics/face/a;->e:I

    invoke-interface {v10, v11}, Lcom/android/settings/biometrics/face/a$a;->a(I)V

    :cond_9
    cmpg-float v9, v9, v12

    if-gez v9, :cond_a

    .line 3199
    iget v9, v7, Lcom/android/settings/biometrics/face/a;->l:F

    iget v10, v7, Lcom/android/settings/biometrics/face/a;->q:F

    mul-float/2addr v10, v8

    add-float/2addr v9, v10

    iput v9, v7, Lcom/android/settings/biometrics/face/a;->l:F

    .line 3200
    iget-object v8, v7, Lcom/android/settings/biometrics/face/a;->g:Landroid/graphics/Paint;

    iget v7, v7, Lcom/android/settings/biometrics/face/a;->l:F

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_3

    :cond_a
    const/high16 v8, 0x41700000    # 15.0f

    .line 3203
    iput v8, v7, Lcom/android/settings/biometrics/face/a;->l:F

    .line 3204
    iget-object v8, v7, Lcom/android/settings/biometrics/face/a;->g:Landroid/graphics/Paint;

    iget v7, v7, Lcom/android/settings/biometrics/face/a;->l:F

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 103
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/biometrics/face/b;->invalidateSelf()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/biometrics/face/b;)Lcom/android/settings/biometrics/face/c$a;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settings/biometrics/face/b;->b:Lcom/android/settings/biometrics/face/c$a;

    return-object p0
.end method

.method public static synthetic lambda$4ePHk6fJ-OQhhxbq23znoCyP3RU(Lcom/android/settings/biometrics/face/b;Landroid/animation/TimeAnimator;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/biometrics/face/b;->a(Landroid/animation/TimeAnimator;JJ)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final a(II)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/settings/biometrics/face/b;->f:Lcom/android/settings/biometrics/face/c;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/biometrics/face/c;->a(II)V

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 111
    iget-object v0, p0, Lcom/android/settings/biometrics/face/b;->c:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    return-void

    .line 114
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 117
    iget-object v0, p0, Lcom/android/settings/biometrics/face/b;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/android/settings/biometrics/face/b;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/settings/biometrics/face/b;->d:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/biometrics/face/b;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    iget-object v1, p0, Lcom/android/settings/biometrics/face/b;->c:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    iget-object v2, p0, Lcom/android/settings/biometrics/face/b;->c:Landroid/graphics/Rect;

    .line 121
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settings/biometrics/face/b;->e:Landroid/graphics/Paint;

    .line 120
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/biometrics/face/b;->f:Lcom/android/settings/biometrics/face/c;

    const/4 v1, 0x0

    .line 2113
    :goto_0
    iget-object v2, v0, Lcom/android/settings/biometrics/face/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2114
    iget-object v2, v0, Lcom/android/settings/biometrics/face/c;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/biometrics/face/a;

    .line 2210
    iget v3, v2, Lcom/android/settings/biometrics/face/a;->k:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    .line 2219
    iget-object v3, v2, Lcom/android/settings/biometrics/face/a;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, v2, Lcom/android/settings/biometrics/face/a;->a:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, v2, Lcom/android/settings/biometrics/face/a;->b:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 2220
    iget-object v4, v2, Lcom/android/settings/biometrics/face/a;->a:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget-object v5, v2, Lcom/android/settings/biometrics/face/a;->a:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    sub-float/2addr v4, v5

    iget v5, v2, Lcom/android/settings/biometrics/face/a;->b:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 2221
    iget-object v5, v2, Lcom/android/settings/biometrics/face/a;->a:Landroid/graphics/Rect;

    .line 2222
    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    iget v6, v2, Lcom/android/settings/biometrics/face/a;->m:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v3, v6

    add-float/2addr v5, v3

    iget-object v3, v2, Lcom/android/settings/biometrics/face/a;->a:Landroid/graphics/Rect;

    .line 2223
    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    iget v6, v2, Lcom/android/settings/biometrics/face/a;->m:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    iget v4, v2, Lcom/android/settings/biometrics/face/a;->l:F

    iget-object v2, v2, Lcom/android/settings/biometrics/face/a;->g:Landroid/graphics/Paint;

    .line 2221
    invoke-virtual {p1, v5, v3, v4, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 2229
    :cond_1
    new-instance v3, Landroid/graphics/RectF;

    iget v4, v2, Lcom/android/settings/biometrics/face/a;->b:I

    int-to-float v4, v4

    iget v5, v2, Lcom/android/settings/biometrics/face/a;->b:I

    int-to-float v5, v5

    iget-object v6, v2, Lcom/android/settings/biometrics/face/a;->a:Landroid/graphics/Rect;

    .line 2231
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, v2, Lcom/android/settings/biometrics/face/a;->b:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, v2, Lcom/android/settings/biometrics/face/a;->a:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v8, v2, Lcom/android/settings/biometrics/face/a;->b:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2232
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 2233
    iget v5, v2, Lcom/android/settings/biometrics/face/a;->m:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float v5, v5

    iget v6, v2, Lcom/android/settings/biometrics/face/a;->o:F

    invoke-virtual {v4, v3, v5, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 2234
    iget-object v2, v2, Lcom/android/settings/biometrics/face/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 126
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3

    .line 95
    iput-object p1, p0, Lcom/android/settings/biometrics/face/b;->c:Landroid/graphics/Rect;

    .line 96
    new-instance v0, Lcom/android/settings/biometrics/face/c;

    iget-object v1, p0, Lcom/android/settings/biometrics/face/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/biometrics/face/b;->h:Lcom/android/settings/biometrics/face/c$a;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/settings/biometrics/face/c;-><init>(Landroid/content/Context;Lcom/android/settings/biometrics/face/c$a;Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/b;->f:Lcom/android/settings/biometrics/face/c;

    .line 99
    iget-object p1, p0, Lcom/android/settings/biometrics/face/b;->g:Landroid/animation/TimeAnimator;

    if-nez p1, :cond_0

    .line 100
    new-instance p1, Landroid/animation/TimeAnimator;

    invoke-direct {p1}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/face/b;->g:Landroid/animation/TimeAnimator;

    .line 101
    iget-object p1, p0, Lcom/android/settings/biometrics/face/b;->g:Landroid/animation/TimeAnimator;

    new-instance v0, Lcom/android/settings/biometrics/face/-$$Lambda$b$4ePHk6fJ-OQhhxbq23znoCyP3RU;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$b$4ePHk6fJ-OQhhxbq23znoCyP3RU;-><init>(Lcom/android/settings/biometrics/face/b;)V

    invoke-virtual {p1, v0}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 105
    iget-object p1, p0, Lcom/android/settings/biometrics/face/b;->g:Landroid/animation/TimeAnimator;

    invoke-virtual {p1}, Landroid/animation/TimeAnimator;->start()V

    :cond_0
    return-void
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
