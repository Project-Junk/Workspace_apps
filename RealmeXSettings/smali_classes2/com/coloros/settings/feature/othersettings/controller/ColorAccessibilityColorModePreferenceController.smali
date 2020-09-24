.class public Lcom/coloros/settings/feature/othersettings/controller/ColorAccessibilityColorModePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "ColorAccessibilityColorModePreferenceController.java"


# static fields
.field public static final KEY_ACCESSIBILITY_COLOR_MODE:Ljava/lang/String; = "key_accessibility_color_mode"

.field private static final POST_DELAY_TIME:I = 0x12c


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "key_accessibility_color_mode"

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected dcsState(Z)V
    .locals 3

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 60
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/controller/ColorAccessibilityColorModePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance p1, Lcom/coloros/settings/statistics/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/controller/ColorAccessibilityColorModePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_state_update"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p1, v1, v0, v2}, Lcom/coloros/settings/statistics/a$a;-><init>(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/controller/ColorAccessibilityColorModePreferenceController;->setDcsCommon(Lcom/coloros/settings/statistics/a$a;)V

    .line 64
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/controller/ColorAccessibilityColorModePreferenceController;->handleCommonUpload()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorAccessibilityColorModePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/g;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)Z
    .locals 4

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/coloros/settings/feature/othersettings/controller/ColorAccessibilityColorModePreferenceController$1;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/othersettings/controller/ColorAccessibilityColorModePreferenceController$1;-><init>(Lcom/coloros/settings/feature/othersettings/controller/ColorAccessibilityColorModePreferenceController;Z)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    return p1
.end method
