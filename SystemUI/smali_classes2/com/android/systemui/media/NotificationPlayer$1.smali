.class Lcom/android/systemui/media/NotificationPlayer$1;
.super Ljava/lang/Object;
.source "NotificationPlayer.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/NotificationPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/NotificationPlayer;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/NotificationPlayer;)V
    .locals 0

    .line 521
    iput-object p1, p0, Lcom/android/systemui/media/NotificationPlayer$1;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3

    .line 524
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$1;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v0}, Lcom/android/systemui/media/NotificationPlayer;->access$800(Lcom/android/systemui/media/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x3

    if-eq p1, v0, :cond_1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_2

    .line 533
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/media/NotificationPlayer$1;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {p1}, Lcom/android/systemui/media/NotificationPlayer;->access$700(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 534
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$1;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v0}, Lcom/android/systemui/media/NotificationPlayer;->access$800(Lcom/android/systemui/media/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 536
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer$1;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v1}, Lcom/android/systemui/media/NotificationPlayer;->access$800(Lcom/android/systemui/media/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 540
    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer$1;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v1}, Lcom/android/systemui/media/NotificationPlayer;->access$800(Lcom/android/systemui/media/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 541
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer$1;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    :goto_0
    invoke-static {v1, v0}, Lcom/android/systemui/media/NotificationPlayer;->access$802(Lcom/android/systemui/media/NotificationPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 540
    iget-object v2, p0, Lcom/android/systemui/media/NotificationPlayer$1;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v2}, Lcom/android/systemui/media/NotificationPlayer;->access$800(Lcom/android/systemui/media/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 541
    iget-object p0, p0, Lcom/android/systemui/media/NotificationPlayer$1;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {p0, v0}, Lcom/android/systemui/media/NotificationPlayer;->access$802(Lcom/android/systemui/media/NotificationPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 542
    throw v1

    .line 540
    :catch_0
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer$1;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v1}, Lcom/android/systemui/media/NotificationPlayer;->access$800(Lcom/android/systemui/media/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 541
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer$1;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    goto :goto_0

    .line 544
    :cond_2
    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 545
    iget-object p0, p0, Lcom/android/systemui/media/NotificationPlayer$1;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {p0}, Lcom/android/systemui/media/NotificationPlayer;->access$600(Lcom/android/systemui/media/NotificationPlayer;)V

    :goto_2
    return-void

    :catchall_1
    move-exception p0

    .line 544
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method
