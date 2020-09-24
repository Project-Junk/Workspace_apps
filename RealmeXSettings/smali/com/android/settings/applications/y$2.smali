.class final Lcom/android/settings/applications/y$2;
.super Landroid/os/Handler;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/android/settings/applications/y;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/y;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/android/settings/applications/y$2;->b:Lcom/android/settings/applications/y;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 p1, 0x0

    .line 256
    iput p1, p0, Lcom/android/settings/applications/y$2;->a:I

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 260
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/y$2;->b:Lcom/android/settings/applications/y;

    iget-object v0, v0, Lcom/android/settings/applications/y;->w:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/y$2;->b:Lcom/android/settings/applications/y;

    iget-boolean v1, v1, Lcom/android/settings/applications/y;->x:Z

    if-nez v1, :cond_1

    .line 269
    monitor-exit v0

    return-void

    .line 271
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/y$2;->removeMessages(I)V

    .line 273
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/y$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    .line 274
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/applications/y$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 276
    iget-object p1, p0, Lcom/android/settings/applications/y$2;->b:Lcom/android/settings/applications/y;

    iget-object p1, p1, Lcom/android/settings/applications/y;->i:Lcom/android/settings/applications/y$e;

    if-eqz p1, :cond_2

    .line 279
    iget-object p1, p0, Lcom/android/settings/applications/y$2;->b:Lcom/android/settings/applications/y;

    iget-object p1, p1, Lcom/android/settings/applications/y;->i:Lcom/android/settings/applications/y$e;

    iget v0, p0, Lcom/android/settings/applications/y$2;->a:I

    invoke-interface {p1, v0}, Lcom/android/settings/applications/y$e;->a(I)V

    const/4 p1, 0x0

    .line 280
    iput p1, p0, Lcom/android/settings/applications/y$2;->a:I

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 271
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 262
    :cond_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    :goto_1
    iput p1, p0, Lcom/android/settings/applications/y$2;->a:I

    return-void
.end method
