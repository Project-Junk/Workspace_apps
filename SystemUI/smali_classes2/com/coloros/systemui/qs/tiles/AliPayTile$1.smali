.class Lcom/coloros/systemui/qs/tiles/AliPayTile$1;
.super Ljava/lang/Object;
.source "AliPayTile.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/tiles/AliPayTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/tiles/AliPayTile;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/tiles/AliPayTile;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/AliPayTile$1;->this$0:Lcom/coloros/systemui/qs/tiles/AliPayTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 76
    iget-object p1, p0, Lcom/coloros/systemui/qs/tiles/AliPayTile$1;->this$0:Lcom/coloros/systemui/qs/tiles/AliPayTile;

    invoke-static {p2}, Lcom/coloros/exsupport/alipay/IAliPayService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/coloros/exsupport/alipay/IAliPayService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coloros/systemui/qs/tiles/AliPayTile;->access$002(Lcom/coloros/systemui/qs/tiles/AliPayTile;Lcom/coloros/exsupport/alipay/IAliPayService;)Lcom/coloros/exsupport/alipay/IAliPayService;

    .line 77
    iget-object p1, p0, Lcom/coloros/systemui/qs/tiles/AliPayTile$1;->this$0:Lcom/coloros/systemui/qs/tiles/AliPayTile;

    invoke-static {p1}, Lcom/coloros/systemui/qs/tiles/AliPayTile;->access$100(Lcom/coloros/systemui/qs/tiles/AliPayTile;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/coloros/systemui/qs/tiles/AliPayTile$1;->this$0:Lcom/coloros/systemui/qs/tiles/AliPayTile;

    invoke-static {p1}, Lcom/coloros/systemui/qs/tiles/AliPayTile;->access$200(Lcom/coloros/systemui/qs/tiles/AliPayTile;)Lcom/coloros/systemui/qs/tiles/AliPayTile$QuickPayHanlder;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/systemui/qs/tiles/AliPayTile$1;->this$0:Lcom/coloros/systemui/qs/tiles/AliPayTile;

    invoke-static {p2}, Lcom/coloros/systemui/qs/tiles/AliPayTile;->access$200(Lcom/coloros/systemui/qs/tiles/AliPayTile;)Lcom/coloros/systemui/qs/tiles/AliPayTile$QuickPayHanlder;

    move-result-object p2

    const/16 v0, 0x64

    invoke-virtual {p2, v0}, Lcom/coloros/systemui/qs/tiles/AliPayTile$QuickPayHanlder;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/qs/tiles/AliPayTile$QuickPayHanlder;->sendMessage(Landroid/os/Message;)Z

    .line 79
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/AliPayTile$1;->this$0:Lcom/coloros/systemui/qs/tiles/AliPayTile;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/coloros/systemui/qs/tiles/AliPayTile;->access$102(Lcom/coloros/systemui/qs/tiles/AliPayTile;Z)Z

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/AliPayTile$1;->this$0:Lcom/coloros/systemui/qs/tiles/AliPayTile;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/systemui/qs/tiles/AliPayTile;->access$102(Lcom/coloros/systemui/qs/tiles/AliPayTile;Z)Z

    return-void
.end method
