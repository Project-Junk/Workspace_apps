.class public Lcom/android/settings/widget/VideoPreferenceController;
.super Lcom/android/settings/core/a;
.source "VideoPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# instance fields
.field private mVideoPaused:Z

.field private mVideoPreference:Lcom/android/settings/widget/VideoPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/widget/VideoPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/VideoPreference;

    iput-object p1, p0, Lcom/android/settings/widget/VideoPreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    if-eqz v0, :cond_0

    .line 1254
    iget-boolean v0, v0, Lcom/android/settings/widget/VideoPreference;->e:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/settings/widget/VideoPreferenceController;->mVideoPaused:Z

    .line 53
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/VideoPreference;->a()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    if-eqz v0, :cond_0

    .line 60
    iget-boolean v1, p0, Lcom/android/settings/widget/VideoPreferenceController;->mVideoPaused:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/VideoPreference;->a(Z)V

    :cond_0
    return-void
.end method
