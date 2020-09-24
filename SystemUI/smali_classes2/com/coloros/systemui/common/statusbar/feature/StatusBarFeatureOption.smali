.class public Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;
.super Ljava/lang/Object;
.source "StatusBarFeatureOption.java"


# static fields
.field private static final CMCC_VOLTE_ICON_STR:Ljava/lang/String; = "oppo.systemui.cmcc.icon.hd"

.field private static final CU_SIGNAL_LAYOUT_STRING:Ljava/lang/String; = "oppo.systemui.signal_layout.cu"

.field private static final HIGHLIGHT_NO_DEVELOPER_STR:Ljava/lang/String; = "oppo.systemui.highlight.nodeveloper"

.field private static final IS_AIRPLANEMODE_DISABLE_STRING:Ljava/lang/String; = "oppo.common.airplane_mode.disable"

.field private static final IS_CAST_TILE_NOT_SUPPORT_STRING:Ljava/lang/String; = "oppo.multiuser.wfd.notsupport"

.field private static final IS_CA_SUPPORT_STRING:Ljava/lang/String; = "gsm.lte.ca.support"

.field private static final IS_CELLUAR_DISABLED_BY_CUSTOMIZE_STRING:Ljava/lang/String; = "oppo.customize.mobile.data.disable"

.field private static final IS_CHILDREN_MODE_SUPPORT_STRING:Ljava/lang/String; = "oppo.childspace.support"

.field private static final IS_CIRCLE_BATTERY_VIEW_STRING:Ljava/lang/String; = "oppo.systemui.statusbar.circle_power_view"

.field private static final IS_CLEAR_TILE_DISABLE_STRING:Ljava/lang/String; = "oppo.phonemanager.disable.clean"

.field private static final IS_CTA_SUPPORT_STRING:Ljava/lang/String; = "oppo.cta.support"

.field private static final IS_DISABLE_CALL_RECORD_HIGHLIGHT_STRING:Ljava/lang/String; = "oppo.phone.record.for.third-party"

.field private static final IS_IGNORE_DATA_SETTING_STRING:Ljava/lang/String; = "oppo.softsim.ignore_data_setting"

.field private static final IS_NIGHT_MODE_DISABLE_STRING:Ljava/lang/String; = "oppo.settings.disable.display.nightmode"

.field private static final IS_REMOVE_AUTO_BRIGHTNESS_STRING:Ljava/lang/String; = "oppo.autobrightness.remove.statusbar.switch.support"

.field private static final IS_SCREEN_HOVERING_SUPPORT_STRING:Ljava/lang/String; = "oppo.screen.hovering.support"

.field private static final IS_SMART_DRIVE_DISABLE_STRING:Ljava/lang/String; = "oppo.smartdrive.disable.smartdrive"

.field private static final IS_SYSTEM_IRIS5_SUPPORT_STRING:Ljava/lang/String; = "oppo.pixelworks.feature.support"

.field private static final IS_SYSTEM_OSIE_DISABLE_STRING:Ljava/lang/String; = "persist.sys.dpp.feature"

.field private static final IS_SYSTEM_SUPER_POWER_DISABLED_STRING:Ljava/lang/String; = "oppo.superpowersave.disable"

.field private static final IS_TEMPERATURE_SUPPORT_STRING:Ljava/lang/String; = "oppo.intelligent.color.temperature.support"

.field private static final IS_WIFI_DISPLAY_ENABLED_STRING:Ljava/lang/String; = "oppo.wirelesssetting.wifi.show.wfd.menu"

.field private static final IS_WIRELESS_CHARGE_SUPPORT_STRING:Ljava/lang/String; = "oppo.power.onwirelesscharger.support"

.field private static final MTK_GEMINI_SUPPORT_STRING:Ljava/lang/String; = "mtk.gemini.support"

.field private static final OPPO_CTCC_HD_SUPPORT:Ljava/lang/String; = "oppo.statusbar.ct.hd.support"

.field private static final OPPO_SYSTEMUI_MEDIAPROJECTION_UI_STRING:Ljava/lang/String; = "oppo.systemui.mediaprojection.ui"

.field private static final OPPO_SYSTEMUI_NETWORCK_UI_STRING:Ljava/lang/String; = "oppo.systemui.network.ui"

.field private static final OPPO_SYSTEMUI_SHIFT_IMS_ICON_RIGHT:Ljava/lang/String; = "oppo.systemui.shift.ims.icon.right"

.field private static final OPPO_SYSTEMUI_STATUSBAR_FIVEG_ANIM:Ljava/lang/String; = "oppo.systemui.statusbar.fiveg.anim"

.field private static final PROPERT_OSIE_ON:Ljava/lang/String; = "1"

