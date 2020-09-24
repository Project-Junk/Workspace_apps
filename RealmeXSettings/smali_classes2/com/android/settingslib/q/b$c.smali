.class final Lcom/android/settingslib/q/b$c;
.super Landroid/media/session/MediaController$Callback;
.source "MediaSessions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/q/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/media/session/MediaController;

.field public b:Z

.field public c:Ljava/lang/String;

.field final synthetic d:Lcom/android/settingslib/q/b;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/q/b;Landroid/media/session/MediaController;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/android/settingslib/q/b$c;->d:Lcom/android/settingslib/q/b;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    .line 266
    iput-object p2, p0, Lcom/android/settingslib/q/b$c;->a:Landroid/media/session/MediaController;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/q/b;Landroid/media/session/MediaController;B)V
    .locals 0

    .line 259
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/q/b$c;-><init>(Lcom/android/settingslib/q/b;Landroid/media/session/MediaController;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/q/b$c;->a:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 3

    .line 275
    sget-boolean v0, Lcom/android/settingslib/q/a;->a:Z

    if-eqz v0, :cond_0

    .line 276
    invoke-static {}, Lcom/android/settingslib/q/b;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioInfoChanged"

    invoke-direct {p0, v2}, Lcom/android/settingslib/q/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/settingslib/q/c;->a(Landroid/media/session/MediaController$PlaybackInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sentRemote="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settingslib/q/b$c;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    invoke-static {p1}, Lcom/android/settingslib/q/b;->a(Landroid/media/session/MediaController$PlaybackInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 280
    iget-boolean v1, p0, Lcom/android/settingslib/q/b$c;->b:Z

    if-eqz v1, :cond_1

    .line 281
    iget-object p1, p0, Lcom/android/settingslib/q/b$c;->d:Lcom/android/settingslib/q/b;

    invoke-static {p1}, Lcom/android/settingslib/q/b;->a(Lcom/android/settingslib/q/b;)Lcom/android/settingslib/q/b$a;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settingslib/q/b$c;->a:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/settingslib/q/b$a;->a(Landroid/media/session/MediaSession$Token;)V

    const/4 p1, 0x0

    .line 282
    iput-boolean p1, p0, Lcom/android/settingslib/q/b$c;->b:Z

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/android/settingslib/q/b$c;->d:Lcom/android/settingslib/q/b;

    iget-object v1, p0, Lcom/android/settingslib/q/b$c;->a:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/settingslib/q/b;->a(Lcom/android/settingslib/q/b;Landroid/media/session/MediaSession$Token;Landroid/media/session/MediaController$PlaybackInfo;)V

    const/4 p1, 0x1

    .line 285
    iput-boolean p1, p0, Lcom/android/settingslib/q/b$c;->b:Z

    :cond_2
    return-void
.end method

.method public final onExtrasChanged(Landroid/os/Bundle;)V
    .locals 3

    .line 291
    sget-boolean v0, Lcom/android/settingslib/q/a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settingslib/q/b;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExtrasChanged"

    invoke-direct {p0, v2}, Lcom/android/settingslib/q/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 3

    .line 296
    sget-boolean v0, Lcom/android/settingslib/q/a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settingslib/q/b;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMetadataChanged"

    invoke-direct {p0, v2}, Lcom/android/settingslib/q/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/settingslib/q/c;->a(Landroid/media/MediaMetadata;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 3

    .line 301
    sget-boolean v0, Lcom/android/settingslib/q/a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settingslib/q/b;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlaybackStateChanged"

    invoke-direct {p0, v2}, Lcom/android/settingslib/q/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/settingslib/q/c;->a(Landroid/media/session/PlaybackState;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final onQueueChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    .line 306
    sget-boolean v0, Lcom/android/settingslib/q/a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settingslib/q/b;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueueChanged"

    invoke-direct {p0, v2}, Lcom/android/settingslib/q/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 3

    .line 311
    sget-boolean v0, Lcom/android/settingslib/q/a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settingslib/q/b;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueueTitleChanged"

    invoke-direct {p0, v2}, Lcom/android/settingslib/q/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final onSessionDestroyed()V
    .locals 2

    .line 316
    sget-boolean v0, Lcom/android/settingslib/q/a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settingslib/q/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSessionDestroyed"

    invoke-direct {p0, v1}, Lcom/android/settingslib/q/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 321
    sget-boolean v0, Lcom/android/settingslib/q/a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settingslib/q/b;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionEvent"

    invoke-direct {p0, v2}, Lcom/android/settingslib/q/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " extras="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
