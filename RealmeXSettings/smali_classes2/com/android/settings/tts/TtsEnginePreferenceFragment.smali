.class public Lcom/android/settings/tts/TtsEnginePreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TtsEnginePreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/tts/TtsEnginePreference$a;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

.field protected c:Landroid/speech/tts/TextToSpeech;

.field protected d:Landroid/speech/tts/TtsEngines;

.field private e:Landroid/widget/Checkable;

.field private f:Ljava/lang/String;

.field private final g:Landroid/speech/tts/TextToSpeech$OnInitListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 187
    new-instance v0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$2;

    invoke-direct {v0}, Lcom/android/settings/tts/TtsEnginePreferenceFragment$2;-><init>()V

    sput-object v0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->c:Landroid/speech/tts/TextToSpeech;

    .line 53
    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->d:Landroid/speech/tts/TtsEngines;

    .line 117
    new-instance v0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/TtsEnginePreferenceFragment$1;-><init>(Lcom/android/settings/tts/TtsEnginePreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->g:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 3

    const-string v0, "TtsEnginePrefFragment"

    if-nez p1, :cond_0

    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Updating engine: Successfully bound to the engine: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->c:Landroid/speech/tts/TextToSpeech;

    .line 165
    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->c:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tts_default_synth"

    .line 166
    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    const-string p1, "Updating engine: Failed to bind to engine, reverting."

    .line 169
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object p1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->f:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 173
    new-instance p1, Landroid/speech/tts/TextToSpeech;

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->f:Ljava/lang/String;

    invoke-direct {p1, v1, v0, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->c:Landroid/speech/tts/TextToSpeech;

    .line 177
    :cond_1
    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->f:Ljava/lang/String;

    return-void
.end method

.method public final a(Landroid/widget/Checkable;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->e:Landroid/widget/Checkable;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .line 183
    iput-object p1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->a:Ljava/lang/String;

    .line 184
    iget-object p1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->a:Ljava/lang/String;

    .line 1126
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Updating default synth to : "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TtsEnginePrefFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->c:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->f:Ljava/lang/String;

    const-string v0, "Shutting down current tts engine"

    .line 1136
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->c:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 1139
    :try_start_0
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v0, 0x0

    .line 1140
    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->c:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1142
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Error shutting down TTS engine"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :cond_0
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Updating engine : Attempting to connect to engine: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->g:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, v2, v3, p1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->c:Landroid/speech/tts/TextToSpeech;

    const-string p1, "Success"

    .line 1151
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final b()Landroid/widget/Checkable;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->e:Landroid/widget/Checkable;

    return-object v0
.end method

.method protected c()V
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->c:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->a:Ljava/lang/String;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->b:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-virtual {v0}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->removeAll()V

    .line 90
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->d:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 92
    new-instance v2, Lcom/android/settings/tts/TtsEnginePreference;

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, p0}, Lcom/android/settings/tts/TtsEnginePreference;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$EngineInfo;Lcom/android/settings/tts/TtsEnginePreference$a;)V

    .line 94
    iget-object v1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->b:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-virtual {v1, v2}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x5d

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f15012c

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "tts_engine_preference_category"

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->b:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    .line 62
    new-instance p1, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->d:Landroid/speech/tts/TtsEngines;

    .line 64
    new-instance p1, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object p1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->c:Landroid/speech/tts/TextToSpeech;

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->c()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 77
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->c:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->c:Landroid/speech/tts/TextToSpeech;

    :cond_0
    return-void
.end method
