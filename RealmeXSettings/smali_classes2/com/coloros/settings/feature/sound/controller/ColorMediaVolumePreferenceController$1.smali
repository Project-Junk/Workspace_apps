.class final Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController$1;
.super Landroid/database/ContentObserver;
.source "ColorMediaVolumePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController$1;->a:Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 6

    .line 55
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 56
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController$1;->a:Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;->access$000(Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 57
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController$1;->a:Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;

    invoke-static {v0}, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;->access$100(Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v2, 0x0

    const-string v3, "zen_mode"

    .line 58
    invoke-static {p1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 59
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    const-string v5, "no_media"

    invoke-static {p1, v5, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    if-ne p1, v5, :cond_0

    .line 61
    invoke-virtual {v0, v4, v5}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 62
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController$1;->a:Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;->updatePreferenceIcon()V

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    .line 64
    invoke-virtual {v0, v4, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 65
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController$1;->a:Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;->updatePreferenceIcon()V

    .line 67
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController$1;->a:Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;->access$200(Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 68
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController$1;->a:Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;

    iget-object v0, v0, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;->mPreference:Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;

    invoke-virtual {p1, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    .line 1161
    iget-object v1, v0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->q:Lcom/coloros/settings/widget/SettingsSeekBar;

    if-eqz v1, :cond_2

    .line 1162
    iget-object v0, v0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->q:Lcom/coloros/settings/widget/SettingsSeekBar;

    mul-int/lit8 p1, p1, 0x64

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/SettingsSeekBar;->setSeekBarProgress(I)V

    :cond_2
    return-void
.end method
