.class public Lcom/android/settings/language/TtsPreferenceController;
.super Lcom/android/settings/core/a;
.source "TtsPreferenceController.java"


# instance fields
.field mTtsEngines:Landroid/speech/tts/TtsEngines;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    new-instance p2, Landroid/speech/tts/TtsEngines;

    invoke-direct {p2, p1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/language/TtsPreferenceController;->mTtsEngines:Landroid/speech/tts/TtsEngines;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/android/settings/language/TtsPreferenceController;->mTtsEngines:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/language/TtsPreferenceController;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method
