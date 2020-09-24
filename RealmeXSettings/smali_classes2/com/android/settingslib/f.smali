.class public Lcom/android/settingslib/f;
.super Landroid/text/style/ImageSpan;
.source "RestrictedLockImageSpan.java"


# instance fields
.field private a:Landroid/content/Context;

.field private final b:F

.field private final c:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 37
    iput-object p1, p0, Lcom/android/settingslib/f;->a:Landroid/content/Context;

    .line 38
    iget-object p1, p0, Lcom/android/settingslib/f;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settingslib/e$d;->restricted_icon_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/settingslib/f;->b:F

    .line 40
    iget-object p1, p0, Lcom/android/settingslib/f;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/h;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/f;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/android/settingslib/f;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 55
    iget p3, p0, Lcom/android/settingslib/f;->b:F

    add-float/2addr p5, p3

    .line 56
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p8, p3

    int-to-float p3, p8

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    .line 58
    invoke-virtual {p1, p5, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 59
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 60
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/settingslib/f;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    .line 66
    invoke-super/range {p0 .. p5}, Landroid/text/style/ImageSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result p1

    int-to-float p1, p1

    .line 67
    iget p2, p0, Lcom/android/settingslib/f;->b:F

    const/high16 p3, 0x40000000    # 2.0f

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method
