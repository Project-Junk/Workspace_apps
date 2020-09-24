.class public Lcom/android/settings/notification/SoundSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SoundSettings.java"

# interfaces
.implements Lcom/android/settings/core/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/SoundSettings$a;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/a;


# instance fields
.field protected final a:Lcom/android/settings/notification/SoundSettings$a;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final b:Landroid/os/Handler;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private c:Lcom/android/settings/RingtonePreference;

.field private d:Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 313
    new-instance v0, Lcom/android/settings/notification/SoundSettings$2;

    invoke-direct {v0}, Lcom/android/settings/notification/SoundSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/notification/SoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 69
    new-instance v0, Lcom/android/settings/notification/SoundSettings$a;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/SoundSettings$a;-><init>(Lcom/android/settings/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->a:Lcom/android/settings/notification/SoundSettings$a;

    .line 71
    new-instance v0, Lcom/android/settings/notification/SoundSettings$1;

    .line 72
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/SoundSettings$1;-><init>(Lcom/android/settings/notification/SoundSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->b:Landroid/os/Handler;

    const-string v0, ""

    .line 85
    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->e:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/android/settings/notification/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/notification/SoundSettings;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 260
    new-instance v1, Lcom/android/settings/notification/o;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/o;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    new-instance v1, Lcom/android/settings/notification/a;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    new-instance v1, Lcom/android/settings/notification/m;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/m;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    new-instance v1, Lcom/android/settings/notification/WorkSoundPreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/notification/WorkSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v1, Lcom/android/settings/notification/DialPadTonePreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/notification/DialPadTonePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 270
    new-instance v2, Lcom/android/settings/notification/ScreenLockSoundPreferenceController;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/settings/notification/ScreenLockSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 272
    new-instance v3, Lcom/android/settings/notification/ChargingSoundPreferenceController;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/settings/notification/ChargingSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 274
    new-instance v4, Lcom/android/settings/notification/DockingSoundPreferenceController;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/settings/notification/DockingSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 276
    new-instance v5, Lcom/android/settings/notification/TouchSoundPreferenceController;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/settings/notification/TouchSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 278
    new-instance v6, Lcom/android/settings/notification/VibrateOnTouchPreferenceController;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/settings/notification/VibrateOnTouchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 280
    new-instance v7, Lcom/android/settings/notification/DockAudioMediaPreferenceController;

    invoke-direct {v7, p0, p1, p2}, Lcom/android/settings/notification/DockAudioMediaPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 282
    new-instance v8, Lcom/android/settings/notification/e;

    invoke-direct {v8, p0}, Lcom/android/settings/notification/e;-><init>(Landroid/content/Context;)V

    .line 284
    new-instance v9, Lcom/android/settings/notification/EmergencyTonePreferenceController;

    invoke-direct {v9, p0, p1, p2}, Lcom/android/settings/notification/EmergencyTonePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 287
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    new-instance p1, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string p2, "other_sounds_and_vibrations_category"

    invoke-direct {p1, p0, p2}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 p0, 0x9

    new-array p0, p0, [Lcom/android/settingslib/core/a;

    const/4 p2, 0x0

    aput-object v1, p0, p2

    const/4 p2, 0x1

    aput-object v2, p0, p2

    const/4 p2, 0x2

    aput-object v3, p0, p2

    const/4 p2, 0x3

    aput-object v4, p0, p2

    const/4 p2, 0x4

    aput-object v5, p0, p2

    const/4 p2, 0x5

    aput-object v6, p0, p2

    const/4 p2, 0x6

    aput-object v7, p0, p2

    const/4 p2, 0x7

    aput-object v8, p0, p2

    const/16 p2, 0x8

    aput-object v9, p0, p2

    .line 298
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 297
    invoke-virtual {p1, p0}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object p0

    .line 296
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private synthetic a(Landroidx/preference/ListPreference;)V
    .locals 2

    .line 1342
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->d:Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

    if-eqz v0, :cond_0

    .line 2163
    iget-object v1, v0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->a:Landroid/widget/ArrayAdapter;

    if-eqz v1, :cond_0

    .line 2164
    invoke-virtual {v0, p1}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->a(Landroidx/preference/ListPreference;)V

    .line 2165
    iget-object p1, v0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->a:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method static synthetic b(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-static {p0, v0, v0}, Lcom/android/settings/notification/SoundSettings;->a(Landroid/content/Context;Lcom/android/settings/notification/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$C1iykvSo-mtlRrvXskEtjkGl8po(Lcom/android/settings/notification/SoundSettings;Landroidx/preference/ListPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/SoundSettings;->a(Landroidx/preference/ListPreference;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "SoundSettings"

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/util/List;
    .locals 1
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

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/android/settings/notification/SoundSettings;->a(Landroid/content/Context;Lcom/android/settings/notification/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 3

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    const-class v1, Lcom/android/settings/notification/AlarmVolumePreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/SoundSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    const-class v1, Lcom/android/settings/notification/MediaVolumePreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/SoundSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    const-class v1, Lcom/android/settings/notification/RingVolumePreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/SoundSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    const-class v1, Lcom/android/settings/notification/NotificationVolumePreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/SoundSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    const-class v1, Lcom/android/settings/notification/CallVolumePreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/SoundSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    const-class v1, Lcom/android/settings/notification/RemoteVolumePreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/SoundSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    const-class v1, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/SoundSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;

    new-instance v2, Lcom/android/settings/notification/-$$Lambda$SoundSettings$C1iykvSo-mtlRrvXskEtjkGl8po;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/-$$Lambda$SoundSettings$C1iykvSo-mtlRrvXskEtjkGl8po;-><init>(Lcom/android/settings/notification/SoundSettings;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->setCallback(Lcom/android/settings/sound/AudioSwitchPreferenceController$b;)V

    .line 212
    const-class v1, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;

    .line 213
    invoke-virtual {p0, v1}, Lcom/android/settings/notification/SoundSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/SoundSettings;->e:Ljava/lang/String;

    .line 215
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;

    .line 216
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->a:Lcom/android/settings/notification/SoundSettings$a;

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$a;)V

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected d()V
    .locals 1

    .line 334
    const-class v0, Lcom/android/settings/notification/WorkSoundPreferenceController;

    .line 335
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/SoundSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/WorkSoundPreferenceController;

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {v0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->b()V

    :cond_0
    return-void
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120ac4

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x150

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150119

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 181
    iget-object p1, p0, Lcom/android/settings/notification/SoundSettings;->c:Lcom/android/settings/RingtonePreference;

    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {p1, p3}, Lcom/android/settings/RingtonePreference;->b(Landroid/content/Intent;)Z

    const/4 p1, 0x0

    .line 183
    iput-object p1, p0, Lcom/android/settings/notification/SoundSettings;->c:Lcom/android/settings/RingtonePreference;

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 197
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->c()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 94
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const-string v1, "selected_preference"

    .line 96
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/RingtonePreference;

    iput-object p1, p0, Lcom/android/settings/notification/SoundSettings;->c:Lcom/android/settings/RingtonePreference;

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "SoundSettings"

    .line 103
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

    .line 104
    iput-object p1, p0, Lcom/android/settings/notification/SoundSettings;->d:Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

    :cond_1
    return-void
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x588

    goto :goto_0

    :cond_0
    move v0, v1

    .line 157
    :goto_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->a(Ljava/lang/String;I)Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/SoundSettings;->d:Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

    .line 158
    iget-object p1, p0, Lcom/android/settings/notification/SoundSettings;->d:Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

    invoke-virtual {p1, p0, v1}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 159
    iget-object p1, p0, Lcom/android/settings/notification/SoundSettings;->d:Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "SoundSettings"

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 115
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onPause()V

    .line 116
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->a:Lcom/android/settings/notification/SoundSettings$a;

    invoke-virtual {v0}, Lcom/android/settings/notification/SoundSettings$a;->b()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 121
    instance-of v0, p1, Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_2

    .line 122
    check-cast p1, Lcom/android/settings/RingtonePreference;

    iput-object p1, p0, Lcom/android/settings/notification/SoundSettings;->c:Lcom/android/settings/RingtonePreference;

    .line 123
    iget-object p1, p0, Lcom/android/settings/notification/SoundSettings;->c:Lcom/android/settings/RingtonePreference;

    invoke-virtual {p1}, Lcom/android/settings/RingtonePreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sms_notification_ringtone_1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/notification/SoundSettings;->c:Lcom/android/settings/RingtonePreference;

    .line 124
    invoke-virtual {p1}, Lcom/android/settings/RingtonePreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "sms_notification_ringtone_2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 125
    :cond_0
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v1, 0x7f120fc4

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v0

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/SoundSettings;->c:Lcom/android/settings/RingtonePreference;

    invoke-virtual {p1}, Lcom/android/settings/RingtonePreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/RingtonePreference;->a(Landroid/content/Intent;)V

    .line 133
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->c:Lcom/android/settings/RingtonePreference;

    .line 134
    invoke-virtual {v1}, Lcom/android/settings/RingtonePreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0xc8

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/notification/SoundSettings;->c:Lcom/android/settings/RingtonePreference;

    .line 137
    invoke-virtual {v4}, Lcom/android/settings/RingtonePreference;->b()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 133
    invoke-virtual {p1, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentActivity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 139
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0

    .line 143
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 189
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->c:Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Lcom/android/settings/RingtonePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "selected_preference"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
