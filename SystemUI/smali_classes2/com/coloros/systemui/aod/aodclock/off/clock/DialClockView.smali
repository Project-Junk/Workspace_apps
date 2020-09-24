.class public Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;
.super Landroid/view/View;
.source "DialClockView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DialClockView"


# instance fields
.field private mClockPosition:I

.field private mContext:Landroid/content/Context;

.field private mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mDrawableCenter:Landroid/graphics/drawable/Drawable;

.field private mDrawableHourHand:Landroid/graphics/drawable/Drawable;

.field private mDrawableMinuteHand:Landroid/graphics/drawable/Drawable;

.field private mIsDefaultTheme:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 38
    iput p2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mClockPosition:I

    .line 56
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mContext:Landroid/content/Context;

    .line 57
    new-instance p2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 p3, 0x0

    const/4 v0, 0x3

    invoke-direct {p2, p3, v0}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mWidth:I

    const p2, 0x7f08048a

    .line 59
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private drawCenter(Landroid/graphics/Canvas;)V
    .locals 7

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 120
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableCenter:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mContext:Landroid/content/Context;

    const v1, 0x7f0804b4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableCenter:Landroid/graphics/drawable/Drawable;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 124
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 125
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableCenter:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mWidth:I

    div-int/lit8 v4, v3, 0x2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v4, v0

    div-int/lit8 v5, v3, 0x2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v5, v1

    div-int/lit8 v6, v3, 0x2

    add-int/2addr v6, v0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 127
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 128
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawHourHand(Landroid/graphics/Canvas;F)V
    .locals 6

    .line 146
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 147
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mWidth:I

    shr-int/lit8 v1, v0, 0x1

    int-to-float v1, v1

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    invoke-virtual {p1, p2, v1, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 148
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableHourHand:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_0

    .line 149
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mContext:Landroid/content/Context;

    const v0, 0x7f080490

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableHourHand:Landroid/graphics/drawable/Drawable;

    .line 151
    :cond_0
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableHourHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    .line 152
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableHourHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 153
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableHourHand:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mWidth:I

    div-int/lit8 v3, v2, 0x2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr v3, p2

    div-int/lit8 v4, v2, 0x2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v4, v0

    div-int/lit8 v5, v2, 0x2

    add-int/2addr v5, p2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 155
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableHourHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 156
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawMinuteHand(Landroid/graphics/Canvas;F)V
    .locals 6

    .line 132
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 133
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mWidth:I

    shr-int/lit8 v1, v0, 0x1

    int-to-float v1, v1

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    invoke-virtual {p1, p2, v1, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 134
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableMinuteHand:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_0

    .line 135
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mContext:Landroid/content/Context;

    const v0, 0x7f0804ae

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 137
    :cond_0
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableMinuteHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    .line 138
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableMinuteHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 139
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableMinuteHand:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mWidth:I

    div-int/lit8 v3, v2, 0x2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr v3, p2

    div-int/lit8 v4, v2, 0x2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v4, v0

    div-int/lit8 v5, v2, 0x2

    add-int/2addr v5, p2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 141
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableMinuteHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawPointer(Landroid/graphics/Canvas;)V
    .locals 4

    .line 97
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xa

    .line 99
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc

    .line 100
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-float v1, v1

    int-to-float v2, v0

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x41400000    # 12.0f

    div-float/2addr v1, v2

    mul-int/lit8 v0, v0, 0x6

    int-to-float v0, v0

    .line 104
    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mClockPosition:I

    if-eqz v2, :cond_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 111
    invoke-direct {p0, p1, v1}, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->drawHourHand(Landroid/graphics/Canvas;F)V

    .line 112
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->drawMinuteHand(Landroid/graphics/Canvas;F)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->drawMinuteHand(Landroid/graphics/Canvas;F)V

    .line 108
    invoke-direct {p0, p1, v1}, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->drawHourHand(Landroid/graphics/Canvas;F)V

    .line 115
    :goto_0
    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->drawCenter(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private initDefaultDial(I)V
    .locals 3

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initDefaultDial: clockPosition is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Aod"

    const-string v2, "DialClockView"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 215
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mContext:Landroid/content/Context;

    const v0, 0x7f080495

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableHourHand:Landroid/graphics/drawable/Drawable;

    .line 216
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mContext:Landroid/content/Context;

    const v0, 0x7f0804b3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 217
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mContext:Landroid/content/Context;

    const v0, 0x7f0804b9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableCenter:Landroid/graphics/drawable/Drawable;

    .line 218
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mContext:Landroid/content/Context;

    const v0, 0x7f08048f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 209
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mContext:Landroid/content/Context;

    const v0, 0x7f080494

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableHourHand:Landroid/graphics/drawable/Drawable;

    .line 210
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mContext:Landroid/content/Context;

    const v0, 0x7f0804b2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 211
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mContext:Landroid/content/Context;

    const v0, 0x7f0804b8

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableCenter:Landroid/graphics/drawable/Drawable;

    .line 212
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mContext:Landroid/content/Context;

    const v0, 0x7f08048e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 203
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mContext:Landroid/content/Context;

    const v0, 0x7f080493

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableHourHand:Landroid/graphics/drawable/Drawable;

    .line 204
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mContext:Landroid/content/Context;

    const v0, 0x7f0804b1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 205
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mContext:Landroid/content/Context;

    const v0, 0x7f0804b7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableCenter:Landroid/graphics/drawable/Drawable;

    .line 206
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mContext:Landroid/content/Context;

    const v0, 0x7f08048d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 197
    :cond_3
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mContext:Landroid/content/Context;

    const v0, 0x7f080492

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableHourHand:Landroid/graphics/drawable/Drawable;

    .line 198
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mContext:Landroid/content/Context;

    const v0, 0x7f0804b0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 199
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mContext:Landroid/content/Context;

    const v0, 0x7f0804b6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableCenter:Landroid/graphics/drawable/Drawable;

    .line 200
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mContext:Landroid/content/Context;

    const v0, 0x7f08048c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 191
    :cond_4
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mContext:Landroid/content/Context;

    const v0, 0x7f080491

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableHourHand:Landroid/graphics/drawable/Drawable;

    .line 192
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mContext:Landroid/content/Context;

    const v0, 0x7f0804af

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 193
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mContext:Landroid/content/Context;

    const v0, 0x7f0804b5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableCenter:Landroid/graphics/drawable/Drawable;

    .line 194
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mContext:Landroid/content/Context;

    const v0, 0x7f08048b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 185
    :cond_5
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mContext:Landroid/content/Context;

    const v0, 0x7f080490

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableHourHand:Landroid/graphics/drawable/Drawable;

    .line 186
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mContext:Landroid/content/Context;

    const v0, 0x7f0804ae

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 187
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mContext:Landroid/content/Context;

    const v0, 0x7f0804b4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableCenter:Landroid/graphics/drawable/Drawable;

    .line 188
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mContext:Landroid/content/Context;

    const v0, 0x7f08048a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private initGlobalDial()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0804c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableHourHand:Landroid/graphics/drawable/Drawable;

    .line 176
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0804c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 177
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0804c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawableCenter:Landroid/graphics/drawable/Drawable;

    .line 178
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0804c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private measureSpecSize(I)I
    .locals 1

    .line 79
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 80
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mWidth:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mWidth:I

    .line 81
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mWidth:I

    return p0
.end method


# virtual methods
.method public initClock(IZ)V
    .locals 0

    .line 164
    iput-boolean p2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mIsDefaultTheme:Z

    .line 165
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mClockPosition:I

    .line 166
    iget-boolean p2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mIsDefaultTheme:Z

    if-eqz p2, :cond_0

    .line 167
    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->initDefaultDial(I)V

    goto :goto_0

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->initGlobalDial()V

    .line 171
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->invalidate()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 64
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 69
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 91
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 92
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 93
    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->drawPointer(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 74
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 75
    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->measureSpecSize(I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->measureSpecSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public updateTime()V
    .locals 0

    .line 160
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->invalidate()V

    return-void
.end method
