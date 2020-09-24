.class public Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;
.super Landroid/view/View;
.source "PreviewDialClockView.java"


# instance fields
.field private mClockType:I

.field private mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mDrawableCenter:Landroid/graphics/drawable/Drawable;

.field private mDrawableHourHand:Landroid/graphics/drawable/Drawable;

.field private mDrawableMinuteHand:Landroid/graphics/drawable/Drawable;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTime:Ljava/util/Calendar;

.field private mTimeZone:Ljava/util/TimeZone;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance p2, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView$1;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView$1;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;)V

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    new-instance p2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 p3, 0x0

    const/4 v0, 0x3

    invoke-direct {p2, p3, v0}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mWidth:I

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;)Ljava/util/TimeZone;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mTimeZone:Ljava/util/TimeZone;

    return-object p0
.end method

.method static synthetic access$102(Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mTime:Ljava/util/Calendar;

    return-object p1
.end method

.method private drawCenter(Landroid/graphics/Canvas;)V
    .locals 7

    .line 153
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 154
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableCenter:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const v1, 0x7f0804b4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableCenter:Landroid/graphics/drawable/Drawable;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableCenter:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 160
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 161
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableCenter:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mWidth:I

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

    .line 163
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 165
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawHourHand(Landroid/graphics/Canvas;F)V
    .locals 6

    .line 186
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 187
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mWidth:I

    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, p2, v1, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 188
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableHourHand:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_0

    .line 189
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const v0, 0x7f080490

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableHourHand:Landroid/graphics/drawable/Drawable;

    .line 192
    :cond_0
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableHourHand:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1

    .line 193
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    .line 194
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableHourHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 195
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableHourHand:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mWidth:I

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

    .line 197
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableHourHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 199
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawMinuteHand(Landroid/graphics/Canvas;F)V
    .locals 6

    .line 169
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 170
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mWidth:I

    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, p2, v1, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 171
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableMinuteHand:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_0

    .line 172
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const v0, 0x7f0804ae

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 175
    :cond_0
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableMinuteHand:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1

    .line 176
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    .line 177
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableMinuteHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 178
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableMinuteHand:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mWidth:I

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

    .line 180
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableMinuteHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 182
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawPointer(Landroid/graphics/Canvas;)V
    .locals 4

    .line 131
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xa

    .line 133
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc

    .line 134
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

    .line 138
    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mClockType:I

    if-eqz v2, :cond_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 145
    invoke-direct {p0, p1, v1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->drawHourHand(Landroid/graphics/Canvas;F)V

    .line 146
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->drawMinuteHand(Landroid/graphics/Canvas;F)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->drawMinuteHand(Landroid/graphics/Canvas;F)V

    .line 142
    invoke-direct {p0, p1, v1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->drawHourHand(Landroid/graphics/Canvas;F)V

    .line 149
    :goto_0
    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->drawCenter(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private measureSpecSize(I)I
    .locals 1

    .line 113
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 114
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mWidth:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mWidth:I

    .line 115
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mWidth:I

    return p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 290
    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableHourHand:Landroid/graphics/drawable/Drawable;

    .line 291
    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 292
    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableCenter:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 76
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mTimeZone:Ljava/util/TimeZone;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mTime:Ljava/util/Calendar;

    .line 87
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->onTimeChanged()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 92
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 93
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 125
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 126
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 127
    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->drawPointer(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 108
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 109
    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->measureSpecSize(I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->measureSpecSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .line 97
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->invalidate()V

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 1

    .line 101
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mTimeZone:Ljava/util/TimeZone;

    .line 102
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mTime:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 103
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->onTimeChanged()V

    return-void
.end method

.method public updateClock(IZ)V
    .locals 1

    .line 204
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mClockType:I

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 273
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f0804a1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableHourHand:Landroid/graphics/drawable/Drawable;

    .line 274
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f0804a7

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 275
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f0804ad

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableCenter:Landroid/graphics/drawable/Drawable;

    .line 276
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f08049b

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 278
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f080495

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableHourHand:Landroid/graphics/drawable/Drawable;

    .line 279
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f0804b3

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 280
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f0804b9

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableCenter:Landroid/graphics/drawable/Drawable;

    .line 281
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f08048f

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 260
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f0804a0

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableHourHand:Landroid/graphics/drawable/Drawable;

    .line 261
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f0804a6

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 262
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f0804ac

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableCenter:Landroid/graphics/drawable/Drawable;

    .line 263
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f08049a

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 265
    :cond_3
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f080494

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableHourHand:Landroid/graphics/drawable/Drawable;

    .line 266
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f0804b2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 267
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f0804b8

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableCenter:Landroid/graphics/drawable/Drawable;

    .line 268
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f08048e

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 247
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f08049f

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableHourHand:Landroid/graphics/drawable/Drawable;

    .line 248
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f0804a5

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 249
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f0804ab

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableCenter:Landroid/graphics/drawable/Drawable;

    .line 250
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f080499

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 252
    :cond_5
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f080493

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableHourHand:Landroid/graphics/drawable/Drawable;

    .line 253
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f0804b1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 254
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f0804b7

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableCenter:Landroid/graphics/drawable/Drawable;

    .line 255
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f08048d

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_6
    if-eqz p2, :cond_7

    .line 234
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f08049e

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableHourHand:Landroid/graphics/drawable/Drawable;

    .line 235
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f0804a4

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 236
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f0804aa

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableCenter:Landroid/graphics/drawable/Drawable;

    .line 237
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f080498

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 239
    :cond_7
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f080492

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableHourHand:Landroid/graphics/drawable/Drawable;

    .line 240
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f0804b0

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 241
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f0804b6

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableCenter:Landroid/graphics/drawable/Drawable;

    .line 242
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f08048c

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_8
    if-eqz p2, :cond_9

    .line 221
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f08049d

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableHourHand:Landroid/graphics/drawable/Drawable;

    .line 222
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f0804a3

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 223
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f0804a9

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableCenter:Landroid/graphics/drawable/Drawable;

    .line 224
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f080497

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 226
    :cond_9
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f080491

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableHourHand:Landroid/graphics/drawable/Drawable;

    .line 227
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f0804af

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 228
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f0804b5

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableCenter:Landroid/graphics/drawable/Drawable;

    .line 229
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f08048b

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_a
    if-eqz p2, :cond_b

    .line 208
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f08049c

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableHourHand:Landroid/graphics/drawable/Drawable;

    .line 209
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f0804a2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 210
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f0804a8

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableCenter:Landroid/graphics/drawable/Drawable;

    .line 211
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f080496

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 213
    :cond_b
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f080490

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableHourHand:Landroid/graphics/drawable/Drawable;

    .line 214
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f0804ae

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 215
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f0804b4

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mDrawableCenter:Landroid/graphics/drawable/Drawable;

    .line 216
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->mContext:Landroid/content/Context;

    const p2, 0x7f08048a

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
