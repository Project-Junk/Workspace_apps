.class Lcom/oppo/camera/e$11;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/e;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/e;)V
    .locals 0

    .line 2192
    iput-object p1, p0, Lcom/oppo/camera/e$11;->a:Lcom/oppo/camera/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2195
    iget-object v0, p0, Lcom/oppo/camera/e$11;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->M(Lcom/oppo/camera/e;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2196
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/e$11;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2197
    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "CameraManager"

    .line 2200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startFaceDetection, mbFaceDetectionStarted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e$11;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->N(Lcom/oppo/camera/e;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2202
    iget-object v1, p0, Lcom/oppo/camera/e$11;->a:Lcom/oppo/camera/e;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oppo/camera/e;->a([Landroid/hardware/camera2/params/Face;)V

    .line 2203
    iget-object v1, p0, Lcom/oppo/camera/e$11;->a:Lcom/oppo/camera/e;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/oppo/camera/e;->d(Lcom/oppo/camera/e;Z)Z

    .line 2204
    iget-object v1, p0, Lcom/oppo/camera/e$11;->a:Lcom/oppo/camera/e;

    iget-object v2, p0, Lcom/oppo/camera/e$11;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v2

    const-string v3, "pref_video_eis"

    invoke-virtual {v2, v3}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/oppo/camera/e;->e(Lcom/oppo/camera/e;Z)Z

    .line 2206
    iget-object v1, p0, Lcom/oppo/camera/e$11;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2207
    iget-object v1, p0, Lcom/oppo/camera/e$11;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/e$11;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->H(Lcom/oppo/camera/e;)I

    move-result v2

    invoke-static {v2}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/e;->A(Z)V

    .line 2210
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/e$11;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2211
    iget-object v1, p0, Lcom/oppo/camera/e$11;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/oppo/camera/e/f;->g()V

    .line 2213
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
