.class final Lcom/android/settings/applications/y$b;
.super Landroid/os/Handler;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/applications/y;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/y;Landroid/os/Looper;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/android/settings/applications/y$b;->a:Lcom/android/settings/applications/y;

    .line 227
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 232
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/y$b;->a:Lcom/android/settings/applications/y;

    iget-object p1, p1, Lcom/android/settings/applications/y;->w:Ljava/lang/Object;

    monitor-enter p1

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/y$b;->a:Lcom/android/settings/applications/y;

    iget-boolean v1, v1, Lcom/android/settings/applications/y;->x:Z

    if-nez v1, :cond_1

    .line 239
    monitor-exit p1

    return-void

    .line 241
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    iget-object p1, p0, Lcom/android/settings/applications/y$b;->a:Lcom/android/settings/applications/y;

    iget-object p1, p1, Lcom/android/settings/applications/y;->M:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 243
    iget-object v1, p0, Lcom/android/settings/applications/y$b;->a:Lcom/android/settings/applications/y;

    iget-object v2, v1, Lcom/android/settings/applications/y;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/applications/y$b;->a:Lcom/android/settings/applications/y;

    iget-object v3, v3, Lcom/android/settings/applications/y;->d:Landroid/app/ActivityManager;

    invoke-static {v1, v2, v3}, Lcom/android/settings/applications/y;->a(Lcom/android/settings/applications/y;Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v1

    iput v1, p1, Landroid/os/Message;->arg1:I

    .line 244
    iget-object v1, p0, Lcom/android/settings/applications/y$b;->a:Lcom/android/settings/applications/y;

    iget-object v1, v1, Lcom/android/settings/applications/y;->M:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 245
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/y$b;->removeMessages(I)V

    .line 246
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/y$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    .line 247
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/applications/y$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 241
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 234
    :cond_2
    iget-object p1, p0, Lcom/android/settings/applications/y$b;->a:Lcom/android/settings/applications/y;

    invoke-static {p1}, Lcom/android/settings/applications/y;->a(Lcom/android/settings/applications/y;)V

    return-void
.end method
