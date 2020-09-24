.class public Lcom/android/systemui/media/RingtonePlayer;
.super Lcom/android/systemui/SystemUI;
.source "RingtonePlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/RingtonePlayer$Client;
    }
.end annotation


# static fields
.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "RingtonePlayer"


# instance fields
.field private final mAsyncPlayer:Lcom/android/systemui/media/NotificationPlayer;

.field private mAudioService:Landroid/media/IAudioService;

.field private mCallback:Landroid/media/IRingtonePlayer;

.field private final mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/systemui/media/RingtonePlayer$Client;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 68
    new-instance v0, Lcom/android/systemui/media/NotificationPlayer;

    const-string v1, "RingtonePlayer"

    invoke-direct {v0, v1}, Lcom/android/systemui/media/NotificationPlayer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/media/RingtonePlayer;->mAsyncPlayer:Lcom/android/systemui/media/NotificationPlayer;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    .line 114
    new-instance v0, Lcom/android/systemui/media/RingtonePlayer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/RingtonePlayer$1;-><init>(Lcom/android/systemui/media/RingtonePlayer;)V

    iput-object v0, p0, Lcom/android/systemui/media/RingtonePlayer;->mCallback:Landroid/media/IRingtonePlayer;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/media/RingtonePlayer;Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/media/RingtonePlayer;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/media/RingtonePlayer;)Ljava/util/HashMap;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/media/RingtonePlayer;Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/RingtonePlayer;->getAvailableUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/media/RingtonePlayer;)Lcom/android/systemui/media/NotificationPlayer;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer;->mAsyncPlayer:Lcom/android/systemui/media/NotificationPlayer;

    return-object p0
.end method

.method private getAvailableUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    .line 257
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isSystemFbeMode(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 258
    sget-object p0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    const-string v1, "file://"

    if-eqz p0, :cond_0

    sget-object p0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 259
    invoke-virtual {p0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "NotificationSoundPath"

    const-string v0, "/system/media/audio/notifications/notification_008.ogg"

    .line 260
    invoke-static {p1, p0, v0}, Lcom/android/systemui/Prefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 262
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    .line 264
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaAudioPath:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0}, Lcom/android/systemui/Prefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 265
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 266
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move-object p0, p2

    :goto_1
    return-object p0
.end method

.method private getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 2

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/media/RingtonePlayer;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 249
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string p1, "Clients:"

    .line 276
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    iget-object p1, p0, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    monitor-enter p1

    .line 278
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/media/RingtonePlayer$Client;

    const-string v0, "  mToken="

    .line 279
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 280
    invoke-static {p3}, Lcom/android/systemui/media/RingtonePlayer$Client;->access$300(Lcom/android/systemui/media/RingtonePlayer$Client;)Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mUri="

    .line 281
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 282
    invoke-static {p3}, Lcom/android/systemui/media/RingtonePlayer$Client;->access$200(Lcom/android/systemui/media/RingtonePlayer$Client;)Landroid/media/Ringtone;

    move-result-object p3

    invoke-virtual {p3}, Landroid/media/Ringtone;->getUri()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 284
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public start()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/android/systemui/media/RingtonePlayer;->mAsyncPlayer:Lcom/android/systemui/media/NotificationPlayer;

    iget-object v1, p0, Lcom/android/systemui/media/RingtonePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/NotificationPlayer;->setUsesWakeLock(Landroid/content/Context;)V

    const-string v0, "audio"

    .line 76
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 75
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/RingtonePlayer;->mAudioService:Landroid/media/IAudioService;

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/media/RingtonePlayer;->mAudioService:Landroid/media/IAudioService;

    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer;->mCallback:Landroid/media/IRingtonePlayer;

    invoke-interface {v0, p0}, Landroid/media/IAudioService;->setRingtonePlayer(Landroid/media/IRingtonePlayer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Problem registering RingtonePlayer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RingtonePlayer"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
