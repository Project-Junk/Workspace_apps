.class public Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;
.super Landroid/view/View;
.source "NotificationBadgeView.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# static fields
.field private static final MAX_COUNT:I = 0x63

.field private static final MIN_COUNT:I = 0x1

.field private static final SCALE:F = 0.5f


# instance fields
.field private mBgPaint:Landroid/graphics/Paint;

.field private mCircleRadius:F

.field private mCircleTextSize:F

.field private mDarkModeBackgroundColor:I

.field private mDarkModeTextColor:I

.field private mDensityDpi:I

.field private mHeight:I

.field private mLightModeBackgroundColor:I

.field private mLightModeTextColor:I

.field private mRectF:Landroid/graphics/RectF;

.field private mRoundRectHeight:F

.field private mRoundRectWith:F

.field private mRoundTxtSize:F

.field private mShowMaxNumber:Z

.field private mText:Ljava/lang/String;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object p2

    const-wide/16 v0, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mText:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p2, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mDensityDpi:I

    .line 74
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->initColorsFromContext(Landroid/content/Context;)V

    .line 75
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->intPaint()V

    .line 76
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->reloadDimens()V

    .line 77
    const-class p1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method private getTextY(Landroid/graphics/Paint;)I
    .locals 1

    .line 165
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    .line 166
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->getMeasuredHeight()I

    move-result p0

    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr p0, v0

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr p0, p1

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method private initColorsFromContext(Landroid/content/Context;)V
    .locals 3

    const v0, 0x7f060280

    .line 114
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mLightModeTextColor:I

    const v1, 0x7f060281

    .line 115
    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mLightModeBackgroundColor:I

    .line 116
    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mDarkModeTextColor:I

    .line 117
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mDarkModeBackgroundColor:I

    return-void
.end method

.method private intPaint()V
    .locals 3

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mBgPaint:Landroid/graphics/Paint;

    .line 82
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mBgPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mBgPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mTextPaint:Landroid/text/TextPaint;

    .line 86
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 87
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const-string v0, "system/fonts/Roboto-Bold.ttf"

    .line 89
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 92
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mLightModeTextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 93
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mBgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mLightModeBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mRectF:Landroid/graphics/RectF;

    return-void
.end method

.method private reloadDimens()V
    .locals 2

    .line 98
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707d0

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mCircleTextSize:F

    const v1, 0x7f0707d3

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mRoundTxtSize:F

    const v1, 0x7f0707cf

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mCircleRadius:F

    const v1, 0x7f0707d4

    .line 102
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mRoundRectWith:F

    const v1, 0x7f0707d2

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mRoundRectHeight:F

    return-void
.end method

.method private setRectF(FFFF)V
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mRectF:Landroid/graphics/RectF;

    iput p1, p0, Landroid/graphics/RectF;->left:F

    .line 108
    iput p2, p0, Landroid/graphics/RectF;->top:F

    .line 109
    iput p3, p0, Landroid/graphics/RectF;->right:F

    .line 110
    iput p4, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 122
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 123
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 124
    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mDensityDpi:I

    if-eq v0, p1, :cond_0

    .line 125
    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mDensityDpi:I

    .line 126
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->reloadDimens()V

    .line 127
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->invalidate()V

    :cond_0
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 197
    invoke-virtual {p0, p3}, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->updateTint(I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 145
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mShowMaxNumber:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mRoundTxtSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 147
    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mRoundRectWith:F

    iget v1, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mRoundRectHeight:F

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->setRectF(FFFF)V

    .line 148
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 149
    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mRoundRectHeight:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 150
    iget-object v2, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 151
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 152
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mRoundRectWith:F

    mul-float/2addr v2, v1

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v1}, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->getTextY(Landroid/graphics/Paint;)I

    move-result v1

    int-to-float v1, v1

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mCircleTextSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 157
    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mCircleRadius:F

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 158
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 159
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mText:Ljava/lang/String;

    iget v1, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mCircleRadius:F

    iget-object v2, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v2}, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->getTextY(Landroid/graphics/Paint;)I

    move-result v2

    int-to-float v2, v2

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 160
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 133
    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mShowMaxNumber:Z

    if-eqz p1, :cond_0

    .line 134
    iget p1, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mRoundRectWith:F

    float-to-int p1, p1

    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mWidth:I

    .line 135
    iget p1, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mRoundRectHeight:F

    float-to-int p1, p1

    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mHeight:I

    goto :goto_0

    .line 137
    :cond_0
    iget p1, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mCircleRadius:F

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mHeight:I

    .line 138
    iget p1, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mHeight:I

    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mWidth:I

    .line 140
    :goto_0
    iget p1, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mWidth:I

    iget p2, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setText(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/16 v1, 0x8

    .line 171
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->setVisibility(I)V

    :cond_0
    const/16 v1, 0x63

    if-le p1, v1, :cond_1

    .line 174
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mShowMaxNumber:Z

    .line 175
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object p1

    const-wide/16 v0, 0x63

    invoke-virtual {p1, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mText:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mShowMaxNumber:Z

    .line 178
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mText:Ljava/lang/String;

    .line 180
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->invalidate()V

    return-void
.end method

.method public updateTint(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 186
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mTextPaint:Landroid/text/TextPaint;

    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mLightModeTextColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 187
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mBgPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mLightModeBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 189
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mTextPaint:Landroid/text/TextPaint;

    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mDarkModeTextColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 190
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mBgPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->mDarkModeBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/NotificationBadgeView;->invalidate()V

    return-void
.end method
