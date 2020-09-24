.class public Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingsValueProxy;
.super Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;
.source "SplitScreenSettingsValueProxy.java"


# static fields
.field public static final KEY_SPLIT_SCREEN:Ljava/lang/String; = "allow_resizeable_screen"

.field public static final KEY_SPLIT_SCREEN_FINGERS:Ljava/lang/String; = "double_finger_split_screen_enable"

.field public static final SPLIT_SCREEN_DISABLE:I = 0x0

.field public static final SPLIT_SCREEN_ENABLE:I = 0x1

.field public static final SPLIT_SCREEN_FINGERS_DISABLE:I = 0x0

.field public static final SPLIT_SCREEN_FINGERS_ENABLE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;-><init>()V

    return-void
.end method

.method public static getSplitScreenEnable(Landroid/content/Context;)I
    .locals 2

    const/4 v0, -0x1

    const-string v1, "allow_resizeable_screen"

    .line 49
    invoke-static {p0, v1, v0}, Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingsValueProxy;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static getSplitScreenFingersEnable(Landroid/content/Context;)I
    .locals 2

    const/4 v0, -0x1

    const-string v1, "double_finger_split_screen_enable"

    .line 71
    invoke-static {p0, v1, v0}, Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingsValueProxy;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static setSplitScreenEnable(Landroid/content/Context;I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "allow_resizeable_screen"

    .line 41
    invoke-static {p0, v0, p1}, Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingsValueProxy;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public static setSplitScreenFingersEnable(Landroid/content/Context;I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "double_finger_split_screen_enable"

    .line 63
    invoke-static {p0, v0, p1}, Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingsValueProxy;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected checkValidity(Landroid/content/Context;)V
    .locals 2

    .line 83
    invoke-static {p1}, Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingsValueProxy;->getSplitScreenFingersEnable(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    .line 84
    invoke-static {p1, v0}, Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingsValueProxy;->setSplitScreenFingersEnable(Landroid/content/Context;I)V

    .line 86
    :cond_0
    invoke-static {p1}, Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingsValueProxy;->getSplitScreenEnable(Landroid/content/Context;)I

    move-result p0

    if-ne p0, v1, :cond_1

    .line 87
    invoke-static {p1, v0}, Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingsValueProxy;->setSplitScreenEnable(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method
