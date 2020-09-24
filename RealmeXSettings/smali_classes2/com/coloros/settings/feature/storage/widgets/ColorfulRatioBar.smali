.class public Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;
.super Landroid/view/View;
.source "ColorfulRatioBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:F

.field private e:I

.field private f:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x8

    .line 40
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->f:[F

    const/16 p1, 0x15

    .line 1053
    invoke-static {p1}, Lcom/coloros/settings/feature/storage/c;->a(I)I

    move-result p1

    .line 1054
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->b:I

    .line 1055
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->a:Landroid/graphics/Paint;

    .line 1056
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->d:F

    .line 1057
    iget p1, p0, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->d:F

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->e:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 85
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->getWidth()I

    move-result v8

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->getHeight()I

    move-result v9

    if-gtz v8, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->isEnabled()Z

    move-result v1

    const/4 v10, 0x0

    if-eqz v1, :cond_18

    iget-object v1, v0, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->c:Ljava/util/List;

    if-nez v1, :cond_1

    goto/16 :goto_15

    .line 95
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->isLayoutRtl()Z

    move-result v11

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v8

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 98
    :goto_0
    iget-object v2, v0, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_17

    .line 100
    iget-object v2, v0, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->c:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;

    .line 101
    iget-wide v3, v2, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;->b:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_16

    .line 104
    iget-object v3, v0, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->a:Landroid/graphics/Paint;

    iget v4, v2, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;->a:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    add-int/lit8 v3, v13, -0x1

    if-ne v14, v3, :cond_4

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    move v2, v8

    :goto_2
    move v12, v2

    move v15, v13

    goto :goto_4

    .line 108
    :cond_4
    iget-wide v4, v2, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;->b:D

    move v15, v13

    int-to-double v12, v8

    mul-double/2addr v4, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v2, v4

    .line 109
    iget v4, v0, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->e:I

    if-ge v2, v4, :cond_5

    move v2, v4

    :cond_5
    if-eqz v11, :cond_6

    sub-int v2, v1, v2

    goto :goto_3

    :cond_6
    add-int/2addr v2, v1

    :goto_3
    move v12, v2

    :goto_4
    if-eqz v14, :cond_a

    if-ne v14, v3, :cond_7

    goto :goto_7

    :cond_7
    if-eqz v11, :cond_8

    int-to-float v2, v12

    goto :goto_5

    :cond_8
    int-to-float v2, v1

    :goto_5
    const/4 v3, 0x0

    if-eqz v11, :cond_9

    int-to-float v1, v1

    goto :goto_6

    :cond_9
    int-to-float v1, v12

    :goto_6
    move v4, v1

    int-to-float v5, v9

    .line 122
    iget-object v6, v0, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->a:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v6, 0x0

    goto/16 :goto_13

    :cond_a
    :goto_7
    const/4 v2, 0x1

    if-nez v14, :cond_b

    move v3, v2

    goto :goto_8

    :cond_b
    const/4 v3, 0x0

    :goto_8
    if-eqz v3, :cond_c

    xor-int/lit8 v3, v11, 0x1

    goto :goto_9

    :cond_c
    move v3, v11

    .line 1073
    :goto_9
    iget-object v4, v0, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->f:[F

    if-eqz v3, :cond_d

    iget v5, v0, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->d:F

    goto :goto_a

    :cond_d
    move v5, v10

    :goto_a
    const/4 v6, 0x0

    aput v5, v4, v6

    .line 1074
    iget-object v4, v0, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->f:[F

    if-eqz v3, :cond_e

    iget v5, v0, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->d:F

    goto :goto_b

    :cond_e
    move v5, v10

    :goto_b
    aput v5, v4, v2

    .line 1075
    iget-object v2, v0, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->f:[F

    const/4 v4, 0x2

    if-eqz v3, :cond_f

    move v5, v10

    goto :goto_c

    :cond_f
    iget v5, v0, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->d:F

    :goto_c
    aput v5, v2, v4

    .line 1076
    iget-object v2, v0, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->f:[F

    const/4 v4, 0x3

    if-eqz v3, :cond_10

    move v5, v10

    goto :goto_d

    :cond_10
    iget v5, v0, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->d:F

    :goto_d
    aput v5, v2, v4

    .line 1077
    iget-object v2, v0, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->f:[F

    const/4 v4, 0x4

    if-eqz v3, :cond_11

    move v5, v10

    goto :goto_e

    :cond_11
    iget v5, v0, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->d:F

    :goto_e
    aput v5, v2, v4

    .line 1078
    iget-object v2, v0, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->f:[F

    const/4 v4, 0x5

    if-eqz v3, :cond_12

    move v5, v10

    goto :goto_f

    :cond_12
    iget v5, v0, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->d:F

    :goto_f
    aput v5, v2, v4

    .line 1079
    iget-object v2, v0, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->f:[F

    const/4 v4, 0x6

    if-eqz v3, :cond_13

    iget v5, v0, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->d:F

    goto :goto_10

    :cond_13
    move v5, v10

    :goto_10
    aput v5, v2, v4

    .line 1080
    iget-object v2, v0, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->f:[F

    const/4 v4, 0x7

    if-eqz v3, :cond_14

    iget v3, v0, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->d:F

    goto :goto_11

    :cond_14
    move v3, v10

    :goto_11
    aput v3, v2, v4

    .line 116
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    if-eqz v11, :cond_15

    .line 117
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v4, v12

    int-to-float v1, v1

    int-to-float v5, v9

    invoke-direct {v3, v4, v10, v1, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_12

    :cond_15
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v1, v1

    int-to-float v4, v12

    int-to-float v5, v9

    invoke-direct {v3, v1, v10, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 119
    :goto_12
    iget-object v1, v0, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->f:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v1, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 120
    iget-object v1, v0, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->a:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_13
    move v1, v12

    goto :goto_14

    :cond_16
    move v15, v13

    const/4 v6, 0x0

    :goto_14
    add-int/lit8 v14, v14, 0x1

    move v13, v15

    goto/16 :goto_1

    :cond_17
    return-void

    .line 90
    :cond_18
    :goto_15
    iget-object v1, v0, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->a:Landroid/graphics/Paint;

    iget v2, v0, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->b:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, v8

    int-to-float v3, v9

    invoke-direct {v1, v10, v10, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 92
    iget v2, v0, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->d:F

    iget-object v3, v0, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->a:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setRatioInfos(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 61
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->c:Ljava/util/List;

    .line 63
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method
