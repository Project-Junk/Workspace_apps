.class public Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;
.super Lcom/android/settings/notification/MediaVolumePreferenceController;
.source "ColorMediaVolumePreferenceController.java"


# static fields
.field public static final KEY_MEDIA_VOLUME:Ljava/lang/String; = "media_volume"


# instance fields
.field protected mPreference:Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;

.field private mZenModeObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/notification/MediaVolumePreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getMinProgressIcon()I
    .locals 1

    const v0, 0x7f0809b7

    return v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/notification/MediaVolumePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 50
    invoke-virtual {p0}, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;->mPreference:Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;

    .line 51
    invoke-virtual {p0}, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;->updatePreferenceIcon()V

    .line 52
    new-instance p1, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController$1;-><init>(Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;->mZenModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 44
    invoke-static {}, Lcom/coloros/settings/custom/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/settings/notification/MediaVolumePreferenceController;->getAvailabilityStatus()I

    move-result v0

    return v0
.end method

.method public getMuteIcon()I
    .locals 1

    const v0, 0x7f0809b7

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 83
    invoke-super {p0}, Lcom/android/settings/notification/MediaVolumePreferenceController;->onPause()V

    .line 84
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;->mZenModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 75
    invoke-super {p0}, Lcom/android/settings/notification/MediaVolumePreferenceController;->onResume()V

    .line 76
    invoke-virtual {p0}, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;->updatePreferenceIcon()V

    .line 77
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;->mZenModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method protected updatePreferenceIcon()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;->mPreference:Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;

    if-eqz v0, :cond_0

    const v1, 0x7f0809b6

    .line 89
    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->b(I)V

    .line 90
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;->mPreference:Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;

    instance-of v1, v0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;

    if-eqz v1, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;->getMinProgressIcon()I

    move-result v1

    .line 1142
    iget v2, v0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->r:I

    if-eq v2, v1, :cond_0

    .line 1145
    iput v1, v0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->r:I

    .line 1146
    invoke-virtual {v0}, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->f()V

    :cond_0
    return-void
.end method