.field private static final QCOM_GEMINI_SUPPORT_STRING:Ljava/lang/String; = "oppo.qualcomm.gemini.support"

.field private static final SHOW_OPERATOR_NAME_STRING:Ljava/lang/String; = "systemui.statusbar.show.operator.name"

.field private static final TAG:Ljava/lang/String; = "StatusBarFeatureOption"

.field private static sIsAirplanemodeDisable:Z = false

.field private static sIsCTASupport:Z = false

.field private static sIsCaSupport:Z = false

.field private static sIsCastTileNotSupport:Z = false

.field private static sIsCeSupport:Z = false

.field private static sIsCelluarDisabledByCustomize:Z = false

.field private static sIsChildrenModeSupport:Z = false

.field private static sIsCircleBatteryView:Z = false

.field private static sIsClearTileDisable:Z = false

.field private static sIsCmccVolteIcon:Z = false

.field private static sIsCtHdSupport:Z = false

.field private static sIsCuSignalViewLayout:Z = false

.field private static sIsDisableCallRecordHighlight:Z = true

.field private static sIsHighlightNoDeveloper:Z = false

.field private static sIsIgnoreDataSetting:Z = false

.field private static sIsIris5ModeSupport:Z = false

.field private static sIsNightModeDisable:Z = false

.field private static sIsOSIEModeSupport:Z = false

.field private static sIsRemoveAutoBrightness:Z = false

.field private static sIsScreenHoveringSupport:Z = false

.field private static sIsSmartDriveDisable:Z = false

.field private static sIsStatusbar5gAnimEnable:Z = false

.field private static sIsSuperPowerModeSupport:Z = true

.field private static sIsTemperatureSupport:Z = false

.field private static sIsWifiDisplayEnabled:Z = false

.field private static sIsWirelessChargeSupport:Z = false

.field private static sMtkGeminiSupport:Z = true

.field private static sOppoSystemuiMediaprojectionUi:Z = true

.field private static sOppoSystemuiNetworkUi:Z = true

.field private static sQcomGeminiSupport:Z = true

.field private static sShiftImsIconToRight:Z = false

.field private static sShowOperatorName:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAirplanemodeDisable()Z
    .locals 1

    .line 240
    sget-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsAirplanemodeDisable:Z

    return v0
.end method

.method public static isCaSupport()Z
    .locals 2

    const-string v0, "-1"

    const-string v1, "gsm.lte.ca.support"

    .line 284
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 285
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "1"

    .line 288
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsCaSupport:Z

    .line 290
    sget-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsCaSupport:Z

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isCastTileNotSupport()Z
    .locals 1

    .line 322
    sget-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsCastTileNotSupport:Z

    return v0
.end method

.method public static isCeSupport()Z
    .locals 1

    .line 257
    sget-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsCeSupport:Z

    return v0
.end method

.method public static isCelluarDisabledByCustomize()Z
    .locals 1

    .line 236
    sget-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsCelluarDisabledByCustomize:Z

    return v0
.end method

.method public static isChildrenModeSupport()Z
    .locals 1

    .line 228
    sget-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsChildrenModeSupport:Z

    return v0
.end method

.method public static isCircleBatteryView()Z
    .locals 1

    .line 306
    sget-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsCircleBatteryView:Z

    return v0
.end method

.method public static isClearTileDisable()Z
    .locals 1

    .line 248
    sget-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsClearTileDisable:Z

    return v0
.end method

.method public static isCmccVolteIcon()Z
    .locals 1

    .line 265
    sget-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsCmccVolteIcon:Z

    return v0
.end method

.method public static isCtHdSupport()Z
    .locals 1

    .line 294
    sget-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsCtHdSupport:Z

    return v0
.end method

.method public static isCtaSupport()Z
    .locals 1

    .line 211
    sget-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsCTASupport:Z

    return v0
.end method

.method public static isCuSignalViewLayout()Z
    .locals 1

    .line 207
    sget-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsCuSignalViewLayout:Z

    return v0
.end method

.method public static isDisableCallRecordHighlight()Z
    .locals 1

    .line 261
    sget-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsDisableCallRecordHighlight:Z

    return v0
.end method

.method public static isHighlightNoDeveloper()Z
    .locals 1

    .line 253
    sget-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsHighlightNoDeveloper:Z

    return v0
.end method

.method public static isIgnoreDataSetting()Z
    .locals 1

    .line 232
    sget-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsIgnoreDataSetting:Z

    return v0
.end method

.method public static isIris5Support()Z
    .locals 1

    .line 270
    sget-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsIris5ModeSupport:Z

    return v0
.end method

.method public static isMtkGeminiSupport()Z
    .locals 1

    .line 215
    sget-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sMtkGeminiSupport:Z

    return v0
.end method

