.class final Landroid/support/v4/media/session/MediaSessionCompat$c;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/MediaSessionCompat$b;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompat$c$a;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field c:Z

.field final d:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/support/v4/media/session/a;",
            ">;"
        }
    .end annotation
.end field

.field e:Landroid/support/v4/media/session/PlaybackStateCompat;

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field g:Landroid/support/v4/media/MediaMetadataCompat;

.field h:I

.field i:Z

.field j:I

.field k:I


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 3385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3367
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->c:Z

    .line 3368
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Landroid/os/RemoteCallbackList;

    .line 4050
    instance-of v0, p1, Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    .line 3386
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->a:Ljava/lang/Object;

    .line 3387
    new-instance p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->a:Ljava/lang/Object;

    .line 4103
    check-cast v0, Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    .line 3387
    new-instance v1, Landroid/support/v4/media/session/MediaSessionCompat$c$a;

    invoke-direct {v1, p0}, Landroid/support/v4/media/session/MediaSessionCompat$c$a;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$c;)V

    invoke-direct {p1, v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;Landroid/support/v4/media/session/b;)V

    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-void

    .line 4053
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mediaSession is not a valid MediaSession object"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 3407
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->a:Ljava/lang/Object;

    .line 6077
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 6078
    invoke-virtual {v1, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 6079
    check-cast v0, Landroid/media/session/MediaSession;

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setPlaybackToLocal(Landroid/media/AudioAttributes;)V

    return-void
.end method

.method public final a(Landroid/support/v4/media/session/MediaSessionCompat$a;Landroid/os/Handler;)V
    .locals 2

    .line 3393
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->a:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v4/media/session/MediaSessionCompat$a;->b:Ljava/lang/Object;

    .line 5068
    check-cast v0, Landroid/media/session/MediaSession;

    check-cast v1, Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v0, v1, p2}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V

    .line 5990
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Landroid/support/v4/media/session/MediaSessionCompat$a;->c:Ljava/lang/ref/WeakReference;

    .line 5991
    iget-object v0, p1, Landroid/support/v4/media/session/MediaSessionCompat$a;->d:Landroid/support/v4/media/session/MediaSessionCompat$a$a;

    if-eqz v0, :cond_0

    .line 5992
    iget-object v0, p1, Landroid/support/v4/media/session/MediaSessionCompat$a;->d:Landroid/support/v4/media/session/MediaSessionCompat$a$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$a$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5994
    :cond_0
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$a$a;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$a$a;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$a;Landroid/os/Looper;)V

    iput-object v0, p1, Landroid/support/v4/media/session/MediaSessionCompat$a;->d:Landroid/support/v4/media/session/MediaSessionCompat$a$a;

    return-void
.end method

.method public final a(Landroidx/media/VolumeProviderCompat;)V
    .locals 1

    .line 3412
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->a:Ljava/lang/Object;

    .line 3413
    invoke-virtual {p1}, Landroidx/media/VolumeProviderCompat;->getVolumeProvider()Ljava/lang/Object;

    move-result-object p1

    .line 6083
    check-cast v0, Landroid/media/session/MediaSession;

    check-cast p1, Landroid/media/VolumeProvider;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setPlaybackToRemote(Landroid/media/VolumeProvider;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 3423
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->a:Ljava/lang/Object;

    .line 6091
    check-cast v0, Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->isActive()Z

    move-result v0

    return v0
.end method

.method public final b()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .line 3450
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    .line 3573
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->a:Ljava/lang/Object;

    return-object v0
.end method
