.class public Lcom/coloros/settings/feature/sound/controller/ColorSoundVibrateRecommendedController;
.super Lcom/android/settings/core/a;
.source "ColorSoundVibrateRecommendedController.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "sound_vibrate_bottom_recommended"


# instance fields
.field private mFragment:Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;)V
    .locals 1

    const-string v0, "sound_vibrate_bottom_recommended"

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    iput-object p2, p0, Lcom/coloros/settings/feature/sound/controller/ColorSoundVibrateRecommendedController;->mFragment:Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 6

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "sound_vibrate_bottom_recommended"

    .line 55
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;

    if-eqz p1, :cond_3

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    sget-boolean v1, Lcom/coloros/settings/a;->a:Z

    const-string v2, "sound_settings"

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "heytap.intent.action.SPEECH_ASSIST_SETTINGS"

    .line 60
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.heytap.speechassist"

    .line 61
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    iget-object v3, p0, Lcom/coloros/settings/feature/sound/controller/ColorSoundVibrateRecommendedController;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 63
    new-instance v3, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;

    iget-object v4, p0, Lcom/coloros/settings/feature/sound/controller/ColorSoundVibrateRecommendedController;->mContext:Landroid/content/Context;

    const v5, 0x7f120448

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "breeno_voice"

    invoke-direct {v3, v4, v1, v5, v2}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/sound/controller/ColorSoundVibrateRecommendedController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/feature/convenient/controller/ColorGoogleAssitantPreferenceController;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, ":settings:fragment_args_key"

    const-string v4, "google_asssist"

    .line 71
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v3, Lcom/android/settings/core/f;

    iget-object v4, p0, Lcom/coloros/settings/feature/sound/controller/ColorSoundVibrateRecommendedController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-string v4, "com.coloros.settings.feature.convenient.ColorConvenientAidFragment"

    .line 73
    invoke-virtual {v3, v4}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v3

    iget-object v4, p0, Lcom/coloros/settings/feature/sound/controller/ColorSoundVibrateRecommendedController;->mFragment:Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;

    if-eqz v4, :cond_1

    .line 75
    invoke-interface {v4}, Lcom/android/settingslib/core/instrumentation/b;->getMetricsCategory()I

    move-result v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 74
    :goto_0
    invoke-virtual {v3, v4}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object v3

    .line 77
    invoke-virtual {v3, v1}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 1063
    invoke-virtual {v1, v3, v4}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Lcom/android/settings/core/f;->b()Landroid/content/Intent;

    move-result-object v1

    .line 80
    new-instance v3, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;

    iget-object v4, p0, Lcom/coloros/settings/feature/sound/controller/ColorSoundVibrateRecommendedController;->mContext:Landroid/content/Context;

    const v5, 0x7f120a65

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "google_assistant"

    invoke-direct {v3, v4, v1, v5, v2}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_2
    :goto_1
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;->a(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
