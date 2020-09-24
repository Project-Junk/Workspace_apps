.class public Lcom/coloros/systemui/colorextraction/SysuiGradientColors;
.super Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
.source "SysuiGradientColors.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;-><init>()V

    return-void
.end method

.method private isLockScreenShowLocalWallpaper()Z
    .locals 1

    .line 39
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p0

    const-class v0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;

    if-eqz p0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->isLockScreenShowLocalWallpaper()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getMainColor()I
    .locals 2

    .line 31
    invoke-super {p0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getMainColor()I

    move-result v0

    .line 32
    invoke-super {p0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/coloros/systemui/colorextraction/SysuiGradientColors;->isLockScreenShowLocalWallpaper()Z

    move-result p0

    if-nez p0, :cond_0

    const/high16 p0, -0x1000000

    return p0

    :cond_0
    return v0
.end method

.method public supportsDarkText()Z
    .locals 1

    .line 26
    invoke-super {p0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/systemui/colorextraction/SysuiGradientColors;->isLockScreenShowLocalWallpaper()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
