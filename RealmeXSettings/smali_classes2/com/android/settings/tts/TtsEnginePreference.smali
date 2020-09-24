.class public Lcom/android/settings/tts/TtsEnginePreference;
.super Lcom/coloros/settings/widget/preference/ColorMarkPreference;
.source "TtsEnginePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/tts/TtsEnginePreference$a;
    }
.end annotation


# instance fields
.field protected final a:Landroid/speech/tts/TextToSpeech$EngineInfo;

.field public volatile b:Z

.field private final d:Lcom/android/settings/tts/TtsEnginePreference$a;

.field private final e:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$EngineInfo;Lcom/android/settings/tts/TtsEnginePreference$a;)V
    .locals 1

    .line 69
    invoke-direct {p0, p1}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance p1, Lcom/android/settings/tts/TtsEnginePreference$1;

    invoke-direct {p1, p0}, Lcom/android/settings/tts/TtsEnginePreference$1;-><init>(Lcom/android/settings/tts/TtsEnginePreference;)V

    iput-object p1, p0, Lcom/android/settings/tts/TtsEnginePreference;->e:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEnginePreference;->b()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const p1, 0x7f0d027c

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/settings/tts/TtsEnginePreference;->setWidgetLayoutResource(I)V

    const p1, 0x7f0d026a

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/settings/tts/TtsEnginePreference;->setLayoutResource(I)V

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TtsEnginePreference;->setIconSpaceReserved(Z)V

    .line 78
    :cond_0
    iput-object p3, p0, Lcom/android/settings/tts/TtsEnginePreference;->d:Lcom/android/settings/tts/TtsEnginePreference$a;

    .line 79
    iput-object p2, p0, Lcom/android/settings/tts/TtsEnginePreference;->a:Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 80
    iput-boolean v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->b:Z

    .line 82
    iget-object p1, p0, Lcom/android/settings/tts/TtsEnginePreference;->a:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object p1, p1, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/tts/TtsEnginePreference;->setKey(Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/android/settings/tts/TtsEnginePreference;->a:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object p1, p1, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/tts/TtsEnginePreference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Landroid/widget/Checkable;)V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->d:Lcom/android/settings/tts/TtsEnginePreference$a;

    invoke-interface {v0}, Lcom/android/settings/tts/TtsEnginePreference$a;->b()Landroid/widget/Checkable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->d:Lcom/android/settings/tts/TtsEnginePreference$a;

    invoke-interface {v0}, Lcom/android/settings/tts/TtsEnginePreference$a;->b()Landroid/widget/Checkable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->d:Lcom/android/settings/tts/TtsEnginePreference$a;

    invoke-interface {v0, p1}, Lcom/android/settings/tts/TtsEnginePreference$a;->a(Landroid/widget/Checkable;)V

    .line 170
    iget-object p1, p0, Lcom/android/settings/tts/TtsEnginePreference;->d:Lcom/android/settings/tts/TtsEnginePreference$a;

    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/settings/tts/TtsEnginePreference$a;->a(Ljava/lang/String;)V

    .line 171
    iget-object p1, p0, Lcom/android/settings/tts/TtsEnginePreference;->d:Lcom/android/settings/tts/TtsEnginePreference$a;

    invoke-interface {p1}, Lcom/android/settings/tts/TtsEnginePreference$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/tts/TtsEnginePreference;->callChangeListener(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/android/settings/tts/TtsEnginePreference;Landroid/widget/Checkable;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/tts/TtsEnginePreference;->a(Landroid/widget/Checkable;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/tts/TtsEnginePreference;Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1138
    iget-boolean v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->b:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->d:Lcom/android/settings/tts/TtsEnginePreference$a;

    .line 1139
    invoke-interface {v0}, Lcom/android/settings/tts/TtsEnginePreference$a;->b()Landroid/widget/Checkable;

    move-result-object v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 1145
    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEnginePreference;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1146
    new-instance p2, Lcom/android/settings/tts/TtsEnginePreference$2;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/tts/TtsEnginePreference$2;-><init>(Lcom/android/settings/tts/TtsEnginePreference;Landroid/widget/CompoundButton;)V

    new-instance v0, Lcom/android/settings/tts/TtsEnginePreference$3;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/tts/TtsEnginePreference$3;-><init>(Lcom/android/settings/tts/TtsEnginePreference;Landroid/widget/CompoundButton;)V

    invoke-virtual {p0, p2, v0}, Lcom/android/settings/tts/TtsEnginePreference;->a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 1160
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/tts/TtsEnginePreference;->a(Landroid/widget/Checkable;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 7

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Displaying data alert for :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/tts/TtsEnginePreference;->a:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TtsEnginePreference"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEnginePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    .line 124
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEnginePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreference;->a:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v5, v5, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f121730

    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 127
    invoke-virtual {v1, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    .line 128
    invoke-virtual {v1, v2, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v1, 0x1040000

    .line 129
    invoke-virtual {p1, v1, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 131
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->a:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-boolean v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 88
    invoke-super {p0, p1}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEnginePreference;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->d:Lcom/android/settings/tts/TtsEnginePreference$a;

    if-eqz v0, :cond_2

    .line 100
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    .line 101
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->e:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/tts/TtsEnginePreference;->d:Lcom/android/settings/tts/TtsEnginePreference$a;

    invoke-interface {v1}, Lcom/android/settings/tts/TtsEnginePreference$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v1, p0, Lcom/android/settings/tts/TtsEnginePreference;->d:Lcom/android/settings/tts/TtsEnginePreference$a;

    invoke-interface {v1, p1}, Lcom/android/settings/tts/TtsEnginePreference$a;->a(Landroid/widget/Checkable;)V

    :cond_1
    const/4 v1, 0x1

    .line 108
    iput-boolean v1, p0, Lcom/android/settings/tts/TtsEnginePreference;->b:Z

    .line 109
    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 p1, 0x0

    .line 110
    iput-boolean p1, p0, Lcom/android/settings/tts/TtsEnginePreference;->b:Z

    return-void

    .line 96
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Call to getView() before a call tosetSharedState()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
