.class public Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;
.super Ljava/lang/Object;
.source "ColorSideGestureConfiguration.java"


# static fields
.field private static final ANIM_BACK_DISTANCE:F = 32.3f

.field private static final ANIM_CANCEL_DISTANCE:F = 8.8f

.field private static final ANIM_RADIUS:F = 104.5f

.field private static final ANIM_SWITCH_DISTANCE:F = 38.6f

.field private static final BEZIER_CONTROL_OFFSET_1:F = 56.0f

.field private static final BEZIER_CONTROL_OFFSET_BACK_2:F = 33.3f

.field private static final BRZIER_CONTROL_OFFSET_SWITCH_2:F = 39.0f

.field public static final BRZIER_VIEW_ALPHA:I = 0xb4

.field public static final BRZIER_VIEW_ALPHA_REALME:I = 0x19

.field public static final BRZIER_VIEW_EXIT_ANIM_DURATION:J = 0xc8L

.field public static final BRZIER_VIEW_PAINT_WIDTH:I = 0xc

.field public static final BRZIER_VIEW_START_ANIM_DURATION:J = 0xc8L

.field public static final DETECT_SWITCH_APP_DURATION:J = 0x1f4L

.field private static final EDGE_PANEL_HEIGHT:I = 0x64

.field private static final EDGE_PANEL_WIDTH:I = 0x28

.field public static final GESTURE_BACK_DISTANCE:F = 100.0f

.field public static final GESTURE_SWITCH_APP_DISTANCE:F = 172.0f

.field public static final GETURE_CANCEL_DISTANCE:F = 45.0f

.field public static final ICON_EXIT_ANIM_DELAY:J = 0x0L

.field public static final ICON_EXIT_ANIM_DURATION:J = 0x14L

.field public static final ICON_SIZE:F = 18.0f

.field public static final ICON_START_ANIM_DELAY:J = 0x0L

.field public static final ICON_START_ANIM_DURATION:J = 0x64L

.field public static final LANDSCAPE_DETECT_RANGE:I = 0xa

.field public static final LANDSCAPE_NON_DETECT_SCALE:F = 0.3f

.field public static final LEFT_SIDE:I = 0x0

.field public static final LEFT_VIEW:I = 0x0

.field public static final MSG_CONFIG_CHANGED:I = 0x1

.field public static final MSG_GESTURE_FAILED:I = 0x0

.field public static final NON_SIDE:I = -0x1

.field public static final PORTRAIT_NON_DETECT_SCALE:F = 0.4f

.field public static final RECYCLE_ANIM_DURATION:J = 0x1f4L

.field public static final RIGHT_SIDE:I = 0x1

.field public static final RIGHT_VIEW:I = 0x1

.field public static final SIDE_GESTURE_BACK:I = 0x2

.field public static final SIDE_GESTURE_CANCEL:I = 0x1

.field public static final SIDE_GESTURE_OUT_OF_RANGE:I = 0x4

.field public static final SIDE_GESTURE_PRE_DETECT:I = 0x0

.field public static final SIDE_GESTURE_STOPPED:I = -0x1

.field public static final SIDE_GESTURE_SWITCH_APP:I = 0x3

.field public static final TAG:Ljava/lang/String; = "ColorSideGesture"

.field public static final TRANSLATE_SCALE:F = 0.32299998f

.field public static mDisplay:Landroid/view/Display; = null

.field public static sDetectToView:Z = false

.field private static sScreenHeight:I

