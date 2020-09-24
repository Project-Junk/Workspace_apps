.class Lcom/coloros/systemui/qs/tiles/AliPayTile$QuickPayHanlder;
.super Landroid/os/Handler;
.source "AliPayTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/tiles/AliPayTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QuickPayHanlder"
.end annotation


# instance fields
.field private final mAliPay:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coloros/systemui/qs/tiles/AliPayTile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/qs/tiles/AliPayTile;)V
    .locals 1

    .line 164
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 165
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/systemui/qs/tiles/AliPayTile$QuickPayHanlder;->mAliPay:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 170
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/AliPayTile$QuickPayHanlder;->mAliPay:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/qs/tiles/AliPayTile;

    if-eqz p0, :cond_1

    .line 172
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/coloros/systemui/qs/tiles/AliPayTile;->access$000(Lcom/coloros/systemui/qs/tiles/AliPayTile;)Lcom/coloros/exsupport/alipay/IAliPayService;

    move-result-object p1

    const/16 v0, 0x6e

    invoke-interface {p1, v0}, Lcom/coloros/exsupport/alipay/IAliPayService;->setsMinVersionCodeForService(I)V

    .line 176
    invoke-static {p0}, Lcom/coloros/systemui/qs/tiles/AliPayTile;->access$000(Lcom/coloros/systemui/qs/tiles/AliPayTile;)Lcom/coloros/exsupport/alipay/IAliPayService;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/coloros/exsupport/alipay/IAliPayService;->schemaToWalletBarcode(Ljava/lang/String;)I

    const-string p1, "Statusbar"

    .line 177
    invoke-static {}, Lcom/coloros/systemui/qs/tiles/AliPayTile;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alipay SDK version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/coloros/systemui/qs/tiles/AliPayTile;->access$000(Lcom/coloros/systemui/qs/tiles/AliPayTile;)Lcom/coloros/exsupport/alipay/IAliPayService;

    move-result-object p0

    invoke-interface {p0}, Lcom/coloros/exsupport/alipay/IAliPayService;->getVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 179
    invoke-static {}, Lcom/coloros/systemui/qs/tiles/AliPayTile;->access$500()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    :cond_1
    invoke-static {}, Lcom/coloros/systemui/qs/tiles/AliPayTile;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string p1, "week reference  error"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
