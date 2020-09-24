.class public Lcom/coloros/settings/doubleears/controller/DoubleEarSpeakerCheckboxController;
.super Lcom/android/settingslib/core/a;
.source "DoubleEarSpeakerCheckboxController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# instance fields
.field private final a:Lcom/coloros/settings/doubleears/a/a;

.field private final b:Landroidx/preference/PreferenceFragmentCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/coloros/settings/doubleears/a/a;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p3, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarSpeakerCheckboxController;->a:Lcom/coloros/settings/doubleears/a/a;

    .line 45
    iput-object p2, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarSpeakerCheckboxController;->b:Landroidx/preference/PreferenceFragmentCompat;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarSpeakerCheckboxController;->b:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Lcom/coloros/settings/doubleears/controller/DoubleEarSpeakerCheckboxController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarSpeakerCheckboxController;->b:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Lcom/coloros/settings/doubleears/controller/DoubleEarSpeakerCheckboxController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 81
    instance-of v1, v0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;

    if-eqz v1, :cond_0

    .line 82
    check-cast v0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->c(Z)V

    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarSpeakerCheckboxController;->b:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Lcom/coloros/settings/doubleears/controller/DoubleEarSpeakerCheckboxController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 109
    instance-of v1, v0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;

    if-eqz v1, :cond_0

    .line 110
    check-cast v0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->a(Z)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "double_earphone_media_speaker"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 50
    instance-of p1, p2, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarSpeakerCheckboxController;->a:Lcom/coloros/settings/doubleears/a/a;

    const/4 v0, 0x3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/coloros/settings/doubleears/a/a;->a(IZ)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarSpeakerCheckboxController;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    .line 97
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    .line 104
    :cond_0
    invoke-virtual {p0, v1}, Lcom/coloros/settings/doubleears/controller/DoubleEarSpeakerCheckboxController;->c(Z)V

    return-void
.end method
