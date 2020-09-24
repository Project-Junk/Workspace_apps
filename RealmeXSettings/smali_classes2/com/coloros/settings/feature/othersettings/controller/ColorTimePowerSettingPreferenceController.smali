.class public Lcom/coloros/settings/feature/othersettings/controller/ColorTimePowerSettingPreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorTimePowerSettingPreferenceController.java"


# static fields
.field public static final KEY_PREFERENCE_TIME_POWER_ENTRANCE:Ljava/lang/String; = "timepower_settings"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "timepower_settings"

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static isPreferenceAvailable(Landroid/content/Context;)Z
    .locals 0

    .line 42
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/coloros/settings/utils/al;->e()Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 1051
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    return v0

    .line 38
    :cond_0
    invoke-static {}, Lcom/coloros/settings/utils/al;->e()Z

    const/4 v0, 0x0

    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 47
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "timepower_settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorTimePowerSettingPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "open_timepower_menu"

    .line 2042
    invoke-static {v0, v2, v1}, Lcom/oppo/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
