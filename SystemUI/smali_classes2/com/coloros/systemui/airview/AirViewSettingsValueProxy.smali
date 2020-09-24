.class public Lcom/coloros/systemui/airview/AirViewSettingsValueProxy;
.super Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;
.source "AirViewSettingsValueProxy.java"


# static fields
.field public static final KEY_AIR_VIEW_TOGGLE:Ljava/lang/String; = "air_view_toggle"

.field public static final KEY_SPLIT_SCREEN_TOGGLE:Ljava/lang/String; = "air_view_split_screen_toggle"

.field public static final TOGGLE_OFF:I = 0x0

.field public static final TOGGLE_ON:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;-><init>()V

    return-void
.end method

.method public static getToggleState(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    .line 21
    invoke-static {p0, p1, v0}, Lcom/coloros/systemui/airview/AirViewSettingsValueProxy;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static setToggleState(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 17
    invoke-static {p0, p1, p2}, Lcom/coloros/systemui/airview/AirViewSettingsValueProxy;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected checkValidity(Landroid/content/Context;)V
    .locals 3

    const-string p0, "air_view_toggle"

    .line 33
    invoke-static {p1, p0}, Lcom/coloros/systemui/airview/AirViewSettingsValueProxy;->getToggleState(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 34
    invoke-static {p1, p0, v1}, Lcom/coloros/systemui/airview/AirViewSettingsValueProxy;->setToggleState(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    const-string p0, "air_view_split_screen_toggle"

    .line 37
    invoke-static {p1, p0}, Lcom/coloros/systemui/airview/AirViewSettingsValueProxy;->getToggleState(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 38
    invoke-static {}, Lcom/color/compat/view/WindowManagerNative;->getDockedStackSide()I

    move-result v0

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 39
    :goto_0
    invoke-static {p1, p0, v1}, Lcom/coloros/systemui/airview/AirViewSettingsValueProxy;->setToggleState(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_2
    return-void
.end method
