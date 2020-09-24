.class public Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;
.super Lcom/android/settings/core/a;
.source "CameraSoundPrefCategoryController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/b;
.implements Lcom/android/settingslib/core/lifecycle/a/d;
.implements Lcom/android/settingslib/core/lifecycle/a/f;


# static fields
.field private static final ABANDON_AUDIO_FOCUS_DELAY:I = 0x7d0

.field private static final EVENT_MAP_NAME:Ljava/lang/String; = "name"

.field private static final MAX_STREAMS:I = 0x6

.field private static final MSG_ABANDON_AUDIO_FOCUS:I = 0x200

.field private static final MSG_PLAY_SOUND:I = 0x100

.field private static final PLAY_NEXT_SOUND_DELAY:I = 0x3e8

.field private static final PREF_KEY_SOUND_CATEGORY:Ljava/lang/String; = "camera_lifting_descending_sound_category"

.field private static final PREF_KEY_SOUND_PICKER_CATEGORY:Ljava/lang/String; = "camera_lifting_descending_sound_picker_category"

.field private static final PREF_KEY_SOUND_SWITCH:Ljava/lang/String; = "camera_lifting_descending_effect_sound"

.field private static final RES_PATH_MECHANISM_DOWN:Ljava/lang/String; = "/system/media/audio/ui/mechanism_down.ogg"

.field private static final RES_PATH_MECHANISM_UP:Ljava/lang/String; = "/system/media/audio/ui/mechanism_up.ogg"

.field private static final RES_PATH_PURE_MUSIC_DOWN:Ljava/lang/String; = "/system/media/audio/ui/pure_music_down.ogg"

.field private static final RES_PATH_PURE_MUSIC_UP:Ljava/lang/String; = "/system/media/audio/ui/pure_music_up.ogg"

.field private static final RES_PATH_TECHNOLOGY_DOWN:Ljava/lang/String; = "/system/media/audio/ui/technology_down.ogg"

.field private static final RES_PATH_TECHNOLOGY_UP:Ljava/lang/String; = "/system/media/audio/ui/technology_up.ogg"

.field private static final SRC_QUALITY:I = 0x5

.field private static final TAG:Ljava/lang/String; = "CameraSoundPrefCategoryController"


# instance fields
.field private mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mHandler:Landroid/os/Handler;

.field private final mIs3DCameraSupport:Z

.field private mLocalReceiver:Landroid/content/BroadcastReceiver;

.field private mPrefScreen:Landroidx/preference/PreferenceScreen;

.field private mSoundEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/othersettings/cameraeffect/b;",
            ">;"
        }
    .end annotation
.end field

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPrefCategory:Landroidx/preference/PreferenceCategory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2

    const-string v0, "camera_lifting_descending_sound_category"

    .line 87
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mSoundEffects:Ljava/util/List;

    .line 160
    new-instance v0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController$1;-><init>(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mLocalReceiver:Landroid/content/BroadcastReceiver;

    .line 284
    new-instance v0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController$2;-><init>(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mHandler:Landroid/os/Handler;

    .line 303
    sget-object v0, Lcom/coloros/settings/feature/othersettings/cameraeffect/-$$Lambda$CameraSoundPrefCategoryController$z-BLbM0nm7ewtygfHMiK0XhVzoo;->INSTANCE:Lcom/coloros/settings/feature/othersettings/cameraeffect/-$$Lambda$CameraSoundPrefCategoryController$z-BLbM0nm7ewtygfHMiK0XhVzoo;

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 88
    invoke-static {}, Lcom/coloros/settings/utils/bh;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mIs3DCameraSupport:Z

    .line 89
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->init(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 91
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;)Landroid/os/Handler;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;)Landroid/media/SoundPool;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mSoundPool:Landroid/media/SoundPool;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;)Landroid/media/AudioManager;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object p0
.end method

