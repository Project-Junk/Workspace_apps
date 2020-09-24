.class public Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;
.super Lcom/android/settings/notification/SoundSettings;
.source "ColorSoundSettingsFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/a;


# instance fields
.field private c:Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;

.field private d:Lcom/android/settings/SettingsActivity$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 224
    new-instance v0, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;-><init>()V

    .line 330
    new-instance v0, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment$2;-><init>(Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;->d:Lcom/android/settings/SettingsActivity$a;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;)Landroid/content/Context;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private static a(Landroid/content/Context;Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;",
            "Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    new-instance v1, Lcom/coloros/settings/feature/sound/controller/ColorVibrateWhenRingPreferenceController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/sound/controller/ColorVibrateWhenRingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v1, Lcom/coloros/settings/feature/sound/controller/VibrateWhenSilentPreferenceController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/sound/controller/VibrateWhenSilentPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v1, Lcom/coloros/settings/feature/sound/controller/VolumeSilentPreferenceController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/sound/controller/VolumeSilentPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v1, Lcom/coloros/settings/feature/sound/controller/ColorVolumeCategoryController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/sound/controller/ColorVolumeCategoryController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v1, Lcom/coloros/settings/feature/sound/controller/ColorRingVolumePreferenceController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/sound/controller/ColorRingVolumePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v1, Lcom/coloros/settings/feature/sound/controller/ColorAlarmVolumePreferenceController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/sound/controller/ColorAlarmVolumePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v1, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v1, Lcom/coloros/settings/feature/sound/controller/f;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/sound/controller/f;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v1, Lcom/coloros/settings/feature/sound/controller/g;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/sound/controller/g;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v1, Lcom/coloros/settings/feature/sound/controller/h;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/sound/controller/h;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v1, Lcom/coloros/settings/feature/sound/controller/i;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/sound/controller/i;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v1, Lcom/coloros/settings/feature/sound/controller/a;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/sound/controller/a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v1, Lcom/coloros/settings/feature/sound/controller/c;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/sound/controller/c;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v1, Lcom/android/settings/notification/DialPadTonePreferenceController;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/notification/DialPadTonePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 164
    new-instance v3, Lcom/android/settings/notification/ScreenLockSoundPreferenceController;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/settings/notification/ScreenLockSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 166
    new-instance v4, Lcom/android/settings/notification/TouchSoundPreferenceController;

    invoke-direct {v4, p0, p1, v2}, Lcom/android/settings/notification/TouchSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 168
    new-instance v5, Lcom/android/settings/notification/VibrateOnTouchPreferenceController;

    invoke-direct {v5, p0, p1, v2}, Lcom/android/settings/notification/VibrateOnTouchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 170
    new-instance v2, Lcom/coloros/settings/feature/sound/controller/ScreenCapturePreferenceController;

    invoke-direct {v2, p0, p1}, Lcom/coloros/settings/feature/sound/controller/ScreenCapturePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 172
    new-instance v6, Lcom/coloros/settings/feature/sound/controller/FrontFingerSoundPreferenceController;

    invoke-direct {v6, p0, p1}, Lcom/coloros/settings/feature/sound/controller/FrontFingerSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 174
    new-instance v7, Lcom/coloros/settings/feature/sound/controller/GlobalDeleteSoundPreferenceController;

    invoke-direct {v7, p0, p1}, Lcom/coloros/settings/feature/sound/controller/GlobalDeleteSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 177
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/m;->a(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 187
    new-instance v1, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/SoundSettings;)V

    .line 189
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v1, Lcom/coloros/settings/feature/sound/controller/l;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/sound/controller/l;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v1, Lcom/coloros/settings/feature/sound/controller/m;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/sound/controller/m;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v1, Lcom/coloros/settings/feature/sound/controller/k;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/sound/controller/k;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v1, Lcom/coloros/settings/feature/sound/controller/j;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/sound/controller/j;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_0
    new-instance v1, Lcom/coloros/settings/feature/sound/controller/MaxxAudioPreferenceController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/sound/controller/MaxxAudioPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v1, Lcom/coloros/settings/feature/sound/controller/RealSoundPreferenceController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/sound/controller/RealSoundPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v1, Lcom/coloros/settings/feature/sound/controller/DolbySoundPreferenceController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/sound/controller/DolbySoundPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v1, Lcom/coloros/settings/feature/sound/controller/ColorKtvLoopbackPreferenceController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/sound/controller/ColorKtvLoopbackPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v1, Lcom/coloros/settings/feature/sound/controller/ColorKtvLoopbackSupportPreferenceController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/sound/controller/ColorKtvLoopbackSupportPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v1, Lcom/coloros/settings/feature/sound/controller/ColorSoundDevicePreferenceController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/sound/controller/ColorSoundDevicePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v1, Lcom/coloros/settings/feature/sound/controller/DefaultVolumeTypePreferenceController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/sound/controller/DefaultVolumeTypePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v1, Lcom/coloros/settings/feature/sound/controller/ColorSoundVibrateRecommendedController;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/sound/controller/ColorSoundVibrateRecommendedController;-><init>(Landroid/content/Context;Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2

    .line 213
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/core/a;

    .line 214
    instance-of v1, p1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    if-eqz v1, :cond_1

    .line 215
    check-cast p1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    invoke-virtual {p2, p1}, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;->a(Lcom/android/settingslib/core/lifecycle/LifecycleObserver;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;)Landroid/content/Context;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-static {p0, v0, v0}, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;->a(Landroid/content/Context;Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "ColorSoundSettingsFragment"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;

    invoke-direct {v0}, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;->c:Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;

    .line 112
    invoke-virtual {p0}, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;->c:Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 113
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;->c:Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;

    invoke-static {p1, p0, v0}, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;->a(Landroid/content/Context;Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final c()V
    .locals 3

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    const-class v1, Lcom/coloros/settings/feature/sound/controller/ColorRingVolumePreferenceController;

    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    const-class v1, Lcom/coloros/settings/feature/sound/controller/ColorAlarmVolumePreferenceController;

    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    const-class v1, Lcom/coloros/settings/feature/sound/controller/ColorMediaVolumePreferenceController;

    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;

    .line 129
    iget-object v2, p0, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;->a:Lcom/android/settings/notification/SoundSettings$a;

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .line 295
    const-class v0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;

    .line 296
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0}, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->b()V

    :cond_0
    return-void
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150067

    return v0
.end method

.method public final k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/notification/SoundSettings;->onCreate(Landroid/os/Bundle;)V

    .line 1102
    invoke-virtual {p0}, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->ao(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "vibration_intensity_category"

    .line 1104
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;->removePreference(Ljava/lang/String;)Z

    :cond_0
    const-string p1, "common_vibration_intensity_category"

    .line 1106
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;->removePreference(Ljava/lang/String;)Z

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 324
    invoke-super {p0}, Lcom/android/settings/notification/SoundSettings;->onDetach()V

    .line 325
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;->c:Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;->a()V

    :cond_0
    return-void
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 1

    .line 135
    invoke-static {p0, p1}, Lcom/coloros/settings/utils/i;->a(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Landroidx/fragment/app/DialogFragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 137
    invoke-super {p0, p1}, Lcom/android/settings/notification/SoundSettings;->onDisplayPreferenceDialog(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 315
    invoke-super {p0}, Lcom/android/settings/notification/SoundSettings;->onPause()V

    .line 317
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;->d:Lcom/android/settings/SettingsActivity$a;

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->unRegisterFocusOnListener()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 306
    invoke-super {p0}, Lcom/android/settings/notification/SoundSettings;->onResume()V

    .line 308
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;->d:Lcom/android/settings/SettingsActivity$a;

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;->d:Lcom/android/settings/SettingsActivity$a;

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->registerFocusOnLister(Lcom/android/settings/SettingsActivity$a;)V

    :cond_0
    return-void
.end method
