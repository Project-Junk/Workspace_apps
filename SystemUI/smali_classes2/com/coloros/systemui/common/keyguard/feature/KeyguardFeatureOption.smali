.class public Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;
.super Ljava/lang/Object;
.source "KeyguardFeatureOption.java"


# static fields
.field private static final CHARGE_TECHNOLOGY_NODE:Ljava/lang/String; = "/sys/class/power_supply/battery/charge_technology"

.field private static final CHARGE_TECHNOLOGY_SUPERVOOC_NODE:I = 0x2

.field private static COLOR_MODE_SUPPORT:Z = false

.field private static final FACE_UNLOCK_SUPPORT:Ljava/lang/String; = "android.hardware.biometrics.face"

.field private static final FAST_CHARGING_PIKACHU_SUPERVOOC_TYPE:I = 0x4

.field private static final FAST_CHARGING_TYPE:Ljava/lang/String; = "/sys/class/power_supply/usb/fast_chg_type"

.field private static final FEATURE_WAVEFORM_VIBRATOR:Ljava/lang/String; = "oppo.feature.vibrator.waveform.support"

.field private static FEATURE_WAVEFORM_VIBRATOR_SUPPORT:Z = false

.field private static FINGERPRINT_UNLOCK_SUPPORT:Z = false

.field private static IS_AOD_SUPPORT:Z = false

.field private static IS_CLOCK_GLOBAL_THEME_ENABLE:Z = false

.field private static IS_EMM_PROJECT:Z = false

.field private static IS_FACE_GLOBAL_THEME_ENABLE:Z = false

.field private static IS_FP_GLOBAL_THEME_ENABLE:Z = false

.field private static IS_HAS_PIKACHU_ANIMATION_FEATURE:Z = false

.field private static IS_HIGH_FRAME_PLATFORM:Z = false

.field private static IS_KEYGUARD_ICON_SHOULD_TINT:Z = false

.field private static IS_LINEAR_MOTOR_SUPPORT:Z = false

.field private static final IS_LINEAR_MOTOR_SUPPORT_STRING:Ljava/lang/String; = "oppo.hardware.linermotor.support"

.field private static IS_MOTOR_HARDWARE_SUPPORT:Z = false

.field private static IS_NOT_USE_CAMERA_MOTOR_UP_ANIMATION:Z = false

.field private static IS_ONLY_SUPPORT_SINGLE_CARD:Z = false

.field private static IS_OPPO_SUPPORT_MTK_GEMINI:Z = false

.field private static IS_PICTORIAL_DISABLED:Z = true

.field private static IS_SUPPORT_CAMERA_FP_SHUTTER:Z = false

.field private static IS_SUPPORT_CHILDREN_MODE:Z = false

.field private static IS_SUPPORT_DOUBLE_PINHOLE_FRONT_CAMERA_ANIM:Z = false

.field private static IS_SUPPORT_FACE_UNLOCK:Z = false

.field private static IS_SUPPORT_FACE_UNLOCK_3D:Z = false

.field private static final IS_SUPPORT_FINGERPRINT_FEATURE:Ljava/lang/String; = "android.hardware.fingerprint"

.field private static IS_SUPPORT_GUNDAM_VOOC_ANIMATION:Ljava/lang/String; = null

.field private static IS_SUPPORT_KEYGUARD_EXP_VERSION:Z = false

.field private static IS_SUPPORT_NETWORK_TYPE:Z = false

.field private static IS_SUPPORT_OPPO_CLOCK_STYLE:Z = true

.field private static IS_SUPPORT_OPPO_PROXIMITY_TP:Z = false

.field private static IS_SUPPORT_PINHOLE_FRONT_CAMERA_ANIM:Z = false

.field public static IS_SUPPORT_SIDE_FINGERPRINT:Z = false

.field private static IS_SUPPORT_SUPERVOOC_CHARGING:Z = false

.field private static final KEYGUARD_SHOW_NETWORK_TYPE_FEATURE:Ljava/lang/String; = "oppo.keyguard.show.networkstatus"

.field private static final MTK_GEMINI_FEATURE:Ljava/lang/String; = "mtk.gemini.support"

.field private static ON_SCREEN_FINGERPRINT_DISABLE_APP_DIMLAYER:Z = false

.field private static ON_SCREEN_FINGERPRINT_SUPPORT:Z = false

