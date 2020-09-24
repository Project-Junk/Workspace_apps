.class public Lcom/coloros/systemui/keyguard/settingsvalue/FaceUnlockSettingsValueProxy;
.super Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;
.source "FaceUnlockSettingsValueProxy.java"


# static fields
.field public static final FACEUNLOCK_CUSTOMIZE_SWITCH_DISABLE:I = 0x0

.field public static final FACEUNLOCK_CUSTOMIZE_SWITCH_ENABLE:I = 0x1

.field public static final FACEUNLOCK_SCREEN_FILL_LIGHT_SWITCH_DISABLE:I = 0x0

.field public static final FACEUNLOCK_SCREEN_FILL_LIGHT_SWITCH_ENABLE:I = 0x1

.field public static final FACEUNLOCK_STAYON_SWITCH_DISABLE:I = 0x0

.field public static final FACEUNLOCK_STAYON_SWITCH_ENABLE:I = 0x1

.field public static final FACEUNLOCK_SWITCH_DISABLE:I = 0x0

.field public static final FACEUNLOCK_SWITCH_ENABLE:I = 0x1

.field public static final KEY_FACEUNLOCK_CUSTOMIZE_SWITCH:Ljava/lang/String; = "oppo_settings_manager_facelock"

.field public static final KEY_FACEUNLOCK_SCREEN_FILL_LIGHT_SWITCH:Ljava/lang/String; = "coloros_face_unlock_screen_fill_light"

.field public static final KEY_FACEUNLOCK_STAYON_SWITCH:Ljava/lang/String; = "coloros_face_unlock_remain_unlock_switch"

.field public static final KEY_FACEUNLOCK_SWITCH:Ljava/lang/String; = "coloros_face_unlock_switch"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;-><init>()V

    return-void
.end method

.method public static getFaceUnlockFillLightSwitchEnable(Landroid/content/Context;)I
    .locals 2

    const-string v0, "coloros_face_unlock_screen_fill_light"

    const/4 v1, -0x1

    .line 55
    invoke-static {p0, v0, v1}, Lcom/coloros/systemui/keyguard/settingsvalue/FaceUnlockSettingsValueProxy;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getFaceUnlockStayOnSwitchEnable(Landroid/content/Context;)I
    .locals 2

    const-string v0, "coloros_face_unlock_remain_unlock_switch"

    const/4 v1, -0x1

    .line 51
    invoke-static {p0, v0, v1}, Lcom/coloros/systemui/keyguard/settingsvalue/FaceUnlockSettingsValueProxy;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getFaceUnlockSwitchEnable(Landroid/content/Context;)I
    .locals 2

    const-string v0, "coloros_face_unlock_switch"

    const/4 v1, -0x1

    .line 47
    invoke-static {p0, v0, v1}, Lcom/coloros/systemui/keyguard/settingsvalue/FaceUnlockSettingsValueProxy;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getFaceunlockCustomizeSwitchEnable(Landroid/content/Context;)I
    .locals 2

    const-string v0, "oppo_settings_manager_facelock"

    const/4 v1, -0x1

    .line 59
    invoke-static {p0, v0, v1}, Lcom/coloros/systemui/keyguard/settingsvalue/FaceUnlockSettingsValueProxy;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected checkValidity(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
