.class public Lcom/coloros/systemui/edgepanel/EdgePanelSettingsValueProxy;
.super Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;
.source "EdgePanelSettingsValueProxy.java"


# static fields
.field public static final EDGE_PANEL_TOGGLE_OFF:I = 0x0

.field public static final EDGE_PANEL_TOGGLE_ON:I = 0x1

.field public static final KEY_EDGE_PANEL_TOGGLE:Ljava/lang/String; = "edge_panel_toggle"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;-><init>()V

    return-void
.end method

.method public static getEdgePanelToggleState(Landroid/content/Context;)I
    .locals 2

    const/4 v0, -0x1

    const-string v1, "edge_panel_toggle"

    .line 35
    invoke-static {p0, v1, v0}, Lcom/coloros/systemui/edgepanel/EdgePanelSettingsValueProxy;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static setEdgePanelToggleState(Landroid/content/Context;I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "edge_panel_toggle"

    .line 49
    invoke-static {p0, v0, p1}, Lcom/coloros/systemui/edgepanel/EdgePanelSettingsValueProxy;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected checkValidity(Landroid/content/Context;)V
    .locals 1

    .line 58
    invoke-static {p1}, Lcom/coloros/systemui/edgepanel/EdgePanelSettingsValueProxy;->getEdgePanelToggleState(Landroid/content/Context;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    .line 59
    invoke-static {p1, p0}, Lcom/coloros/systemui/edgepanel/EdgePanelSettingsValueProxy;->setEdgePanelToggleState(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
