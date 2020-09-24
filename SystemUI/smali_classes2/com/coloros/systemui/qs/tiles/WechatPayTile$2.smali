.class Lcom/coloros/systemui/qs/tiles/WechatPayTile$2;
.super Ljava/lang/Object;
.source "WechatPayTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/qs/tiles/WechatPayTile;->openWeiXinPay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/tiles/WechatPayTile;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/tiles/WechatPayTile;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/WechatPayTile$2;->this$0:Lcom/coloros/systemui/qs/tiles/WechatPayTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/WechatPayTile$2;->this$0:Lcom/coloros/systemui/qs/tiles/WechatPayTile;

    invoke-static {v0}, Lcom/coloros/systemui/qs/tiles/WechatPayTile;->access$200(Lcom/coloros/systemui/qs/tiles/WechatPayTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/PayTask;->openWechatQRCode(Landroid/content/Context;)V

    .line 104
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/WechatPayTile$2;->this$0:Lcom/coloros/systemui/qs/tiles/WechatPayTile;

    invoke-static {p0}, Lcom/coloros/systemui/qs/tiles/WechatPayTile;->access$300(Lcom/coloros/systemui/qs/tiles/WechatPayTile;)Lcom/android/systemui/qs/QSHost;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    return-void
.end method