.field private static final OPPO_AOD_SUPPORT:Ljava/lang/String; = "oppo.aod.support"

.field private static final OPPO_CUSTOMIZE_EMM_PROJECT:Ljava/lang/String; = "oppo.customize.function.disable_fingerprint_face"

.field private static final OPPO_DISPLAY_COLORMODE_SUPPORT:Ljava/lang/String; = "oppo.display.colormode.support"

.field private static final OPPO_FACE_3D_SUPPORT:Ljava/lang/String; = "oppo.hardware.face.3d.support"

.field private static final OPPO_FINGERPRINT_DISABLE_DIMLAYER:Ljava/lang/String; = "oppo.fingerprint.disable.dimlayer"

.field private static final OPPO_FINGERPRINT_OPTICAL_SUPPORT_FEATURE:Ljava/lang/String; = "oppo.hardware.fingerprint.optical.support"

.field private static final OPPO_FINGERPRINT_SHUTTER:Ljava/lang/String; = "oppo.camera.fingerprint.shutter"

.field private static final OPPO_KEYGUARD_PICTORIAL_DISABLE_FEATURE:Ljava/lang/String; = "oppo.keyguard.disable.pictorial"

.field private static final OPPO_MOTOR_SUPPORT:Ljava/lang/String; = "oppo.hardware.motor.support"

.field private static final OPPO_PROXIMITY_NEED_DELAY:Ljava/lang/String; = "oppo.proximity.need.delay"

.field private static final OPPO_PROXIMITY_TP_SUPPORT:Ljava/lang/String; = "oppo.proximity.tp.support"

.field private static final OPPO_SCREENHOLE_POSITION:Ljava/lang/String; = "ro.oppo.screenhole.positon"

.field private static final OPPO_SENSOR_FUSIONLIGHT_SUPPORT:Ljava/lang/String; = "oppo.sensor.fusionlight.support"

.field private static final OPPO_SEPARATE_SOFT:Ljava/lang/String; = "ro.separate.soft"

.field private static final OPPO_SIDE_FINGERPRINT:Ljava/lang/String; = "oppo.side.touch.fingerprint.sensor"

.field private static final PIKACHU_VOOC_ANIMATION_FEATURE:Ljava/lang/String; = "oppo.pikachu.vooc.animation"

.field private static PINHOLE_FRONT_CAMERA_POSITION:Ljava/lang/String; = null

.field private static final QCOM_PLATFORM_FEATURE:Ljava/lang/String; = "oppo.hw.manufacturer.qualcomm"

.field private static final SUPPORT_CHILDREN_MODE:Ljava/lang/String; = "oppo.childspace.support"

.field private static final SUPPORT_HIGH_FRAME_120:Ljava/lang/String; = "oppo.dynamicfpsswitch.feature.support"

.field private static final SUPPORT_HIGH_FRAME_90:Ljava/lang/String; = "oppo.display.screen.90hz.support"

.field private static final SUPPORT_KEYGUARD_EXP_VERSION_FEATURE:Ljava/lang/String; = "oppo.version.exp"

.field private static final TAG:Ljava/lang/String; = "KeyguardFeatureOption"

.field private static TP_FUSIONLIGHT_SENSOR:Z

.field private static TP_PROXIMITY_SENSOR:Z

.field private static sPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 33
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->getPrintableFeatrueString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPinholeFrontCameraPositon()Ljava/lang/String;
    .locals 1

    .line 357
    sget-object v0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->PINHOLE_FRONT_CAMERA_POSITION:Ljava/lang/String;

    return-object v0
.end method

