.class public Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;
.super Lcom/coloros/settings/feature/controller/BaseListDialogPreferenceController;
.source "VolumeModePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/b;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;
.implements Lcom/coloros/settings/feature/b/c$a;


# static fields
.field private static final TAG:Ljava/lang/String; = "VolumeModePreferenceController"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCurrentMode:I

.field private mRingerMode:[I

.field private mVolumeModeNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVolumeModeValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/controller/BaseListDialogPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 45
    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->mRingerMode:[I

    .line 48
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->mVolumeModeValueMap:Ljava/util/Map;

    .line 49
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->mVolumeModeNameMap:Ljava/util/Map;

    .line 56
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->mContext:Landroid/content/Context;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->mAudioManager:Landroid/media/AudioManager;

    const/4 p1, 0x1

    .line 57
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->setSingleSelect(Z)V

    .line 59
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0300f7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 60
    iget-object p2, p0, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0300f8

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 61
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->mRingerMode:[I

    array-length v0, v0

    array-length v1, p1

    array-length v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 63
    iget-object v2, p0, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->mVolumeModeValueMap:Ljava/util/Map;

    aget-object v3, p2, v1

    iget-object v4, p0, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->mRingerMode:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v2, p0, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->mVolumeModeNameMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->mRingerMode:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-object v4, p1, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x0
    .end array-data
.end method

.method private updateModeSummary(Ljava/lang/String;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->mDialogPreference:Landroidx/preference/DialogPreference;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->mDialogPreference:Landroidx/preference/DialogPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/DialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 85
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/controller/BaseListDialogPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 87
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->mDialogPreference:Landroidx/preference/DialogPreference;

    instance-of p1, p1, Lcom/color/support/preference/ColorListPreference;

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->mDialogPreference:Landroidx/preference/DialogPreference;

    check-cast p1, Lcom/color/support/preference/ColorListPreference;

    iget v0, p0, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->mCurrentMode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/color/support/preference/ColorListPreference;->setValue(Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->mVolumeModeNameMap:Ljava/util/Map;

    iget v0, p0, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->mCurrentMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->updateModeSummary(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public handlePreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 95
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->mVolumeModeValueMap:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->mVolumeModeValueMap:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 97
    iget-object p2, p0, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->mVolumeModeNameMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 99
    invoke-direct {p0, p2}, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->updateModeSummary(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 70
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->mCurrentMode:I

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 80
    invoke-static {p0}, Lcom/coloros/settings/feature/b/c;->b(Lcom/coloros/settings/feature/b/c$a;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 75
    invoke-static {p0}, Lcom/coloros/settings/feature/b/c;->a(Lcom/coloros/settings/feature/b/c$a;)V

    return-void
.end method

.method public onRingerModeChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 113
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->mCurrentMode:I

    .line 114
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->mVolumeModeNameMap:Ljava/util/Map;

    iget p2, p0, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->mCurrentMode:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 115
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->mVolumeModeNameMap:Ljava/util/Map;

    iget p2, p0, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->mCurrentMode:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 116
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->updateModeSummary(Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->mDialogPreference:Landroidx/preference/DialogPreference;

    instance-of p1, p1, Lcom/color/support/preference/ColorListPreference;

    if-eqz p1, :cond_0

    .line 118
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->mDialogPreference:Landroidx/preference/DialogPreference;

    check-cast p1, Lcom/color/support/preference/ColorListPreference;

    iget p2, p0, Lcom/coloros/settings/feature/sound/controller/VolumeModePreferenceController;->mCurrentMode:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/color/support/preference/ColorListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