.method public static isNightModeDisable()Z
    .locals 1

    .line 244
    sget-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsNightModeDisable:Z

    return v0
.end method

.method public static isOppoSystemuiMediaprojectionUi()Z
    .locals 1

    .line 195
    sget-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sOppoSystemuiMediaprojectionUi:Z

    return v0
.end method

.method public static isOppoSystemuiNetworkUi()Z
    .locals 1

    .line 199
    sget-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sOppoSystemuiNetworkUi:Z

    return v0
.end method

.method public static isOsieSupport()Z
    .locals 1

    .line 276
    sget-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsOSIEModeSupport:Z

    return v0
.end method

.method public static isRemoveAutoBrightness()Z
    .locals 1

    .line 302
    sget-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsRemoveAutoBrightness:Z

    return v0
.end method

.method public static isScreenHoveringSupport()Z
    .locals 1

    .line 224
    sget-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsScreenHoveringSupport:Z

    return v0
.end method

.method public static isShiftImsIconToRight()Z
    .locals 1

    .line 203
    sget-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sShiftImsIconToRight:Z

    return v0
.end method

.method public static isShowOperatorName()Z
    .locals 1

    .line 219
    sget-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sShowOperatorName:Z

    return v0
.end method

.method public static isSmartDriveDisable()Z
    .locals 1

    .line 310
    sget-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsSmartDriveDisable:Z

    return v0
.end method

.method public static isStatusbar5gAnimEnable()Z
    .locals 1

    .line 298
    sget-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsStatusbar5gAnimEnable:Z

    return v0
.end method

.method public static isSuperPowerModeSupport()Z
    .locals 1

    .line 326
    sget-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsSuperPowerModeSupport:Z

    return v0
.end method

.method public static isTemperatureSupport()Z
    .locals 1

    .line 314
    sget-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsTemperatureSupport:Z

    return v0
.end method

.method public static isWifiDisplayEnabled()Z
    .locals 1

    .line 330
    sget-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsWifiDisplayEnabled:Z

    return v0
.end method

.method public static isWirelessChargeSupport()Z
    .locals 1

    .line 318
    sget-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsWirelessChargeSupport:Z

    return v0
.end method

.method public static loadFeatureOption(Landroid/content/Context;)V
    .locals 2

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.systemui.mediaprojection.ui"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sOppoSystemuiMediaprojectionUi:Z

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.systemui.network.ui"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sOppoSystemuiNetworkUi:Z

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.systemui.shift.ims.icon.right"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sShiftImsIconToRight:Z

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.systemui.signal_layout.cu"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsCuSignalViewLayout:Z

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.cta.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsCTASupport:Z

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "mtk.gemini.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sMtkGeminiSupport:Z

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.qualcomm.gemini.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sQcomGeminiSupport:Z

    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "systemui.statusbar.show.operator.name"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sShowOperatorName:Z

    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.screen.hovering.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsScreenHoveringSupport:Z

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.childspace.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsChildrenModeSupport:Z

    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.softsim.ignore_data_setting"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsIgnoreDataSetting:Z

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.customize.mobile.data.disable"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsCelluarDisabledByCustomize:Z

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.common.airplane_mode.disable"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsAirplanemodeDisable:Z

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.settings.disable.display.nightmode"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsNightModeDisable:Z

    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.phonemanager.disable.clean"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsClearTileDisable:Z

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.systemui.highlight.nodeveloper"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsHighlightNoDeveloper:Z

    const-string v0, "persist.sys.ce.version"

    const/4 v1, 0x0

    .line 175
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsCeSupport:Z

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.phone.record.for.third-party"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsDisableCallRecordHighlight:Z

    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.systemui.cmcc.icon.hd"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsCmccVolteIcon:Z

    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.statusbar.ct.hd.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsCtHdSupport:Z

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.systemui.statusbar.fiveg.anim"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsStatusbar5gAnimEnable:Z

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.autobrightness.remove.statusbar.switch.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsRemoveAutoBrightness:Z

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.systemui.statusbar.circle_power_view"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsCircleBatteryView:Z

    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.smartdrive.disable.smartdrive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsSmartDriveDisable:Z

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.intelligent.color.temperature.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsTemperatureSupport:Z

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.power.onwirelesscharger.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsWirelessChargeSupport:Z

    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.multiuser.wfd.notsupport"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsCastTileNotSupport:Z

    .line 186
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.superpowersave.disable"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsSuperPowerModeSupport:Z

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.pixelworks.feature.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsIris5ModeSupport:Z

    const-string v0, "persist.sys.dpp.feature"

    .line 189
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsOSIEModeSupport:Z

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "oppo.wirelesssetting.wifi.show.wfd.menu"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->sIsWifiDisplayEnabled:Z

    return-void
.end method
