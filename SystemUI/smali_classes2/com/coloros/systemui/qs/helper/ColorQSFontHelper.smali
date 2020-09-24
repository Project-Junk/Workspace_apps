.class public Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;
.super Ljava/lang/Object;
.source "ColorQSFontHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/qs/helper/ColorQSFontHelper$TextType;
    }
.end annotation


# static fields
.field private static final STANDARD_DEFAULT_FONT_SIZE:F = 12.0f

.field private static final TAG:Ljava/lang/String; = "ColorQSFontHelper"

.field private static volatile mInstance:Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFontScale:F

.field private mFontScaleSizes:[F


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;->mContext:Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;->getFontScaleSize()[F

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;->mFontScaleSizes:[F

    .line 45
    iget-object p1, p0, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput p1, p0, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;->mFontScale:F

    return-void
.end method

.method private fontScaleToArrayIndex(F[F)I
    .locals 4

    const/4 p0, 0x0

    .line 93
    aget v0, p2, p0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x1

    .line 95
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 96
    aget v2, p2, v1

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v3, v2, v0

    if-gtz v3, :cond_0

    move p0, v1

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method

.method private getDesiredFontSize(I)[I
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 86
    iget-object p0, p0, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f03006a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    goto :goto_0

    .line 82
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f030068

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    goto :goto_0

    .line 79
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f030069

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    goto :goto_0

    .line 76
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f030067

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    goto :goto_0

    .line 71
    :cond_3
    iget-object p0, p0, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f03006b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    goto :goto_0

    .line 68
    :cond_4
    iget-object p0, p0, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f03006c

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getFontScaleSize()[F
    .locals 5

    .line 106
    iget-object p0, p0, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f03004f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 108
    array-length v0, p0

    if-lez v0, :cond_0

    .line 109
    array-length v0, p0

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 110
    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_1

    .line 112
    :try_start_0
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v2, "Statusbar"

    const-string v3, "ColorQSFontHelper"

    const-string v4, "parse font size float exception"

    .line 114
    invoke-static {v2, v3, v4}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;
    .locals 2

    .line 32
    sget-object v0, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;->mInstance:Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;

    if-nez v0, :cond_1

    .line 33
    const-class v0, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;->mInstance:Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;->mInstance:Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;

    .line 37
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 39
    :cond_1
    :goto_0
    sget-object p0, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;->mInstance:Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;

    return-object p0
.end method


# virtual methods
.method public getAdapterTextSizeSp(I)F
    .locals 3

    .line 49
    iget v0, p0, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;->mFontScale:F

    iget-object v1, p0, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;->mFontScaleSizes:[F

    invoke-direct {p0, v0, v1}, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;->fontScaleToArrayIndex(F[F)I

    move-result v0

    .line 51
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;->getDesiredFontSize(I)[I

    move-result-object v1

    if-eqz v1, :cond_0

    .line 52
    array-length v2, v1

    if-le v2, v0, :cond_0

    .line 53
    aget v0, v1, v0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41400000    # 12.0f

    .line 55
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " fontScale: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;->mFontScale:F

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " fontSize: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " displayFontSize: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;->mFontScale:F

    mul-float/2addr p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Statusbar"

    const-string v1, "ColorQSFontHelper"

    invoke-static {p1, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public setFontScale(F)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;->mFontScale:F

    return-void
.end method
