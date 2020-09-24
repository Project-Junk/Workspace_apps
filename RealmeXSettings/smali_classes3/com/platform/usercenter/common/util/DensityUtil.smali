.class public Lcom/platform/usercenter/common/util/DensityUtil;
.super Ljava/lang/Object;
.source "DensityUtil.java"


# static fields
.field public static RATIO:F = 0.95f


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 46
    invoke-static {p0}, Lcom/platform/usercenter/common/util/DensityUtil;->getScreenDendity(Landroid/content/Context;)F

    move-result p0

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static dip2pxRatio(Landroid/content/Context;F)I
    .locals 1

    .line 28
    invoke-static {p0}, Lcom/platform/usercenter/common/util/DensityUtil;->getScreenDendity(Landroid/content/Context;)F

    move-result p0

    sget v0, Lcom/platform/usercenter/common/util/DensityUtil;->RATIO:F

    mul-float/2addr p0, v0

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static dpToPx(Landroid/content/Context;I)I
    .locals 0

    int-to-float p1, p1

    .line 100
    invoke-static {p0}, Lcom/platform/usercenter/common/util/DensityUtil;->getPixelScaleFactor(Landroid/content/Context;)F

    move-result p0

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static getPixelScaleFactor(Landroid/content/Context;)F
    .locals 1

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 114
    iget p0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public static getScreenDendity(Landroid/content/Context;)F
    .locals 0

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    return p0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 0

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public static getScreenHeightDp(Landroid/content/Context;)I
    .locals 1

    .line 68
    invoke-static {p0}, Lcom/platform/usercenter/common/util/DensityUtil;->getScreenDendity(Landroid/content/Context;)F

    move-result v0

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p0, p0

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 0

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public static getScreenWidthDp(Landroid/content/Context;)I
    .locals 1

    .line 57
    invoke-static {p0}, Lcom/platform/usercenter/common/util/DensityUtil;->getScreenDendity(Landroid/content/Context;)F

    move-result v0

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p0, p0

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 3

    :try_start_0
    const-string v0, "com.android.internal.R$dimen"

    .line 81
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "status_bar_height"

    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 86
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 0

    .line 37
    invoke-static {p0}, Lcom/platform/usercenter/common/util/DensityUtil;->getScreenDendity(Landroid/content/Context;)F

    move-result p0

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static px2dipRatio(Landroid/content/Context;F)I
    .locals 1

    .line 21
    invoke-static {p0}, Lcom/platform/usercenter/common/util/DensityUtil;->getScreenDendity(Landroid/content/Context;)F

    move-result p0

    sget v0, Lcom/platform/usercenter/common/util/DensityUtil;->RATIO:F

    mul-float/2addr p0, v0

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static pxToDp(Landroid/content/Context;I)I
    .locals 0

    int-to-float p1, p1

    .line 107
    invoke-static {p0}, Lcom/platform/usercenter/common/util/DensityUtil;->getPixelScaleFactor(Landroid/content/Context;)F

    move-result p0

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method
