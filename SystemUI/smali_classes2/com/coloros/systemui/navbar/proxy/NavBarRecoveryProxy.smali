.class public Lcom/coloros/systemui/navbar/proxy/NavBarRecoveryProxy;
.super Lcom/coloros/systemui/common/recovery/AbsRecoveryProxy;
.source "NavBarRecoveryProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/coloros/systemui/common/recovery/AbsRecoveryProxy;-><init>()V

    return-void
.end method


# virtual methods
.method protected doRecoveryOperation(Landroid/content/Context;)V
    .locals 2

    .line 28
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result p0

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    invoke-static {p1, p0}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setNavState(Landroid/content/Context;I)V

    .line 30
    invoke-static {p1, v1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setVirtualKeyCombinationType(Landroid/content/Context;I)V

    .line 31
    invoke-static {p1, v1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setVirtualKeyHideEnable(Landroid/content/Context;I)V

    const/4 p0, 0x2

    .line 32
    invoke-static {p1, p0}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeUpGestureKeysMode(Landroid/content/Context;I)V

    .line 33
    invoke-static {p1, v1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeUpGestureBarType(Landroid/content/Context;I)V

    const/4 p0, 0x1

    .line 34
    invoke-static {p1, p0}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeUpGestureMistouchPreventionEnable(Landroid/content/Context;I)V

    .line 35
    invoke-static {p1, v1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeSideGestureBarType(Landroid/content/Context;I)V

    .line 36
    invoke-static {p1, p0}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeSideGestureMistouchPreventionEnable(Landroid/content/Context;I)V

    .line 37
    invoke-static {p1, v0}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setUpGestureEnterLandScapeTipsNumber(Landroid/content/Context;I)V

    .line 38
    invoke-static {p1, v1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeSideEnableSwitchApp(Landroid/content/Context;I)V

    .line 39
    invoke-static {p1, v1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeSideEnableBackVibrate(Landroid/content/Context;I)V

    .line 42
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isGestureUpFollowScreenRotation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    invoke-static {p1, p0}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeUpGestureFollowScreenRotationType(Landroid/content/Context;I)V

    .line 44
    invoke-static {p1, p0}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeUpGestureMistouchPreventionEnable(Landroid/content/Context;I)V

    const-string v0, "gesture_mistouch_prevention_enable"

    .line 45
    invoke-static {p1, v0, p0}, Lcom/coloros/systemui/navbar/utils/NavBarDataCommon;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
