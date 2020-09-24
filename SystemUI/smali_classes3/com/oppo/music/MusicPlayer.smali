.class public Lcom/oppo/music/MusicPlayer;
.super Ljava/lang/Object;
.source "MusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/music/MusicPlayer$IMusicMutilsThumbLyricUpdatedListener;,
        Lcom/oppo/music/MusicPlayer$IMusicThumbLyricUpdatedListener;,
        Lcom/oppo/music/MusicPlayer$IMusicBindResultListener;,
        Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;,
        Lcom/oppo/music/MusicPlayer$MyHandler;
    }
.end annotation


# static fields
.field private static final ACTION_SHUTDOWN:Ljava/lang/String; = "oppo.intent.action.ACTION_SHUTDOWN"

.field public static final EXTRA_IS_ONLINT:Ljava/lang/String; = "is online"

.field public static final EXTRA_LYRIC_PATH:Ljava/lang/String; = "lyric path"

.field public static final EXTRA_THUMB_PATH:Ljava/lang/String; = "thumb path"

.field public static final LYRIC_UPDATE:Ljava/lang/String; = "com.oppo.music.lyric.update"

.field private static final META_CHANGED:Ljava/lang/String; = "com.oppo.music.service.meta_changed"

.field private static final META_CHANGED_HANDLER:I = 0x2

.field private static final MUSIC_LYRIC_UPDATE:I = 0x8

.field private static final MUSIC_PLAYBACK_COMPLETE:I = 0x7

.field private static final MUSIC_QUEUE_CHANGED:I = 0x6

.field private static final MUSIC_SERVICE_Bind_FAILED:I = 0x5

.field private static final MUSIC_SERVICE_Bind_SUCCESS:I = 0x4

.field private static final MUSIC_SERVICE_DISCONNECTED:I = 0x3

.field private static final MUSIC_THUMB_BMP_UPDATE:I = 0xa

.field private static final MUSIC_THUMB_UPDATE:I = 0x9

.field public static final PLAYBACK_COMPLETE:Ljava/lang/String; = "com.oppo.music.service.playback_complete"

.field private static final PLAYSTATE_CHANGED:Ljava/lang/String; = "com.oppo.music.service.playstate_changed"

.field private static final PLAYSTATE_CHANGED_HANDLER:I = 0x1

.field public static final QUEUE_CHANGED:Ljava/lang/String; = "com.oppo.music.service.queue_changed"

.field private static final TAG:Ljava/lang/String; = "MusicPlayer"

.field public static final THUMB_UPDATE:Ljava/lang/String; = "com.oppo.music.thumb.update"

.field private static isLockScreenApk:Z = false

.field private static mContext:Landroid/content/Context;

.field private static mMusicPlayer:Lcom/oppo/music/MusicPlayer;


# instance fields
.field private DEBUG:Z

.field private final FIVE_SECONDS:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mHandler:Lcom/oppo/music/MusicPlayer$MyHandler;

.field private mIBinder:Landroid/os/IBinder;

.field private mIMusicBindResultListener:Lcom/oppo/music/MusicPlayer$IMusicBindResultListener;

.field private mIMusicMutilsThumbLyricUpdatedListener:Lcom/oppo/music/MusicPlayer$IMusicMutilsThumbLyricUpdatedListener;

.field private mIMusicStateChangeListener:Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;

