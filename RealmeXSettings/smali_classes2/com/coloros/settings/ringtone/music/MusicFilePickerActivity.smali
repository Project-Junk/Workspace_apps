.class public Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;
.super Lcom/coloros/settings/ringtone/FileManagerBaseActivity;
.source "MusicFilePickerActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$b;,
        Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/net/Uri;


# instance fields
.field private A:Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$a;

.field private B:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/net/Uri;

.field private j:Landroid/net/Uri;

.field private k:Landroid/net/Uri;

.field private l:Landroid/content/Intent;

.field private m:Landroid/view/View;

.field private n:Landroid/media/MediaPlayer;

.field private o:Landroid/view/ViewGroup;

.field private p:Landroid/media/AudioManager;

.field private q:Landroid/media/Ringtone;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/LinearLayout;

.field private t:Lcom/coloros/settings/ringtone/g;

.field private u:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

.field private v:Ljava/util/concurrent/ExecutorService;

.field private w:Z

.field private x:Z

.field private y:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private z:Lcom/coloros/settings/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    sget-object v0, Lcom/coloros/settings/ringtone/a;->b:Landroid/net/Uri;

    sput-object v0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 77
    invoke-direct {p0}, Lcom/coloros/settings/ringtone/FileManagerBaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->b:Z

    const/4 v1, 0x1

    .line 88
    iput-boolean v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->c:Z

    .line 89
    iput-boolean v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->d:Z

    .line 90
    iput-boolean v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->e:Z

    const/4 v1, -0x1

    .line 91
    iput v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->f:I

    .line 92
    iput v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->g:I

    .line 93
    iput v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->h:I

    const/4 v1, 0x0

    .line 94
    iput-object v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->i:Landroid/net/Uri;

    .line 95
    iput-object v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->j:Landroid/net/Uri;

    .line 96
    iput-object v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->k:Landroid/net/Uri;

    .line 99
    iput-object v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->n:Landroid/media/MediaPlayer;

    .line 102
    iput-object v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->q:Landroid/media/Ringtone;

    .line 108
    iput-boolean v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->w:Z

    .line 109
    iput-boolean v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->x:Z

    .line 143
    new-instance v0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$a;

    invoke-direct {v0, p0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$a;-><init>(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;)V

    iput-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->A:Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$a;

    .line 628
    new-instance v0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$4;

    invoke-direct {v0, p0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$4;-><init>(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;)V

    iput-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->B:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;)Lcom/coloros/settings/ringtone/g;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->t:Lcom/coloros/settings/ringtone/g;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->u:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    if-eqz v0, :cond_0

    .line 1263
    iget-object v1, v0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->d:Lcom/coloros/settings/ringtone/music/c;

    const/4 v2, 0x1

    .line 2073
    iput-boolean v2, v1, Lcom/coloros/settings/ringtone/music/c;->a:Z

    .line 1264
    iget-object v1, v0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->d:Lcom/coloros/settings/ringtone/music/c;

    iget v2, v0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->c:I

    .line 2077
    iput v2, v1, Lcom/coloros/settings/ringtone/music/c;->b:I

    .line 1265
    iget-object v0, v0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->d:Lcom/coloros/settings/ringtone/music/c;

    invoke-virtual {v0}, Lcom/coloros/settings/ringtone/music/c;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->s:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 421
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 422
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->s:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0249

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 423
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 424
    instance-of v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_2

    .line 425
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->y:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-nez p1, :cond_0

    .line 427
    iget-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->y:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void

    .line 429
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->y:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 430
    iget-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->y:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 432
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->y:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;Landroid/os/Message;)V
    .locals 6

    .line 10146
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x14

    const-string v2, "Error occur, e = "

    const-string v3, "MusicFilePickerActivity"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v1, :cond_6

    const/16 v1, 0x15

    if-eq v0, v1, :cond_5

    const/16 v1, 0x17

    if-eq v0, v1, :cond_3

    const/16 p1, 0x1c

    if-eq v0, p1, :cond_0

    goto/16 :goto_2

    .line 10195
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->n:Landroid/media/MediaPlayer;

    if-nez p1, :cond_1

    return-void

    .line 10199
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10200
    iget-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->n:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 10201
    invoke-direct {p0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    .line 10205
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->n:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10210
    :try_start_2
    invoke-direct {p0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->a()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->a()V

    .line 10214
    throw p1

    .line 10212
    :catch_0
    invoke-direct {p0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 10217
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10222
    :cond_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-lez p1, :cond_4

    .line 14439
    iput-boolean v4, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->d:Z

    return-void

    .line 15439
    :cond_4
    iput-boolean v5, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->d:Z

    goto/16 :goto_2

    .line 13439
    :cond_5
    iput-boolean v5, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->d:Z

    .line 10188
    iget-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->n:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 10189
    iget-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->n:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 10190
    invoke-direct {p0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->a()V

    return-void

    .line 10148
    :cond_6
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->u:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    invoke-virtual {v0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->getSelectFilePath()Lcom/coloros/settings/ringtone/b;

    move-result-object v0

    if-nez v0, :cond_7

    .line 10443
    iget-boolean v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->d:Z

    if-eqz v1, :cond_7

    .line 11439
    iput-boolean v5, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->d:Z

    goto :goto_0

    .line 12439
    :cond_7
    iput-boolean v4, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->d:Z

    :goto_0
    if-nez v0, :cond_8

    .line 10155
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->n:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_8

    .line 10156
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 10157
    iget-object p0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->n:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V

    return-void

    .line 10162
    :cond_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_b

    .line 10166
    :try_start_3
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->v:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->v:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->v:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 10167
    :cond_9
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->v:Ljava/util/concurrent/ExecutorService;

    .line 10169
    :cond_a
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->v:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$b;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$b;-><init>(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 10177
    invoke-direct {p0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->a()V

    .line 10181
    invoke-direct {p0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->c()V

    return-void

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    .line 10171
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10173
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f1202c5

    invoke-virtual {p0, v0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f120e9c

    invoke-virtual {p0, v0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10174
    invoke-static {p0, p1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 10179
    invoke-direct {p0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->a()V

    .line 10181
    invoke-direct {p0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->c()V

    return-void

    .line 10179
    :goto_1
    invoke-direct {p0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->a()V

    .line 10181
    invoke-direct {p0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->c()V

    .line 10182
    throw p1

    :cond_b
    :goto_2
    return-void
.end method

.method private a(Landroid/net/Uri;)Z
    .locals 4

    .line 3622
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->p:Landroid/media/AudioManager;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 3623
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->p:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->B:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 4329
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->n:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 4330
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 4331
    iput-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->n:Landroid/media/MediaPlayer;

    .line 4333
    :cond_1
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->n:Landroid/media/MediaPlayer;

    .line 4334
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 4335
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->n:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 4336
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 4337
    iget v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->g:I

    if-ne v0, v2, :cond_2

    .line 4338
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    goto :goto_0

    .line 4339
    :cond_2
    iget v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->g:I

    if-ne v0, v1, :cond_3

    .line 4340
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->n:Landroid/media/MediaPlayer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    goto :goto_0

    .line 4341
    :cond_3
    iget v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->g:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 4342
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 319
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 320
    iget-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->n:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 321
    iget-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->n:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;Landroid/net/Uri;)Z
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->a(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method private b()V
    .locals 3

    .line 472
    iget-boolean v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->x:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->w:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 475
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->c:Z

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->u:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    sget-object v1, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->j:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->a(Landroid/net/Uri;Landroid/net/Uri;)V

    const/4 v0, 0x0

    .line 477
    iput-boolean v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->c:Z

    return-void

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->u:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    sget-object v1, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->a(Landroid/net/Uri;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;)Z
    .locals 1

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->e:Z

    return v0
.end method

.method private c()V
    .locals 3

    .line 502
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->u:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    invoke-virtual {v0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->getSelectFilePath()Lcom/coloros/settings/ringtone/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 506
    :cond_0
    invoke-virtual {v0}, Lcom/coloros/settings/ringtone/b;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 507
    invoke-virtual {p0, v2}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->setResult(I)V

    return-void

    .line 510
    :cond_1
    invoke-static {p0, v0}, Lcom/coloros/settings/ringtone/a;->a(Landroid/content/Context;Lcom/coloros/settings/ringtone/b;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->k:Landroid/net/Uri;

    .line 511
    iget-object v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->k:Landroid/net/Uri;

    if-nez v1, :cond_2

    .line 512
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->k:Landroid/net/Uri;

    .line 514
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->k:Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 515
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 516
    iget-object v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->k:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SELECT_PATH"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 517
    invoke-virtual {p0, v1, v0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->setResult(ILandroid/content/Intent;)V

    return-void

    .line 519
    :cond_3
    invoke-virtual {p0, v2}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->setResult(I)V

    return-void
.end method

.method static synthetic c(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;)Z
    .locals 1

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->w:Z

    return v0
.end method

.method static synthetic d(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->b()V

    return-void
.end method

.method static synthetic e(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;)Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->u:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    return-object p0
.end method

.method static synthetic f(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;)Z
    .locals 1

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->x:Z

    return v0
.end method

.method static synthetic g(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->w:Z

    return p0
.end method

.method static synthetic h(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;)Landroid/widget/TextView;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->r:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic i(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, v0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->a(I)V

    return-void
.end method

.method static synthetic j(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;)Landroid/media/MediaPlayer;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->n:Landroid/media/MediaPlayer;

    return-object p0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 565
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->n:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 568
    :cond_0
    invoke-super {p0}, Lcom/coloros/settings/ringtone/FileManagerBaseActivity;->finish()V

    .line 569
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->p:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->B:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    const-string v1, "sim_picker"

    .line 526
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "isClip"

    .line 527
    invoke-virtual {p3, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "clip_uri"

    .line 528
    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const-string v7, "SELECT_PATH"

    if-ne p1, v6, :cond_2

    if-nez v5, :cond_0

    .line 531
    invoke-virtual {p0, v3}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->setResult(I)V

    goto :goto_0

    .line 533
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 534
    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v2, :cond_1

    .line 536
    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    :cond_1
    invoke-virtual {p0, v0, v3}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 540
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->finish()V

    goto :goto_2

    :cond_2
    const/4 v3, 0x3

    if-ne p1, v3, :cond_4

    .line 542
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    if-eqz v4, :cond_3

    .line 544
    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 546
    :cond_3
    iget-object v4, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->k:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 548
    :goto_1
    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    invoke-virtual {p0, v0, v3}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 550
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->finish()V

    goto :goto_2

    :cond_4
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_5

    .line 552
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->t:Lcom/coloros/settings/ringtone/g;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/ringtone/g;->a(Landroid/app/Activity;)V

    .line 555
    :cond_5
    :goto_2
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/settings/ringtone/FileManagerBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 560
    invoke-super {p0}, Lcom/coloros/settings/ringtone/FileManagerBaseActivity;->onBackPressed()V

    .line 561
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->finish()V

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 618
    iget-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->p:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->B:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 242
    invoke-super {p0, p1}, Lcom/coloros/settings/ringtone/FileManagerBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 243
    iput-boolean v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->c:Z

    const v1, 0x7f0d01e3

    .line 244
    invoke-virtual {p0, v1}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->setContentView(I)V

    const v1, 0x7f0a01a7

    .line 246
    invoke-virtual {p0, v1}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v3, 0x7f0804bb

    .line 247
    invoke-virtual {v2, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackgroundResource(I)V

    const/4 v2, 0x0

    .line 248
    invoke-static {p0, v2, v0}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;ZZ)V

    .line 249
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/view/Window;)V

    .line 250
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->l:Landroid/content/Intent;

    .line 251
    iget-object v3, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->l:Landroid/content/Intent;

    if-nez v3, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->finish()V

    :cond_0
    const-string v3, "audio"

    .line 254
    invoke-virtual {p0, v3}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->p:Landroid/media/AudioManager;

    .line 256
    iget-object v3, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->l:Landroid/content/Intent;

    const-string v4, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->j:Landroid/net/Uri;

    .line 257
    iget-object v3, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->l:Landroid/content/Intent;

    const/4 v4, -0x1

    const-string v5, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 258
    iput v3, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->g:I

    .line 259
    iget-object v5, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->l:Landroid/content/Intent;

    const-string v6, "color_ringtone_type"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->h:I

    const/4 v5, 0x2

    if-ne v3, v0, :cond_1

    .line 261
    invoke-virtual {p0, v5}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->setVolumeControlStream(I)V

    goto :goto_0

    :cond_1
    if-ne v3, v5, :cond_2

    const/4 v3, 0x5

    .line 263
    invoke-virtual {p0, v3}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->setVolumeControlStream(I)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x4

    if-ne v3, v5, :cond_3

    .line 265
    invoke-virtual {p0, v5}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->setVolumeControlStream(I)V

    .line 268
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->l:Landroid/content/Intent;

    const-string v5, "FilterFileType"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->f:I

    .line 269
    iget v3, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->f:I

    if-ne v3, v4, :cond_4

    return-void

    .line 273
    :cond_4
    invoke-virtual {p0, v1}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->o:Landroid/view/ViewGroup;

    const v1, 0x7f0a024d

    .line 275
    invoke-virtual {p0, v1}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->r:Landroid/widget/TextView;

    const v1, 0x7f0a024a

    .line 276
    invoke-virtual {p0, v1}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->s:Landroid/widget/LinearLayout;

    .line 278
    iget-object v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->A:Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$a;

    const-string v3, "msg_handler_picker_button"

    invoke-static {v3, v1}, Lcom/coloros/settings/ringtone/c;->a(Ljava/lang/String;Landroid/os/Handler;)V

    .line 279
    iget-object v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->o:Landroid/view/ViewGroup;

    .line 2447
    new-instance v3, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    iget v5, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->h:I

    invoke-direct {v3, p0, v5}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->u:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    .line 2448
    iget-object v3, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->u:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    new-instance v5, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$3;

    invoke-direct {v5, p0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$3;-><init>(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;)V

    invoke-virtual {v3, v5}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->setOnDataChangeListener(Lcom/coloros/settings/ringtone/music/a;)V

    .line 2461
    iget-object v3, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->u:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 2462
    iget-object v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->u:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    invoke-virtual {v1, v0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->setNestedScrollingEnabled(Z)V

    .line 2463
    iget-object v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->u:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    invoke-virtual {v1, v2}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->setClipToPadding(Z)V

    const v1, 0x7f0a070a

    .line 3389
    invoke-virtual {p0, v1}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcolor/support/v7/widget/Toolbar;

    const v3, 0x7f121275

    .line 3390
    invoke-virtual {v1, v3}, Lcolor/support/v7/widget/Toolbar;->setTitle(I)V

    .line 3391
    invoke-virtual {p0, v1}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 3392
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f0a000b

    .line 3394
    invoke-virtual {p0, v0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcolor/support/design/widget/ColorAppBarLayout;

    .line 3395
    new-instance v1, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$2;-><init>(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;Lcolor/support/design/widget/ColorAppBarLayout;)V

    invoke-virtual {v0, v1}, Lcolor/support/design/widget/ColorAppBarLayout;->post(Ljava/lang/Runnable;)Z

    .line 3411
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_5

    const v0, 0x7f0a020e

    .line 3412
    invoke-virtual {p0, v0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3414
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    const v0, 0x7f0a0521

    .line 3467
    invoke-virtual {p0, v0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->m:Landroid/view/View;

    .line 3468
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 282
    new-instance v0, Lcom/coloros/settings/ringtone/g;

    invoke-direct {v0}, Lcom/coloros/settings/ringtone/g;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->t:Lcom/coloros/settings/ringtone/g;

    .line 283
    new-instance v0, Lcom/coloros/settings/a/a;

    invoke-direct {v0, p0}, Lcom/coloros/settings/a/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->z:Lcom/coloros/settings/a/a;

    if-eqz p1, :cond_7

    const-string v0, "state_dialog"

    .line 287
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->e:Z

    const-string v0, "key_uri"

    .line 288
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 289
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 290
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->j:Landroid/net/Uri;

    .line 291
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 292
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->j:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SELECT_PATH"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    invoke-virtual {p0, v4, p1}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    .line 295
    iput-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->j:Landroid/net/Uri;

    .line 296
    invoke-virtual {p0, v2}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->setResult(I)V

    .line 300
    :cond_7
    :goto_1
    iget-boolean p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->e:Z

    if-nez p1, :cond_8

    .line 301
    iget-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->t:Lcom/coloros/settings/ringtone/g;

    invoke-virtual {p1, p0}, Lcom/coloros/settings/ringtone/g;->a(Landroid/app/Activity;)V

    :cond_8
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 485
    invoke-super {p0, p1}, Lcom/coloros/settings/ringtone/FileManagerBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 3

    .line 594
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->A:Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {v0, v1}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->v:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 598
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 599
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->v:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->y:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 603
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->y:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 605
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->u:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    if-eqz v0, :cond_3

    .line 7301
    iget-object v2, v0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->e:Lcom/coloros/settings/ringtone/music/b;

    if-eqz v2, :cond_3

    .line 7302
    iget-object v0, v0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->e:Lcom/coloros/settings/ringtone/music/b;

    const/4 v2, 0x0

    .line 8084
    iput-boolean v2, v0, Lcom/coloros/settings/ringtone/music/b;->a:Z

    .line 608
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->n:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    .line 609
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 610
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 611
    iput-object v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->n:Landroid/media/MediaPlayer;

    .line 613
    :cond_4
    invoke-super {p0}, Lcom/coloros/settings/ringtone/FileManagerBaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 490
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 498
    invoke-super {p0, p1}, Lcom/coloros/settings/ringtone/FileManagerBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 492
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .locals 3

    .line 574
    invoke-super {p0}, Lcom/coloros/settings/ringtone/FileManagerBaseActivity;->onPause()V

    .line 575
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->u:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    if-eqz v0, :cond_2

    .line 6291
    iget-object v1, v0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->e:Lcom/coloros/settings/ringtone/music/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 6292
    iget-object v1, v0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->e:Lcom/coloros/settings/ringtone/music/b;

    .line 7084
    iput-boolean v2, v1, Lcom/coloros/settings/ringtone/music/b;->a:Z

    :cond_0
    const/4 v1, -0x1

    .line 6294
    iput v1, v0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->c:I

    .line 6295
    invoke-virtual {v0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->getFirstVisiblePosition()I

    move-result v1

    iput v1, v0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->a:I

    .line 6296
    invoke-virtual {v0, v2}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6297
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    :cond_1
    iput v2, v0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->b:I

    .line 578
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->z:Lcom/coloros/settings/a/a;

    if-eqz v0, :cond_3

    .line 579
    invoke-virtual {v0}, Lcom/coloros/settings/a/a;->c()V

    :cond_3
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 8

    .line 666
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->t:Lcom/coloros/settings/ringtone/g;

    const/16 v1, 0x3e9

    if-ne v1, p1, :cond_6

    .line 9080
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9082
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v3, v1, :cond_2

    aget v7, p3, v3

    if-eqz v7, :cond_1

    .line 9084
    aget-object v4, p2, v5

    invoke-virtual {p0, v4}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 9085
    aget-object v4, p2, v5

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move v4, v6

    :cond_1
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9091
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    const p1, 0x7f1205ae

    .line 9189
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 9190
    new-instance p2, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p3, 0x7f1205ad

    new-array v1, v6, [Ljava/lang/Object;

    const v3, 0x7f12142b

    .line 9192
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 9191
    invoke-virtual {p0, p3, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p2

    const p3, 0x7f1205ab

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 9194
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    aput-object p1, v1, v6

    .line 9193
    invoke-virtual {p0, p3, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f1205ac

    new-instance p3, Lcom/coloros/settings/ringtone/g$5;

    invoke-direct {p3, v0, p0}, Lcom/coloros/settings/ringtone/g$5;-><init>(Lcom/coloros/settings/ringtone/g;Landroid/app/Activity;)V

    .line 9195
    invoke-virtual {p1, p2, p3}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f1205aa

    new-instance p3, Lcom/coloros/settings/ringtone/g$4;

    invoke-direct {p3, v0, p0}, Lcom/coloros/settings/ringtone/g$4;-><init>(Lcom/coloros/settings/ringtone/g;Landroid/app/Activity;)V

    .line 9204
    invoke-virtual {p1, p2, p3}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/coloros/settings/ringtone/g$3;

    invoke-direct {p2, v0, p0}, Lcom/coloros/settings/ringtone/g$3;-><init>(Lcom/coloros/settings/ringtone/g;Landroid/app/Activity;)V

    .line 9210
    invoke-virtual {p1, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 9215
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    .line 9216
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    if-eqz p1, :cond_3

    const p2, 0x102000b

    .line 9244
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 9245
    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_3

    .line 9246
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setGravity(I)V

    :cond_3
    return-void

    :cond_4
    if-eqz v4, :cond_5

    .line 9095
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 9097
    :cond_5
    iget-object p1, v0, Lcom/coloros/settings/ringtone/g;->b:Lcom/coloros/settings/ringtone/g$a;

    if-eqz p1, :cond_6

    .line 9098
    iget-object p1, v0, Lcom/coloros/settings/ringtone/g;->b:Lcom/coloros/settings/ringtone/g$a;

    invoke-interface {p1}, Lcom/coloros/settings/ringtone/g$a;->a()V

    :cond_6
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 347
    invoke-super {p0}, Lcom/coloros/settings/ringtone/FileManagerBaseActivity;->onResume()V

    .line 348
    invoke-static {p0}, Lcom/coloros/settings/ringtone/a;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    .line 349
    invoke-direct {p0, v2}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->a(I)V

    .line 350
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->o:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->t:Lcom/coloros/settings/ringtone/g;

    iget-boolean v0, v0, Lcom/coloros/settings/ringtone/g;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 353
    iput-boolean v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->e:Z

    .line 355
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->e:Z

    if-eqz v0, :cond_1

    .line 356
    iput-boolean v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->w:Z

    .line 357
    invoke-direct {p0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->b()V

    goto :goto_0

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->t:Lcom/coloros/settings/ringtone/g;

    new-instance v1, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$1;-><init>(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;)V

    .line 5063
    iput-object v1, v0, Lcom/coloros/settings/ringtone/g;->b:Lcom/coloros/settings/ringtone/g$a;

    goto :goto_0

    .line 371
    :cond_2
    iget-boolean v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->b:Z

    if-eqz v0, :cond_3

    .line 372
    invoke-direct {p0, v2}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->a(I)V

    .line 373
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->o:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 375
    iput-boolean v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->b:Z

    goto :goto_0

    .line 377
    :cond_3
    invoke-direct {p0, v1}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->a(I)V

    .line 378
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->o:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 382
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->z:Lcom/coloros/settings/a/a;

    .line 5089
    iget-object v0, v0, Lcom/coloros/settings/a/a;->a:Landroid/view/View;

    if-nez v0, :cond_4

    .line 383
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->z:Lcom/coloros/settings/a/a;

    iget-object v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->u:Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    .line 6085
    iput-object v1, v0, Lcom/coloros/settings/a/a;->a:Landroid/view/View;

    .line 385
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->z:Lcom/coloros/settings/a/a;

    invoke-virtual {v0}, Lcom/coloros/settings/a/a;->b()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 309
    invoke-super {p0, p1}, Lcom/coloros/settings/ringtone/FileManagerBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 310
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->k:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const-string v1, "key_uri"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-boolean v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->e:Z

    const-string v1, "state_dialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 585
    invoke-super {p0}, Lcom/coloros/settings/ringtone/FileManagerBaseActivity;->onStop()V

    .line 586
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->n:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->p:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->B:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method public run()V
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->i:Landroid/net/Uri;

    if-nez v0, :cond_0

    return-void

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->q:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    .line 659
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 661
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->i:Landroid/net/Uri;

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->q:Landroid/media/Ringtone;

    return-void
.end method
