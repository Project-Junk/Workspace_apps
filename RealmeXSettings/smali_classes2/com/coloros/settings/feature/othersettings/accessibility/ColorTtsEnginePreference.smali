.class public Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;
.super Lcom/android/settings/tts/TtsEnginePreference;
.source "ColorTtsEnginePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$a;
    }
.end annotation


# instance fields
.field private final d:Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$EngineInfo;Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$a;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/tts/TtsEnginePreference;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$EngineInfo;Lcom/android/settings/tts/TtsEnginePreference$a;)V

    .line 34
    iput-object p3, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;->d:Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$a;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;)V
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;->notifyChanged()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;->b(Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;Z)V
    .locals 1

    .line 1078
    iget-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;->b:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;->d:Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$a;

    .line 1079
    invoke-interface {v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$a;->d()Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;

    move-result-object v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 1089
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1090
    new-instance p2, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$2;

    invoke-direct {p2, p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$2;-><init>(Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;)V

    new-instance v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$3;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$3;-><init>(Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;)V

    invoke-virtual {p0, p2, v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;->a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 1105
    :cond_1
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;->b(Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    if-nez p2, :cond_4

    const/4 p0, 0x1

    .line 1082
    invoke-virtual {p1, p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;->setChecked(Z)V

    :cond_4
    return-void
.end method

.method private b(Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;->d:Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$a;

    invoke-interface {v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$a;->d()Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;->d:Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$a;

    invoke-interface {v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$a;->d()Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;->setChecked(Z)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;->d:Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$a;

    invoke-interface {v0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$a;->a(Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;)V

    .line 115
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;->d:Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$a;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$a;->a(Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;->d:Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$a;

    invoke-interface {p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$a;->d()Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;->setChecked(Z)V

    .line 117
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;->d:Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$a;

    invoke-interface {p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;->callChangeListener(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 39
    invoke-super {p0, p1}, Lcom/android/settings/tts/TtsEnginePreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 40
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;->d:Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$a;

    if-eqz v0, :cond_2

    .line 45
    new-instance v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$1;-><init>(Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;)V

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;->a:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;->d:Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$a;

    invoke-interface {v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;->d:Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$a;

    invoke-interface {v1, p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$a;->a(Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;)V

    :cond_0
    const/4 v1, 0x1

    .line 65
    iput-boolean v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;->b:Z

    const v1, 0x7f0a0183

    .line 66
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatCheckBox;

    if-eqz p1, :cond_1

    .line 68
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 70
    iput-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;->mChecked:Z

    :cond_1
    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;->b:Z

    return-void

    .line 41
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Call to getView() before a call tosetSharedState()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
