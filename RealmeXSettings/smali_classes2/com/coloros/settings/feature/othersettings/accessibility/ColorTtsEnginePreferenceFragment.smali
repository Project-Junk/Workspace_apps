.class public Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreferenceFragment;
.super Lcom/android/settings/tts/TtsEnginePreferenceFragment;
.source "ColorTtsEnginePreferenceFragment.java"

# interfaces
.implements Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$a;


# instance fields
.field private e:Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreferenceFragment;->e:Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;

    return-void
.end method

.method public final c()V
    .locals 5

    .line 37
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreferenceFragment;->c:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreferenceFragment;->c:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreferenceFragment;->a:Ljava/lang/String;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreferenceFragment;->b:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-virtual {v0}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->a()V

    .line 43
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreferenceFragment;->b:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-virtual {v0}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->removeAll()V

    .line 46
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreferenceFragment;->d:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/speech/tts/TextToSpeech$EngineInfo;

    const-string v2, "TtsEnginePrefFragment"

    if-eqz v1, :cond_1

    .line 50
    iget-object v3, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    const-string v4, "com.svox.pico"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "hide engine.name = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    .line 52
    iget-object v3, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 55
    :cond_2
    new-instance v2, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;

    .line 56
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$EngineInfo;Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$a;)V

    .line 57
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreferenceFragment;->b:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-virtual {v1, v2}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_3
    :goto_1
    const-string v1, "engine is empty"

    .line 53
    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final d()Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreferenceFragment;->e:Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;

    return-object v0
.end method
