.class Lcom/oppo/music/utils/PlayServiceUtils$ServiceBinder;
.super Ljava/lang/Object;
.source "PlayServiceUtils.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/music/utils/PlayServiceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceBinder"
.end annotation


# instance fields
.field mCallback:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Landroid/content/ServiceConnection;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/oppo/music/utils/PlayServiceUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 36
    invoke-static {p2}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oppo/music/service/IMediaPlaybackService;

    move-result-object v0

    sput-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected, mService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayServiceUtils"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :try_start_0
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/oppo/music/service/IMediaPlaybackService;->getPrivateMusicInterface()Lcom/oppo/music/service/IPrivateMusicInterface;

    move-result-object v0

    sput-object v0, Lcom/oppo/music/utils/PlayServiceUtils;->mPrivateMusicInterface:Lcom/oppo/music/service/IPrivateMusicInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected() fail! e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/oppo/music/utils/PlayServiceUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz p0, :cond_1

    .line 48
    invoke-interface {p0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/oppo/music/utils/PlayServiceUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz p0, :cond_0

    .line 55
    invoke-interface {p0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 58
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onServiceDisconnected, mService="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PlayServiceUtils"

    invoke-static {p1, p0}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 59
    sput-object p0, Lcom/oppo/music/utils/PlayServiceUtils;->mService:Lcom/oppo/music/service/IMediaPlaybackService;

    .line 60
    sput-object p0, Lcom/oppo/music/utils/PlayServiceUtils;->mPrivateMusicInterface:Lcom/oppo/music/service/IPrivateMusicInterface;

    return-void
.end method
