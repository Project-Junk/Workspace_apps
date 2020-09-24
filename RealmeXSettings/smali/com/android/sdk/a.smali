.class public Lcom/android/sdk/a;
.super Ljava/lang/Object;
.source "SeekBarVolumizer.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sdk/a$d;,
        Lcom/android/sdk/a$c;,
        Lcom/android/sdk/a$b;,
        Lcom/android/sdk/a$e;,
        Lcom/android/sdk/a$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field protected final a:Landroid/content/Context;

.field public b:Lcom/android/sdk/a$b;

.field protected c:Landroid/net/Uri;

.field public final d:Landroid/media/AudioManager;

.field protected final e:Landroid/app/NotificationManager;

.field public final f:I

.field protected final g:I

.field protected h:Z

.field public i:Z

.field protected j:Lcom/android/sdk/a$d;

.field protected k:Landroid/os/Handler;

.field protected l:Lcom/android/sdk/a$c;

.field protected m:I

.field public n:I

.field protected o:Landroid/media/Ringtone;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public p:I

.field public q:Z

.field protected r:I

.field public s:I

.field protected t:I

.field public u:Z

.field protected v:Lcom/android/sdk/a$e;

.field private final w:Lcom/android/sdk/a$a;

.field private x:Landroid/widget/SeekBar;

