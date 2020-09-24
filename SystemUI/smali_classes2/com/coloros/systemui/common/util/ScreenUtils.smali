.class public Lcom/coloros/systemui/common/util/ScreenUtils;
.super Ljava/lang/Object;
.source "ScreenUtils.java"


# static fields
.field private static final DEFAULT_DENSITY_DPI:I = 0x1e0

.field private static final DEFAULT_DENSITY_METRICS_DIVIDER:I = 0xa0

.field private static final INVALID_DENSITY_DPI:I = -0x1

.field private static final OFFSET:F = 0.5f

.field private static final PERSIST_SYS_DISPLAY_DENSITY:Ljava/lang/String; = "persist.sys.display.density"

.field public static final SCREEN_CORNER_RADIUS_MAX_PX:I = 0x5e

.field private static final TAG:Ljava/lang/String; = "ScreenUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 58
    invoke-static {p0, p1}, Lcom/coloros/systemui/common/util/ScreenUtils;->dip2pxFloat(Landroid/content/Context;F)F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static dip2pxFloat(Landroid/content/Context;F)F
    .locals 0

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    return p1
.end method

.method public static getDisplayDensity(I)F
    .locals 1

    int-to-float p0, p0

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public static getFixedDisplayDensity()F
    .locals 1

    .line 135
    invoke-static {}, Lcom/coloros/systemui/common/util/ScreenUtils;->getFixedDisplayDensityDpi()I

    move-result v0

    .line 136
    invoke-static {v0}, Lcom/coloros/systemui/common/util/ScreenUtils;->getDisplayDensity(I)F

    move-result v0

    return v0
.end method

.method public static getFixedDisplayDensityDpi()I
    .locals 3

    .line 112
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 113
    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultDisplayDensityDpi() e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Common"

    const-string v2, "ScreenUtils"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1e0

    :goto_0
    return v0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getVariableDisplayDensity()F
    .locals 2

    .line 140
    invoke-static {}, Lcom/coloros/systemui/common/util/ScreenUtils;->getVariableDisplayDensityDpi()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 142
    invoke-static {}, Lcom/coloros/systemui/common/util/ScreenUtils;->getFixedDisplayDensityDpi()I

    move-result v0

    .line 144
    :cond_0
    invoke-static {v0}, Lcom/coloros/systemui/common/util/ScreenUtils;->getDisplayDensity(I)F

    move-result v0

    return v0
.end method

.method public static getVariableDisplayDensityDpi()I
    .locals 2

    const-string v0, "persist.sys.display.density"

    const/4 v1, -0x1

    .line 127
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static initCommonBaseWindow(Landroid/app/Activity;)V
    .locals 2

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 v0, -0x80000000

    .line 84
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 85
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 88
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 0

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static setDefaultDisplay(Landroid/content/Context;)V
    .locals 3

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 96
    invoke-static {}, Lcom/coloros/systemui/common/util/ScreenUtils;->getFixedDisplayDensityDpi()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 98
    iput v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method