.method private static getPrintableFeatrueString()Ljava/lang/String;
    .locals 3

    const-string v0, " line.separator"

    const-string v1, "\n"

    .line 361
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  FINGERPRINT_UNLOCK_SUPPORT: "

    .line 365
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->FINGERPRINT_UNLOCK_SUPPORT:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  ON_SCREEN_FINGERPRINT_SUPPORT: "

    .line 366
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->ON_SCREEN_FINGERPRINT_SUPPORT:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  ON_SCREEN_FINGERPRINT_DISABLE_APP_DIMLAYER: "

    .line 367
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->ON_SCREEN_FINGERPRINT_DISABLE_APP_DIMLAYER:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  FEATURE_WAVEFORM_VIBRATOR_SUPPORT: "

    .line 368
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->FEATURE_WAVEFORM_VIBRATOR_SUPPORT:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  IS_LINEAR_MOTOR_SUPPORT: "

    .line 369
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_LINEAR_MOTOR_SUPPORT:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  TP_PROXIMITY_SENSOR: "

    .line 370
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->TP_PROXIMITY_SENSOR:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  IS_SUPPORT_OPPO_PROXIMITY_TP: "

    .line 371
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_SUPPORT_OPPO_PROXIMITY_TP:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  TP_FUSIONLIGHT_SENSOR: "

    .line 372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->TP_FUSIONLIGHT_SENSOR:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  COLOR_MODE_SUPPORT: "

    .line 373
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->COLOR_MODE_SUPPORT:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  IS_AOD_SUPPORT: "

    .line 374
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_AOD_SUPPORT:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  IS_MOTOR_HARDWARE_SUPPORT: "

    .line 375
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_MOTOR_HARDWARE_SUPPORT:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  IS_SUPPORT_SUPERVOOC_CHARGING: "

    .line 376
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_SUPPORT_SUPERVOOC_CHARGING:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  IS_HAS_PIKACHU_ANIMATION_FEATURE: "

    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_HAS_PIKACHU_ANIMATION_FEATURE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  IS_SUPPORT_GUNDAM_VOOC_ANIMATION: "

    .line 378
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_SUPPORT_GUNDAM_VOOC_ANIMATION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  IS_HIGH_FRAME_PLATFORM: "

    .line 379
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_HIGH_FRAME_PLATFORM:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isClockGlobalThemeEnable()Z
    .locals 1

    .line 318
    sget-boolean v0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_CLOCK_GLOBAL_THEME_ENABLE:Z

    return v0
.end method

.method public static isDisableAppDimLayer()Z
    .locals 1

    .line 266
    sget-boolean v0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->ON_SCREEN_FINGERPRINT_DISABLE_APP_DIMLAYER:Z

    return v0
.end method

.method public static isFaceGlobalThemeEnable()Z
    .locals 1

    .line 337
    sget-boolean v0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_FACE_GLOBAL_THEME_ENABLE:Z

    return v0
.end method

