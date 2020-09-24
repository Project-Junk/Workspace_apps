.class public Lcom/coloros/common/feature/ColorOSFeatureOption;
.super Ljava/lang/Object;
.source "ColorOSFeatureOption.java"


# static fields
.field private static COLOROS_SYSTEMUI_DUMP:Z = true

.field private static COLOROS_SYSTEMUI_EDGE_PANEL_UI:Z = true

.field private static final COLOROS_SYSTEMUI_EDGE_PANEL_UI_STRING:Ljava/lang/String; = "coloros.systemui.edgepanel.ui"

.field private static COLOROS_SYSTEMUI_QUICKSETTINGS_UI:Z = true

.field private static final COLOROS_SYSTEMUI_QUICKSETTINGS_UI_STRING:Ljava/lang/String; = "coloros.systemui.quicksettings.ui"

.field private static final COLOROS_SYSTEMUI_STYLE_STRING:Ljava/lang/String; = "coloros_systemui_style"

.field private static final DEBUG:Z = true

.field private static OPPO_SYSTEMUI_MEDIAPROJECTION_UI:Z = true

.field private static final OPPO_SYSTEMUI_MEDIAPROJECTION_UI_STRING:Ljava/lang/String; = "oppo.systemui.mediaprojection.ui"

.field private static OPPO_SYSTEMUI_NAVIGATION_BAR_UI:Z = true

.field private static final OPPO_SYSTEMUI_NAVIGATION_BAR_UI_STRING:Ljava/lang/String; = "oppo.systemui.navigationbar.ui"

.field private static final OPPO_SYSTEMUI_NETWORCK_UI_STRING:Ljava/lang/String; = "oppo.systemui.network.ui"

.field private static OPPO_SYSTEMUI_NETWORK_UI:Z = true

.field private static OPPO_SYSTEMUI_STATUS_BAR_UI:Z = true

.field private static final OPPO_SYSTEMUI_STATUS_BAR_UI_STRING:Ljava/lang/String; = "oppo.systemui.statusbar.ui"

.field private static OPPO_SYSTEMUI_VOLUME_UI:Z = true

.field private static final TAG:Ljava/lang/String; = "ColorOSFeatureOption"

.field private static sLoadColorOSFeature:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private closeAllColorOSFeature()V
    .locals 0

    const/4 p0, 0x0

    .line 66
    sput-boolean p0, Lcom/coloros/common/feature/ColorOSFeatureOption;->OPPO_SYSTEMUI_MEDIAPROJECTION_UI:Z

    .line 67
    sput-boolean p0, Lcom/coloros/common/feature/ColorOSFeatureOption;->OPPO_SYSTEMUI_NETWORK_UI:Z

    .line 68
    sput-boolean p0, Lcom/coloros/common/feature/ColorOSFeatureOption;->OPPO_SYSTEMUI_STATUS_BAR_UI:Z

    .line 69
    sput-boolean p0, Lcom/coloros/common/feature/ColorOSFeatureOption;->OPPO_SYSTEMUI_NAVIGATION_BAR_UI:Z

    .line 70
    sput-boolean p0, Lcom/coloros/common/feature/ColorOSFeatureOption;->OPPO_SYSTEMUI_VOLUME_UI:Z

    .line 71
    sput-boolean p0, Lcom/coloros/common/feature/ColorOSFeatureOption;->COLOROS_SYSTEMUI_EDGE_PANEL_UI:Z

    return-void
.end method

.method public static isColorOSEdgePanel()Z
    .locals 1

    .line 102
    sget-boolean v0, Lcom/coloros/common/feature/ColorOSFeatureOption;->COLOROS_SYSTEMUI_EDGE_PANEL_UI:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/coloros/common/feature/ColorOSFeatureOption;->sLoadColorOSFeature:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isColorOSQuickSettings()Z
    .locals 1

    .line 98
    sget-boolean v0, Lcom/coloros/common/feature/ColorOSFeatureOption;->COLOROS_SYSTEMUI_QUICKSETTINGS_UI:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/coloros/common/feature/ColorOSFeatureOption;->sLoadColorOSFeature:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isColorOSStyle()Z
    .locals 1

    .line 82
    sget-boolean v0, Lcom/coloros/common/feature/ColorOSFeatureOption;->sLoadColorOSFeature:Z

    return v0
.end method

.method public static isColorosSystemuiDump()Z
    .locals 1

    .line 106
    sget-boolean v0, Lcom/coloros/common/feature/ColorOSFeatureOption;->COLOROS_SYSTEMUI_DUMP:Z

    return v0
.end method

.method public static isOppoSystemuiMediaprojectionUi()Z
    .locals 1

    .line 78
    sget-boolean v0, Lcom/coloros/common/feature/ColorOSFeatureOption;->OPPO_SYSTEMUI_MEDIAPROJECTION_UI:Z

    return v0
.end method

.method public static isOppoSystemuiNavigationBarUi()Z
    .locals 1

    .line 94
    sget-boolean v0, Lcom/coloros/common/feature/ColorOSFeatureOption;->OPPO_SYSTEMUI_NAVIGATION_BAR_UI:Z

    return v0
.end method

.method public static isOppoSystemuiNetworkUi()Z
    .locals 1

    .line 86
    sget-boolean v0, Lcom/coloros/common/feature/ColorOSFeatureOption;->OPPO_SYSTEMUI_NETWORK_UI:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/coloros/common/feature/ColorOSFeatureOption;->sLoadColorOSFeature:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isOppoSystemuiStatusBarUi()Z
    .locals 1

    .line 90
    sget-boolean v0, Lcom/coloros/common/feature/ColorOSFeatureOption;->OPPO_SYSTEMUI_STATUS_BAR_UI:Z

    return v0
.end method

.method public static isOppoSystemuiVolumeUi()Z
    .locals 1

    .line 110
    sget-boolean v0, Lcom/coloros/common/feature/ColorOSFeatureOption;->OPPO_SYSTEMUI_VOLUME_UI:Z

    return v0
.end method

.method public static loadFeatureOption(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "coloros_systemui_style"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    const/4 p0, 0x1

    sput-boolean p0, Lcom/coloros/common/feature/ColorOSFeatureOption;->sLoadColorOSFeature:Z

    return-void
.end method

.method private openAllColorOSFeature()V
    .locals 0

    const/4 p0, 0x1

    .line 57
    sput-boolean p0, Lcom/coloros/common/feature/ColorOSFeatureOption;->OPPO_SYSTEMUI_MEDIAPROJECTION_UI:Z

    .line 58
    sput-boolean p0, Lcom/coloros/common/feature/ColorOSFeatureOption;->OPPO_SYSTEMUI_NETWORK_UI:Z

    .line 59
    sput-boolean p0, Lcom/coloros/common/feature/ColorOSFeatureOption;->OPPO_SYSTEMUI_STATUS_BAR_UI:Z

    .line 60
    sput-boolean p0, Lcom/coloros/common/feature/ColorOSFeatureOption;->OPPO_SYSTEMUI_NAVIGATION_BAR_UI:Z

    .line 61
    sput-boolean p0, Lcom/coloros/common/feature/ColorOSFeatureOption;->OPPO_SYSTEMUI_VOLUME_UI:Z

    .line 62
    sput-boolean p0, Lcom/coloros/common/feature/ColorOSFeatureOption;->COLOROS_SYSTEMUI_EDGE_PANEL_UI:Z

    return-void
.end method