.field private mIMusicThumbLyricUpdatedListener:Lcom/oppo/music/MusicPlayer$IMusicThumbLyricUpdatedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/oppo/music/MusicPlayer;->DEBUG:Z

    const/16 v0, 0x1388

    .line 92
    iput v0, p0, Lcom/oppo/music/MusicPlayer;->FIVE_SECONDS:I

    .line 100
    new-instance v0, Lcom/oppo/music/MusicPlayer$1;

    invoke-direct {v0, p0}, Lcom/oppo/music/MusicPlayer$1;-><init>(Lcom/oppo/music/MusicPlayer;)V

    iput-object v0, p0, Lcom/oppo/music/MusicPlayer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 845
    iput-object v0, p0, Lcom/oppo/music/MusicPlayer;->mIBinder:Landroid/os/IBinder;

    .line 846
    new-instance v0, Lcom/oppo/music/MusicPlayer$3;

    invoke-direct {v0, p0}, Lcom/oppo/music/MusicPlayer$3;-><init>(Lcom/oppo/music/MusicPlayer;)V

    iput-object v0, p0, Lcom/oppo/music/MusicPlayer;->mConnection:Landroid/content/ServiceConnection;

    .line 305
    sput-object p1, Lcom/oppo/music/MusicPlayer;->mContext:Landroid/content/Context;

    .line 306
    new-instance p1, Lcom/oppo/music/MusicPlayer$MyHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/oppo/music/MusicPlayer$MyHandler;-><init>(Lcom/oppo/music/MusicPlayer;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oppo/music/MusicPlayer;->mHandler:Lcom/oppo/music/MusicPlayer$MyHandler;

    .line 307
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 308
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->registerReceiver()V

    return-void
.end method

.method private BindService()Z
    .locals 3

    const-string v0, "MusicPlayer"

    const-string v1, "BindService "

    .line 882
    invoke-static {v0, v1}, Lcom/oppo/music/utils/MyLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :try_start_0
    sget-object v1, Lcom/oppo/music/MusicPlayer;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/oppo/music/MusicPlayer;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {v1, p0}, Lcom/oppo/music/utils/PlayServiceUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BindService error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic access$000(Lcom/oppo/music/MusicPlayer;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/oppo/music/MusicPlayer;->DEBUG:Z

    return p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 63
    sget-boolean v0, Lcom/oppo/music/MusicPlayer;->isLockScreenApk:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/oppo/music/MusicPlayer;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->handleMusicPlaybackCompleted()V

    return-void
.end method

.method static synthetic access$1100(Lcom/oppo/music/MusicPlayer;Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/oppo/music/MusicPlayer;->handleMusicLyricUpdated(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/oppo/music/MusicPlayer;Ljava/lang/String;Z)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/oppo/music/MusicPlayer;->handleMusicThumbUpdated(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/oppo/music/MusicPlayer;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/oppo/music/MusicPlayer;->getBitmapFromSdCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/oppo/music/MusicPlayer;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/oppo/music/MusicPlayer;->decodeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/oppo/music/MusicPlayer;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/oppo/music/MusicPlayer;->getBitmapFromAudioFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1602(Lcom/oppo/music/MusicPlayer;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/oppo/music/MusicPlayer;->mIBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oppo/music/MusicPlayer;)Z
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/oppo/music/MusicPlayer;)Lcom/oppo/music/MusicPlayer$MyHandler;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/oppo/music/MusicPlayer;->mHandler:Lcom/oppo/music/MusicPlayer$MyHandler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oppo/music/MusicPlayer;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/oppo/music/MusicPlayer;->handleMusicThumbUpdated(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oppo/music/MusicPlayer;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->handlePlayStateChanged()V

    return-void
.end method

.method static synthetic access$600(Lcom/oppo/music/MusicPlayer;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->handleMetaChanged()V

    return-void
.end method

.method static synthetic access$700(Lcom/oppo/music/MusicPlayer;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->handleMusicServiceDisconnected()V

    return-void
.end method

.method static synthetic access$800(Lcom/oppo/music/MusicPlayer;Z)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/oppo/music/MusicPlayer;->handleMusicServiceBindResult(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/oppo/music/MusicPlayer;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->handleMusicQueueChanged()V

    return-void
.end method

.method private decodeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    const-string p0, "decodeBitmap, file close faild."

    const-string v0, "MusicPlayer"

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "decodeBitmap, use old."

    .line 272
    invoke-static {v0, v4}, Lcom/oppo/music/utils/MyLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 275
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 276
    :try_start_1
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v3, p1

    goto :goto_2

    :cond_0
    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_2

    .line 282
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 285
    :catch_0
    invoke-static {v0, p0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_1
    move-object p1, v3

    goto :goto_4

    :goto_2
    if-eqz v3, :cond_1

    .line 282
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 285
    :catch_2
    invoke-static {v0, p0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_1
    :goto_3
    throw v1

    :catch_3
    :goto_4
    if-eqz p1, :cond_2

    goto :goto_1

    .line 288
    :cond_2
    :goto_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "decodeBitmap time="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oppo/music/utils/MyLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private doParse([B)Landroid/graphics/Bitmap;
    .locals 3

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 1070
    :cond_0
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1071
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    .line 1072
    array-length v2, p1

    invoke-static {p1, v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string p1, "MusicPlayer"

    .line 1073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doParse, bitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method private getBitmapFromAudioFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1037
    sget-object v0, Lcom/oppo/music/MusicPlayer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/oppo/music/MusicPlayer;->getCompressedAlbumArt(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p1

    .line 1038
    invoke-direct {p0, p1}, Lcom/oppo/music/MusicPlayer;->doParse([B)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getBitmapFromSdCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1007
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 1010
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1013
    :try_start_0
    new-instance p1, Lcom/oppo/music/cahce/DiskBasedCache$CountingInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v2}, Lcom/oppo/music/cahce/DiskBasedCache$CountingInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1014
    :try_start_1
    invoke-static {p1}, Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;->readHeader(Ljava/io/InputStream;)Lcom/oppo/music/cahce/DiskBasedCache$CacheHeader;

    .line 1015
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iget v3, p1, Lcom/oppo/music/cahce/DiskBasedCache$CountingInputStream;->bytesRead:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {p1, v1}, Lcom/oppo/music/cahce/DiskBasedCache;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v1

    .line 1016
    invoke-direct {p0, v1}, Lcom/oppo/music/MusicPlayer;->doParse([B)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1023
    :try_start_2
    invoke-virtual {p1}, Lcom/oppo/music/cahce/DiskBasedCache$CountingInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    return-object v0

    :catch_1
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object p1, v0

    goto :goto_1

    :catch_2
    move-exception p0

    move-object p1, v0

    .line 1018
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_1

    .line 1023
    :try_start_4
    invoke-virtual {p1}, Lcom/oppo/music/cahce/DiskBasedCache$CountingInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    nop

    :catch_3
    :cond_1
    return-object v0

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz p1, :cond_2

    :try_start_5
    invoke-virtual {p1}, Lcom/oppo/music/cahce/DiskBasedCache$CountingInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    :catch_4
    return-object v0

    .line 1025
    :cond_2
    :goto_2
    throw p0

    :cond_3
    :goto_3
    return-object v0
.end method

.method private getCompressedAlbumArt(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 1

    const/4 p0, 0x0

    .line 1051
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x10000000

    .line 1052
    invoke-static {v0, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    .line 1053
    new-instance v0, Landroid/media/MediaScanner;

    invoke-direct {v0, p1}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    .line 1054
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/MediaScanner;->extractAlbumArt(Ljava/io/FileDescriptor;)[B

    move-result-object p0

    .line 1055
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1059
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public static declared-synchronized getMusicPlayer(Landroid/content/Context;)Lcom/oppo/music/MusicPlayer;
    .locals 2

    const-class v0, Lcom/oppo/music/MusicPlayer;

    monitor-enter v0

    const/4 v1, 0x0

    .line 293
    :try_start_0
    invoke-static {p0, v1}, Lcom/oppo/music/MusicPlayer;->getMusicPlayer(Landroid/content/Context;Z)Lcom/oppo/music/MusicPlayer;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getMusicPlayer(Landroid/content/Context;Z)Lcom/oppo/music/MusicPlayer;
    .locals 1

    const-class v0, Lcom/oppo/music/MusicPlayer;

    monitor-enter v0

    .line 297
    :try_start_0
    sput-boolean p1, Lcom/oppo/music/MusicPlayer;->isLockScreenApk:Z

    .line 298
    sget-object p1, Lcom/oppo/music/MusicPlayer;->mMusicPlayer:Lcom/oppo/music/MusicPlayer;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/oppo/music/MusicPlayer;->mContext:Landroid/content/Context;

    if-eq p1, p0, :cond_1

    .line 299
    :cond_0
    new-instance p1, Lcom/oppo/music/MusicPlayer;

    invoke-direct {p1, p0}, Lcom/oppo/music/MusicPlayer;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/oppo/music/MusicPlayer;->mMusicPlayer:Lcom/oppo/music/MusicPlayer;

    .line 301
    :cond_1
    sget-object p0, Lcom/oppo/music/MusicPlayer;->mMusicPlayer:Lcom/oppo/music/MusicPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private handleMetaChanged()V
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/oppo/music/MusicPlayer;->mIMusicStateChangeListener:Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;

    if-eqz p0, :cond_0

    .line 205
    invoke-interface {p0}, Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;->onMetaChanged()V

    :cond_0
    return-void
.end method

.method private handleMusicLyricUpdated(Ljava/lang/String;)V
    .locals 2

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMusicLyricUpdated, path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicPlayer"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object p0, p0, Lcom/oppo/music/MusicPlayer;->mIMusicThumbLyricUpdatedListener:Lcom/oppo/music/MusicPlayer$IMusicThumbLyricUpdatedListener;

    if-eqz p0, :cond_0

    .line 230
    invoke-interface {p0, p1}, Lcom/oppo/music/MusicPlayer$IMusicThumbLyricUpdatedListener;->onMusicLyricUpdated(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private handleMusicPlaybackCompleted()V
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/oppo/music/MusicPlayer;->mIMusicStateChangeListener:Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;

    if-eqz p0, :cond_0

    .line 217
    invoke-interface {p0}, Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;->OnMusicPlaybackCompleted()V

    :cond_0
    return-void
.end method

.method private handleMusicQueueChanged()V
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/oppo/music/MusicPlayer;->mIMusicStateChangeListener:Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;

    if-eqz p0, :cond_0

    .line 211
    invoke-interface {p0}, Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;->OnMusicQueueChanged()V

    :cond_0
    return-void
.end method

.method private handleMusicServiceBindResult(Z)V
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/oppo/music/MusicPlayer;->mIMusicBindResultListener:Lcom/oppo/music/MusicPlayer$IMusicBindResultListener;

    if-eqz p0, :cond_0

    .line 193
    invoke-interface {p0, p1}, Lcom/oppo/music/MusicPlayer$IMusicBindResultListener;->onMusicBindResult(Z)V

    :cond_0
    return-void
.end method

.method private handleMusicServiceDisconnected()V
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/oppo/music/MusicPlayer;->mIMusicStateChangeListener:Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;

    if-eqz p0, :cond_0

    .line 187
    invoke-interface {p0}, Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;->onMusicServiceDisconnected()V

    :cond_0
    return-void
.end method

.method private handleMusicThumbUpdated(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/oppo/music/MusicPlayer;->mIMusicThumbLyricUpdatedListener:Lcom/oppo/music/MusicPlayer$IMusicThumbLyricUpdatedListener;

    if-eqz p0, :cond_0

    .line 223
    invoke-interface {p0, p1}, Lcom/oppo/music/MusicPlayer$IMusicThumbLyricUpdatedListener;->onMusicThumbUpdated(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private handleMusicThumbUpdated(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 235
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oppo/music/MusicPlayer$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/oppo/music/MusicPlayer$2;-><init>(Lcom/oppo/music/MusicPlayer;Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_1
    :goto_0
    const-string p0, "MusicPlayer"

    const-string p1, "handleMusicThumbUpdated, path is null."

    .line 236
    invoke-static {p0, p1}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handlePlayStateChanged()V
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/oppo/music/MusicPlayer;->mIMusicStateChangeListener:Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;

    if-eqz p0, :cond_0

    .line 199
    invoke-interface {p0}, Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;->onPlayStatechanged()V

    :cond_0
    return-void
.end method

.method private isNeedToBind()Z
    .locals 0

    .line 988
    iget-object p0, p0, Lcom/oppo/music/MusicPlayer;->mIBinder:Landroid/os/IBinder;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private registerReceiver()V
    .locals 2

    .line 372
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.oppo.music.service.meta_changed"

    .line 373
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.oppo.music.service.queue_changed"

    .line 374
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.oppo.music.service.playstate_changed"

    .line 375
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "oppo.intent.action.ACTION_SHUTDOWN"

    .line 376
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.oppo.music.service.playback_complete"

    .line 377
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.oppo.music.thumb.update"

    .line 378
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.oppo.music.lyric.update"

    .line 379
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 380
    sget-object v1, Lcom/oppo/music/MusicPlayer;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/oppo/music/MusicPlayer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unRegRecv()V
    .locals 1

    .line 384
    sget-object v0, Lcom/oppo/music/MusicPlayer;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/oppo/music/MusicPlayer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public begin()Z
    .locals 1

    .line 873
    sget-boolean v0, Lcom/oppo/music/MusicPlayer;->isLockScreenApk:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 876
    :cond_0
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->BindService()Z

    move-result p0

    return p0
.end method

.method public beginForLockScreen()Z
    .locals 0

    .line 869
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->BindService()Z

    move-result p0

    return p0
.end method

.method public duration()J
    .locals 2

    .line 743
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 746
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result p0

    if-nez p0, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    .line 749
    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public end()V
    .locals 2

    .line 406
    :try_start_0
    sget-object p0, Lcom/oppo/music/MusicPlayer;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oppo/music/utils/PlayServiceUtils;->unbindService(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "end unbindService error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MusicPlayer"

    invoke-static {v0, p0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 3

    .line 693
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 696
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const-string v0, "MusicPlayer"

    const-string v2, "getAlbumName, start!"

    .line 699
    invoke-static {v0, v2}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->getCurTrack()Lcom/oppo/music/media/Track;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 703
    invoke-virtual {p0}, Lcom/oppo/music/media/Track;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string p0, "<unknown>"

    .line 704
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 705
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getAlbumUnknownString()Ljava/lang/String;

    move-result-object v1

    .line 708
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAlbumName, end! album="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 3

    .line 668
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 671
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const-string v0, "MusicPlayer"

    const-string v2, "getArtistName, start!"

    .line 674
    invoke-static {v0, v2}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->getCurTrack()Lcom/oppo/music/media/Track;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 678
    invoke-virtual {p0}, Lcom/oppo/music/media/Track;->getArtistName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string p0, "<unknown>"

    .line 679
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 680
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getArtistUnknownString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string p0, "getArtistName, end!"

    .line 683
    invoke-static {v0, p0}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method public getAudioId()J
    .locals 2

    .line 713
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 716
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result p0

    if-nez p0, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    .line 719
    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getCurrentTrackID()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBufferingPercent()J
    .locals 2

    .line 575
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 578
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result p0

    if-nez p0, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    .line 581
    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getBufferingPercent()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public getCueInnerPosition()I
    .locals 1

    .line 586
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 589
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 592
    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getCueInnerPosition()I

    move-result p0

    return p0
.end method

.method public getCurOrginTrack()Lcom/oppo/music/media/Track;
    .locals 1

    .line 630
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 633
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 636
    :cond_1
    sget-object p0, Lcom/oppo/music/MusicPlayer;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oppo/music/utils/PlayServiceUtils;->getCurrentTrack(Landroid/content/Context;)Lcom/oppo/music/media/Track;

    move-result-object p0

    return-object p0
.end method

.method public getCurTrack()Lcom/oppo/music/media/Track;
    .locals 1

    .line 616
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 619
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 622
    :cond_1
    sget-object p0, Lcom/oppo/music/MusicPlayer;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oppo/music/utils/PlayServiceUtils;->getCurrentPlayTrack(Landroid/content/Context;)Lcom/oppo/music/media/Track;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentCueTrack(Landroid/content/Context;)Lcom/oppo/music/media/Track;
    .locals 1

    .line 601
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 604
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 607
    :cond_1
    invoke-static {p1}, Lcom/oppo/music/utils/PlayServiceUtils;->getCurrentCueTrack(Landroid/content/Context;)Lcom/oppo/music/media/Track;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentPlaylistItem()Lcom/oppo/music/media/PlaylistItem;
    .locals 1

    .line 904
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 905
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 907
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 910
    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getCurrentPlaylistItem()Lcom/oppo/music/media/PlaylistItem;

    move-result-object p0

    return-object p0
.end method

.method public getLocalSongs(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/oppo/music/media/Track;",
            ">;"
        }
    .end annotation

    .line 555
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 558
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 561
    :cond_1
    invoke-static {p1, p2}, Lcom/oppo/music/utils/PlayServiceUtils;->getLocalSongs(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLocalSongsNumber()I
    .locals 1

    .line 545
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 548
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 551
    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getLocalSongsNumber()I

    move-result p0

    return p0
.end method

.method public getLyricPath()Ljava/lang/String;
    .locals 1

    .line 775
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 778
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 781
    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getCurrentPlaylistItem()Lcom/oppo/music/media/PlaylistItem;

    move-result-object p0

    invoke-static {p0}, Lcom/oppo/music/utils/PlayServiceUtils;->getLyricPath(Lcom/oppo/music/media/PlaylistItem;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 2

    .line 790
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 793
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 796
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->getCurTrack()Lcom/oppo/music/media/Track;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 798
    invoke-virtual {p0}, Lcom/oppo/music/media/Track;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public getPlayMode()I
    .locals 1

    .line 752
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 755
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 758
    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getPlayMode()I

    move-result p0

    return p0
.end method

.method public getPlayMoodIndex()I
    .locals 1

    .line 525
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 528
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 531
    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getPlayMoodIndex()I

    move-result p0

    return p0
.end method

.method public getPlaylist()Lcom/oppo/music/media/Playlist;
    .locals 1

    .line 894
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 895
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 897
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 900
    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getPlaylist()Lcom/oppo/music/media/Playlist;

    move-result-object p0

    return-object p0
.end method

.method public getPlaylistItem(I)Lcom/oppo/music/media/PlaylistItem;
    .locals 1

    .line 914
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 915
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 917
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 920
    :cond_1
    invoke-static {p1}, Lcom/oppo/music/utils/PlayServiceUtils;->getPlaylistItem(I)Lcom/oppo/music/media/PlaylistItem;

    move-result-object p0

    return-object p0
.end method

.method public final getQueueLength()I
    .locals 1

    .line 809
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 812
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 816
    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getPlaylistLength()I

    move-result p0

    return p0
.end method

.method public getQueuePosition()I
    .locals 1

    .line 723
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 726
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 729
    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getPlaylistCurrentPosition()I

    move-result p0

    return p0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 3

    .line 646
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 649
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const-string v0, "MusicPlayer"

    const-string v2, "getTrackName, start!"

    .line 652
    invoke-static {v0, v2}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->getCurTrack()Lcom/oppo/music/media/Track;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 656
    invoke-virtual {p0}, Lcom/oppo/music/media/Track;->getTrackName()Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string p0, "getTrackName, end!"

    .line 658
    invoke-static {v0, p0}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method public isBindSucceed()Z
    .locals 0

    .line 995
    iget-object p0, p0, Lcom/oppo/music/MusicPlayer;->mIBinder:Landroid/os/IBinder;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isBufferingBlocked()Z
    .locals 1

    .line 836
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 837
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 839
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 842
    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->isBufferingBlocked()Z

    move-result p0

    return p0
.end method

.method public isPlaying()Z
    .locals 1

    .line 825
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 828
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 832
    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->isPlaying()Z

    move-result p0

    return p0
.end method

.method public isTrackOnline(Lcom/oppo/music/media/Track;)Z
    .locals 1

    .line 535
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 538
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 541
    :cond_1
    invoke-static {p1}, Lcom/oppo/music/utils/PlayServiceUtils;->isTrackOnline(Lcom/oppo/music/media/Track;)Z

    move-result p0

    return p0
.end method

.method public next()Z
    .locals 2

    const-string v0, "MusicPlayer"

    const-string v1, "next, start!"

    .line 453
    invoke-static {v0, v1}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 457
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 460
    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->next()V

    const-string p0, "next, end!"

    .line 461
    invoke-static {v0, p0}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 0

    .line 398
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->unRegRecv()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 391
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->registerReceiver()V

    return-void
.end method

.method public pause()Z
    .locals 1

    .line 437
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 440
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 443
    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->pause()V

    const/4 p0, 0x1

    return p0
.end method

.method public play()Z
    .locals 1

    .line 421
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 424
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 427
    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->play()V

    const/4 p0, 0x1

    return p0
.end method

.method public playTrack(Lcom/oppo/music/media/Track;)V
    .locals 1

    .line 565
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 568
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 571
    :cond_1
    invoke-static {p1}, Lcom/oppo/music/utils/PlayServiceUtils;->playTrack(Lcom/oppo/music/media/Track;)V

    return-void
.end method

.method public position()J
    .locals 2

    .line 733
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 736
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result p0

    if-nez p0, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    .line 739
    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public prev()Z
    .locals 6

    const-string v0, "MusicPlayer"

    const-string v1, "prev, start!"

    .line 471
    invoke-static {v0, v1}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 475
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_1

    return v1

    .line 478
    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getCurrentPosition()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    cmp-long p0, v2, v4

    if-gez p0, :cond_2

    .line 479
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->previous()V

    goto :goto_0

    .line 481
    :cond_2
    invoke-static {v1}, Lcom/oppo/music/utils/PlayServiceUtils;->seekTo(I)V

    .line 482
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->play()V

    :goto_0
    const-string p0, "prev, end!"

    .line 484
    invoke-static {v0, p0}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public recycle()V
    .locals 2

    .line 934
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer;->mIMusicStateChangeListener:Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 935
    iput-object v1, p0, Lcom/oppo/music/MusicPlayer;->mIMusicStateChangeListener:Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;

    .line 937
    :cond_0
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer;->mIMusicBindResultListener:Lcom/oppo/music/MusicPlayer$IMusicBindResultListener;

    if-eqz v0, :cond_1

    .line 938
    iput-object v1, p0, Lcom/oppo/music/MusicPlayer;->mIMusicBindResultListener:Lcom/oppo/music/MusicPlayer$IMusicBindResultListener;

    .line 940
    :cond_1
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 941
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->unRegRecv()V

    .line 942
    iput-object v1, p0, Lcom/oppo/music/MusicPlayer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 944
    :cond_2
    sget-object p0, Lcom/oppo/music/MusicPlayer;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_3

    .line 945
    sput-object v1, Lcom/oppo/music/MusicPlayer;->mContext:Landroid/content/Context;

    :cond_3
    return-void
.end method

.method public registerListener(Lcom/oppo/music/service/ISearchCallBack;)V
    .locals 1

    .line 1100
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1101
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 1103
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 1106
    :cond_1
    invoke-static {p1}, Lcom/oppo/music/utils/PlayServiceUtils;->registerListener(Lcom/oppo/music/service/ISearchCallBack;)V

    return-void
.end method

.method public searchSongsAsync(Landroid/os/Bundle;)V
    .locals 1

    .line 1090
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1091
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 1093
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 1096
    :cond_1
    invoke-static {p1}, Lcom/oppo/music/utils/PlayServiceUtils;->searchSongsAsync(Landroid/os/Bundle;)V

    return-void
.end method

.method public searchSongsSync(Landroid/os/Bundle;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/oppo/music/media/Track;",
            ">;"
        }
    .end annotation

    .line 1080
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1081
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 1083
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 1086
    :cond_1
    invoke-static {p1}, Lcom/oppo/music/utils/PlayServiceUtils;->searchSongsSync(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public seekTo(I)V
    .locals 1

    .line 505
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 508
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 511
    :cond_1
    invoke-static {p1}, Lcom/oppo/music/utils/PlayServiceUtils;->seekTo(I)V

    return-void
.end method

.method public setIMusicBindResultListener(Lcom/oppo/music/MusicPlayer$IMusicBindResultListener;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/oppo/music/MusicPlayer;->mIMusicBindResultListener:Lcom/oppo/music/MusicPlayer$IMusicBindResultListener;

    return-void
.end method

.method public setIMusicMutilsThumbLyricUpdatedListener(Lcom/oppo/music/MusicPlayer$IMusicMutilsThumbLyricUpdatedListener;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/oppo/music/MusicPlayer;->mIMusicMutilsThumbLyricUpdatedListener:Lcom/oppo/music/MusicPlayer$IMusicMutilsThumbLyricUpdatedListener;

    return-void
.end method

.method public setIMusicStateChangeListener(Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/oppo/music/MusicPlayer;->mIMusicStateChangeListener:Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;

    return-void
.end method

.method public setIMusicThumbLyricUpdatedListener(Lcom/oppo/music/MusicPlayer$IMusicThumbLyricUpdatedListener;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/oppo/music/MusicPlayer;->mIMusicThumbLyricUpdatedListener:Lcom/oppo/music/MusicPlayer$IMusicThumbLyricUpdatedListener;

    return-void
.end method

.method public setPlayMode(I)V
    .locals 1

    .line 761
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 764
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 767
    :cond_1
    invoke-static {p1}, Lcom/oppo/music/utils/PlayServiceUtils;->setPlayMode(I)V

    return-void
.end method

.method public setPlayMoodIndex(I)V
    .locals 1

    .line 515
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 518
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 521
    :cond_1
    invoke-static {p1}, Lcom/oppo/music/utils/PlayServiceUtils;->setPlayMoodIndex(I)V

    return-void
.end method

.method public setPlaylistCurrentPosition(I)V
    .locals 1

    .line 924
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 927
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 930
    :cond_1
    invoke-static {p1}, Lcom/oppo/music/utils/PlayServiceUtils;->setPlaylistCurrentPosition(I)V

    return-void
.end method

.method public stop()Z
    .locals 1

    .line 494
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 497
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 500
    :cond_1
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->stop()V

    const/4 p0, 0x1

    return p0
.end method

.method public unRegisterListener(Lcom/oppo/music/service/ISearchCallBack;)V
    .locals 1

    .line 1110
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 1113
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 1116
    :cond_1
    invoke-static {p1}, Lcom/oppo/music/utils/PlayServiceUtils;->unRegisterListener(Lcom/oppo/music/service/ISearchCallBack;)V

    return-void
.end method

.method public updateLyric()Z
    .locals 1

    .line 973
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 976
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 977
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getCurrentPlaylistItem()Lcom/oppo/music/media/PlaylistItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 979
    invoke-static {v0}, Lcom/oppo/music/utils/PlayServiceUtils;->getLyricPath(Lcom/oppo/music/media/PlaylistItem;)Ljava/lang/String;

    move-result-object v0

    .line 980
    invoke-direct {p0, v0}, Lcom/oppo/music/MusicPlayer;->handleMusicLyricUpdated(Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public updateThumb()Z
    .locals 2

    .line 954
    invoke-direct {p0}, Lcom/oppo/music/MusicPlayer;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->begin()Z

    .line 957
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->isBindSucceed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 958
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getCurrentPlaylistItem()Lcom/oppo/music/media/PlaylistItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 960
    invoke-static {v0}, Lcom/oppo/music/utils/PlayServiceUtils;->getTrackThumbPath(Lcom/oppo/music/media/PlaylistItem;)Ljava/lang/String;

    move-result-object v1

    .line 961
    invoke-virtual {v0}, Lcom/oppo/music/media/PlaylistItem;->isOnline()Z

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/oppo/music/MusicPlayer;->handleMusicThumbUpdated(Ljava/lang/String;Z)V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
