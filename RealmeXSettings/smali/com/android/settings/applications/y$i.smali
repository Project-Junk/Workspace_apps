.class final Lcom/android/settings/applications/y$i;
.super Landroid/content/BroadcastReceiver;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/applications/y;

.field private volatile b:Z


# direct methods
.method private constructor <init>(Lcom/android/settings/applications/y;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/android/settings/applications/y$i;->a:Lcom/android/settings/applications/y;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/applications/y;B)V
    .locals 0

    .line 287
    invoke-direct {p0, p1}, Lcom/android/settings/applications/y$i;-><init>(Lcom/android/settings/applications/y;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 306
    iget-boolean v0, p0, Lcom/android/settings/applications/y$i;->b:Z

    const/4 v1, 0x0

    .line 307
    iput-boolean v1, p0, Lcom/android/settings/applications/y$i;->b:Z

    return v0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 292
    iget-object p1, p0, Lcom/android/settings/applications/y$i;->a:Lcom/android/settings/applications/y;

    iget-object p1, p1, Lcom/android/settings/applications/y;->w:Ljava/lang/Object;

    monitor-enter p1

    .line 293
    :try_start_0
    iget-object p2, p0, Lcom/android/settings/applications/y$i;->a:Lcom/android/settings/applications/y;

    iget-boolean p2, p2, Lcom/android/settings/applications/y;->x:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 294
    iget-object p2, p0, Lcom/android/settings/applications/y$i;->a:Lcom/android/settings/applications/y;

    const/4 v1, 0x0

    iput-boolean v1, p2, Lcom/android/settings/applications/y;->y:Z

    .line 295
    iget-object p2, p0, Lcom/android/settings/applications/y$i;->a:Lcom/android/settings/applications/y;

    iget-object p2, p2, Lcom/android/settings/applications/y;->L:Lcom/android/settings/applications/y$b;

    invoke-virtual {p2, v0}, Lcom/android/settings/applications/y$b;->removeMessages(I)V

    .line 296
    iget-object p2, p0, Lcom/android/settings/applications/y$i;->a:Lcom/android/settings/applications/y;

    iget-object p2, p2, Lcom/android/settings/applications/y;->L:Lcom/android/settings/applications/y$b;

    invoke-virtual {p2, v0}, Lcom/android/settings/applications/y$b;->sendEmptyMessage(I)Z

    .line 297
    iget-object p2, p0, Lcom/android/settings/applications/y$i;->a:Lcom/android/settings/applications/y;

    iget-object p2, p2, Lcom/android/settings/applications/y;->L:Lcom/android/settings/applications/y$b;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/android/settings/applications/y$b;->removeMessages(I)V

    .line 298
    iget-object p2, p0, Lcom/android/settings/applications/y$i;->a:Lcom/android/settings/applications/y;

    iget-object p2, p2, Lcom/android/settings/applications/y;->L:Lcom/android/settings/applications/y$b;

    invoke-virtual {p2, v0}, Lcom/android/settings/applications/y$b;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 300
    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/applications/y$i;->b:Z

    .line 302
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
