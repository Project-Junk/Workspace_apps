.class public final Lcom/coloros/settings/utils/o;
.super Ljava/lang/Object;
.source "DisplaySizeUtils.java"


# direct methods
.method private static a()I
    .locals 4

    .line 30
    invoke-static {}, Lcom/coloros/settings/utils/bh;->o()Z

    move-result v0

    const-string v1, "DisplaySizeUtils"

    if-eqz v0, :cond_0

    const-string v0, "persist.sys.display.density"

    .line 31
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getDefaultDisplayDensity, density properties = "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 38
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v2, 0x0

    .line 39
    invoke-interface {v0, v2}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "Error occur while getInitialDisplayDensity"

    .line 41
    invoke-static {v1, v2, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x1e0

    return v0
.end method

.method public static a(Landroid/content/Context;F)I
    .locals 0

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Context;
    .locals 3

    if-nez p0, :cond_0

    const-string v0, "DisplaySizeUtils"

    const-string v1, "setDefaultDisplay context = null"

    .line 50
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 54
    :cond_0
    invoke-static {}, Lcom/coloros/settings/utils/o;->a()I

    move-result v0

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x1e0

    .line 56
    :goto_0
    iput v0, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 57
    invoke-virtual {p0, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "DisplaySizeUtils"

    const-string v1, "setDefaultFontScale context = null"

    .line 65
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 68
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 69
    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 70
    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Landroid/content/Context;
    .locals 3

    if-nez p0, :cond_0

    const-string v0, "DisplaySizeUtils"

    const-string v1, "setDefaultFontScaleAndDisplay context = null"

    .line 78
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 81
    :cond_0
    invoke-static {}, Lcom/coloros/settings/utils/o;->a()I

    move-result v0

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x1e0

    .line 83
    :goto_0
    iput v0, v1, Landroid/content/res/Configuration;->densityDpi:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 84
    iput v0, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 85
    invoke-virtual {p0, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method
