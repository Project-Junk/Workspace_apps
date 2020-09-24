.class public Lcom/android/systemui/bubbles/BadgeRenderer;
.super Ljava/lang/Object;
.source "BadgeRenderer.java"


# static fields
.field private static final DOT_SCALE:F = 0.6f

.field private static final SIZE_PERCENTAGE:F = 0.38f

.field private static final TAG:Ljava/lang/String; = "BadgeRenderer"


# instance fields
.field private final mCirclePaint:Landroid/graphics/Paint;

.field private final mCircleRadius:F

.field private final mDotCenterOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BadgeRenderer;->mCirclePaint:Landroid/graphics/Paint;

    .line 49
    invoke-static {p1}, Lcom/android/systemui/bubbles/BadgeRenderer;->getDotCenterOffset(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/bubbles/BadgeRenderer;->mDotCenterOffset:F

    .line 50
    iget p1, p0, Lcom/android/systemui/bubbles/BadgeRenderer;->mDotCenterOffset:F

    invoke-static {p1}, Lcom/android/systemui/bubbles/BadgeRenderer;->getDotRadius(F)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/bubbles/BadgeRenderer;->mCircleRadius:F

    return-void
.end method

.method static getDotCenterOffset(Landroid/content/Context;)F
    .locals 1

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0703da

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3ec28f5c    # 0.38f

    mul-float/2addr p0, v0

    return p0
.end method

.method static getDotRadius(F)F
    .locals 1

    const v0, 0x3f19999a    # 0.6f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;ILandroid/graphics/Rect;FLandroid/graphics/Point;Z)V
    .locals 2

    if-nez p3, :cond_0

    const-string p0, "BadgeRenderer"

    const-string p1, "Invalid null argument(s) passed in call to draw."

    .line 77
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 80
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-eqz p6, :cond_1

    .line 82
    iget v0, p3, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_1
    iget v0, p3, Landroid/graphics/Rect;->right:I

    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p6, :cond_2

    .line 83
    iget p6, p0, Lcom/android/systemui/bubbles/BadgeRenderer;->mDotCenterOffset:F

    div-float/2addr p6, v1

    goto :goto_1

    :cond_2
    iget p6, p0, Lcom/android/systemui/bubbles/BadgeRenderer;->mDotCenterOffset:F

    div-float/2addr p6, v1

    neg-float p6, p6

    :goto_1
    int-to-float v0, v0

    add-float/2addr v0, p6

    .line 85
    iget p3, p3, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    iget p6, p0, Lcom/android/systemui/bubbles/BadgeRenderer;->mDotCenterOffset:F

    div-float/2addr p6, v1

    add-float/2addr p3, p6

    .line 87
    iget p6, p5, Landroid/graphics/Point;->x:I

    int-to-float p6, p6

    add-float/2addr v0, p6

    iget p5, p5, Landroid/graphics/Point;->y:I

    int-to-float p5, p5

    sub-float/2addr p3, p5

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 89
    invoke-virtual {p1, p4, p4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 90
    iget-object p3, p0, Lcom/android/systemui/bubbles/BadgeRenderer;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget p2, p0, Lcom/android/systemui/bubbles/BadgeRenderer;->mCircleRadius:F

    iget-object p0, p0, Lcom/android/systemui/bubbles/BadgeRenderer;->mCirclePaint:Landroid/graphics/Paint;

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 92
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
