.class Lcom/oppo/music/MusicPlayer$3;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 846
    iput-object p1, p0, Lcom/oppo/music/MusicPlayer$3;->this$0:Lcom/oppo/music/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "MusicPlayer"

    if-nez p2, :cond_0

    const-string p2, "onServiceConnected, intialFinished false"

    .line 850
    invoke-static {p1, p2}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object p0, p0, Lcom/oppo/music/MusicPlayer$3;->this$0:Lcom/oppo/music/MusicPlayer;

    invoke-static {p0}, Lcom/oppo/music/MusicPlayer;->access$300(Lcom/oppo/music/MusicPlayer;)Lcom/oppo/music/MusicPlayer$MyHandler;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/oppo/music/MusicPlayer$MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer$3;->this$0:Lcom/oppo/music/MusicPlayer;

    invoke-static {v0, p2}, Lcom/oppo/music/MusicPlayer;->access$1602(Lcom/oppo/music/MusicPlayer;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 854
    iget-object p0, p0, Lcom/oppo/music/MusicPlayer$3;->this$0:Lcom/oppo/music/MusicPlayer;

    invoke-static {p0}, Lcom/oppo/music/MusicPlayer;->access$300(Lcom/oppo/music/MusicPlayer;)Lcom/oppo/music/MusicPlayer$MyHandler;

    move-result-object p0

    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Lcom/oppo/music/MusicPlayer$MyHandler;->sendEmptyMessage(I)Z

    const-string p0, "onServiceConnected, intialFinished true"

    .line 855
    invoke-static {p1, p0}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "MusicPlayer"

    const-string v0, "onServiceDisconnected, unbindService"

    .line 861
    invoke-static {p1, v0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iget-object p1, p0, Lcom/oppo/music/MusicPlayer$3;->this$0:Lcom/oppo/music/MusicPlayer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oppo/music/MusicPlayer;->access$1602(Lcom/oppo/music/MusicPlayer;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 864
    iget-object p0, p0, Lcom/oppo/music/MusicPlayer$3;->this$0:Lcom/oppo/music/MusicPlayer;

    invoke-static {p0}, Lcom/oppo/music/MusicPlayer;->access$300(Lcom/oppo/music/MusicPlayer;)Lcom/oppo/music/MusicPlayer$MyHandler;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/oppo/music/MusicPlayer$MyHandler;->sendEmptyMessage(I)Z

    return-void
.end method
