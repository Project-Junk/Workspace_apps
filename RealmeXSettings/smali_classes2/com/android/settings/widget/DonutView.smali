.class public Lcom/android/settings/widget/DonutView;
.super Landroid/view/View;
.source "DonutView.java"


# instance fields
.field private a:F

.field private b:D

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/text/TextPaint;

.field private f:Landroid/text/TextPaint;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Lcom/android/settings/widget/DonutView;->i:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/android/settings/widget/DonutView;->i:Z

    const v1, 0x7f06023c

    .line 74
    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/DonutView;->j:I

    .line 75
    iget-object v1, p0, Lcom/android/settings/widget/DonutView;->mContext:Landroid/content/Context;

    const v2, 0x7f06023d

    invoke-static {v1, v2}, Lcom/android/settings/m;->g(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/DonutView;->k:I

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070619

    .line 79
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/DonutView;->a:F

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 82
    sget-object v3, Lcom/android/settings/g$a;->DonutView:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 83
    iget v3, p0, Lcom/android/settings/widget/DonutView;->j:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/android/settings/widget/DonutView;->j:I

    const/4 v3, 0x2

    .line 85
    iget v4, p0, Lcom/android/settings/widget/DonutView;->k:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/android/settings/widget/DonutView;->k:I

    .line 87
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/4 v4, 0x3

    .line 89
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/widget/DonutView;->i:Z

    const/4 v4, 0x4

    .line 91
    iget v5, p0, Lcom/android/settings/widget/DonutView;->a:F

    float-to-int v5, v5

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/android/settings/widget/DonutView;->a:F

    .line 93
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_0
    move v3, v0

    .line 96
    :goto_0
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/DonutView;->c:Landroid/graphics/Paint;

    .line 97
    iget-object p2, p0, Lcom/android/settings/widget/DonutView;->c:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 98
    iget-object p2, p0, Lcom/android/settings/widget/DonutView;->c:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 99
    iget-object p2, p0, Lcom/android/settings/widget/DonutView;->c:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    iget-object p2, p0, Lcom/android/settings/widget/DonutView;->c:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/settings/widget/DonutView;->a:F

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 101
    iget-object p2, p0, Lcom/android/settings/widget/DonutView;->c:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/settings/widget/DonutView;->j:I

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/DonutView;->d:Landroid/graphics/Paint;

    .line 104
    iget-object p2, p0, Lcom/android/settings/widget/DonutView;->d:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    iget-object p2, p0, Lcom/android/settings/widget/DonutView;->d:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 106
    iget-object p2, p0, Lcom/android/settings/widget/DonutView;->d:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 107
    iget-object p2, p0, Lcom/android/settings/widget/DonutView;->d:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/settings/widget/DonutView;->a:F

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 108
    iget-object p2, p0, Lcom/android/settings/widget/DonutView;->d:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/settings/widget/DonutView;->k:I

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v3, :cond_1

    .line 111
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    const v3, 0x1010435

    .line 113
    invoke-static {p1, v3}, Lcom/android/settings/m;->i(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 115
    iget-object v3, p0, Lcom/android/settings/widget/DonutView;->c:Landroid/graphics/Paint;

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 116
    iget-object v3, p0, Lcom/android/settings/widget/DonutView;->d:Landroid/graphics/Paint;

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 119
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 120
    invoke-static {p2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p2

    if-nez p2, :cond_2

    move p2, v2

    goto :goto_1

    :cond_2
    move p2, v0

    .line 125
    :goto_1
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    iput-object v3, p0, Lcom/android/settings/widget/DonutView;->e:Landroid/text/TextPaint;

    .line 126
    iget-object v3, p0, Lcom/android/settings/widget/DonutView;->e:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/m;->p(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 127
    iget-object v3, p0, Lcom/android/settings/widget/DonutView;->e:Landroid/text/TextPaint;

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 128
    iget-object v3, p0, Lcom/android/settings/widget/DonutView;->e:Landroid/text/TextPaint;

    const v4, 0x7f07061a

    .line 129
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 128
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 130
    iget-object v3, p0, Lcom/android/settings/widget/DonutView;->e:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 131
    iget-object v3, p0, Lcom/android/settings/widget/DonutView;->e:Landroid/text/TextPaint;

    invoke-virtual {v3, p2}, Landroid/text/TextPaint;->setBidiFlags(I)V

    .line 133
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    iput-object v3, p0, Lcom/android/settings/widget/DonutView;->f:Landroid/text/TextPaint;

    .line 134
    iget-object v3, p0, Lcom/android/settings/widget/DonutView;->f:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/m;->p(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 135
    iget-object v3, p0, Lcom/android/settings/widget/DonutView;->f:Landroid/text/TextPaint;

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/widget/DonutView;->f:Landroid/text/TextPaint;

    const v3, 0x7f07061c

    .line 137
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 136
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/widget/DonutView;->f:Landroid/text/TextPaint;

    const-string v1, "com.android.internal.R.string.config_headlineFontFamily"

    .line 139
    invoke-static {v1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-static {p1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 141
    iget-object p1, p0, Lcom/android/settings/widget/DonutView;->f:Landroid/text/TextPaint;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setBidiFlags(I)V

    return-void
.end method

.method private static a(Landroid/text/TextPaint;)F
    .locals 1

    .line 264
    invoke-virtual {p0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    invoke-virtual {p0}, Landroid/text/TextPaint;->ascent()F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method public getMeterBackgroundColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorRes;
    .end annotation

    .line 218
    iget v0, p0, Lcom/android/settings/widget/DonutView;->j:I

    return v0
.end method

.method public getMeterConsumedColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorRes;
    .end annotation

    .line 229
    iget v0, p0, Lcom/android/settings/widget/DonutView;->k:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    .line 146
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1154
    iget v1, v0, Lcom/android/settings/widget/DonutView;->a:F

    const/4 v11, 0x0

    add-float v2, v1, v11

    add-float v3, v1, v11

    .line 1157
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/DonutView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v4, v0, Lcom/android/settings/widget/DonutView;->a:F

    sub-float v4, v1, v4

    .line 1158
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/DonutView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v5, v0, Lcom/android/settings/widget/DonutView;->a:F

    sub-float v5, v1, v5

    iget-object v9, v0, Lcom/android/settings/widget/DonutView;->c:Landroid/graphics/Paint;

    const/high16 v6, -0x3d4c0000    # -90.0f

    const/high16 v7, 0x43b40000    # 360.0f

    const/4 v8, 0x0

    move-object/from16 v1, p1

    .line 1154
    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 1164
    iget v1, v0, Lcom/android/settings/widget/DonutView;->a:F

    add-float v2, v1, v11

    add-float v3, v1, v11

    .line 1167
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/DonutView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v4, v0, Lcom/android/settings/widget/DonutView;->a:F

    sub-float v4, v1, v4

    .line 1168
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/DonutView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v5, v0, Lcom/android/settings/widget/DonutView;->a:F

    sub-float v5, v1, v5

    iget-wide v6, v0, Lcom/android/settings/widget/DonutView;->b:D

    double-to-float v1, v6

    const/high16 v6, 0x43b40000    # 360.0f

    mul-float v7, v1, v6

    iget-object v9, v0, Lcom/android/settings/widget/DonutView;->d:Landroid/graphics/Paint;

    const/high16 v6, -0x3d4c0000    # -90.0f

    move-object/from16 v1, p1

    .line 1164
    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 148
    iget-boolean v1, v0, Lcom/android/settings/widget/DonutView;->i:Z

    if-eqz v1, :cond_1

    .line 1176
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/DonutView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 1177
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/DonutView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 1178
    iget-object v3, v0, Lcom/android/settings/widget/DonutView;->e:Landroid/text/TextPaint;

    invoke-static {v3}, Lcom/android/settings/widget/DonutView;->a(Landroid/text/TextPaint;)F

    move-result v3

    iget-object v4, v0, Lcom/android/settings/widget/DonutView;->f:Landroid/text/TextPaint;

    invoke-static {v4}, Lcom/android/settings/widget/DonutView;->a(Landroid/text/TextPaint;)F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v3, v4

    add-float/2addr v2, v5

    .line 1181
    new-instance v5, Landroid/icu/text/DecimalFormatSymbols;

    invoke-direct {v5}, Landroid/icu/text/DecimalFormatSymbols;-><init>()V

    invoke-virtual {v5}, Landroid/icu/text/DecimalFormatSymbols;->getPercentString()Ljava/lang/String;

    move-result-object v5

    .line 1184
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1186
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/DonutView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, v0, Lcom/android/settings/widget/DonutView;->g:Ljava/lang/String;

    const v8, 0x7f07061b

    .line 1242
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    const v9, 0x7f07061c

    .line 1243
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    div-float/2addr v8, v6

    .line 1244
    new-instance v13, Landroid/text/SpannableString;

    invoke-direct {v13, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1245
    invoke-virtual {v7, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1246
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v6

    if-gez v6, :cond_0

    const/4 v6, 0x0

    .line 1251
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    .line 1254
    :cond_0
    new-instance v7, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v7, v8}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v8, 0x22

    invoke-interface {v13, v7, v6, v5, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1187
    new-instance v5, Landroid/text/StaticLayout;

    iget-object v14, v0, Lcom/android/settings/widget/DonutView;->f:Landroid/text/TextPaint;

    .line 1188
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/DonutView;->getWidth()I

    move-result v15

    sget-object v16, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v5

    invoke-direct/range {v12 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 1189
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/DonutView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v3

    div-float/2addr v6, v4

    invoke-virtual {v10, v11, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1190
    invoke-virtual {v5, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1191
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1194
    iget-object v3, v0, Lcom/android/settings/widget/DonutView;->h:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/settings/widget/DonutView;->e:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    move-result v4

    sub-float/2addr v2, v4

    iget-object v4, v0, Lcom/android/settings/widget/DonutView;->e:Landroid/text/TextPaint;

    invoke-virtual {v10, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public setMeterBackgroundColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 222
    iput p1, p0, Lcom/android/settings/widget/DonutView;->j:I

    .line 223
    iget-object v0, p0, Lcom/android/settings/widget/DonutView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->invalidate()V

    return-void
.end method

.method public setMeterConsumedColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 233
    iput p1, p0, Lcom/android/settings/widget/DonutView;->k:I

    .line 234
    iget-object v0, p0, Lcom/android/settings/widget/DonutView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->invalidate()V

    return-void
.end method

.method public setPercentage(D)V
    .locals 3

    .line 201
    iput-wide p1, p0, Lcom/android/settings/widget/DonutView;->b:D

    .line 202
    iget-wide p1, p0, Lcom/android/settings/widget/DonutView;->b:D

    invoke-static {p1, p2}, Lcom/android/settings/m;->b(D)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/DonutView;->g:Ljava/lang/String;

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f121597

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/DonutView;->h:Ljava/lang/String;

    .line 204
    iget-object p1, p0, Lcom/android/settings/widget/DonutView;->h:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0xa

    if-le p1, p2, :cond_0

    .line 205
    iget-object p1, p0, Lcom/android/settings/widget/DonutView;->e:Landroid/text/TextPaint;

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 207
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07061d

    .line 208
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    .line 205
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f120b4f

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/widget/DonutView;->g:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/widget/DonutView;->h:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/DonutView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->invalidate()V

    return-void
.end method
