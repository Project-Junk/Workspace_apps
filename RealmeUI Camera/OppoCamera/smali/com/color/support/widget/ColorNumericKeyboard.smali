.class public Lcom/color/support/widget/ColorNumericKeyboard;
.super Landroid/view/View;
.source "ColorNumericKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorNumericKeyboard$OnTouchUpListener;,
        Lcom/color/support/widget/ColorNumericKeyboard$OnTouchTextListener;,
        Lcom/color/support/widget/ColorNumericKeyboard$OnItemTouchListener;,
        Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;,
        Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;,
        Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;,
        Lcom/color/support/widget/ColorNumericKeyboard$Cell;
    }
.end annotation


# instance fields
.field private A:Landroid/animation/AnimatorSet;

.field private B:Landroid/animation/AnimatorSet;

.field private C:Z

.field private D:Landroid/animation/Animator$AnimatorListener;

.field private E:Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;

.field private final F:Landroid/view/accessibility/AccessibilityManager;

.field private a:Landroid/graphics/Paint;

.field private b:Lcom/color/support/widget/ColorNumericKeyboard$Cell;

.field private c:I

.field private d:Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:[[Lcom/color/support/widget/ColorNumericKeyboard$Cell;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:[I

.field private n:Landroid/text/TextPaint;

.field private o:Landroid/graphics/Paint$FontMetricsInt;

.field private p:Landroid/graphics/Paint$FontMetricsInt;

.field private q:Landroid/graphics/Paint;

.field private r:F

.field private s:F

.field private t:Landroid/text/TextPaint;

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

.field private z:Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;


# direct methods
.method private a(F)I
    .locals 7

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 551
    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorNumericKeyboard;->d(I)F

    move-result v1

    float-to-int v1, v1

    .line 552
    iget v2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->e:I

    div-int/lit8 v3, v2, 0x2

    sub-int v3, v1, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/color/support/widget/ColorNumericKeyboard;->s:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v4, v5

    sub-float/2addr v3, v6

    float-to-int v3, v3

    .line 553
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v4, v5

    add-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v2, v3

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_0

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private a(Lcom/color/support/widget/ColorNumericKeyboard$Cell;)I
    .locals 2

    .line 514
    invoke-virtual {p1}, Lcom/color/support/widget/ColorNumericKeyboard$Cell;->getRow()I

    move-result v0

    .line 515
    invoke-virtual {p1}, Lcom/color/support/widget/ColorNumericKeyboard$Cell;->getColumn()I

    move-result p1

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p1

    .line 516
    iput v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->c:I

    .line 517
    iget p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->c:I

    const/4 v0, -0x1

    const/16 v1, 0x9

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->y:Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->a(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 518
    iput v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->c:I

    .line 521
    :cond_0
    iget p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->c:I

    const/16 v1, 0xb

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->z:Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->a(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 522
    iput v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->c:I

    .line 524
    :cond_1
    iget p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->c:I

    return p1
.end method

.method static synthetic a(Lcom/color/support/widget/ColorNumericKeyboard;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->B:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private a(FF)Lcom/color/support/widget/ColorNumericKeyboard$Cell;
    .locals 1

    .line 538
    invoke-direct {p0, p2}, Lcom/color/support/widget/ColorNumericKeyboard;->a(F)I

    move-result p2

    const/4 v0, 0x0

    if-gez p2, :cond_0

    return-object v0

    .line 542
    :cond_0
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->b(F)I

    move-result p1

    if-gez p1, :cond_1

    return-object v0

    .line 546
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->a(II)Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/color/support/widget/ColorNumericKeyboard;FF)Lcom/color/support/widget/ColorNumericKeyboard$Cell;
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/color/support/widget/ColorNumericKeyboard;->a(FF)Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 1

    .line 419
    iget-boolean v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->C:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x12f

    .line 420
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorNumericKeyboard;->performHapticFeedback(I)Z

    goto :goto_0

    :cond_0
    const/16 v0, 0x12d

    .line 422
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorNumericKeyboard;->performHapticFeedback(I)Z

    :goto_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 9

    .line 600
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->b:Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    if-eqz v0, :cond_0

    .line 601
    iget v0, v0, Lcom/color/support/widget/ColorNumericKeyboard$Cell;->b:I

    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorNumericKeyboard;->c(I)F

    move-result v0

    .line 602
    iget-object v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->b:Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    iget v1, v1, Lcom/color/support/widget/ColorNumericKeyboard$Cell;->a:I

    invoke-direct {p0, v1}, Lcom/color/support/widget/ColorNumericKeyboard;->d(I)F

    move-result v1

    .line 603
    iget-object v2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->b:Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    invoke-direct {p0, v2}, Lcom/color/support/widget/ColorNumericKeyboard;->a(Lcom/color/support/widget/ColorNumericKeyboard$Cell;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 605
    iget v2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->f:I

    int-to-float v3, v2

    sub-float v3, v0, v3

    float-to-int v3, v3

    int-to-float v4, v2

    sub-float v4, v1, v4

    float-to-int v4, v4

    int-to-float v5, v2

    add-float/2addr v5, v0

    float-to-int v5, v5

    int-to-float v2, v2

    add-float/2addr v2, v1

    float-to-int v2, v2

    .line 609
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 610
    iget v6, p0, Lcom/color/support/widget/ColorNumericKeyboard;->x:F

    invoke-virtual {p1, v6, v6, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 611
    iget-object v6, p0, Lcom/color/support/widget/ColorNumericKeyboard;->k:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/color/support/widget/ColorNumericKeyboard;->v:F

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 612
    iget-object v6, p0, Lcom/color/support/widget/ColorNumericKeyboard;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v3, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 613
    iget-object v6, p0, Lcom/color/support/widget/ColorNumericKeyboard;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 614
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 616
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 617
    iget v6, p0, Lcom/color/support/widget/ColorNumericKeyboard;->w:F

    invoke-virtual {p1, v6, v6, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 618
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 619
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->l:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->u:F

    mul-float/2addr v1, v8

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 620
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 621
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;I)V
    .locals 9

    .line 627
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->r:F

    sub-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v4, v0, v2

    .line 628
    iget v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->e:I

    iget v2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->g:I

    add-int/2addr v0, v2

    add-int/lit8 p2, p2, 0x1

    mul-int/2addr v0, p2

    int-to-float v7, v0

    add-float v6, v4, v1

    .line 629
    iget-object v8, p0, Lcom/color/support/widget/ColorNumericKeyboard;->q:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v7

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;II)V
    .locals 4

    .line 635
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->j:[[Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    aget-object v0, v0, p3

    aget-object v0, v0, p2

    .line 636
    invoke-direct {p0, p2}, Lcom/color/support/widget/ColorNumericKeyboard;->c(I)F

    move-result v1

    .line 637
    invoke-direct {p0, p3}, Lcom/color/support/widget/ColorNumericKeyboard;->d(I)F

    move-result v2

    mul-int/lit8 p3, p3, 0x3

    add-int/2addr p3, p2

    const/16 p2, 0x9

    if-ne p3, p2, :cond_0

    .line 640
    iget-object p2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->y:Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    invoke-direct {p0, p2, p1, v1, v2}, Lcom/color/support/widget/ColorNumericKeyboard;->a(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;Landroid/graphics/Canvas;FF)V

    goto :goto_0

    :cond_0
    const/16 p2, 0xb

    if-ne p3, p2, :cond_1

    .line 642
    iget-object p2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->z:Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    invoke-direct {p0, p2, p1, v1, v2}, Lcom/color/support/widget/ColorNumericKeyboard;->a(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;Landroid/graphics/Canvas;FF)V

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    if-eq p3, p2, :cond_2

    .line 644
    iget-object p2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->n:Landroid/text/TextPaint;

    iget-object p3, v0, Lcom/color/support/widget/ColorNumericKeyboard$Cell;->c:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p2

    .line 645
    iget-object p3, p0, Lcom/color/support/widget/ColorNumericKeyboard;->o:Landroid/graphics/Paint$FontMetricsInt;

    iget p3, p3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v3, p0, Lcom/color/support/widget/ColorNumericKeyboard;->o:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr p3, v3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    sub-float/2addr v2, p3

    .line 646
    iget-object p3, v0, Lcom/color/support/widget/ColorNumericKeyboard$Cell;->c:Ljava/lang/String;

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    sub-float/2addr v1, p2

    iget-object p2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->n:Landroid/text/TextPaint;

    invoke-virtual {p1, p3, v1, v2, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;Landroid/graphics/Canvas;FF)V
    .locals 3

    .line 651
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->a(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 654
    :cond_0
    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->a(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 655
    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->a(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p3, v0

    float-to-int p3, p3

    .line 656
    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->a(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr v0, p3

    .line 657
    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->a(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr p4, v1

    float-to-int p4, p4

    .line 658
    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->a(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    add-int/2addr v1, p4

    .line 659
    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->a(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, p3, p4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 660
    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->a(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 661
    :cond_1
    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->b(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 662
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->t:Landroid/text/TextPaint;

    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->c(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 663
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->t:Landroid/text/TextPaint;

    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->d(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 664
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->t:Landroid/text/TextPaint;

    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->b(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 665
    iget-object v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->t:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iput-object v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->p:Landroid/graphics/Paint$FontMetricsInt;

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p3, v0

    .line 667
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->p:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->p:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p4, v0

    .line 668
    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->b(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->t:Landroid/text/TextPaint;

    invoke-virtual {p2, p1, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/color/support/widget/ColorNumericKeyboard;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->b(I)V

    return-void
.end method

.method private a(I)Z
    .locals 2

    .line 406
    iget v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->v:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-lez v0, :cond_0

    if-eq v1, p1, :cond_1

    const/4 v0, 0x3

    if-eq v0, p1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 413
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 414
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private a(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 723
    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->a(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->b(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method static synthetic a(Lcom/color/support/widget/ColorNumericKeyboard;Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Z
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->a(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/color/support/widget/ColorNumericKeyboard;I)F
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->c(I)F

    move-result p0

    return p0
.end method

.method private b(F)I
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 563
    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorNumericKeyboard;->c(I)F

    move-result v1

    float-to-int v1, v1

    .line 564
    iget v2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->e:I

    div-int/lit8 v3, v2, 0x2

    sub-int v3, v1, v3

    iget v4, p0, Lcom/color/support/widget/ColorNumericKeyboard;->g:I

    div-int/lit8 v5, v4, 0x2

    sub-int/2addr v3, v5

    .line 565
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    int-to-float v2, v3

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_0

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method static synthetic b(Lcom/color/support/widget/ColorNumericKeyboard;)I
    .locals 0

    .line 78
    iget p0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->f:I

    return p0
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    .line 429
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorNumericKeyboard;->playSoundEffect(I)V

    return-void
.end method

.method private b(I)V
    .locals 2

    .line 471
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->d:Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;

    if-eqz v0, :cond_3

    if-ltz p1, :cond_0

    const/16 v1, 0x8

    if-gt p1, v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    .line 473
    invoke-interface {v0, v1}, Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;->a(I)V

    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->d:Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;->a(I)V

    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 479
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->d:Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;

    invoke-interface {v0}, Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;->a()V

    :cond_2
    const/16 v0, 0xb

    if-ne p1, v0, :cond_3

    .line 482
    iget-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->d:Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;

    invoke-interface {p1}, Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;->b()V

    :cond_3
    return-void
.end method

.method private b(II)V
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    if-ltz p2, :cond_0

    const/4 p1, 0x2

    if-gt p2, p1, :cond_0

    return-void

    .line 170
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "column must be in range 0-2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "row must be in range 0-3"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 3

    .line 434
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->F:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 435
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 436
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 437
    invoke-direct {p0, v0, v2}, Lcom/color/support/widget/ColorNumericKeyboard;->a(FF)Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->b:Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    .line 438
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->b:Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    if-eqz v0, :cond_0

    .line 439
    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorNumericKeyboard;->a(Lcom/color/support/widget/ColorNumericKeyboard$Cell;)I

    move-result v0

    .line 440
    iget-object v2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->E:Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;

    invoke-virtual {v2}, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->a()V

    .line 441
    iget-boolean v2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->h:Z

    if-eqz v2, :cond_1

    if-eq v0, v1, :cond_1

    .line 442
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->a()V

    goto :goto_0

    .line 445
    :cond_0
    iput v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->c:I

    .line 448
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->c()V

    .line 449
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorNumericKeyboard;->a(F)I

    move-result v0

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->b(F)I

    move-result p1

    if-eq p1, v1, :cond_2

    .line 450
    iget p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->c:I

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->b(I)V

    .line 454
    :cond_2
    iget p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->c:I

    if-eq p1, v1, :cond_3

    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->hasOnClickListeners()Z

    move-result p1

    if-nez p1, :cond_3

    .line 455
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->b()V

    .line 458
    :cond_3
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->invalidate()V

    return-void
.end method

.method private c(I)F
    .locals 3

    .line 528
    iget v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->e:I

    iget v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->g:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 529
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    add-float/2addr v1, v2

    int-to-float p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    iget p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->f:I

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    add-float/2addr v1, p1

    return v1
.end method

.method static synthetic c(Lcom/color/support/widget/ColorNumericKeyboard;I)F
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->d(I)F

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/color/support/widget/ColorNumericKeyboard;)Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->y:Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 462
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->A:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->A:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->D:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->B:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_0
    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 2

    .line 488
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->F:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 489
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 490
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 491
    invoke-direct {p0, v0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->a(FF)Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->b:Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    .line 492
    iget-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->b:Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 493
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->a(Lcom/color/support/widget/ColorNumericKeyboard$Cell;)I

    move-result p1

    .line 494
    iget-object v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->E:Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->a()V

    .line 495
    iget-boolean v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->h:Z

    if-eqz v1, :cond_1

    if-eq p1, v0, :cond_1

    .line 496
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->a()V

    goto :goto_0

    .line 499
    :cond_0
    iput v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->c:I

    .line 502
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->A:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->D:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 503
    iget-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->B:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 504
    iget-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->B:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    .line 506
    :cond_2
    iget-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->A:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 507
    iget-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->A:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    .line 509
    :cond_3
    iget-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->A:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 510
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->invalidate()V

    return-void
.end method

.method private d(I)F
    .locals 3

    .line 533
    iget v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->e:I

    int-to-float v0, v0

    .line 534
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->f:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    int-to-float v2, p1

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    iget v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->s:F

    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    return v1
.end method

.method static synthetic d(Lcom/color/support/widget/ColorNumericKeyboard;)Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->z:Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    return-object p0
.end method

.method static synthetic e(Lcom/color/support/widget/ColorNumericKeyboard;)[I
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->m:[I

    return-object p0
.end method

.method private setBlurAlpha(F)V
    .locals 0

    .line 697
    iput p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->u:F

    .line 698
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->invalidate()V

    return-void
.end method

.method private setBlurScale(F)V
    .locals 0

    .line 687
    iput p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->w:F

    .line 688
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->invalidate()V

    return-void
.end method

.method private setNormalAlpha(F)V
    .locals 0

    .line 702
    iput p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->v:F

    .line 703
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->invalidate()V

    return-void
.end method

.method private setNormalScale(F)V
    .locals 0

    .line 692
    iput p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->x:F

    .line 693
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->invalidate()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(II)Lcom/color/support/widget/ColorNumericKeyboard$Cell;
    .locals 1

    monitor-enter p0

    .line 161
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/color/support/widget/ColorNumericKeyboard;->b(II)V

    .line 162
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->j:[[Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    aget-object p1, v0, p1

    aget-object p1, p1, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 759
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 760
    iget-object v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->E:Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;

    invoke-virtual {v1, p1}, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public getTouchIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 575
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 576
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 577
    iput-object v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->a:Landroid/graphics/Paint;

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->b:Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    if-eqz v0, :cond_1

    .line 580
    iput-object v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->b:Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    :cond_1
    const/4 v0, 0x0

    .line 582
    iput-boolean v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->i:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 587
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 588
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->a(Landroid/graphics/Canvas;)V

    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 590
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorNumericKeyboard;->a(Landroid/graphics/Canvas;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_2

    move v3, v0

    :goto_2
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 594
    invoke-direct {p0, p1, v3, v2}, Lcom/color/support/widget/ColorNumericKeyboard;->a(Landroid/graphics/Canvas;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 736
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->F:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 737
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 746
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 740
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    .line 743
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 749
    :goto_0
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 750
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 752
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 296
    iget p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->e:I

    iget p2, p0, Lcom/color/support/widget/ColorNumericKeyboard;->g:I

    add-int/2addr p2, p1

    mul-int/lit8 p2, p2, 0x3

    iget v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->f:I

    add-int/2addr p2, v0

    mul-int/lit8 p1, p1, 0x4

    int-to-float p1, p1

    .line 297
    iget v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->s:F

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float/2addr v1, v2

    add-float/2addr p1, v1

    float-to-int p1, p1

    add-int/2addr p1, v0

    .line 298
    invoke-virtual {p0, p2, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 368
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 373
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 374
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->isEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 375
    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorNumericKeyboard;->a(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 376
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->c()V

    :cond_1
    return v3

    :cond_2
    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    goto :goto_0

    .line 396
    :cond_3
    iput-boolean v3, p0, Lcom/color/support/widget/ColorNumericKeyboard;->i:Z

    .line 397
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->b(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 392
    :cond_4
    iput-boolean v3, p0, Lcom/color/support/widget/ColorNumericKeyboard;->i:Z

    .line 393
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->b(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 386
    :cond_5
    iput-boolean v3, p0, Lcom/color/support/widget/ColorNumericKeyboard;->i:Z

    .line 387
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->b(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 382
    :cond_6
    iput-boolean v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->i:Z

    .line 383
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->c(Landroid/view/MotionEvent;)V

    :cond_7
    :goto_0
    return v1
.end method

.method public setEnabled(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 676
    iget-boolean v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->i:Z

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard;->a:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 678
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 679
    iput-boolean v1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->i:Z

    .line 680
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->invalidate()V

    .line 683
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setHasFinishButton(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setItemTouchListener(Lcom/color/support/widget/ColorNumericKeyboard$OnItemTouchListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setLeftStyle(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)V
    .locals 1

    .line 711
    iput-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->y:Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    .line 712
    iget-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->E:Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->a(I)V

    .line 713
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->invalidate()V

    return-void
.end method

.method public setOnClickItemListener(Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->d:Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;

    return-void
.end method

.method public setRightStyle(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)V
    .locals 1

    .line 717
    iput-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->z:Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    .line 718
    iget-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->E:Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->a(I)V

    .line 719
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumericKeyboard;->invalidate()V

    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0

    .line 731
    iput-boolean p1, p0, Lcom/color/support/widget/ColorNumericKeyboard;->h:Z

    return-void
.end method

.method public setTouchTextListener(Lcom/color/support/widget/ColorNumericKeyboard$OnTouchTextListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setTouchUpListener(Lcom/color/support/widget/ColorNumericKeyboard$OnTouchUpListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setType(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
