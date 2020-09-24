.class final Lcom/android/settings/sound/AudioSwitchPreferenceController$a;
.super Landroid/media/AudioDeviceCallback;
.source "AudioSwitchPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sound/AudioSwitchPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/sound/AudioSwitchPreferenceController;


# direct methods
.method private constructor <init>(Lcom/android/settings/sound/AudioSwitchPreferenceController;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController$a;->a:Lcom/android/settings/sound/AudioSwitchPreferenceController;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/sound/AudioSwitchPreferenceController;B)V
    .locals 0

    .line 287
    invoke-direct {p0, p1}, Lcom/android/settings/sound/AudioSwitchPreferenceController$a;-><init>(Lcom/android/settings/sound/AudioSwitchPreferenceController;)V

    return-void
.end method


# virtual methods
.method public final onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 1

    .line 290
    iget-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController$a;->a:Lcom/android/settings/sound/AudioSwitchPreferenceController;

    iget-object v0, p1, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public final onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 1

    .line 295
    iget-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController$a;->a:Lcom/android/settings/sound/AudioSwitchPreferenceController;

    iget-object v0, p1, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
