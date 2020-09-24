.class public Lcom/coloros/systemui/qs/util/QsSettingsValueProxy;
.super Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;
.source "QsSettingsValueProxy.java"


# static fields
.field public static final BRIGHTNESS_MODE_AUTOMATIC:I = 0x1

.field public static final BRIGHTNESS_MODE_MANUAL:I = 0x0

.field public static final KEY_BRIGHTNESS:Ljava/lang/String; = "screen_brightness"

.field public static final KEY_BRIGHTNESS_FOR_VR:Ljava/lang/String; = "screen_brightness_for_vr"

.field public static final KEY_BRIGHTNESS_MODE:Ljava/lang/String; = "screen_brightness_mode"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;-><init>()V

    return-void
.end method

.method public static getBrightness(Landroid/content/Context;I)I
    .locals 1

    const-string v0, "screen_brightness"

    .line 35
    invoke-static {p0, v0, p1}, Lcom/coloros/systemui/qs/util/QsSettingsValueProxy;->getSystemIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getBrightness(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "screen_brightness"

    .line 39
    invoke-static {p0, v0}, Lcom/coloros/systemui/qs/util/QsSettingsValueProxy;->getSystemStringValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBrightnessForVr(Landroid/content/Context;I)I
    .locals 1

    const-string v0, "screen_brightness_for_vr"

    .line 59
    invoke-static {p0, v0, p1}, Lcom/coloros/systemui/qs/util/QsSettingsValueProxy;->getSystemIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getBrightnessMode(Landroid/content/Context;)I
    .locals 2

    const-string v0, "screen_brightness_mode"

    const/4 v1, 0x0

    .line 51
    invoke-static {p0, v0, v1}, Lcom/coloros/systemui/qs/util/QsSettingsValueProxy;->getSystemIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static setBrightness(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "screen_brightness"

    .line 43
    invoke-static {p0, v0, p1}, Lcom/coloros/systemui/qs/util/QsSettingsValueProxy;->setSystemIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setBrightness(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "screen_brightness"

    .line 47
    invoke-static {p0, v0, p1}, Lcom/coloros/systemui/qs/util/QsSettingsValueProxy;->setSystemStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setBrightnessMode(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "screen_brightness_mode"

    .line 55
    invoke-static {p0, v0, p1}, Lcom/coloros/systemui/qs/util/QsSettingsValueProxy;->setSystemIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected checkValidity(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
