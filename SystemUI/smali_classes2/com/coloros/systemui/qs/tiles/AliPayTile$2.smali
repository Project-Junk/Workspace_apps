.class Lcom/coloros/systemui/qs/tiles/AliPayTile$2;
.super Ljava/lang/Object;
.source "AliPayTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/qs/tiles/AliPayTile;->openAlipay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/tiles/AliPayTile;

.field final synthetic val$explicitIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/tiles/AliPayTile;Landroid/content/Intent;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/AliPayTile$2;->this$0:Lcom/coloros/systemui/qs/tiles/AliPayTile;

    iput-object p2, p0, Lcom/coloros/systemui/qs/tiles/AliPayTile$2;->val$explicitIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 151
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/AliPayTile$2;->this$0:Lcom/coloros/systemui/qs/tiles/AliPayTile;

    invoke-static {v0}, Lcom/coloros/systemui/qs/tiles/AliPayTile;->access$400(Lcom/coloros/systemui/qs/tiles/AliPayTile;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/qs/tiles/AliPayTile$2;->val$explicitIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/coloros/systemui/qs/tiles/AliPayTile$2;->this$0:Lcom/coloros/systemui/qs/tiles/AliPayTile;

    invoke-static {v2}, Lcom/coloros/systemui/qs/tiles/AliPayTile;->access$300(Lcom/coloros/systemui/qs/tiles/AliPayTile;)Landroid/content/ServiceConnection;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    const/4 v4, -0x2

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 152
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/AliPayTile$2;->this$0:Lcom/coloros/systemui/qs/tiles/AliPayTile;

    invoke-static {v0}, Lcom/coloros/systemui/qs/tiles/AliPayTile;->access$100(Lcom/coloros/systemui/qs/tiles/AliPayTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/AliPayTile$2;->this$0:Lcom/coloros/systemui/qs/tiles/AliPayTile;

    invoke-static {v0}, Lcom/coloros/systemui/qs/tiles/AliPayTile;->access$200(Lcom/coloros/systemui/qs/tiles/AliPayTile;)Lcom/coloros/systemui/qs/tiles/AliPayTile$QuickPayHanlder;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/AliPayTile$2;->this$0:Lcom/coloros/systemui/qs/tiles/AliPayTile;

    invoke-static {p0}, Lcom/coloros/systemui/qs/tiles/AliPayTile;->access$200(Lcom/coloros/systemui/qs/tiles/AliPayTile;)Lcom/coloros/systemui/qs/tiles/AliPayTile$QuickPayHanlder;

    move-result-object p0

    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/qs/tiles/AliPayTile$QuickPayHanlder;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/qs/tiles/AliPayTile$QuickPayHanlder;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
