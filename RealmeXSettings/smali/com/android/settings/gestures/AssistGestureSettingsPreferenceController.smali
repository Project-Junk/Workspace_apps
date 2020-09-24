.class public Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;
.super Lcom/android/settings/gestures/GesturePreferenceController;
.source "AssistGestureSettingsPreferenceController.java"


# static fields
.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1

.field private static final PREF_KEY_VIDEO:Ljava/lang/String; = "gesture_assist_video"

.field private static final SECURE_KEY_ASSIST:Ljava/lang/String; = "assist_gesture_enabled"

.field private static final SECURE_KEY_SILENCE:Ljava/lang/String; = "assist_gesture_silence_alerts_enabled"


# instance fields
.field mAssistOnly:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mFeatureProvider:Lcom/android/settings/gestures/a;

.field private mPreference:Landroidx/preference/Preference;

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private mWasAvailable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settings/gestures/GesturePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getAssistGestureFeatureProvider()Lcom/android/settings/gestures/a;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mFeatureProvider:Lcom/android/settings/gestures/a;

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->isAvailable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mWasAvailable:Z

    return-void
.end method

.method private isAssistGestureEnabled()Z
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "assist_gesture_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSilenceGestureEnabled()Z
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "assist_gesture_silence_alerts_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updatePreference()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 65
    iput-object p1, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/gestures/GesturePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 122
    invoke-direct {p0}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->isAssistGestureEnabled()Z

    .line 123
    iget-boolean v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mAssistOnly:Z

    if-nez v0, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->isSilenceGestureEnabled()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 126
    :goto_0
    iget-object v1, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    const v0, 0x7f120a4e

    goto :goto_1

    :cond_1
    const v0, 0x7f120a4d

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getVideoPrefKey()Ljava/lang/String;
    .locals 1

    const-string v0, "gesture_assist_video"

    return-object v0
.end method

.method public isChecked()Z
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "assist_gesture_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public onResume()V
    .locals 2

    .line 72
    iget-boolean v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mWasAvailable:Z

    invoke-virtual {p0}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->isAvailable()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->updatePreference()V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->isAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mWasAvailable:Z

    :cond_0
    return-void
.end method

.method public setAssistOnly(Z)Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mAssistOnly:Z

    return-object p0
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assist_gesture_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method
