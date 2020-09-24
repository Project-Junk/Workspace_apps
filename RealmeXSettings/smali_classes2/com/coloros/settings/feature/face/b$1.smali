.class final Lcom/coloros/settings/feature/face/b$1;
.super Ljava/lang/Object;
.source "FaceGuideVideoManager.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/face/b;-><init>(Landroid/view/TextureView;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/face/b;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/face/b;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/coloros/settings/feature/face/b$1;->a:Lcom/coloros/settings/feature/face/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 48
    iget-object p2, p0, Lcom/coloros/settings/feature/face/b$1;->a:Lcom/coloros/settings/feature/face/b;

    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 1029
    iput-object p3, p2, Lcom/coloros/settings/feature/face/b;->b:Landroid/view/Surface;

    .line 49
    iget-object p1, p0, Lcom/coloros/settings/feature/face/b$1;->a:Lcom/coloros/settings/feature/face/b;

    monitor-enter p1

    .line 50
    :try_start_0
    iget-object p2, p0, Lcom/coloros/settings/feature/face/b$1;->a:Lcom/coloros/settings/feature/face/b;

    .line 2029
    iget-object p2, p2, Lcom/coloros/settings/feature/face/b;->d:Landroid/os/Handler;

    .line 50
    new-instance p3, Lcom/coloros/settings/feature/face/b$a;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/b$1;->a:Lcom/coloros/settings/feature/face/b;

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1}, Lcom/coloros/settings/feature/face/b$a;-><init>(Lcom/coloros/settings/feature/face/b;B)V

    const-wide/16 v0, 0x0

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
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
    .locals 0

    .line 61
    iget-object p1, p0, Lcom/coloros/settings/feature/face/b$1;->a:Lcom/coloros/settings/feature/face/b;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/face/b;->a()V

    const/4 p1, 0x1

    return p1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