.method public static isFastChargingPikachuType()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "/sys/class/power_supply/usb/fast_chg_type"

    .line 387
    invoke-static {v1}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->readNode(Ljava/lang/String;)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 389
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Keyguard"

    const-string v3, "KeyguardFeatureOption"

    invoke-static {v2, v3, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0
.end method

.method public static isFingerprintGlobalThemeEnable()Z
    .locals 1

    .line 333
    sget-boolean v0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_FP_GLOBAL_THEME_ENABLE:Z

    return v0
.end method

.method public static isHasPikachuAnimationFeature()Z
    .locals 1

    .line 235
    sget-boolean v0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_HAS_PIKACHU_ANIMATION_FEATURE:Z

    return v0
.end method

.method public static isHighFramePlatform()Z
    .locals 1

    .line 258
    sget-boolean v0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_HIGH_FRAME_PLATFORM:Z

    return v0
.end method

.method public static isKeyguardIconShouldTint()Z
    .locals 1

    .line 341
    sget-boolean v0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_KEYGUARD_ICON_SHOULD_TINT:Z

    return v0
.end method

.method public static isNotUsedCameraMotorUpAnim()Z
    .locals 1

    .line 345
    sget-boolean v0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_NOT_USE_CAMERA_MOTOR_UP_ANIMATION:Z

    return v0
.end method

.method public static isOppoSupportMtkGemini()Z
    .locals 1

    .line 286
    sget-boolean v0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_OPPO_SUPPORT_MTK_GEMINI:Z

    return v0
.end method

.method public static isSupportCameraFpShutter()Z
    .locals 1

    .line 314
    sget-boolean v0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_SUPPORT_CAMERA_FP_SHUTTER:Z

    return v0
.end method

.method public static isSupportChildrenMode()Z
    .locals 1

    .line 274
    sget-boolean v0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_SUPPORT_CHILDREN_MODE:Z

    return v0
.end method

.method public static isSupportColorMode()Z
    .locals 1

    .line 290
    sget-boolean v0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->COLOR_MODE_SUPPORT:Z

    return v0
.end method

.method public static isSupportDoublePinholeFrontCamera()Z
    .locals 1

    .line 353
    sget-boolean v0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_SUPPORT_DOUBLE_PINHOLE_FRONT_CAMERA_ANIM:Z

    return v0
.end method

.method public static isSupportFaceUnlock()Z
    .locals 1

    .line 306
    sget-boolean v0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_SUPPORT_FACE_UNLOCK:Z

    return v0
.end method

.method public static isSupportFaceUnlock3dSupport()Z
    .locals 1

    .line 310
    sget-boolean v0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_SUPPORT_FACE_UNLOCK_3D:Z

    return v0
.end method

.method public static isSupportFingerprintUnlock()Z
    .locals 1

    .line 294
    sget-boolean v0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->FINGERPRINT_UNLOCK_SUPPORT:Z

    return v0
.end method

.method public static isSupportGundamAnimation()Z
    .locals 2

    .line 239
    sget-object v0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_SUPPORT_GUNDAM_VOOC_ANIMATION:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSupportKeyguardExpVersion()Z
    .locals 1

    .line 278
    sget-boolean v0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_SUPPORT_KEYGUARD_EXP_VERSION:Z

    return v0
.end method

.method public static isSupportMotorHardWare()Z
    .locals 1

    .line 298
    sget-boolean v0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_MOTOR_HARDWARE_SUPPORT:Z

    return v0
.end method

.method public static isSupportNetworkType()Z
    .locals 1

    .line 247
    sget-boolean v0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_SUPPORT_NETWORK_TYPE:Z

    return v0
.end method

.method public static isSupportOnScreenFingerprint()Z
    .locals 1

    .line 251
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->isSystem()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 254
    :cond_0
    sget-boolean v0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->ON_SCREEN_FINGERPRINT_SUPPORT:Z

    return v0
.end method

.method public static isSupportOnlySingleCard()Z
    .locals 1

    .line 282
    sget-boolean v0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_ONLY_SUPPORT_SINGLE_CARD:Z

    return v0
.end method

.method public static isSupportOppoClockStyle()Z
    .locals 1

    .line 243
    sget-boolean v0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_SUPPORT_OPPO_CLOCK_STYLE:Z

    return v0
.end method

.method public static isSupportPictorial()Z
    .locals 1

    .line 302
    sget-boolean v0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_PICTORIAL_DISABLED:Z

    return v0
.end method

.method public static isSupportPinholeFrontCamera()Z
    .locals 1

    .line 349
    sget-boolean v0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_SUPPORT_PINHOLE_FRONT_CAMERA_ANIM:Z

    return v0
.end method

.method public static isSupportSuperVoocCharging()Z
    .locals 1

    .line 227
    sget-boolean v0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_SUPPORT_SUPERVOOC_CHARGING:Z

    return v0
.end method

.method public static isSupportWiredChargingAnimation()Z
    .locals 1

    .line 231
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    return v0
.end method

.method public static isTpProximitySensor()Z
    .locals 1

    .line 262
    sget-boolean v0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_SUPPORT_OPPO_PROXIMITY_TP:Z

    return v0
.end method

.method public static isWaveformVibratorSupport()Z
    .locals 1

    .line 270
    sget-boolean v0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->FEATURE_WAVEFORM_VIBRATOR_SUPPORT:Z

    return v0
.end method

.method public static loadFeatureOption(Landroid/content/Context;)V
    .locals 8

    const-string v0, ","

    const-string v1, "KeyguardFeatureOption"

    const-string v2, "Keyguard"

    if-nez p0, :cond_0

    const-string p0, "loadFeatureOption, context is null!"

    .line 127
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 130
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sput-object v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->sPackageManager:Landroid/content/pm/PackageManager;

    .line 131
    sget-object v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->sPackageManager:Landroid/content/pm/PackageManager;

    if-nez v3, :cond_1

    const-string p0, "loadFeatureOption, cannot get packageManager!"

    .line 132
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v4, "android.hardware.fingerprint"

    .line 137
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->FINGERPRINT_UNLOCK_SUPPORT:Z

    .line 138
    sget-object v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->sPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "oppo.hardware.fingerprint.optical.support"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->ON_SCREEN_FINGERPRINT_SUPPORT:Z

    .line 139
    sget-boolean v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->ON_SCREEN_FINGERPRINT_SUPPORT:Z

    sget-boolean v4, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->FINGERPRINT_UNLOCK_SUPPORT:Z

    and-int/2addr v3, v4

    sput-boolean v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->ON_SCREEN_FINGERPRINT_SUPPORT:Z

    .line 140
    sget-object v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->sPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "oppo.fingerprint.disable.dimlayer"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->ON_SCREEN_FINGERPRINT_DISABLE_APP_DIMLAYER:Z

    .line 141
    sget-object v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->sPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "oppo.feature.vibrator.waveform.support"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->FEATURE_WAVEFORM_VIBRATOR_SUPPORT:Z

    .line 142
    sget-object v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->sPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "oppo.hardware.linermotor.support"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_LINEAR_MOTOR_SUPPORT:Z

    .line 143
    sget-object v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->sPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "oppo.proximity.need.delay"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->TP_PROXIMITY_SENSOR:Z

    .line 144
    sget-object v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->sPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "oppo.proximity.tp.support"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_SUPPORT_OPPO_PROXIMITY_TP:Z

    .line 145
    sget-object v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->sPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "oppo.sensor.fusionlight.support"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->TP_FUSIONLIGHT_SENSOR:Z

    .line 146
    sget-object v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->sPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "oppo.display.colormode.support"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->COLOR_MODE_SUPPORT:Z

    .line 147
    sget-object v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->sPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "oppo.customize.function.disable_fingerprint_face"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_EMM_PROJECT:Z

    .line 148
    sget-object v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->sPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "oppo.aod.support"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_AOD_SUPPORT:Z

    .line 149
    sget-object v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->sPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "oppo.hardware.motor.support"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_MOTOR_HARDWARE_SUPPORT:Z

    .line 150
    sget-object v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->sPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "oppo.keyguard.disable.pictorial"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_PICTORIAL_DISABLED:Z

    .line 153
    sget-object v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->sPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.hardware.biometrics.face"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_SUPPORT_FACE_UNLOCK:Z

    .line 154
    sget-object v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->sPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "oppo.hardware.face.3d.support"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_SUPPORT_FACE_UNLOCK_3D:Z

    .line 156
    sget-object v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->sPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "oppo.childspace.support"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_SUPPORT_CHILDREN_MODE:Z

    .line 157
    sget-object v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->sPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "oppo.version.exp"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_SUPPORT_KEYGUARD_EXP_VERSION:Z

    .line 158
    invoke-static {p0}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ColorOSTelephonyManager;->isOppoSingleSimCard()Z

    move-result v3

    sput-boolean v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_ONLY_SUPPORT_SINGLE_CARD:Z

    .line 159
    sget-object v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->sPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "mtk.gemini.support"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_OPPO_SUPPORT_MTK_GEMINI:Z

    const-string v3, "/sys/class/power_supply/battery/charge_technology"

    .line 161
    invoke-static {v3}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->readNode(Ljava/lang/String;)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    .line 162
    sput-boolean v5, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_SUPPORT_SUPERVOOC_CHARGING:Z

    .line 165
    :cond_2
    sget-object v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->sPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "oppo.pikachu.vooc.animation"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 166
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v5

    goto :goto_0

    :cond_3
    move v3, v4

    :goto_0
    sput-boolean v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_HAS_PIKACHU_ANIMATION_FEATURE:Z

    .line 167
    sget-object v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->sPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "oppo.keyguard.show.networkstatus"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_SUPPORT_NETWORK_TYPE:Z

    const-string v3, "ro.oppo.gundam"

    const-string v6, "false"

    .line 170
    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_SUPPORT_GUNDAM_VOOC_ANIMATION:Ljava/lang/String;

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f05004c

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    sput-boolean v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_CLOCK_GLOBAL_THEME_ENABLE:Z

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f05004e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    sput-boolean v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_FP_GLOBAL_THEME_ENABLE:Z

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f05004d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    sput-boolean v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_FACE_GLOBAL_THEME_ENABLE:Z

    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f05004f

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    sput-boolean p0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_KEYGUARD_ICON_SHOULD_TINT:Z

    const-string p0, ""

    const-string v3, "ro.separate.soft"

    .line 186
    invoke-static {v3, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "19011"

    .line 187
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "19301"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "19531"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "19305"

    .line 188
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "19012"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "19532"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "19533"

    .line 189
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    move v6, v4

    goto :goto_2

    :cond_5
    :goto_1
    move v6, v5

    :goto_2
    sput-boolean v6, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_NOT_USE_CAMERA_MOTOR_UP_ANIMATION:Z

    const-string v6, "ro.oppo.screenhole.positon"

    .line 193
    invoke-static {v6, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->PINHOLE_FRONT_CAMERA_POSITION:Ljava/lang/String;

    .line 194
    sget-object p0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->PINHOLE_FRONT_CAMERA_POSITION:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_8

    .line 196
    :try_start_0
    sget-object p0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->PINHOLE_FRONT_CAMERA_POSITION:Ljava/lang/String;

    const-string v6, ":"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 197
    aget-object v6, p0, v4

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 198
    aget-object p0, p0, v5

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 199
    aget-object v0, v6, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 200
    aget-object v6, v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 201
    aget-object v7, p0, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 202
    aget-object p0, p0, v5

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sub-int/2addr v7, v0

    sub-int/2addr p0, v6

    if-ne v7, p0, :cond_6

    move v0, v5

    goto :goto_3

    :cond_6
    move v0, v4

    .line 203
    :goto_3
    sput-boolean v0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_SUPPORT_PINHOLE_FRONT_CAMERA_ANIM:Z

    if-le v7, p0, :cond_7

    move p0, v5

    goto :goto_4

    :cond_7
    move p0, v4

    .line 204
    :goto_4
    sput-boolean p0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_SUPPORT_DOUBLE_PINHOLE_FRONT_CAMERA_ANIM:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    const-string p0, "get positon fails"

    .line 206
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_8
    :goto_5
    sget-object p0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->sPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "oppo.display.screen.90hz.support"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_9

    sget-object p0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->sPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "oppo.dynamicfpsswitch.feature.support"

    .line 211
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    :cond_9
    const-string p0, "19081"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v4, v5

    :cond_a
    sput-boolean v4, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_HIGH_FRAME_PLATFORM:Z

    .line 215
    sget-object p0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->sPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "oppo.side.touch.fingerprint.sensor"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_SUPPORT_SIDE_FINGERPRINT:Z

    .line 216
    sget-object p0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->sPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "oppo.camera.fingerprint.shutter"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_SUPPORT_CAMERA_FP_SHUTTER:Z

    .line 218
    new-instance p0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption$1;

    invoke-direct {p0}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption$1;-><init>()V

    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Lcom/coloros/common/util/LogUtil$IDebug;)V

    return-void
.end method

.method public static readNode(Ljava/lang/String;)C
    .locals 7

    const-string v0, "readNode,final close IOException!"

    const-string v1, "KeyguardFeatureOption"

    const-string v2, "Keyguard"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 399
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 400
    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 401
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 403
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 412
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    .line 415
    :goto_0
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 418
    :catch_0
    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v3

    move-object v6, v3

    move-object v3, p0

    move-object p0, v6

    goto :goto_4

    :catch_1
    move-object v3, p0

    goto :goto_1

    :catch_2
    move-object v3, p0

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object v5, v3

    goto :goto_4

    :catch_3
    move-object v5, v3

    :catch_4
    :goto_1
    :try_start_4
    const-string p0, "readNode,IOException!"

    .line 408
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_1

    .line 412
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_1
    if-eqz v5, :cond_3

    goto :goto_0

    :catch_5
    move-object v5, v3

    :catch_6
    :goto_2
    :try_start_6
    const-string p0, "readNode,FileNotFoundException!"

    .line 406
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v3, :cond_2

    .line 412
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :cond_2
    if-eqz v5, :cond_3

    goto :goto_0

    .line 421
    :cond_3
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "readNode, prop = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :goto_4
    if-eqz v3, :cond_4

    .line 412
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_4
    if-eqz v5, :cond_5

    .line 415
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_5

    .line 418
    :catch_7
    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_5
    :goto_5
    throw p0
.end method

.method public static updateGlobalThemeFeature(Landroid/content/Context;)V
    .locals 2

    .line 323
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_CLOCK_GLOBAL_THEME_ENABLE:Z

    .line 325
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_FP_GLOBAL_THEME_ENABLE:Z

    .line 327
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_FACE_GLOBAL_THEME_ENABLE:Z

    .line 329
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f05004f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    sput-boolean p0, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_KEYGUARD_ICON_SHOULD_TINT:Z

    return-void
.end method