.method private addSoundPathAndLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 198
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    .line 202
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v2, p3, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 204
    iget-object p3, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mSoundEffects:Ljava/util/List;

    new-instance v2, Lcom/coloros/settings/feature/othersettings/cameraeffect/b;

    invoke-direct {v2, p1, v0, v1, p2}, Lcom/coloros/settings/feature/othersettings/cameraeffect/b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private dcsSoundEffect(Ljava/lang/String;)V
    .locals 3

    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 279
    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mContext:Landroid/content/Context;

    const-string v1, "20012"

    const-string v2, "camera_lifting_descending_effect_sound"

    invoke-static {p1, v1, v2, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private getSoundEffectByDisplayName(Ljava/lang/CharSequence;)Lcom/coloros/settings/feature/othersettings/cameraeffect/b;
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mSoundEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/feature/othersettings/cameraeffect/b;

    .line 5030
    iget-object v2, v1, Lcom/coloros/settings/feature/othersettings/cameraeffect/b;->a:Ljava/lang/String;

    .line 270
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    const-string v0, "audio"

    .line 96
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mAudioManager:Landroid/media/AudioManager;

    .line 97
    new-instance p1, Landroid/media/SoundPool;

    const/4 v0, 0x6

    const/4 v1, 0x7

    const/4 v2, 0x5

    invoke-direct {p1, v0, v1, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mSoundPool:Landroid/media/SoundPool;

    .line 98
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->loadSoundEffects()V

    .line 99
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mSoundPool:Landroid/media/SoundPool;

    sget-object v0, Lcom/coloros/settings/feature/othersettings/cameraeffect/-$$Lambda$CameraSoundPrefCategoryController$TN8bfXqz0pdXe9qVXSXIaCVvb9U;->INSTANCE:Lcom/coloros/settings/feature/othersettings/cameraeffect/-$$Lambda$CameraSoundPrefCategoryController$TN8bfXqz0pdXe9qVXSXIaCVvb9U;

    invoke-virtual {p1, v0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    return-void
.end method

.method private initSoundPreferenceCategory(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    const-string v0, "camera_lifting_descending_sound_picker_category"

    .line 209
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mSoundPrefCategory:Landroidx/preference/PreferenceCategory;

    .line 210
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 211
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mSoundEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/feature/othersettings/cameraeffect/b;

    .line 212
    new-instance v2, Lcom/color/support/preference/ColorMarkPreference;

    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/color/support/preference/ColorMarkPreference;-><init>(Landroid/content/Context;)V

    .line 1034
    iget-object v3, v1, Lcom/coloros/settings/feature/othersettings/cameraeffect/b;->d:Ljava/lang/String;

    .line 213
    invoke-virtual {v2, v3}, Lcom/color/support/preference/ColorMarkPreference;->setKey(Ljava/lang/String;)V

    .line 2030
    iget-object v3, v1, Lcom/coloros/settings/feature/othersettings/cameraeffect/b;->a:Ljava/lang/String;

    .line 214
    invoke-virtual {v2, v3}, Lcom/color/support/preference/ColorMarkPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2034
    iget-object v1, v1, Lcom/coloros/settings/feature/othersettings/cameraeffect/b;->d:Ljava/lang/String;

    .line 215
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    .line 216
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mSoundPrefCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 218
    new-instance v1, Lcom/coloros/settings/feature/othersettings/cameraeffect/-$$Lambda$CameraSoundPrefCategoryController$njBaodE7dKDUglNS3pbixvhEOqE;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/-$$Lambda$CameraSoundPrefCategoryController$njBaodE7dKDUglNS3pbixvhEOqE;-><init>(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;)V

    invoke-virtual {v2, v1}, Lcom/color/support/preference/ColorMarkPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$init$0(Landroid/media/SoundPool;II)V
    .locals 1

    .line 100
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onLoadComplete, sampleId = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " status = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraSoundPrefCategoryController"

    invoke-static {p1, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$new$2(I)V
    .locals 0

    return-void
.end method

.method private loadSoundEffects()V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mContext:Landroid/content/Context;

    const v1, 0x7f12047d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/media/audio/ui/technology_up.ogg"

    const-string v2, "/system/media/audio/ui/technology_down.ogg"

    invoke-direct {p0, v0, v1, v2}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->addSoundPathAndLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mContext:Landroid/content/Context;

    const v1, 0x7f12047a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/media/audio/ui/mechanism_up.ogg"

    const-string v2, "/system/media/audio/ui/mechanism_down.ogg"

    invoke-direct {p0, v0, v1, v2}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->addSoundPathAndLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mContext:Landroid/content/Context;

    const v1, 0x7f12047c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/media/audio/ui/pure_music_up.ogg"

    const-string v2, "/system/media/audio/ui/pure_music_down.ogg"

    invoke-direct {p0, v0, v1, v2}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->addSoundPathAndLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private processSoundPreferenceClick(Landroidx/preference/Preference;)V
    .locals 7

    .line 238
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->getSoundEffectByDisplayName(Ljava/lang/CharSequence;)Lcom/coloros/settings/feature/othersettings/cameraeffect/b;

    move-result-object v0

    const-string v1, "CameraSoundPrefCategoryController"

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "can\'t find SoundEffect by "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3034
    :cond_0
    iget-object p1, v0, Lcom/coloros/settings/feature/othersettings/cameraeffect/b;->d:Ljava/lang/String;

    .line 244
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 245
    invoke-direct {p0, v2, p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->updateSoundPrefCategory(ZLjava/lang/String;)V

    .line 247
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->dcsSoundEffect(Ljava/lang/String;)V

    .line 248
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x100

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 249
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz p1, :cond_3

    .line 250
    iget-object v4, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v5, 0x3

    const/4 v6, 0x2

    invoke-virtual {p1, v4, v5, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p1

    if-eq p1, v2, :cond_1

    .line 253
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "request audio focus failed, result = "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x7

    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "onClick, volume is 0, don\'t play music"

    .line 256
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 258
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mHandler:Landroid/os/Handler;

    .line 3042
    iget v1, v0, Lcom/coloros/settings/feature/othersettings/cameraeffect/b;->b:I

    .line 258
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 259
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 260
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mHandler:Landroid/os/Handler;

    .line 4038
    iget v0, v0, Lcom/coloros/settings/feature/othersettings/cameraeffect/b;->c:I

    .line 260
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 261
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 263
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x200

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void
.end method

.method private updateSoundPrefCategory(ZLjava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 227
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mPrefScreen:Landroidx/preference/PreferenceScreen;

    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mSoundPrefCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    .line 230
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mPrefScreen:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mSoundPrefCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    const/4 p1, 0x0

    .line 231
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mSoundPrefCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mSoundPrefCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceCategory;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorMarkPreference;

    .line 233
    invoke-virtual {v0}, Lcom/color/support/preference/ColorMarkPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 111
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 112
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mPrefScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "camera_lifting_descending_sound_category"

    .line 117
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    if-eqz v0, :cond_1

    .line 118
    invoke-static {}, Lcom/coloros/settings/utils/bh;->i()Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    invoke-virtual {v0}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->a()V

    .line 122
    :cond_1
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->initSoundPreferenceCategory(Landroidx/preference/PreferenceScreen;)V

    .line 124
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->e(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "camera_lifting_descending_effect_sound"

    .line 125
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-eqz p1, :cond_2

    .line 127
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 128
    invoke-virtual {p1, p0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 130
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-direct {p0, v0, p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->updateSoundPrefCategory(ZLjava/lang/String;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mIs3DCameraSupport:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public synthetic lambda$initSoundPreferenceCategory$1$CameraSoundPrefCategoryController(Landroidx/preference/Preference;)Z
    .locals 0

    .line 219
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->processSoundPreferenceClick(Landroidx/preference/Preference;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 136
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 137
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "action.CAMERA_MOTOR_START"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mLocalReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 151
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mLocalReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 153
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 154
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 155
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 144
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 171
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 172
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "camera_lifting_descending_effect_sound"

    .line 173
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 174
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->c(Landroid/content/Context;Z)V

    if-eqz p2, :cond_0

    .line 178
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "/system/media/audio/ui/technology_up.ogg:/system/media/audio/ui/technology_down.ogg"

    .line 181
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 184
    :cond_1
    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->updateSoundPrefCategory(ZLjava/lang/String;)V

    .line 185
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->mContext:Landroid/content/Context;

    const-string v0, "camera_lifting_descending_sound_switch"

    invoke-static {p1, p2, v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->a(Landroid/content/Context;ZLjava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
