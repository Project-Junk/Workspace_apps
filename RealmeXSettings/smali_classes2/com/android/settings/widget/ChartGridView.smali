.class public Lcom/android/settings/widget/ChartGridView;
.super Landroid/view/View;
.source "ChartGridView.java"


# instance fields
.field private a:Lcom/android/settings/widget/a;

.field private b:Lcom/android/settings/widget/a;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:I

.field private g:I

.field private h:Landroid/text/Layout;

.field private i:Landroid/text/Layout;

.field private j:Landroid/text/Layout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/ChartGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/ChartGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartGridView;->setWillNotDraw(Z)V

    .line 71
    sget-object v1, Lcom/android/settings/g$a;->ChartGridView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x3

    .line 74
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/widget/ChartGridView;->c:Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x4

    .line 75
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/widget/ChartGridView;->d:Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x2

    .line 76
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/widget/ChartGridView;->e:Landroid/graphics/drawable/Drawable;

    const/4 p3, -0x1

    .line 78
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    const-string v1, "com.android.internal.R.styleable.TextAppearance"

    .line 80
    invoke-static {v1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 79
    invoke-virtual {p1, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p3, "com.android.internal.R.styleable.TextAppearance_textSize"

    .line 82
    invoke-static {p3}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 81
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/android/settings/widget/ChartGridView;->f:I

    .line 83
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x1

    .line 85
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/ChartGridView;->g:I

    .line 89
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartGridView;->getWidth()I

    move-result v0

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartGridView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartGridView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 111
    iget-object v2, p0, Lcom/android/settings/widget/ChartGridView;->d:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 115
    iget-object v5, p0, Lcom/android/settings/widget/ChartGridView;->b:Lcom/android/settings/widget/a;

    invoke-interface {v5}, Lcom/android/settings/widget/a;->a()[F

    move-result-object v5

    .line 116
    array-length v6, v5

    move v7, v3

    :goto_0
    if-ge v7, v6, :cond_0

    aget v8, v5, v7

    int-to-float v9, v4

    add-float/2addr v9, v8

    int-to-float v10, v1

    .line 117
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    float-to-int v8, v8

    .line 118
    invoke-virtual {v2, v3, v8, v0, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 119
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 123
    :cond_0
    iget-object v2, p0, Lcom/android/settings/widget/ChartGridView;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 125
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 126
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 128
    iget-object v5, p0, Lcom/android/settings/widget/ChartGridView;->a:Lcom/android/settings/widget/a;

    invoke-interface {v5}, Lcom/android/settings/widget/a;->a()[F

    move-result-object v5

    .line 129
    array-length v6, v5

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_1

    aget v8, v5, v7

    int-to-float v9, v4

    add-float/2addr v9, v8

    int-to-float v10, v0

    .line 130
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    float-to-int v8, v8

    .line 131
    invoke-virtual {v2, v8, v3, v9, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 132
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 136
    :cond_1
    iget-object v2, p0, Lcom/android/settings/widget/ChartGridView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 137
    iget-object v2, p0, Lcom/android/settings/widget/ChartGridView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 139
    iget-object v2, p0, Lcom/android/settings/widget/ChartGridView;->h:Landroid/text/Layout;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    div-int/lit8 v3, v2, 0x8

    .line 141
    :cond_2
    iget-object v2, p0, Lcom/android/settings/widget/ChartGridView;->h:Landroid/text/Layout;

    if-eqz v2, :cond_3

    .line 143
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    const/4 v5, 0x0

    add-int v6, v1, v3

    int-to-float v6, v6

    .line 144
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 145
    invoke-virtual {v2, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 146
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 149
    :cond_3
    iget-object v2, p0, Lcom/android/settings/widget/ChartGridView;->i:Landroid/text/Layout;

    if-eqz v2, :cond_4

    .line 151
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 152
    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v5

    sub-int v5, v0, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-int v6, v1, v3

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 153
    invoke-virtual {v2, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 154
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 157
    :cond_4
    iget-object v2, p0, Lcom/android/settings/widget/ChartGridView;->j:Landroid/text/Layout;

    if-eqz v2, :cond_5

    .line 159
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 160
    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v5

    sub-int/2addr v0, v5

    int-to-float v0, v0

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 161
    invoke-virtual {v2, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 162
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_5
    return-void
.end method
