.class Lcom/oppo/music/MusicPlayer$2;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/music/MusicPlayer;->handleMusicThumbUpdated(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/music/MusicPlayer;

.field final synthetic val$isOnline:Z

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oppo/music/MusicPlayer;Ljava/lang/String;Z)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/oppo/music/MusicPlayer$2;->this$0:Lcom/oppo/music/MusicPlayer;

    iput-object p2, p0, Lcom/oppo/music/MusicPlayer$2;->val$path:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/oppo/music/MusicPlayer$2;->val$isOnline:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMusicThumbUpdated, run, path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/music/MusicPlayer$2;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicPlayer"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-boolean v0, p0, Lcom/oppo/music/MusicPlayer$2;->val$isOnline:Z

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer$2;->this$0:Lcom/oppo/music/MusicPlayer;

    iget-object v1, p0, Lcom/oppo/music/MusicPlayer$2;->val$path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oppo/music/MusicPlayer;->access$1300(Lcom/oppo/music/MusicPlayer;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer$2;->this$0:Lcom/oppo/music/MusicPlayer;

    iget-object v1, p0, Lcom/oppo/music/MusicPlayer$2;->val$path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oppo/music/MusicPlayer;->access$1400(Lcom/oppo/music/MusicPlayer;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer$2;->this$0:Lcom/oppo/music/MusicPlayer;

    iget-object v2, p0, Lcom/oppo/music/MusicPlayer$2;->val$path:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/oppo/music/MusicPlayer;->access$1400(Lcom/oppo/music/MusicPlayer;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 254
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer$2;->this$0:Lcom/oppo/music/MusicPlayer;

    iget-object v4, p0, Lcom/oppo/music/MusicPlayer$2;->val$path:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/oppo/music/MusicPlayer;->access$1500(Lcom/oppo/music/MusicPlayer;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 255
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBitmapFromAudioFile time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/music/utils/MyLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/oppo/music/MusicPlayer$2;->this$0:Lcom/oppo/music/MusicPlayer;

    invoke-static {v1}, Lcom/oppo/music/MusicPlayer;->access$300(Lcom/oppo/music/MusicPlayer;)Lcom/oppo/music/MusicPlayer$MyHandler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/oppo/music/MusicPlayer$MyHandler;->removeMessages(I)V

    .line 259
    iget-object v1, p0, Lcom/oppo/music/MusicPlayer$2;->this$0:Lcom/oppo/music/MusicPlayer;

    invoke-static {v1}, Lcom/oppo/music/MusicPlayer;->access$300(Lcom/oppo/music/MusicPlayer;)Lcom/oppo/music/MusicPlayer$MyHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/music/MusicPlayer$MyHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 260
    iput v2, v1, Landroid/os/Message;->what:I

    .line 261
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 262
    iget-object p0, p0, Lcom/oppo/music/MusicPlayer$2;->this$0:Lcom/oppo/music/MusicPlayer;

    invoke-static {p0}, Lcom/oppo/music/MusicPlayer;->access$300(Lcom/oppo/music/MusicPlayer;)Lcom/oppo/music/MusicPlayer$MyHandler;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/oppo/music/MusicPlayer$MyHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
