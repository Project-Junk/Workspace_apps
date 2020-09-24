.class public final Lcom/android/settings/accessibility/d;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/d$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Landroid/media/MediaPlayer;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mediaPlayerLock"
    .end annotation
.end field

.field public c:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mediaPlayerLock"
    .end annotation
.end field

.field private final d:Landroid/content/Context;

.field private final e:I
    .annotation build Landroidx/annotation/RawRes;
    .end annotation
.end field

.field private f:Landroid/view/Surface;


# direct methods
.method private constructor <init>(Landroid/content/Context;ILandroid/view/TextureView;)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/d;->a:Ljava/lang/Object;

    .line 43
    sget v0, Lcom/android/settings/accessibility/d$a;->a:I

    iput v0, p0, Lcom/android/settings/accessibility/d;->c:I

    .line 61
    iput-object p1, p0, Lcom/android/settings/accessibility/d;->d:Landroid/content/Context;

    .line 62
    iput p2, p0, Lcom/android/settings/accessibility/d;->e:I

    .line 63
    invoke-virtual {p3, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public static a(Landroid/content/Context;ILandroid/view/TextureView;)Lcom/android/settings/accessibility/d;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    .line 57
    new-instance v0, Lcom/android/settings/accessibility/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/accessibility/d;-><init>(Landroid/content/Context;ILandroid/view/TextureView;)V

    return-object v0
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 101
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/android/settings/accessibility/d;->f:Landroid/view/Surface;

    .line 102
    iget-object p1, p0, Lcom/android/settings/accessibility/d;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 103
    :try_start_0
    iget-object p2, p0, Lcom/android/settings/accessibility/d;->d:Landroid/content/Context;

    iget p3, p0, Lcom/android/settings/accessibility/d;->e:I

    invoke-static {p2, p3}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/accessibility/d;->b:Landroid/media/MediaPlayer;

    .line 104
    sget p2, Lcom/android/settings/accessibility/d$a;->b:I

    iput p2, p0, Lcom/android/settings/accessibility/d;->c:I

    .line 105
    iget-object p2, p0, Lcom/android/settings/accessibility/d;->b:Landroid/media/MediaPlayer;

    iget-object p3, p0, Lcom/android/settings/accessibility/d;->f:Landroid/view/Surface;

    invoke-virtual {p2, p3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 106
    iget-object p2, p0, Lcom/android/settings/accessibility/d;->b:Landroid/media/MediaPlayer;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 107
    iget-object p2, p0, Lcom/android/settings/accessibility/d;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->start()V

    .line 108
    sget p2, Lcom/android/settings/accessibility/d$a;->c:I

    iput p2, p0, Lcom/android/settings/accessibility/d;->c:I

    .line 109
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    .line 1086
    iget-object p1, p0, Lcom/android/settings/accessibility/d;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 1087
    :try_start_0
    iget v0, p0, Lcom/android/settings/accessibility/d;->c:I

    sget v1, Lcom/android/settings/accessibility/d$a;->a:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/accessibility/d;->c:I

    sget v1, Lcom/android/settings/accessibility/d$a;->f:I

    if-eq v0, v1, :cond_0

    .line 1088
    sget v0, Lcom/android/settings/accessibility/d$a;->f:I

    iput v0, p0, Lcom/android/settings/accessibility/d;->c:I

    .line 1089
    iget-object v0, p0, Lcom/android/settings/accessibility/d;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1090
    iput-object v2, p0, Lcom/android/settings/accessibility/d;->b:Landroid/media/MediaPlayer;

    .line 1092
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1093
    iget-object p1, p0, Lcom/android/settings/accessibility/d;->f:Landroid/view/Surface;

    if-eqz p1, :cond_1

    .line 1094
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 1095
    iput-object v2, p0, Lcom/android/settings/accessibility/d;->f:Landroid/view/Surface;

    :cond_1
    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    .line 1092
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
