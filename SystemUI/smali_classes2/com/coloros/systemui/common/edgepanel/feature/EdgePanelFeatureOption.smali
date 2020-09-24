.class public Lcom/coloros/systemui/common/edgepanel/feature/EdgePanelFeatureOption;
.super Ljava/lang/Object;
.source "EdgePanelFeatureOption.java"


# static fields
.field private static final IS_EDGE_PANEL_DEFAULT_OFF_STRING:Ljava/lang/String; = "oppo.systemui.edgepanel.default.off"

.field private static final IS_EDGE_PANEL_DISABLE:Ljava/lang/String; = "oppo.systemui.disable.edgepanel"

.field private static final TAG:Ljava/lang/String; = "EdgePanelFeatureOption"

.field private static sEagePanelDefaultOff:Z = false

.field private static sEdgePanelDisable:Z = false


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

.method public static isEdgePanelDefaultOff()Z
    .locals 1

    .line 40
    sget-boolean v0, Lcom/coloros/systemui/common/edgepanel/feature/EdgePanelFeatureOption;->sEagePanelDefaultOff:Z

    return v0
.end method

.method public static isEdgePanelDisable()Z
    .locals 1

    .line 44
    sget-boolean v0, Lcom/coloros/systemui/common/edgepanel/feature/EdgePanelFeatureOption;->sEdgePanelDisable:Z

    return v0
.end method

.method public static loadFeatureOption(Landroid/content/Context;)V
    .locals 2

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.systemui.edgepanel.default.off"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/edgepanel/feature/EdgePanelFeatureOption;->sEagePanelDefaultOff:Z

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "oppo.systemui.disable.edgepanel"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/coloros/systemui/common/edgepanel/feature/EdgePanelFeatureOption;->sEdgePanelDisable:Z

    return-void
.end method
