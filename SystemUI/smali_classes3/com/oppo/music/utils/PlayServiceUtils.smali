.class public Lcom/oppo/music/utils/PlayServiceUtils;
.super Ljava/lang/Object;
.source "PlayServiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/music/utils/PlayServiceUtils$ServiceBinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayServiceUtils"

.field public static mPrivateMusicInterface:Lcom/oppo/music/service/IPrivateMusicInterface;

.field public static mService:Lcom/oppo/music/service/IMediaPlaybackService;

.field private static sConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/Context;",
            "Lcom/oppo/music/utils/PlayServiceUtils$ServiceBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->sConnectionMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 66
    sput-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mPrivateMusicInterface:Lcom/oppo/music/service/IPrivateMusicInterface;

    .line 67
    sput-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTracks([Lcom/oppo/music/media/PlaylistItem;I)I
    .locals 1

    .line 327
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0, p0, p1}, Lcom/oppo/music/service/IMediaPlaybackService;->addTracks([Lcom/oppo/music/media/PlaylistItem;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 331
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addTracks() fail! e = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PlayServiceUtils"

    invoke-static {p1, p0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .locals 5

    const/4 v0, 0x2

    .line 93
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const-string v3, "bindToService() context=%s, callback=%s"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "PlayServiceUtils"

    invoke-static {v3, v0}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 96
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.oppo.music.service.command"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v2, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 102
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 103
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 104
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 106
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 110
    new-instance v1, Lcom/oppo/music/utils/PlayServiceUtils$ServiceBinder;

    invoke-direct {v1, p1}, Lcom/oppo/music/utils/PlayServiceUtils$ServiceBinder;-><init>(Landroid/content/ServiceConnection;)V

    .line 111
    sget-object p1, Lcom/oppo/music/utils/PlayServiceUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public static bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;Z)Z
    .locals 5

    const/4 v0, 0x3

    .line 116
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const-string v3, "bindToService() context=%s, callback=%s, isApplicationContext=%S"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "PlayServiceUtils"

    invoke-static {v3, v0}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 120
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.oppo.music.service.command"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 122
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v2, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 126
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 127
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 128
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 130
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz p2, :cond_1

    .line 135
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 136
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0

    .line 138
    :cond_1
    invoke-static {p0, p1}, Lcom/oppo/music/utils/PlayServiceUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public static checkPrivateMusicInterfaceEnable()Z
    .locals 1

    .line 170
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mPrivateMusicInterface:Lcom/oppo/music/service/IPrivateMusicInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static checkServiceEnable()Z
    .locals 1

    .line 163
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getAlbumUnknownString()Ljava/lang/String;
    .locals 3

    .line 748
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/oppo/music/service/IMediaPlaybackService;->getAlbumUnknownString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 752
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAlbumUnknownString() fail! e + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayServiceUtils"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getArtistUnknownString()Ljava/lang/String;
    .locals 3

    .line 734
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/oppo/music/service/IMediaPlaybackService;->getArtistUnknownString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 738
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getArtistUnknownString() fail! e + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayServiceUtils"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getBufferingPercent()I
    .locals 3

    .line 572
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/oppo/music/service/IMediaPlaybackService;->getBufferingPercent()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBufferingPercent() fail! e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayServiceUtils"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static getCueInnerPosition()I
    .locals 3

    .line 341
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/oppo/music/service/IMediaPlaybackService;->getCueInnerPosition()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCueInnerPosition() fail! e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayServiceUtils"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getCurrentCueTrack(Landroid/content/Context;)Lcom/oppo/music/media/Track;
    .locals 2

    .line 659
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 661
    :try_start_0
    sget-object p0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {p0}, Lcom/oppo/music/service/IMediaPlaybackService;->getCurrentCueTrack()Lcom/oppo/music/media/Track;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentCueTrack() fail! e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PlayServiceUtils"

    invoke-static {v0, p0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getCurrentPlayTrack(Landroid/content/Context;)Lcom/oppo/music/media/Track;
    .locals 4

    .line 679
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 681
    :try_start_0
    sget-object p0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {p0}, Lcom/oppo/music/service/IMediaPlaybackService;->getCurrentCueTrack()Lcom/oppo/music/media/Track;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p0, :cond_0

    .line 683
    :try_start_1
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/oppo/music/service/IMediaPlaybackService;->getCurrentTrack()Lcom/oppo/music/media/Track;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto :goto_1

    :cond_0
    :goto_0
    move-object v0, p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 686
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentCueTrack() fail! e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PlayServiceUtils"

    invoke-static {v1, p0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-object v0
.end method

.method public static getCurrentPlaylistItem()Lcom/oppo/music/media/PlaylistItem;
    .locals 3

    .line 300
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/oppo/music/service/IMediaPlaybackService;->getCurrentPlaylistItem()Lcom/oppo/music/media/PlaylistItem;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentPlaylistItem() fail! e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayServiceUtils"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getCurrentPosition()J
    .locals 3

    .line 520
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/oppo/music/service/IMediaPlaybackService;->getCurrentPosition()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentPosition() fail! e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayServiceUtils"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public static getCurrentTrack(Landroid/content/Context;)Lcom/oppo/music/media/Track;
    .locals 2

    .line 642
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 644
    :try_start_0
    sget-object p0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {p0}, Lcom/oppo/music/service/IMediaPlaybackService;->getCurrentTrack()Lcom/oppo/music/media/Track;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentTrack() fail! e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PlayServiceUtils"

    invoke-static {v0, p0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getCurrentTrackID()J
    .locals 2

    .line 709
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getCurrentPlaylistItem()Lcom/oppo/music/media/PlaylistItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 711
    invoke-virtual {v0}, Lcom/oppo/music/media/PlaylistItem;->getID()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public static getDlnaDeviceID()I
    .locals 3

    .line 826
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/oppo/music/service/IMediaPlaybackService;->getDlnaDeviceID()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDlnaDeviceID() fail! e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayServiceUtils"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static getDlnaDeviceList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 839
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 841
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 843
    :try_start_0
    sget-object v1, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/oppo/music/service/IMediaPlaybackService;->getDlnaDeviceList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 845
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDlnaDeviceList() fail! e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PlayServiceUtils"

    invoke-static {v2, v1}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static getDuration()J
    .locals 3

    .line 507
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/oppo/music/service/IMediaPlaybackService;->getDuration()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDuration() fail! e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayServiceUtils"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public static getLocalSongs(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/oppo/music/media/Track;",
            ">;"
        }
    .end annotation

    .line 484
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkPrivateMusicInterfaceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mPrivateMusicInterface:Lcom/oppo/music/service/IPrivateMusicInterface;

    invoke-interface {v0, p0, p1}, Lcom/oppo/music/service/IPrivateMusicInterface;->getLocalSongs(II)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 488
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getLocalSongs() fail! e = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PlayServiceUtils"

    invoke-static {p1, p0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getLocalSongsNumber()I
    .locals 3

    .line 472
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkPrivateMusicInterfaceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mPrivateMusicInterface:Lcom/oppo/music/service/IPrivateMusicInterface;

    invoke-interface {v0}, Lcom/oppo/music/service/IPrivateMusicInterface;->getLocalSongsNumber()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLocalSongsNumber() fail! e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayServiceUtils"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static getLyricPath(Lcom/oppo/music/media/PlaylistItem;)Ljava/lang/String;
    .locals 2

    .line 624
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0, p0}, Lcom/oppo/music/service/IMediaPlaybackService;->getLyricPath(Lcom/oppo/music/media/PlaylistItem;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLyricPath() fail! e + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PlayServiceUtils"

    invoke-static {v0, p0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getMediaMountedCount()I
    .locals 3

    .line 586
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/oppo/music/service/IMediaPlaybackService;->getMediaMountedCount()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMediaMountedCount() fail! e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayServiceUtils"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static getPlayMode()I
    .locals 3

    .line 544
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/oppo/music/service/IMediaPlaybackService;->getPlayMode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPlayMode() fail! e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayServiceUtils"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static getPlayMoodIndex()I
    .locals 3

    .line 448
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkPrivateMusicInterfaceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mPrivateMusicInterface:Lcom/oppo/music/service/IPrivateMusicInterface;

    invoke-interface {v0}, Lcom/oppo/music/service/IPrivateMusicInterface;->getPlayMoodIndex()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPlayMoodIndex() fail! e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayServiceUtils"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static getPlaylist()Lcom/oppo/music/media/Playlist;
    .locals 3

    .line 272
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/oppo/music/service/IMediaPlaybackService;->getPlaylist()Lcom/oppo/music/media/Playlist;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPlaylist() fail! e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayServiceUtils"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getPlaylistCurrentPosition()I
    .locals 3

    .line 244
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/oppo/music/service/IMediaPlaybackService;->getPlaylistCurrentPosition()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPlaylistCurrentPosition() fail! e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayServiceUtils"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static getPlaylistItem(I)Lcom/oppo/music/media/PlaylistItem;
    .locals 2

    .line 286
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0, p0}, Lcom/oppo/music/service/IMediaPlaybackService;->getPlaylistItem(I)Lcom/oppo/music/media/PlaylistItem;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPlaylistItem() fail! e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PlayServiceUtils"

    invoke-static {v0, p0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getPlaylistItemPosition(JI)I
    .locals 5

    .line 718
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->getPlaylist()Lcom/oppo/music/media/Playlist;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    .line 722
    :goto_0
    invoke-virtual {v0}, Lcom/oppo/music/media/Playlist;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 723
    invoke-virtual {v0, v2}, Lcom/oppo/music/media/Playlist;->getPlaylistItem(I)Lcom/oppo/music/media/PlaylistItem;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 724
    invoke-virtual {v3}, Lcom/oppo/music/media/PlaylistItem;->getType()I

    move-result v4

    if-ne v4, p2, :cond_1

    invoke-virtual {v3}, Lcom/oppo/music/media/PlaylistItem;->getID()J

    move-result-wide v3

    cmp-long v3, v3, p0

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static getPlaylistLength()I
    .locals 3

    .line 258
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/oppo/music/service/IMediaPlaybackService;->getPlaylistLength()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPlaylistLength() fail! e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayServiceUtils"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static getTrack(Landroid/content/Context;Lcom/oppo/music/media/PlaylistItem;)Lcom/oppo/music/media/Track;
    .locals 1

    .line 695
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 697
    :try_start_0
    sget-object p0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {p0, p1}, Lcom/oppo/music/service/IMediaPlaybackService;->getTrack(Lcom/oppo/music/media/PlaylistItem;)Lcom/oppo/music/media/Track;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 699
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getTrack() fail! e = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PlayServiceUtils"

    invoke-static {p1, p0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getTrackThumbPath(Lcom/oppo/music/media/PlaylistItem;)Ljava/lang/String;
    .locals 2

    .line 610
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0, p0}, Lcom/oppo/music/service/IMediaPlaybackService;->getTrackThumbPath(Lcom/oppo/music/media/PlaylistItem;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTrackThumbPath() fail! e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PlayServiceUtils"

    invoke-static {v0, p0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static isBufferingBlocked()Z
    .locals 3

    .line 558
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/oppo/music/service/IMediaPlaybackService;->isBufferingBlocked()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBufferingBlocked() fail! e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayServiceUtils"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDlnaAutoMode()Z
    .locals 3

    .line 798
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/oppo/music/service/IMediaPlaybackService;->isDlnaAutoMode()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 802
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDlnaAutoMode() fail! e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayServiceUtils"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDlnaMode()Z
    .locals 3

    .line 784
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/oppo/music/service/IMediaPlaybackService;->isDlnaMode()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 788
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDlnaMode() fail! e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayServiceUtils"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDlnaOperator()Z
    .locals 3

    .line 812
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/oppo/music/service/IMediaPlaybackService;->isDlnaOperator()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 816
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDlnaOperator() fail! e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayServiceUtils"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPlaying()Z
    .locals 3

    .line 365
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/oppo/music/service/IMediaPlaybackService;->isPlaying()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPlaying() fail! e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayServiceUtils"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTrackOnline(Lcom/oppo/music/media/Track;)Z
    .locals 2

    .line 460
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkPrivateMusicInterfaceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mPrivateMusicInterface:Lcom/oppo/music/service/IPrivateMusicInterface;

    invoke-interface {v0, p0}, Lcom/oppo/music/service/IPrivateMusicInterface;->isTrackOnline(Lcom/oppo/music/media/Track;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isTrackOnline() fail! e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PlayServiceUtils"

    invoke-static {v0, p0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static next()V
    .locals 3

    .line 417
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/oppo/music/service/IMediaPlaybackService;->next()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "next() fail! e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayServiceUtils"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static openPlaylist(Lcom/oppo/music/media/Playlist;)V
    .locals 2

    .line 211
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/oppo/music/service/IMediaPlaybackService;->openPlaylist(Lcom/oppo/music/media/Playlist;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openPlaylist() fail! e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PlayServiceUtils"

    invoke-static {v0, p0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static openPlaylist(Lcom/oppo/music/media/Playlist;I)V
    .locals 1

    .line 221
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 224
    :goto_0
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0, p0, p1}, Lcom/oppo/music/service/IMediaPlaybackService;->openPlaylist(Lcom/oppo/music/media/Playlist;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 226
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "openPlaylist() fail! e = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PlayServiceUtils"

    invoke-static {p1, p0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public static openPlaylistItem(Lcom/oppo/music/media/PlaylistItem;)V
    .locals 2

    .line 201
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0, p0}, Lcom/oppo/music/service/IMediaPlaybackService;->openPlaylistItem(Lcom/oppo/music/media/PlaylistItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openPlaylistItem() fail! e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PlayServiceUtils"

    invoke-static {v0, p0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static pause()V
    .locals 3

    .line 387
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/oppo/music/service/IMediaPlaybackService;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause() fail! e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayServiceUtils"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static play()V
    .locals 3

    .line 397
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/oppo/music/service/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play() fail! e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayServiceUtils"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static playAll(Lcom/oppo/music/media/Playlist;I)V
    .locals 3

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playAll, list.len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/music/media/Playlist;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "postion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayServiceUtils"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    .line 179
    invoke-virtual {p0}, Lcom/oppo/music/media/Playlist;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 181
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/oppo/music/service/IMediaPlaybackService;->getPlaylist()Lcom/oppo/music/media/Playlist;

    move-result-object v0

    .line 182
    sget-object v2, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/oppo/music/service/IMediaPlaybackService;->getPlaylistCurrentPosition()I

    move-result v2

    .line 184
    invoke-virtual {p0, v0}, Lcom/oppo/music/media/Playlist;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eq p1, v2, :cond_2

    .line 186
    sget-object p0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {p0, p1}, Lcom/oppo/music/service/IMediaPlaybackService;->setPlaylistCurrentPosition(I)V

    goto :goto_1

    .line 189
    :cond_1
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0, p0, p1}, Lcom/oppo/music/service/IMediaPlaybackService;->openPlaylist(Lcom/oppo/music/media/Playlist;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 194
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "playAll() fail! e = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public static playDlnaAutoMode()V
    .locals 2

    .line 897
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playDlnaAutoMode, PlayServiceUtils.isDlnaMode() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->isDlnaMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\\ PlayServiceUtils.isDlnaAutoMode() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->isDlnaAutoMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayServiceUtils"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->isDlnaMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->isDlnaAutoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->playOnDlnaAutoMode()V

    :cond_0
    return-void
.end method

.method public static playOnDlnaAutoMode()V
    .locals 3

    .line 854
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/oppo/music/service/IMediaPlaybackService;->playOnDlnaAutoMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 858
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playOnDlnaAutoMode() fail! e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayServiceUtils"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static playOnDlnaMode(I)V
    .locals 2

    .line 865
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0, p0}, Lcom/oppo/music/service/IMediaPlaybackService;->playOnDlnaMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playOnDlnaMode() fail! e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PlayServiceUtils"

    invoke-static {v0, p0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static playOnNormalMode()V
    .locals 3

    .line 875
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/oppo/music/service/IMediaPlaybackService;->playOnNormalMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 879
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playOnNormalMode() fail! e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayServiceUtils"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static playTrack(Lcom/oppo/music/media/Track;)V
    .locals 2

    .line 495
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkPrivateMusicInterfaceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mPrivateMusicInterface:Lcom/oppo/music/service/IPrivateMusicInterface;

    invoke-interface {v0, p0}, Lcom/oppo/music/service/IPrivateMusicInterface;->playTrack(Lcom/oppo/music/media/Track;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playTrack() fail! e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayServiceUtils"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static previous()V
    .locals 3

    .line 407
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/oppo/music/service/IMediaPlaybackService;->previous()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "previous() fail! e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayServiceUtils"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static registerListener(Lcom/oppo/music/service/ISearchCallBack;)V
    .locals 2

    .line 929
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mPrivateMusicInterface:Lcom/oppo/music/service/IPrivateMusicInterface;

    invoke-interface {v0, p0}, Lcom/oppo/music/service/IPrivateMusicInterface;->registerListener(Lcom/oppo/music/service/ISearchCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerListener() fail! e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PlayServiceUtils"

    invoke-static {v0, p0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static removeTracks([J)I
    .locals 2

    .line 314
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0, p0}, Lcom/oppo/music/service/IMediaPlaybackService;->removeTracks([J)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeTracks() fail! e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PlayServiceUtils"

    invoke-static {v0, p0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static searchSongsAsync(Landroid/os/Bundle;)V
    .locals 2

    .line 919
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 921
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mPrivateMusicInterface:Lcom/oppo/music/service/IPrivateMusicInterface;

    invoke-interface {v0, p0}, Lcom/oppo/music/service/IPrivateMusicInterface;->searchSongsAsync(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "searchSongsAsync() fail! e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PlayServiceUtils"

    invoke-static {v0, p0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static searchSongsSync(Landroid/os/Bundle;)Ljava/util/List;
    .locals 2
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

    .line 908
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 910
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mPrivateMusicInterface:Lcom/oppo/music/service/IPrivateMusicInterface;

    invoke-interface {v0, p0}, Lcom/oppo/music/service/IPrivateMusicInterface;->searchSongsSync(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "searchSongsSync() fail! e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PlayServiceUtils"

    invoke-static {v0, p0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static seekTo(I)V
    .locals 2

    .line 427
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0, p0}, Lcom/oppo/music/service/IMediaPlaybackService;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seekTo() fail! e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PlayServiceUtils"

    invoke-static {v0, p0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static setCueInnerPosition(I)V
    .locals 2

    .line 353
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0, p0}, Lcom/oppo/music/service/IMediaPlaybackService;->setCueInnerPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCueInnerPosition() fail! e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PlayServiceUtils"

    invoke-static {v0, p0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static setDlnaPlayerVolume(I)V
    .locals 2

    .line 886
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0, p0}, Lcom/oppo/music/service/IMediaPlaybackService;->setDlnaPlayerVolume(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlayerVolume() fail! e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PlayServiceUtils"

    invoke-static {v0, p0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static setPlayMode(I)V
    .locals 2

    .line 532
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0, p0}, Lcom/oppo/music/service/IMediaPlaybackService;->setPlayMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlayMode() fail! e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PlayServiceUtils"

    invoke-static {v0, p0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static setPlayMoodIndex(I)V
    .locals 2

    .line 437
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkPrivateMusicInterfaceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mPrivateMusicInterface:Lcom/oppo/music/service/IPrivateMusicInterface;

    invoke-interface {v0, p0}, Lcom/oppo/music/service/IPrivateMusicInterface;->setPlayMoodIndex(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlayMoodIndex() fail! e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PlayServiceUtils"

    invoke-static {v0, p0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static setPlayerAutoSave()V
    .locals 3

    .line 761
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/oppo/music/service/IMediaPlaybackService;->setPlayerAutoSave()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 765
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlayerAutoSave() fail! e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayServiceUtils"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static setPlayerVolume(F)V
    .locals 2

    .line 772
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0, p0}, Lcom/oppo/music/service/IMediaPlaybackService;->setPlayerVolume(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlayerVolume() fail! e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PlayServiceUtils"

    invoke-static {v0, p0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static setPlaylistCurrentPosition(I)V
    .locals 2

    .line 232
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0, p0}, Lcom/oppo/music/service/IMediaPlaybackService;->setPlaylistCurrentPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlaylistCurrentPosition() fail! e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PlayServiceUtils"

    invoke-static {v0, p0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static shakeSwitch(Z)V
    .locals 2

    .line 598
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0, p0}, Lcom/oppo/music/service/IMediaPlaybackService;->shakeSwitch(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PlayServiceUtils"

    const-string v1, "shakeSwitch() fail!"

    .line 602
    invoke-static {v0, v1, p0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static stop()V
    .locals 3

    .line 377
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/oppo/music/service/IMediaPlaybackService;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop() fail! e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayServiceUtils"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static unRegisterListener(Lcom/oppo/music/service/ISearchCallBack;)V
    .locals 2

    .line 939
    invoke-static {}, Lcom/oppo/music/utils/PlayServiceUtils;->checkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 941
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mPrivateMusicInterface:Lcom/oppo/music/service/IPrivateMusicInterface;

    invoke-interface {v0, p0}, Lcom/oppo/music/service/IPrivateMusicInterface;->unRegisterListener(Lcom/oppo/music/service/ISearchCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unRegisterListener() fail! e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PlayServiceUtils"

    invoke-static {v0, p0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static unbindService(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    .line 143
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v1, "unbindService() context=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayServiceUtils"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/music/utils/PlayServiceUtils$ServiceBinder;

    if-nez v0, :cond_0

    const-string p0, "unbindService() try to unbind from unknown context."

    .line 147
    invoke-static {v1, p0}, Lcom/oppo/music/utils/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 151
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 153
    sget-object p0, Lcom/oppo/music/utils/PlayServiceUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 156
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unbindService, mService="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 158
    sput-object p0, Lcom/oppo/music/utils/PlayServiceUtils;->mPrivateMusicInterface:Lcom/oppo/music/service/IPrivateMusicInterface;

    :cond_1
    return-void
.end method
