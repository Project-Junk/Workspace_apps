.class public Lcom/coloros/settings/feature/othersettings/controller/ColorVideoCallEffectPreferenceCategoryController;
.super Lcom/android/settings/core/a;
.source "ColorVideoCallEffectPreferenceCategoryController.java"


# static fields
.field public static final KEY_VIDEO_CALL_EFFECTS:Ljava/lang/String; = "video_call_effects"

.field private static final KEY_VIDEO_CALL_EFFECTS_CATEGORY:Ljava/lang/String; = "video_call_effects_category"


# instance fields
.field private final mIsVideoCallSettingsActionSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "video_call_effects"

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorVideoCallEffectPreferenceCategoryController;->mContext:Landroid/content/Context;

    const-string v0, "oppo.intent.action.VIDEO_CALL_SETTINGS"

    .line 33
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorVideoCallEffectPreferenceCategoryController;->mIsVideoCallSettingsActionSupported:Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 39
    iget-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorVideoCallEffectPreferenceCategoryController;->mIsVideoCallSettingsActionSupported:Z

    if-nez v0, :cond_0

    const-string v0, "video_call_effects_category"

    .line 40
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorVideoCallEffectPreferenceCategoryController;->mIsVideoCallSettingsActionSupported:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method
