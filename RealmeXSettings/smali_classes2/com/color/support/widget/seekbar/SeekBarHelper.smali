.class public Lcom/color/support/widget/seekbar/SeekBarHelper;
.super Ljava/lang/Object;
.source "SeekBarHelper.java"


# static fields
.field static final BACKGROUND_RADIUS_SCALE:F = 2.0f

.field static final DEFAULT_BACKGROUND_COLOR:I

.field static final DEFAULT_BACKGROUND_RADIUS:F = 1.0f

.field static final DEFAULT_PROGRESS_COLOR:I

.field static final DEFAULT_PROGRESS_RADIUS:F = 1.0f

.field static final DEFAULT_PROGRESS_SCALE_RADIUS:F = 2.0f

.field static final DEFAULT_SECONDARYPROGRESS_COLOR:I

.field static final DEFAULT_THUMB_COLOR:I = -0x1

.field static final DEFAULT_THUMB_IN_RADIUS:F = 4.0f

.field static final DEFAULT_THUMB_OUT_RADIUS:F = 6.0f

.field static final DEFAULT_THUMB_SCALE_IN_RADIUS:F = 3.67f

.field static final DEFAULT_THUMB_SCALE_OUT_RADIUS:F = 7.0f

.field static final DEFAULT_THUMB_SHADOW_RADIUS:F = 14.0f

.field static final FAST_MOVE_SCALE_RANGE:F = 2.0f

.field static final FAST_MOVE_VELOCITY:I = 0x5f

.field static final PROGRESS_RADIUS_SCALE:F = 2.667f

.field static final RELEASE_ANIM_DURATION:I = 0x78

.field static final THUMB_IN_RADIUS_SCALE:F = 1.417f

.field static final THUMB_OUT_RADIUS_SCALE:F = 1.722f

.field static final TOUCH_ANIMATION_ENLARGE_DURATION:I = 0x73

.field static final TOUCH_ANIMATION_SHRINK_DURATION:I = 0x57

.field static final VELOCITY_COMPUTE_TIME:I = 0x64


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xc

    .line 37
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/color/support/widget/seekbar/SeekBarHelper;->DEFAULT_BACKGROUND_COLOR:I

    const-string v0, "#FF2AD181"

    .line 38
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/color/support/widget/seekbar/SeekBarHelper;->DEFAULT_PROGRESS_COLOR:I

    const/16 v0, 0xff

    const/16 v1, 0x4c

    .line 39
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/color/support/widget/seekbar/SeekBarHelper;->DEFAULT_SECONDARYPROGRESS_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I
    .locals 0

    if-nez p1, :cond_0

    return p2

    .line 63
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    .line 64
    invoke-virtual {p1, p0, p2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    return p0
.end method

.method static getDefaultColor(Landroid/view/View;Landroid/content/res/ColorStateList;)I
    .locals 1

    .line 68
    sget v0, Lcom/color/support/widget/seekbar/SeekBarHelper;->DEFAULT_BACKGROUND_COLOR:I

    invoke-static {p0, p1, v0}, Lcom/color/support/widget/seekbar/SeekBarHelper;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p0

    return p0
.end method

.method static touchInSeekBar(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 3

    .line 72
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 73
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
