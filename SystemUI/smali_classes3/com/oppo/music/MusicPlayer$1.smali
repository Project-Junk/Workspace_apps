.class Lcom/oppo/music/MusicPlayer$1;
.super Landroid/content/BroadcastReceiver;
.source "MusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/music/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/music/MusicPlayer;


# direct methods
.method constructor <init>(Lcom/oppo/music/MusicPlayer;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/oppo/music/MusicPlayer$1;->this$0:Lcom/oppo/music/MusicPlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 103
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 104
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer$1;->this$0:Lcom/oppo/music/MusicPlayer;

    invoke-static {v0}, Lcom/oppo/music/MusicPlayer;->access$000(Lcom/oppo/music/MusicPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive strAction = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicPlayer"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "com.oppo.music.service.playstate_changed"

    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    invoke-static {}, Lcom/oppo/music/MusicPlayer;->access$100()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/music/MusicPlayer$1;->this$0:Lcom/oppo/music/MusicPlayer;

    invoke-static {p1}, Lcom/oppo/music/MusicPlayer;->access$200(Lcom/oppo/music/MusicPlayer;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 110
    iget-object p1, p0, Lcom/oppo/music/MusicPlayer$1;->this$0:Lcom/oppo/music/MusicPlayer;

    invoke-virtual {p1}, Lcom/oppo/music/MusicPlayer;->beginForLockScreen()Z

    .line 112
    :cond_1
    iget-object p0, p0, Lcom/oppo/music/MusicPlayer$1;->this$0:Lcom/oppo/music/MusicPlayer;

    invoke-static {p0}, Lcom/oppo/music/MusicPlayer;->access$300(Lcom/oppo/music/MusicPlayer;)Lcom/oppo/music/MusicPlayer$MyHandler;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oppo/music/MusicPlayer$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_2
    const-string v0, "com.oppo.music.service.meta_changed"

    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    iget-object p0, p0, Lcom/oppo/music/MusicPlayer$1;->this$0:Lcom/oppo/music/MusicPlayer;

    invoke-static {p0}, Lcom/oppo/music/MusicPlayer;->access$300(Lcom/oppo/music/MusicPlayer;)Lcom/oppo/music/MusicPlayer$MyHandler;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/oppo/music/MusicPlayer$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_3
    const-string v0, "oppo.intent.action.ACTION_SHUTDOWN"

    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 116
    iget-object p0, p0, Lcom/oppo/music/MusicPlayer$1;->this$0:Lcom/oppo/music/MusicPlayer;

    invoke-virtual {p0}, Lcom/oppo/music/MusicPlayer;->end()V

    goto/16 :goto_1

    :cond_4
    const-string v0, "com.oppo.music.service.queue_changed"

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 118
    iget-object p0, p0, Lcom/oppo/music/MusicPlayer$1;->this$0:Lcom/oppo/music/MusicPlayer;

    invoke-static {p0}, Lcom/oppo/music/MusicPlayer;->access$300(Lcom/oppo/music/MusicPlayer;)Lcom/oppo/music/MusicPlayer$MyHandler;

    move-result-object p0

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/oppo/music/MusicPlayer$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_5
    const-string v0, "com.oppo.music.service.playback_complete"

    .line 119
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 120
    iget-object p0, p0, Lcom/oppo/music/MusicPlayer$1;->this$0:Lcom/oppo/music/MusicPlayer;

    invoke-static {p0}, Lcom/oppo/music/MusicPlayer;->access$300(Lcom/oppo/music/MusicPlayer;)Lcom/oppo/music/MusicPlayer$MyHandler;

    move-result-object p0

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/oppo/music/MusicPlayer$MyHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_6
    const-string v0, "com.oppo.music.thumb.update"

    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, "thumb path"

    .line 122
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    const-string v1, "is online"

    .line 128
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 129
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer$1;->this$0:Lcom/oppo/music/MusicPlayer;

    invoke-static {v0}, Lcom/oppo/music/MusicPlayer;->access$300(Lcom/oppo/music/MusicPlayer;)Lcom/oppo/music/MusicPlayer$MyHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/music/MusicPlayer$MyHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x9

    .line 130
    iput v1, v0, Landroid/os/Message;->what:I

    .line 131
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 132
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 133
    iget-object p0, p0, Lcom/oppo/music/MusicPlayer$1;->this$0:Lcom/oppo/music/MusicPlayer;

    invoke-static {p0}, Lcom/oppo/music/MusicPlayer;->access$300(Lcom/oppo/music/MusicPlayer;)Lcom/oppo/music/MusicPlayer$MyHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oppo/music/MusicPlayer$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_8
    :goto_0
    const/4 p1, 0x0

    .line 125
    iget-object p0, p0, Lcom/oppo/music/MusicPlayer$1;->this$0:Lcom/oppo/music/MusicPlayer;

    invoke-static {p0, p1}, Lcom/oppo/music/MusicPlayer;->access$400(Lcom/oppo/music/MusicPlayer;Landroid/graphics/Bitmap;)V

    return-void

    :cond_9
    const-string v0, "com.oppo.music.lyric.update"

    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 135
    iget-object p1, p0, Lcom/oppo/music/MusicPlayer$1;->this$0:Lcom/oppo/music/MusicPlayer;

    invoke-static {p1}, Lcom/oppo/music/MusicPlayer;->access$300(Lcom/oppo/music/MusicPlayer;)Lcom/oppo/music/MusicPlayer$MyHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/music/MusicPlayer$MyHandler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x8

    .line 136
    iput v0, p1, Landroid/os/Message;->what:I

    const-string v0, "lyric path"

    .line 137
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 139
    iget-object p0, p0, Lcom/oppo/music/MusicPlayer$1;->this$0:Lcom/oppo/music/MusicPlayer;

    invoke-static {p0}, Lcom/oppo/music/MusicPlayer;->access$300(Lcom/oppo/music/MusicPlayer;)Lcom/oppo/music/MusicPlayer$MyHandler;

    move-result-object p0

    const-wide/16 v0, 0x32

    invoke-virtual {p0, p1, v0, v1}, Lcom/oppo/music/MusicPlayer$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_a
    :goto_1
    return-void
.end method
