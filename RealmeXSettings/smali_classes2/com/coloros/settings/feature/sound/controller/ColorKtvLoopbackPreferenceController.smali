.class public Lcom/coloros/settings/feature/sound/controller/ColorKtvLoopbackPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "ColorKtvLoopbackPreferenceController.java"


# static fields
.field private static final KEY_KTV_LOOPBACK:Ljava/lang/String; = "ktv_loopback"

.field private static final KEY_KTV_LOOPBACK_CATEGORY:Ljava/lang/String; = "ktv_loopback_category"

.field private static final KEY_SOUND_BOTTOM_CATEGORY:Ljava/lang/String; = "sound_bottom"

.field public static final KTV_LOOPBACK_SWITCH:Ljava/lang/String; = "ktv_loopback_switch"

.field public static final KTV_LOOPBACK_SWITCH_CLOSE:Ljava/lang/String; = "ktv_loopback_switch=close"

.field public static final KTV_LOOPBACK_SWITCH_OPEN:Ljava/lang/String; = "ktv_loopback_switch=open"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mIsShowSplitLine:Z

.field private mPreference:Landroidx/preference/TwoStatePreference;

.field private mPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mSoundBottomCategory:Landroidx/preference/PreferenceCategory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "ktv_loopback"

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorKtvLoopbackPreferenceController;->mIsShowSplitLine:Z

    const-string v0, "audio"

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/sound/controller/ColorKtvLoopbackPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method private isShowBottomLine(Landroidx/preference/PreferenceScreen;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 73
    iget-object p2, p0, Lcom/coloros/settings/feature/sound/controller/ColorKtvLoopbackPreferenceController;->mSoundBottomCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private updateKtvSwitchStatus(Z)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorKtvLoopbackPreferenceController;->mPreference:Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "ktv_loopback_category"

    .line 65
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorKtvLoopbackPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "ktv_loopback"

    .line 66
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorKtvLoopbackPreferenceController;->mPreference:Landroidx/preference/TwoStatePreference;

    const-string v0, "sound_bottom"

    .line 67
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorKtvLoopbackPreferenceController;->mSoundBottomCategory:Landroidx/preference/PreferenceCategory;

    .line 68
    iget-boolean v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorKtvLoopbackPreferenceController;->mIsShowSplitLine:Z

    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/sound/controller/ColorKtvLoopbackPreferenceController;->isShowBottomLine(Landroidx/preference/PreferenceScreen;Z)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorKtvLoopbackPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "ktv_loopback_switch"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ktv_loopback_switch=open"

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const-string v1, "ktv_loopback_switch=close"

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    .line 58
    invoke-static {}, Lcom/coloros/settings/utils/bh;->I()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-static {}, Lcom/coloros/settings/utils/h;->j()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/coloros/settings/feature/sound/controller/ColorKtvLoopbackPreferenceController;->mIsShowSplitLine:Z

    if-eqz v0, :cond_4

    .line 59
    invoke-static {}, Lcom/coloros/settings/utils/bh;->I()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/coloros/settings/utils/h;->j()Z

    move-result v0

    if-nez v0, :cond_4

    return v3

    :cond_4
    const/4 v0, 0x3

    return v0
.end method

.method public isChecked()Z
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorKtvLoopbackPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "ktv_loopback_switch"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ktv_loopback_switch=open"

    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorKtvLoopbackPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "ktv_loopback_switch"

    invoke-static {v0, v1, p1}, Lcom/coloros/settings/utils/aj;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 91
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorKtvLoopbackPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz p1, :cond_0

    const-string p1, "ktv_loopback_switch=open"

    goto :goto_0

    :cond_0
    const-string p1, "ktv_loopback_switch=close"

    :goto_0
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 85
    invoke-virtual {p0}, Lcom/coloros/settings/feature/sound/controller/ColorKtvLoopbackPreferenceController;->isChecked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/sound/controller/ColorKtvLoopbackPreferenceController;->updateKtvSwitchStatus(Z)V

    return-void
.end method
