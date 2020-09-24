.class Lcom/oppo/music/MusicPlayer$MyHandler;
.super Landroid/os/Handler;
.source "MusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/music/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/music/MusicPlayer;


# direct methods
.method public constructor <init>(Lcom/oppo/music/MusicPlayer;Landroid/os/Looper;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/oppo/music/MusicPlayer$MyHandler;->this$0:Lcom/oppo/music/MusicPlayer;

    .line 146
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 151
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 179
    :pswitch_0
    iget-object p0, p0, Lcom/oppo/music/MusicPlayer$MyHandler;->this$0:Lcom/oppo/music/MusicPlayer;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p0, p1}, Lcom/oppo/music/MusicPlayer;->access$400(Lcom/oppo/music/MusicPlayer;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 176
    :pswitch_1
    iget-object p0, p0, Lcom/oppo/music/MusicPlayer$MyHandler;->this$0:Lcom/oppo/music/MusicPlayer;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-static {p0, v0, v1}, Lcom/oppo/music/MusicPlayer;->access$1200(Lcom/oppo/music/MusicPlayer;Ljava/lang/String;Z)V

    goto :goto_0

    .line 173
    :pswitch_2
    iget-object p0, p0, Lcom/oppo/music/MusicPlayer$MyHandler;->this$0:Lcom/oppo/music/MusicPlayer;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/oppo/music/MusicPlayer;->access$1100(Lcom/oppo/music/MusicPlayer;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :pswitch_3
    iget-object p0, p0, Lcom/oppo/music/MusicPlayer$MyHandler;->this$0:Lcom/oppo/music/MusicPlayer;

    invoke-static {p0}, Lcom/oppo/music/MusicPlayer;->access$1000(Lcom/oppo/music/MusicPlayer;)V

    goto :goto_0

    .line 167
    :pswitch_4
    iget-object p0, p0, Lcom/oppo/music/MusicPlayer$MyHandler;->this$0:Lcom/oppo/music/MusicPlayer;

    invoke-static {p0}, Lcom/oppo/music/MusicPlayer;->access$900(Lcom/oppo/music/MusicPlayer;)V

    goto :goto_0

    .line 164
    :pswitch_5
    iget-object p0, p0, Lcom/oppo/music/MusicPlayer$MyHandler;->this$0:Lcom/oppo/music/MusicPlayer;

    invoke-static {p0, v2}, Lcom/oppo/music/MusicPlayer;->access$800(Lcom/oppo/music/MusicPlayer;Z)V

    goto :goto_0

    .line 159
    :pswitch_6
    iget-object p1, p0, Lcom/oppo/music/MusicPlayer$MyHandler;->this$0:Lcom/oppo/music/MusicPlayer;

    invoke-static {p1}, Lcom/oppo/music/MusicPlayer;->access$700(Lcom/oppo/music/MusicPlayer;)V

    .line 161
    :pswitch_7
    iget-object p0, p0, Lcom/oppo/music/MusicPlayer$MyHandler;->this$0:Lcom/oppo/music/MusicPlayer;

    invoke-static {p0, v1}, Lcom/oppo/music/MusicPlayer;->access$800(Lcom/oppo/music/MusicPlayer;Z)V

    goto :goto_0

    .line 156
    :pswitch_8
    iget-object p0, p0, Lcom/oppo/music/MusicPlayer$MyHandler;->this$0:Lcom/oppo/music/MusicPlayer;

    invoke-static {p0}, Lcom/oppo/music/MusicPlayer;->access$600(Lcom/oppo/music/MusicPlayer;)V

    goto :goto_0

    .line 153
    :pswitch_9
    iget-object p0, p0, Lcom/oppo/music/MusicPlayer$MyHandler;->this$0:Lcom/oppo/music/MusicPlayer;

    invoke-static {p0}, Lcom/oppo/music/MusicPlayer;->access$500(Lcom/oppo/music/MusicPlayer;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