.field private static sScreenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/Display;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    .line 85
    invoke-virtual {p1, p0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 86
    iget v0, p0, Landroid/graphics/Point;->x:I

    iget v1, p0, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->sScreenWidth:I

    .line 87
    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sput p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->sScreenHeight:I

    .line 90
    sput-object p1, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->mDisplay:Landroid/view/Display;

    return-void
.end method

.method public static boundToRange(III)I
    .locals 0

    .line 164
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static convertDpToPixel(F)I
    .locals 1

    .line 142
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static getAnimBackDistance()I
    .locals 1

    const v0, 0x42013333    # 32.3f

    .line 131
    invoke-static {v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->convertDpToPixel(F)I

    move-result v0

    return v0
.end method

.method public static getAnimCancelDistance()I
    .locals 1

    const v0, 0x410ccccd    # 8.8f

    .line 139
    invoke-static {v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->convertDpToPixel(F)I

    move-result v0

    return v0
.end method

.method public static getAnimRadius()I
    .locals 1

    const/high16 v0, 0x42d10000    # 104.5f

    .line 115
    invoke-static {v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->convertDpToPixel(F)I

    move-result v0

    return v0
.end method

.method public static getAnimSwitchDistance()I
    .locals 1

    const v0, 0x421a6666    # 38.6f

    .line 135
    invoke-static {v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->convertDpToPixel(F)I

    move-result v0

    return v0
.end method

.method public static getBackDistance()I
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    .line 99
    invoke-static {v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->convertDpToPixel(F)I

    move-result v0

    return v0
.end method

.method public static getBezierControlOffset1()I
    .locals 1

    const/high16 v0, 0x42600000    # 56.0f

    .line 119
    invoke-static {v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->convertDpToPixel(F)I

    move-result v0

    return v0
.end method

.method public static getBezierControlOffsetBack2()I
    .locals 1

    const v0, 0x42053333    # 33.3f

    .line 123
    invoke-static {v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->convertDpToPixel(F)I

    move-result v0

    return v0
.end method

.method public static getBezierControlOffsetSwitch2()I
    .locals 1

    const/high16 v0, 0x421c0000    # 39.0f

    .line 127
    invoke-static {v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->convertDpToPixel(F)I

    move-result v0

    return v0
.end method

.method public static getCancelDistance()I
    .locals 1

    const/high16 v0, 0x42340000    # 45.0f

    .line 95
    invoke-static {v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->convertDpToPixel(F)I

    move-result v0

    return v0
.end method

.method public static getEdgePanelHeight()I
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    .line 180
    invoke-static {v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->convertDpToPixel(F)I

    move-result v0

    return v0
.end method

.method public static getEdgePanelWidth()I
    .locals 1

    const/high16 v0, 0x42200000    # 40.0f

    .line 184
    invoke-static {v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->convertDpToPixel(F)I

    move-result v0

    return v0
.end method

.method public static getIconSize()I
    .locals 1

    const/high16 v0, 0x41900000    # 18.0f

    .line 168
    invoke-static {v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->convertDpToPixel(F)I

    move-result v0

    return v0
.end method

.method public static getMaxIconOffset()I
    .locals 2

    .line 176
    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getAnimBackDistance()I

    move-result v0

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getAnimCancelDistance()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getIconSize()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static getMinIconOffset()I
    .locals 1

    .line 172
    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getIconSize()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public static getScreenHeight(I)I
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    goto :goto_0

    .line 151
    :cond_1
    sget p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->sScreenHeight:I

    return p0

    .line 149
    :cond_2
    :goto_0
    sget p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->sScreenWidth:I

    return p0

    .line 147
    :cond_3
    :goto_1
    sget p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->sScreenHeight:I

    return p0
.end method

.method public static getScreenWidth(I)I
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    goto :goto_0

    .line 160
    :cond_1
    sget p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->sScreenWidth:I

    return p0

    .line 158
    :cond_2
    :goto_0
    sget p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->sScreenHeight:I

    return p0

    .line 156
    :cond_3
    :goto_1
    sget p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->sScreenWidth:I

    return p0
.end method

.method public static getSide(II)I
    .locals 0

    .line 188
    invoke-static {p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getScreenWidth(I)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    if-ge p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static getSwitchAppDistance()I
    .locals 1

    const/high16 v0, 0x432c0000    # 172.0f

    .line 103
    invoke-static {v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->convertDpToPixel(F)I

    move-result v0

    return v0
.end method

.method public static getWindowHeight(I)I
    .locals 1

    .line 107
    invoke-static {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getScreenHeight(I)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3f19999a    # 0.6f

    mul-float/2addr p0, v0

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getAnimRadius()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static getWindowWidth()I
    .locals 1

    const v0, 0x421a6666    # 38.6f

    .line 111
    invoke-static {v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->convertDpToPixel(F)I

    move-result v0

    return v0
.end method

.method public static onConfigurationChanged()V
    .locals 3

    .line 194
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 195
    sget-object v1, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 196
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sput v1, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->sScreenWidth:I

    .line 197
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->sScreenHeight:I

    return-void
.end method
