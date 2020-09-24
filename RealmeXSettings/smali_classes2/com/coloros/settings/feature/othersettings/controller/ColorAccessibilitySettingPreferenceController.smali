.class public Lcom/coloros/settings/feature/othersettings/controller/ColorAccessibilitySettingPreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorAccessibilitySettingPreferenceController.java"


# static fields
.field public static final KEY_ACCESSIBILITY_SETTINGS:Ljava/lang/String; = "accessibility_settings"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "accessibility_settings"

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 37
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accessibility_settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorAccessibilitySettingPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "accessibility_settings_pre"

    .line 1248
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
