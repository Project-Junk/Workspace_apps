.class public Lcom/coloros/systemui/blackscreen/utils/BlackScreenSettingsValueProxy;
.super Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;
.source "BlackScreenSettingsValueProxy.java"


# static fields
.field public static final BLACK_SCREEN_MODE_OFF:I = 0x0

.field public static final BLACK_SCREEN_MODE_ON:I = 0x1

.field public static final HIGH_TEMP_PROTECT_OFF:I = 0x0

.field public static final HIGH_TEMP_PROTECT_ON:I = 0x1

.field public static final KEY_BLACK_SCREEN_MODE:Ljava/lang/String; = "black_screen_mode"

.field public static final KEY_HIGH_TEMPE_PROTECT:Ljava/lang/String; = "oppo_high_temperature_protection_status"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;-><init>()V

    return-void
.end method

.method public static getBlackScreenModeState(Landroid/content/Context;)I
    .locals 2

    const-string v0, "black_screen_mode"

    const/4 v1, 0x0

    .line 45
    invoke-static {p0, v0, v1}, Lcom/coloros/systemui/blackscreen/utils/BlackScreenSettingsValueProxy;->getGlobalIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    :cond_0
    return p0
.end method

.method public static getHighTempProtectState(Landroid/content/Context;)I
    .locals 2

    const-string v0, "oppo_high_temperature_protection_status"

    const/4 v1, 0x0

    .line 56
    invoke-static {p0, v0, v1}, Lcom/coloros/systemui/blackscreen/utils/BlackScreenSettingsValueProxy;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    :cond_0
    return p0
.end method

.method public static setBlackScreenModeState(Landroid/content/Context;I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "black_screen_mode"

    .line 37
    invoke-static {p0, v0, p1}, Lcom/coloros/systemui/blackscreen/utils/BlackScreenSettingsValueProxy;->setGlobalIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected checkValidity(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
