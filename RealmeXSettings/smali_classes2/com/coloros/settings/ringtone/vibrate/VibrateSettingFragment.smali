.class public Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;
.super Lcom/coloros/settings/ringtone/BaseRingtoneFragment;
.source "VibrateSettingFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment$a;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[I

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;


# instance fields
.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/net/Uri;

.field private i:Lcom/color/support/preference/ColorMarkPreference;

.field private j:Lcom/coloros/settings/ringtone/vibrate/a;

.field private k:Landroid/media/MediaPlayer;

.field private l:Landroid/media/AudioManager;

.field private m:Ljava/util/concurrent/ExecutorService;

.field private n:Landroidx/fragment/app/FragmentActivity;

.field private o:Landroid/content/Intent;

.field private p:Landroid/content/Context;

.field private q:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "4"

    const-string v1, "5"

    const-string v2, "6"

    const-string v3, "7"

    const-string v4, "8"

    .line 57
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->a:[Ljava/lang/String;

    const/4 v0, 0x5

    .line 58
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->b:[I

    const-string v0, "64"

    .line 61
    sput-object v0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->c:Ljava/lang/String;

    const-string v0, "67"

    .line 62
    sput-object v0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->d:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f120944
        0x7f120945
        0x7f120946
        0x7f120947
        0x7f120948
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/coloros/settings/ringtone/BaseRingtoneFragment;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->e:I

    const/4 v0, -0x1

    .line 72
    iput v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->f:I

    .line 73
    iput v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->g:I

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->h:Landroid/net/Uri;

    .line 75
    iput-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->i:Lcom/color/support/preference/ColorMarkPreference;

    .line 347
    new-instance v0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment$1;-><init>(Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;)V

    iput-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->q:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;)Landroid/media/MediaPlayer;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->k:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method private a()V
    .locals 5

    .line 275
    iget v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 276
    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->j:Lcom/coloros/settings/ringtone/vibrate/a;

    .line 2104
    iget-boolean v0, v0, Lcom/coloros/settings/ringtone/vibrate/a;->a:Z

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->j:Lcom/coloros/settings/ringtone/vibrate/a;

    invoke-virtual {v0}, Lcom/coloros/settings/ringtone/vibrate/a;->a()V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->j:Lcom/coloros/settings/ringtone/vibrate/a;

    iget-object v2, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->h:Landroid/net/Uri;

    iget v3, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->f:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/coloros/settings/ringtone/vibrate/a;->a(Landroid/net/Uri;IZ)V

    .line 280
    iget v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->f:I

    const/16 v2, 0x40

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    if-eqz v1, :cond_2

    .line 282
    invoke-direct {p0}, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->c()V

    return-void

    .line 284
    :cond_2
    invoke-direct {p0}, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->d()V

    return-void

    .line 287
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->j:Lcom/coloros/settings/ringtone/vibrate/a;

    invoke-virtual {v0}, Lcom/coloros/settings/ringtone/vibrate/a;->a()V

    .line 288
    invoke-direct {p0}, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->d()V

    return-void
.end method

.method private a(Landroid/net/Uri;)Z
    .locals 4

    .line 2341
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->l:Landroid/media/AudioManager;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 2342
    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->l:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->q:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 3293
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->k:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 3294
    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 3295
    iput-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->k:Landroid/media/MediaPlayer;

    .line 3297
    :cond_1
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->k:Landroid/media/MediaPlayer;

    .line 3298
    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 3299
    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->k:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->p:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 3300
    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 3301
    iget v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->g:I

    if-ne v0, v3, :cond_2

    .line 3302
    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    goto :goto_0

    .line 3303
    :cond_2
    iget v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->g:I

    if-ne v0, v1, :cond_3

    .line 3304
    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->k:Landroid/media/MediaPlayer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    goto :goto_0

    .line 3305
    :cond_3
    iget v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->g:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 3306
    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 321
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->k:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->p:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 322
    iget-object p1, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->k:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 323
    iget-object p1, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->k:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;Landroid/net/Uri;)Z
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->a(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method private c()V
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->m:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->m:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->m:Ljava/util/concurrent/ExecutorService;

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->m:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment$a;

    iget-object v2, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->h:Landroid/net/Uri;

    invoke-direct {v1, p0, v2}, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment$a;-><init>(Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private d()V
    .locals 3

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->k:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibrateSettingFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    const v0, 0x7f12094b

    .line 198
    invoke-virtual {p0, v0}, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 112
    invoke-super {p0, p1}, Lcom/coloros/settings/ringtone/BaseRingtoneFragment;->onAttach(Landroid/content/Context;)V

    .line 113
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "intent"

    .line 115
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->o:Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 230
    iget-object p1, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->j:Lcom/coloros/settings/ringtone/vibrate/a;

    invoke-virtual {p1}, Lcom/coloros/settings/ringtone/vibrate/a;->a()V

    .line 231
    iget-object p1, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->l:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->q:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5

    .line 1129
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->p:Landroid/content/Context;

    .line 1130
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->n:Landroidx/fragment/app/FragmentActivity;

    .line 1131
    iget-object p1, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->p:Landroid/content/Context;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->l:Landroid/media/AudioManager;

    .line 1135
    new-instance p1, Lcom/coloros/settings/ringtone/vibrate/a;

    iget-object p2, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->p:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/coloros/settings/ringtone/vibrate/a;-><init>(Landroid/content/Context;Z)V

    iput-object p1, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->j:Lcom/coloros/settings/ringtone/vibrate/a;

    .line 1137
    iget-object p1, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->o:Landroid/content/Intent;

    const/16 p2, 0x40

    if-eqz p1, :cond_0

    const-string v1, "init_vibrate_type"

    .line 1138
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->f:I

    .line 1139
    iget-object p1, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->o:Landroid/content/Intent;

    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->h:Landroid/net/Uri;

    .line 1140
    iget-object p1, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->o:Landroid/content/Intent;

    const/4 v1, -0x1

    const-string v2, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->g:I

    .line 1141
    iget p1, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->g:I

    if-eq p1, v1, :cond_0

    .line 1142
    iget-object v1, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->n:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentActivity;->setVolumeControlStream(I)V

    :cond_0
    const p1, 0x7f1500e8

    .line 1148
    invoke-virtual {p0, p1}, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->addPreferencesFromResource(I)V

    const-string p1, "ringtone_category_key"

    .line 1150
    invoke-virtual {p0, p1}, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    .line 1151
    new-instance v1, Lcom/color/support/preference/ColorMarkPreference;

    iget-object v2, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->p:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/color/support/preference/ColorMarkPreference;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120942

    .line 1152
    invoke-virtual {v1, v2}, Lcom/color/support/preference/ColorMarkPreference;->setTitle(I)V

    const v2, 0x7f120943

    .line 1153
    invoke-virtual {v1, v2}, Lcom/color/support/preference/ColorMarkPreference;->setSummary(I)V

    .line 1154
    invoke-virtual {v1, p0}, Lcom/color/support/preference/ColorMarkPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 1155
    sget-object v2, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/color/support/preference/ColorMarkPreference;->setKey(Ljava/lang/String;)V

    .line 1156
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 1157
    iget p1, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->f:I

    const/4 v2, 0x1

    if-ne p1, p2, :cond_1

    .line 1158
    invoke-virtual {v1, v2}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    .line 1159
    iput-object v1, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->i:Lcom/color/support/preference/ColorMarkPreference;

    goto :goto_0

    .line 1161
    :cond_1
    invoke-virtual {v1, v0}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    :goto_0
    const-string p1, "special_category_key"

    .line 1164
    invoke-virtual {p0, p1}, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    move p2, v0

    .line 1165
    :goto_1
    sget-object v1, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->a:[Ljava/lang/String;

    array-length v1, v1

    if-ge p2, v1, :cond_3

    .line 1166
    new-instance v1, Lcom/color/support/preference/ColorMarkPreference;

    iget-object v3, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->p:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/color/support/preference/ColorMarkPreference;-><init>(Landroid/content/Context;)V

    .line 1167
    sget-object v3, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->b:[I

    aget v3, v3, p2

    invoke-virtual {v1, v3}, Lcom/color/support/preference/ColorMarkPreference;->setTitle(I)V

    .line 1168
    invoke-virtual {v1, p0}, Lcom/color/support/preference/ColorMarkPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 1169
    sget-object v3, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->a:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v1, v3}, Lcom/color/support/preference/ColorMarkPreference;->setKey(Ljava/lang/String;)V

    .line 1170
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 1173
    iget v3, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->f:I

    sget-object v4, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->a:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1174
    invoke-virtual {v1, v2}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    .line 1175
    iput-object v1, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->i:Lcom/color/support/preference/ColorMarkPreference;

    goto :goto_2

    .line 1177
    :cond_2
    invoke-virtual {v1, v0}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    const-string p1, "none_category_key"

    .line 1181
    invoke-virtual {p0, p1}, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    .line 1182
    new-instance p2, Lcom/color/support/preference/ColorMarkPreference;

    iget-object v1, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->p:Landroid/content/Context;

    invoke-direct {p2, v1}, Lcom/color/support/preference/ColorMarkPreference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120949

    .line 1183
    invoke-virtual {p2, v1}, Lcom/color/support/preference/ColorMarkPreference;->setTitle(I)V

    .line 1184
    invoke-virtual {p2, p0}, Lcom/color/support/preference/ColorMarkPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 1185
    sget-object v1, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->d:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/color/support/preference/ColorMarkPreference;->setKey(Ljava/lang/String;)V

    .line 1186
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 1187
    iget p1, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->f:I

    sget-object v1, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->d:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 1188
    invoke-virtual {p2, v2}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    .line 1189
    iput-object p2, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->i:Lcom/color/support/preference/ColorMarkPreference;

    return-void

    .line 1191
    :cond_4
    invoke-virtual {p2, v0}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 252
    iget v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->j:Lcom/coloros/settings/ringtone/vibrate/a;

    invoke-virtual {v0}, Lcom/coloros/settings/ringtone/vibrate/a;->a()V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->k:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->k:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 259
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 260
    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 261
    iput-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->k:Landroid/media/MediaPlayer;

    .line 263
    :cond_2
    invoke-super {p0}, Lcom/coloros/settings/ringtone/BaseRingtoneFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 236
    invoke-super {p0}, Lcom/coloros/settings/ringtone/BaseRingtoneFragment;->onPause()V

    .line 237
    iget v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->e:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 238
    iput v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->e:I

    .line 239
    invoke-direct {p0}, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->a()V

    .line 241
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->d()V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 203
    instance-of v0, p1, Lcom/color/support/preference/ColorMarkPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 204
    check-cast p1, Lcom/color/support/preference/ColorMarkPreference;

    .line 205
    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->i:Lcom/color/support/preference/ColorMarkPreference;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_0

    .line 207
    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    .line 208
    iput v2, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->e:I

    goto :goto_0

    .line 210
    :cond_0
    iget v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->e:I

    if-nez v0, :cond_1

    .line 211
    iput v2, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->e:I

    goto :goto_0

    .line 213
    :cond_1
    iput v1, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->e:I

    .line 217
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->i:Lcom/color/support/preference/ColorMarkPreference;

    .line 218
    iget-object p1, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->i:Lcom/color/support/preference/ColorMarkPreference;

    invoke-virtual {p1, v2}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    .line 219
    iget-object p1, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->i:Lcom/color/support/preference/ColorMarkPreference;

    invoke-virtual {p1}, Lcom/color/support/preference/ColorMarkPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 1267
    iget v0, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->f:I

    if-eq v0, p1, :cond_3

    .line 1268
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "final_vibrate_type"

    .line 1269
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1270
    iget-object v1, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->n:Landroidx/fragment/app/FragmentActivity;

    const/4 v3, -0x1

    invoke-virtual {v1, v3, v0}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 221
    :cond_3
    iput p1, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->f:I

    .line 222
    invoke-direct {p0}, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->a()V

    return v2

    :cond_4
    return v1
.end method

.method public onStop()V
    .locals 0

    .line 246
    invoke-super {p0}, Lcom/coloros/settings/ringtone/BaseRingtoneFragment;->onStop()V

    .line 247
    invoke-direct {p0}, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->d()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 121
    invoke-super {p0, p1, p2}, Lcom/coloros/settings/ringtone/BaseRingtoneFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a020e

    .line 122
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 123
    iget-object p2, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->p:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f050063

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    .line 124
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
