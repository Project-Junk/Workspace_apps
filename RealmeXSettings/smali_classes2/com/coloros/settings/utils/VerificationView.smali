.class public Lcom/coloros/settings/utils/VerificationView;
.super Landroid/widget/TextView;
.source "VerificationView.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:[C

.field private c:[I

.field private d:[Landroid/graphics/Point;

.field private e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    .line 48
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/coloros/settings/utils/VerificationView;->b:[C

    .line 49
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coloros/settings/utils/VerificationView;->c:[I

    const/16 v0, 0x14

    .line 50
    new-array v0, v0, [Landroid/graphics/Point;

    iput-object v0, p0, Lcom/coloros/settings/utils/VerificationView;->d:[Landroid/graphics/Point;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 51
    iput v0, p0, Lcom/coloros/settings/utils/VerificationView;->e:F

    .line 55
    invoke-direct {p0, p1}, Lcom/coloros/settings/utils/VerificationView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x4

    .line 48
    new-array v0, p2, [C

    iput-object v0, p0, Lcom/coloros/settings/utils/VerificationView;->b:[C

    .line 49
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/coloros/settings/utils/VerificationView;->c:[I

    const/16 p2, 0x14

    .line 50
    new-array p2, p2, [Landroid/graphics/Point;

    iput-object p2, p0, Lcom/coloros/settings/utils/VerificationView;->d:[Landroid/graphics/Point;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 51
    iput p2, p0, Lcom/coloros/settings/utils/VerificationView;->e:F

    .line 60
    invoke-direct {p0, p1}, Lcom/coloros/settings/utils/VerificationView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x4

    .line 48
    new-array p3, p2, [C

    iput-object p3, p0, Lcom/coloros/settings/utils/VerificationView;->b:[C

    .line 49
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/coloros/settings/utils/VerificationView;->c:[I

    const/16 p2, 0x14

    .line 50
    new-array p2, p2, [Landroid/graphics/Point;

    iput-object p2, p0, Lcom/coloros/settings/utils/VerificationView;->d:[Landroid/graphics/Point;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 51
    iput p2, p0, Lcom/coloros/settings/utils/VerificationView;->e:F

    .line 65
    invoke-direct {p0, p1}, Lcom/coloros/settings/utils/VerificationView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x4

    .line 48
    new-array p3, p2, [C

    iput-object p3, p0, Lcom/coloros/settings/utils/VerificationView;->b:[C

    .line 49
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/coloros/settings/utils/VerificationView;->c:[I

    const/16 p2, 0x14

    .line 50
    new-array p2, p2, [Landroid/graphics/Point;

    iput-object p2, p0, Lcom/coloros/settings/utils/VerificationView;->d:[Landroid/graphics/Point;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 51
    iput p2, p0, Lcom/coloros/settings/utils/VerificationView;->e:F

    .line 70
    invoke-direct {p0, p1}, Lcom/coloros/settings/utils/VerificationView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    .line 1090
    invoke-virtual {p0}, Lcom/coloros/settings/utils/VerificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1091
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1092
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x44870000    # 1080.0f

    div-float/2addr v0, v1

    .line 1093
    iput v0, p0, Lcom/coloros/settings/utils/VerificationView;->e:F

    .line 75
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/utils/VerificationView;->a:Landroid/graphics/Paint;

    .line 76
    iget-object v0, p0, Lcom/coloros/settings/utils/VerificationView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coloros/settings/utils/VerificationView;->e:F

    const/high16 v2, 0x42a00000    # 80.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 77
    iget-object v0, p0, Lcom/coloros/settings/utils/VerificationView;->a:Landroid/graphics/Paint;

    const v1, 0x7f06031f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/coloros/settings/utils/VerificationView;->b:[C

    invoke-static {}, Lcom/coloros/settings/utils/VerificationView;->getRandomChar()C

    move-result v2

    aput-char v2, v1, v0

    .line 80
    iget-object v1, p0, Lcom/coloros/settings/utils/VerificationView;->c:[I

    invoke-static {}, Lcom/coloros/settings/utils/VerificationView;->getRandomAngle()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_1
    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/coloros/settings/utils/VerificationView;->d:[Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {p0}, Lcom/coloros/settings/utils/VerificationView;->getRandomX()I

    move-result v3

    invoke-direct {p0}, Lcom/coloros/settings/utils/VerificationView;->getRandomY()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 85
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coloros/settings/utils/VerificationView;->b:[C

    aget-char p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/settings/utils/VerificationView;->b:[C

    const/4 v2, 0x1

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/settings/utils/VerificationView;->b:[C

    const/4 v2, 0x2

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/settings/utils/VerificationView;->b:[C

    const/4 v2, 0x3

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-virtual {p0, p1}, Lcom/coloros/settings/utils/VerificationView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p5, v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0, p5, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 104
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-eqz v0, :cond_1

    neg-float p1, p5

    .line 106
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_1
    return-void
.end method

.method private static getRandomAngle()I
    .locals 2

    .line 151
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x5b

    .line 152
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x2d

    return v0
.end method

.method private static getRandomChar()C
    .locals 2

    .line 146
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x1a

    .line 147
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x41

    int-to-char v0, v0

    return v0
.end method

.method private getRandomX()I
    .locals 3

    .line 136
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 137
    iget v1, p0, Lcom/coloros/settings/utils/VerificationView;->e:F

    const/high16 v2, 0x43af0000    # 350.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method private getRandomY()I
    .locals 3

    .line 141
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 142
    iget v1, p0, Lcom/coloros/settings/utils/VerificationView;->e:F

    const/high16 v2, 0x43200000    # 160.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getVerificationStr()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/coloros/settings/utils/VerificationView;->b:[C

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 117
    invoke-virtual {p0}, Lcom/coloros/settings/utils/VerificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06031e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coloros/settings/utils/VerificationView;->b:[C

    const/4 v7, 0x0

    aget-char v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v0, p0, Lcom/coloros/settings/utils/VerificationView;->e:F

    const/high16 v8, 0x428c0000    # 70.0f

    mul-float v1, v0, v8

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v3, v1

    const/high16 v9, 0x42a00000    # 80.0f

    mul-float v4, v0, v9

    iget-object v5, p0, Lcom/coloros/settings/utils/VerificationView;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/coloros/settings/utils/VerificationView;->c:[I

    aget v0, v0, v7

    int-to-float v6, v0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/coloros/settings/utils/VerificationView;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coloros/settings/utils/VerificationView;->b:[C

    const/4 v2, 0x1

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/coloros/settings/utils/VerificationView;->e:F

    mul-float v3, v1, v8

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v3, v10

    mul-float v4, v1, v9

    iget-object v5, p0, Lcom/coloros/settings/utils/VerificationView;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coloros/settings/utils/VerificationView;->c:[I

    aget v1, v1, v2

    int-to-float v6, v1

    move-object v1, p1

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lcom/coloros/settings/utils/VerificationView;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coloros/settings/utils/VerificationView;->b:[C

    const/4 v2, 0x2

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/coloros/settings/utils/VerificationView;->e:F

    mul-float v3, v1, v8

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v3, v4

    mul-float v4, v1, v9

    iget-object v5, p0, Lcom/coloros/settings/utils/VerificationView;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coloros/settings/utils/VerificationView;->c:[I

    aget v1, v1, v2

    int-to-float v6, v1

    move-object v1, p1

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lcom/coloros/settings/utils/VerificationView;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coloros/settings/utils/VerificationView;->b:[C

    const/4 v2, 0x3

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/coloros/settings/utils/VerificationView;->e:F

    mul-float/2addr v8, v1

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v3, v8

    mul-float v4, v1, v9

    iget-object v5, p0, Lcom/coloros/settings/utils/VerificationView;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coloros/settings/utils/VerificationView;->c:[I

    aget v1, v1, v2

    int-to-float v6, v1

    move-object v1, p1

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lcom/coloros/settings/utils/VerificationView;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 126
    iget-object v0, p0, Lcom/coloros/settings/utils/VerificationView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    .line 127
    iget-object v1, p0, Lcom/coloros/settings/utils/VerificationView;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_0
    const/16 v1, 0xa

    if-ge v7, v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/coloros/settings/utils/VerificationView;->d:[Landroid/graphics/Point;

    aget-object v1, v1, v7

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v1

    iget-object v1, p0, Lcom/coloros/settings/utils/VerificationView;->d:[Landroid/graphics/Point;

    aget-object v1, v1, v7

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v1

    iget-object v1, p0, Lcom/coloros/settings/utils/VerificationView;->d:[Landroid/graphics/Point;

    add-int/lit8 v4, v7, 0xa

    aget-object v1, v1, v4

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v5, v1

    iget-object v1, p0, Lcom/coloros/settings/utils/VerificationView;->d:[Landroid/graphics/Point;

    aget-object v1, v1, v4

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v6, v1

    iget-object v8, p0, Lcom/coloros/settings/utils/VerificationView;->a:Landroid/graphics/Paint;

    move-object v1, p1

    move v4, v5

    move v5, v6

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/utils/VerificationView;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 112
    iget p1, p0, Lcom/coloros/settings/utils/VerificationView;->e:F

    const/high16 p2, 0x43b40000    # 360.0f

    mul-float/2addr p2, p1

    float-to-int p2, p2

    const/high16 v0, 0x42d80000    # 108.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p2, p1}, Lcom/coloros/settings/utils/VerificationView;->setMeasuredDimension(II)V

    return-void
.end method
