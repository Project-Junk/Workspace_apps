.class public Lcom/coloros/systemui/common/settingsvalue/CommonSettingsValueProxy;
.super Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;
.source "CommonSettingsValueProxy.java"


# static fields
.field public static final CHILDREN_MODE_OFF:I = 0x0

.field public static final CHILDREN_MODE_ON:I = 0x1

.field public static final DEVELOPMENT_SETTINGS_DISABLE:I = 0x0

.field public static final DEVELOPMENT_SETTINGS_ENABLE:I = 0x1

.field public static final FOCUS_MODE_OFF:I = 0x0

.field public static final FOCUS_MODE_ON:I = 0x1

.field public static final HAPTIC_FEEDBACK_OFF:I = 0x0

.field public static final HAPTIC_FEEDBACK_ON:I = 0x1

.field public static final KEY_CHILDREN_MODE:Ljava/lang/String; = "children_mode_on"

.field public static final KEY_DEVELOPMENT_SETTINGS:Ljava/lang/String; = "development_settings_enabled"

.field public static final KEY_FOCUS_MODE_SWITCH:Ljava/lang/String; = "focusmode_switch"

.field public static final KEY_HAPTIC_FEEDBACK:Ljava/lang/String; = "haptic_feedback_enabled"

.field public static final KEY_LOCK_TASK_MODE:Ljava/lang/String; = "lock_to_app_enabled"

.field public static final KEY_POWER_SAVING_MODE:Ljava/lang/String; = "is_smart_enable"

.field public static final KEY_STATUSBAR_EXPAND_DISABLE:Ljava/lang/String; = "statusbar_expand_disable"

.field public static final LOCK_TASK_MODE_OFF:I = 0x0

.field public static final LOCK_TASK_MODE_ON:I = 0x1

.field public static final POWER_SAVING_MODE_OFF:I = 0x0

.field public static final POWER_SAVING_MODE_ON:I = 0x1

.field public static final STATUSBAR_EXPAND_DISABLE:I = 0x1

.field public static final STATUSBAR_EXPAND_ENABLE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;-><init>()V

    return-void
.end method

.method public static getChildrenModeState(Landroid/content/Context;)I
    .locals 2

    const-string v0, "children_mode_on"

    const/4 v1, 0x0

    .line 54
    invoke-static {p0, v0, v1}, Lcom/coloros/systemui/common/settingsvalue/CommonSettingsValueProxy;->getGlobalIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getDevelopmentSettingsState(Landroid/content/Context;)I
    .locals 2

    const-string v0, "development_settings_enabled"

    const/4 v1, 0x0

    .line 58
    invoke-static {p0, v0, v1}, Lcom/coloros/systemui/common/settingsvalue/CommonSettingsValueProxy;->getGlobalIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getFocusModeState(Landroid/content/Context;)I
    .locals 2

    const-string v0, "focusmode_switch"

    const/4 v1, 0x0

    .line 86
    invoke-static {p0, v0, v1}, Lcom/coloros/systemui/common/settingsvalue/CommonSettingsValueProxy;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getHapticFeedbackState(Landroid/content/Context;)I
    .locals 2

    const-string v0, "haptic_feedback_enabled"

    const/4 v1, 0x1

    .line 90
    invoke-static {p0, v0, v1}, Lcom/coloros/systemui/common/settingsvalue/CommonSettingsValueProxy;->getSystemIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLockTaskModeState(Landroid/content/Context;)I
    .locals 2

    const-string v0, "lock_to_app_enabled"

    const/4 v1, 0x0

    .line 66
    invoke-static {p0, v0, v1}, Lcom/coloros/systemui/common/settingsvalue/CommonSettingsValueProxy;->getSystemIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getPowerSavingModeState(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "is_smart_enable"

    .line 76
    invoke-static {p0, v1, v0, v0}, Lcom/coloros/systemui/common/settingsvalue/CommonSettingsValueProxy;->getSystemIntValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static getStatusbarExpandDisable(Landroid/content/Context;)I
    .locals 2

    const-string v0, "statusbar_expand_disable"

    const/4 v1, 0x0

    .line 94
    invoke-static {p0, v0, v1}, Lcom/coloros/systemui/common/settingsvalue/CommonSettingsValueProxy;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static setDevelopmentSettingsState(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "development_settings_enabled"

    .line 62
    invoke-static {p0, v0, p1}, Lcom/coloros/systemui/common/settingsvalue/CommonSettingsValueProxy;->setGlobalIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setLockTaskModeState(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "lock_to_app_enabled"

    .line 70
    invoke-static {p0, v0, p1}, Lcom/coloros/systemui/common/settingsvalue/CommonSettingsValueProxy;->setSystemIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setPowerSavingModeState(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "is_smart_enable"

    .line 82
    invoke-static {p0, v0, p1}, Lcom/coloros/systemui/common/settingsvalue/CommonSettingsValueProxy;->setSystemIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected checkValidity(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