.field private y:Landroid/app/NotificationManager$Policy;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/net/Uri;Lcom/android/sdk/a$a;)V
    .locals 3

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/android/sdk/a$b;

    invoke-direct {v0, p0}, Lcom/android/sdk/a$b;-><init>(Lcom/android/sdk/a;)V

    iput-object v0, p0, Lcom/android/sdk/a;->b:Lcom/android/sdk/a$b;

    .line 89
    new-instance v0, Lcom/android/sdk/a$d;

    invoke-direct {v0, p0}, Lcom/android/sdk/a$d;-><init>(Lcom/android/sdk/a;)V

    iput-object v0, p0, Lcom/android/sdk/a;->j:Lcom/android/sdk/a$d;

    const/4 v0, -0x1

    .line 100
    iput v0, p0, Lcom/android/sdk/a;->p:I

    .line 103
    iput v0, p0, Lcom/android/sdk/a;->r:I

    .line 122
    iput-object p1, p0, Lcom/android/sdk/a;->a:Landroid/content/Context;

    .line 123
    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/sdk/a;->d:Landroid/media/AudioManager;

    .line 124
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/sdk/a;->e:Landroid/app/NotificationManager;

    .line 125
    iget-object v0, p0, Lcom/android/sdk/a;->e:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sdk/a;->y:Landroid/app/NotificationManager$Policy;

    .line 126
    iget-object v0, p0, Lcom/android/sdk/a;->y:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/sdk/a;->z:Z

    .line 128
    iget-object v0, p0, Lcom/android/sdk/a;->y:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/android/sdk/a;->A:Z

    .line 130
    iget-object v0, p0, Lcom/android/sdk/a;->y:Landroid/app/NotificationManager$Policy;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyNotificationZenSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v0

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/sdk/a;->B:Z

    .line 132
    iput p2, p0, Lcom/android/sdk/a;->f:I

    .line 133
    iget-object p2, p0, Lcom/android/sdk/a;->d:Landroid/media/AudioManager;

    iget v0, p0, Lcom/android/sdk/a;->f:I

    invoke-virtual {p2, v0}, Landroid/media/AudioManager;->isStreamAffectedByRingerMode(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/sdk/a;->h:Z

    .line 134
    iget p2, p0, Lcom/android/sdk/a;->f:I

    invoke-static {p2}, Lcom/android/sdk/a;->a(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/sdk/a;->i:Z

    .line 135
    iget-boolean p2, p0, Lcom/android/sdk/a;->i:Z

    if-eqz p2, :cond_2

    .line 136
    iget-object p2, p0, Lcom/android/sdk/a;->d:Landroid/media/AudioManager;

    invoke-virtual {p2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result p2

    iput p2, p0, Lcom/android/sdk/a;->s:I

    .line 138
    :cond_2
    iget-object p2, p0, Lcom/android/sdk/a;->e:Landroid/app/NotificationManager;

    invoke-virtual {p2}, Landroid/app/NotificationManager;->getZenMode()I

    move-result p2

    iput p2, p0, Lcom/android/sdk/a;->t:I

    .line 139
    iget-object p2, p0, Lcom/android/sdk/a;->d:Landroid/media/AudioManager;

    iget v0, p0, Lcom/android/sdk/a;->f:I

    invoke-virtual {p2, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p2

    iput p2, p0, Lcom/android/sdk/a;->g:I

    .line 140
    iput-object p4, p0, Lcom/android/sdk/a;->w:Lcom/android/sdk/a$a;

    .line 141
    iget-object p2, p0, Lcom/android/sdk/a;->d:Landroid/media/AudioManager;

    iget p4, p0, Lcom/android/sdk/a;->f:I

    invoke-virtual {p2, p4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p2

    iput p2, p0, Lcom/android/sdk/a;->m:I

    .line 142
    iget-object p2, p0, Lcom/android/sdk/a;->d:Landroid/media/AudioManager;

    iget p4, p0, Lcom/android/sdk/a;->f:I

    invoke-virtual {p2, p4}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result p2

    iput p2, p0, Lcom/android/sdk/a;->n:I

    .line 143
    iget-object p2, p0, Lcom/android/sdk/a;->d:Landroid/media/AudioManager;

    iget p4, p0, Lcom/android/sdk/a;->f:I

    invoke-virtual {p2, p4}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/sdk/a;->q:Z

    .line 144
    iget-object p2, p0, Lcom/android/sdk/a;->w:Lcom/android/sdk/a$a;

    if-eqz p2, :cond_3

    .line 145
    iget-boolean p4, p0, Lcom/android/sdk/a;->q:Z

    invoke-virtual {p0}, Lcom/android/sdk/a;->a()Z

    move-result v0

    invoke-interface {p2, p4, v0}, Lcom/android/sdk/a$a;->a(ZZ)V

    :cond_3
    const-string p2, "SeekBarVolumizer"

    if-nez p3, :cond_8

    .line 148
    iget p3, p0, Lcom/android/sdk/a;->f:I

    const/4 p4, 0x2

    if-ne p3, p4, :cond_6

    .line 1164
    invoke-static {p1}, Lcom/coloros/settings/utils/bb;->b(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_5

    invoke-static {p1}, Lcom/coloros/settings/utils/bb;->c(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 1166
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "ringtone_sim2"

    invoke-static {p1, p3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1167
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "Get ringtone sim2, "

    invoke-virtual {p4, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 1169
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    .line 1171
    :cond_4
    sget-object p1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    goto :goto_1

    .line 1174
    :cond_5
    sget-object p1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    :goto_1
    move-object p3, p1

    goto :goto_2

    :cond_6
    const/4 p1, 0x5

    if-ne p3, p1, :cond_7

    .line 153
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_2

    .line 155
    :cond_7
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    .line 158
    :cond_8
    :goto_2
    iput-object p3, p0, Lcom/android/sdk/a;->c:Landroid/net/Uri;

    .line 159
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "mDefaultUri = "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/sdk/a;->c:Landroid/net/Uri;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/sdk/a;Landroid/app/NotificationManager$Policy;)Landroid/app/NotificationManager$Policy;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/sdk/a;->y:Landroid/app/NotificationManager$Policy;

    return-object p1
.end method

.method static synthetic a(Lcom/android/sdk/a;)V
    .locals 4

    .line 1272
    invoke-virtual {p0}, Lcom/android/sdk/a;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1273
    iget-object v0, p0, Lcom/android/sdk/a;->w:Lcom/android/sdk/a$a;

    if-eqz v0, :cond_0

    .line 1274
    invoke-interface {v0, p0}, Lcom/android/sdk/a$a;->a(Lcom/android/sdk/a;)V

    .line 1277
    :cond_0
    monitor-enter p0

    .line 1278
    :try_start_0
    iget-object v0, p0, Lcom/android/sdk/a;->o:Landroid/media/Ringtone;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 1280
    :try_start_1
    iget-object v0, p0, Lcom/android/sdk/a;->o:Landroid/media/Ringtone;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    iget-object v2, p0, Lcom/android/sdk/a;->o:Landroid/media/Ringtone;

    .line 1281
    invoke-virtual {v2}, Landroid/media/Ringtone;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    const/16 v2, 0x80

    .line 1282
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 1283
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 1280
    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 1284
    iget-object v0, p0, Lcom/android/sdk/a;->o:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "SeekBarVolumizer"

    .line 1286
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error playing ringtone, stream "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/sdk/a;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1289
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    return-void
.end method

.method public static a(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic a(Lcom/android/sdk/a;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/android/sdk/a;->z:Z

    return p1
.end method

.method static synthetic b(Lcom/android/sdk/a;)V
    .locals 1

    .line 1302
    monitor-enter p0

    .line 1303
    :try_start_0
    iget-object v0, p0, Lcom/android/sdk/a;->o:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 1304
    iget-object v0, p0, Lcom/android/sdk/a;->o:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 1306
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/android/sdk/a;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/android/sdk/a;->A:Z

    return p1
.end method

.method static synthetic c(Lcom/android/sdk/a;)V
    .locals 2

    .line 2256
    monitor-enter p0

    .line 2257
    :try_start_0
    iget-object v0, p0, Lcom/android/sdk/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/sdk/a;->c:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sdk/a;->o:Landroid/media/Ringtone;

    .line 2258
    iget-object v0, p0, Lcom/android/sdk/a;->o:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 2259
    iget-object v0, p0, Lcom/android/sdk/a;->o:Landroid/media/Ringtone;

    iget v1, p0, Lcom/android/sdk/a;->f:I

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 2261
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static c(I)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic c(Lcom/android/sdk/a;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/android/sdk/a;->B:Z

    return p1
.end method

.method static synthetic d(Lcom/android/sdk/a;)Landroid/widget/SeekBar;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/sdk/a;->x:Landroid/widget/SeekBar;

    return-object p0
.end method

.method private static d(I)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic e(Lcom/android/sdk/a;)Lcom/android/sdk/a$a;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/sdk/a;->w:Lcom/android/sdk/a$a;

    return-object p0
.end method

.method static synthetic f(Lcom/android/sdk/a;)Landroid/app/NotificationManager$Policy;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/sdk/a;->y:Landroid/app/NotificationManager$Policy;

    return-object p0
.end method


# virtual methods
.method protected a(Landroid/os/HandlerThread;)V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/android/sdk/a;->v:Lcom/android/sdk/a$e;

    if-nez v0, :cond_0

    .line 346
    new-instance v0, Lcom/android/sdk/a$e;

    invoke-direct {v0, p0}, Lcom/android/sdk/a$e;-><init>(Lcom/android/sdk/a;)V

    iput-object v0, p0, Lcom/android/sdk/a;->v:Lcom/android/sdk/a$e;

    .line 348
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v1, p0, Lcom/android/sdk/a;->v:Lcom/android/sdk/a$e;

    invoke-direct {v0, p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/sdk/a;->k:Landroid/os/Handler;

    .line 349
    iget-object p1, p0, Lcom/android/sdk/a;->k:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final a(Landroid/widget/SeekBar;)V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/android/sdk/a;->x:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 195
    :cond_0
    iput-object p1, p0, Lcom/android/sdk/a;->x:Landroid/widget/SeekBar;

    .line 196
    iget-object p1, p0, Lcom/android/sdk/a;->x:Landroid/widget/SeekBar;

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 197
    iget-object p1, p0, Lcom/android/sdk/a;->x:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/android/sdk/a;->g:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 198
    invoke-virtual {p0}, Lcom/android/sdk/a;->b()V

    .line 199
    iget-object p1, p0, Lcom/android/sdk/a;->x:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public final a()Z
    .locals 3

    .line 203
    iget-boolean v0, p0, Lcom/android/sdk/a;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/sdk/a;->t:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    :cond_0
    iget v0, p0, Lcom/android/sdk/a;->t:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/android/sdk/a;->z:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/sdk/a;->f:I

    .line 206
    invoke-static {v0}, Lcom/android/sdk/a;->c(I)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-boolean v0, p0, Lcom/android/sdk/a;->A:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/sdk/a;->f:I

    .line 207
    invoke-static {v0}, Lcom/android/sdk/a;->d(I)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-boolean v0, p0, Lcom/android/sdk/a;->B:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/sdk/a;->f:I

    .line 208
    invoke-static {v0}, Lcom/android/sdk/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method protected b()V
    .locals 3

    .line 212
    invoke-virtual {p0}, Lcom/android/sdk/a;->a()Z

    move-result v0

    .line 213
    iget-object v1, p0, Lcom/android/sdk/a;->x:Landroid/widget/SeekBar;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/sdk/a;->x:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/sdk/a;->n:I

    goto :goto_0

    .line 216
    :cond_0
    iget-boolean v0, p0, Lcom/android/sdk/a;->i:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/sdk/a;->s:I

    if-ne v0, v2, :cond_1

    .line 217
    iget-object v0, p0, Lcom/android/sdk/a;->x:Landroid/widget/SeekBar;

    goto :goto_0

    .line 218
    :cond_1
    iget-boolean v0, p0, Lcom/android/sdk/a;->q:Z

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/android/sdk/a;->x:Landroid/widget/SeekBar;

    goto :goto_0

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/android/sdk/a;->x:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/sdk/a;->p:I

    if-ltz v1, :cond_3

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/sdk/a;->m:I

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/widget/SeekBar;->setProgress(IZ)V

    return-void
.end method

.method protected final b(I)V
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/android/sdk/a;->k:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 368
    :cond_0
    iput p1, p0, Lcom/android/sdk/a;->p:I

    const/4 p1, 0x0

    .line 369
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 370
    iget-object v0, p0, Lcom/android/sdk/a;->k:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected final c()V
    .locals 4

    .line 265
    iget-object v0, p0, Lcom/android/sdk/a;->k:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 266
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 267
    iget-object v0, p0, Lcom/android/sdk/a;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 268
    invoke-virtual {p0}, Lcom/android/sdk/a;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x3e8

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    .line 267
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final d()V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/android/sdk/a;->k:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 296
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 297
    iget-object v0, p0, Lcom/android/sdk/a;->k:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 298
    iget-object v0, p0, Lcom/android/sdk/a;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public e()V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/android/sdk/a;->k:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/android/sdk/a;->d()V

    .line 312
    iget-object v0, p0, Lcom/android/sdk/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sdk/a;->l:Lcom/android/sdk/a$c;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 313
    iget-object v0, p0, Lcom/android/sdk/a;->j:Lcom/android/sdk/a$d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/sdk/a$d;->a(Z)V

    .line 314
    iget-object v0, p0, Lcom/android/sdk/a;->x:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 315
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/android/sdk/a;->k:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 318
    iput-object v1, p0, Lcom/android/sdk/a;->k:Landroid/os/Handler;

    .line 319
    iput-object v1, p0, Lcom/android/sdk/a;->l:Lcom/android/sdk/a$c;

    .line 320
    iput-object v1, p0, Lcom/android/sdk/a;->v:Lcom/android/sdk/a$e;

    .line 322
    invoke-virtual {p0}, Lcom/android/sdk/a;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 324
    monitor-enter p0

    .line 325
    :try_start_0
    iput-object v1, p0, Lcom/android/sdk/a;->o:Landroid/media/Ringtone;

    .line 326
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    return-void
.end method

.method public final f()V
    .locals 4

    .line 332
    iget-object v0, p0, Lcom/android/sdk/a;->k:Landroid/os/Handler;

    if-eqz v0, :cond_0

    return-void

    .line 333
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SeekBarVolumizer.CallbackHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 335
    invoke-virtual {p0, v0}, Lcom/android/sdk/a;->a(Landroid/os/HandlerThread;)V

    .line 336
    new-instance v0, Lcom/android/sdk/a$c;

    iget-object v1, p0, Lcom/android/sdk/a;->k:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/sdk/a$c;-><init>(Lcom/android/sdk/a;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/sdk/a;->l:Lcom/android/sdk/a$c;

    .line 337
    iget-object v0, p0, Lcom/android/sdk/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/android/sdk/a;->f:I

    aget-object v1, v1, v2

    .line 338
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sdk/a;->l:Lcom/android/sdk/a$c;

    const/4 v3, 0x0

    .line 337
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 340
    iget-object v0, p0, Lcom/android/sdk/a;->j:Lcom/android/sdk/a$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/sdk/a$d;->a(Z)V

    .line 341
    iput-boolean v3, p0, Lcom/android/sdk/a;->u:Z

    return-void
.end method

.method public final g()Z
    .locals 4

    .line 381
    monitor-enter p0

    const/4 v0, 0x0

    .line 384
    :try_start_0
    iget-object v1, p0, Lcom/android/sdk/a;->o:Landroid/media/Ringtone;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/sdk/a;->o:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "SeekBarVolumizer"

    const-string v3, "isSamplePlaying() IllegalStateException"

    .line 386
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 389
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final h()V
    .locals 0

    .line 397
    invoke-virtual {p0}, Lcom/android/sdk/a;->d()V

    return-void
.end method

.method protected i()V
    .locals 4

    .line 467
    iget-object v0, p0, Lcom/android/sdk/a;->x:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/sdk/a;->d:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 468
    iget v1, p0, Lcom/android/sdk/a;->f:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 469
    iget-object v1, p0, Lcom/android/sdk/a;->d:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/sdk/a;->f:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v1

    .line 470
    iget-object v2, p0, Lcom/android/sdk/a;->d:Landroid/media/AudioManager;

    iget v3, p0, Lcom/android/sdk/a;->f:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v2

    .line 471
    iget-boolean v3, p0, Lcom/android/sdk/a;->u:Z

    if-nez v3, :cond_0

    .line 472
    iget-object v3, p0, Lcom/android/sdk/a;->b:Lcom/android/sdk/a$b;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/sdk/a$b;->a(IIZ)V

    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 358
    invoke-virtual {p0, p2}, Lcom/android/sdk/a;->b(I)V

    .line 360
    :cond_0
    iget-object p1, p0, Lcom/android/sdk/a;->w:Lcom/android/sdk/a$a;

    if-eqz p1, :cond_1

    .line 361
    invoke-interface {p1}, Lcom/android/sdk/a$a;->a()V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 377
    invoke-virtual {p0}, Lcom/android/sdk/a;->c()V

    return-void
.end method
