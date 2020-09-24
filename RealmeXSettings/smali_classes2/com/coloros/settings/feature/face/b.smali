.class public final Lcom/coloros/settings/feature/face/b;
.super Ljava/lang/Object;
.source "FaceGuideVideoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/face/b$a;
    }
.end annotation


# instance fields
.field a:Landroid/media/MediaPlayer;

.field b:Landroid/view/Surface;

.field c:Landroid/content/Context;

.field d:Landroid/os/Handler;

.field private e:Z


# direct methods
.method constructor <init>(Landroid/view/TextureView;Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/b;->e:Z

    .line 41
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/feature/face/b;->c:Landroid/content/Context;

    .line 42
    new-instance p2, Landroid/os/HandlerThread;

    const-string v0, "PlayGuideThread"

    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/face/b;->d:Landroid/os/Handler;

    .line 45
    new-instance p2, Lcom/coloros/settings/feature/face/b$1;

    invoke-direct {p2, p0}, Lcom/coloros/settings/feature/face/b$1;-><init>(Lcom/coloros/settings/feature/face/b;)V

    .line 69
    invoke-virtual {p1, p2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 73
    :try_start_0
    iget-boolean v0, p0, Lcom/coloros/settings/feature/face/b;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 74
    monitor-exit p0

    return-void

    .line 76
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/coloros/settings/feature/face/b;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/coloros/settings/feature/face/b;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/coloros/settings/feature/face/b;->d:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 80
    :cond_1
    iput-object v1, p0, Lcom/coloros/settings/feature/face/b;->b:Landroid/view/Surface;

    .line 81
    iget-object v0, p0, Lcom/coloros/settings/feature/face/b;->a:Landroid/media/MediaPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 83
    :try_start_2
    iget-object v0, p0, Lcom/coloros/settings/feature/face/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    :catch_0
    :try_start_3
    iget-object v0, p0, Lcom/coloros/settings/feature/face/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    :catch_1
    :try_start_4
    iput-object v1, p0, Lcom/coloros/settings/feature/face/b;->a:Landroid/media/MediaPlayer;

    :cond_2
    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/b;->e:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
