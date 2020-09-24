.class public Lcom/coloros/systemui/qs/tiles/WechatPayTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "WechatPayTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final WEIXIN_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.mm"


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 42
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 43
    iput-object p2, p0, Lcom/coloros/systemui/qs/tiles/WechatPayTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/qs/tiles/WechatPayTile;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/WechatPayTile;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/qs/tiles/WechatPayTile;)Lcom/android/systemui/qs/QSHost;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/WechatPayTile;->mHost:Lcom/android/systemui/qs/QSHost;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/qs/tiles/WechatPayTile;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/WechatPayTile;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/qs/tiles/WechatPayTile;)Lcom/android/systemui/qs/QSHost;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/WechatPayTile;->mHost:Lcom/android/systemui/qs/QSHost;

    return-object p0
.end method

.method private openWeiXinPay()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/WechatPayTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/PayTask;->isSupportWechatQRCode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/WechatPayTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/WechatPayTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/coloros/systemui/qs/tiles/WechatPayTile$1;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/qs/tiles/WechatPayTile$1;-><init>(Lcom/coloros/systemui/qs/tiles/WechatPayTile;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/WechatPayTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/coloros/systemui/qs/tiles/WechatPayTile$2;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/qs/tiles/WechatPayTile$2;-><init>(Lcom/coloros/systemui/qs/tiles/WechatPayTile;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public getDefaultIcon()Lcom/android/systemui/plugins/qs/QSTile$Icon;
    .locals 0

    const p0, 0x7f0811f4

    .line 125
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x77

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 58
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/WechatPayTile;->mContext:Landroid/content/Context;

    const v0, 0x7f1107b8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/coloros/systemui/qs/tiles/WechatPayTile;->openWeiXinPay()V

    return-void
.end method

.method protected handleLongClick()V
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/WechatPayTile;->handleClick()V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 0

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2

    .line 115
    iget-object p2, p0, Lcom/coloros/systemui/qs/tiles/WechatPayTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p2}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f1107b8

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    const/4 p2, 0x1

    .line 116
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const v1, 0x7f0811f4

    .line 117
    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 118
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/WechatPayTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 119
    const-class p0, Landroid/widget/Button;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 120
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/qs/tiles/WechatPayTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/WechatPayTile;->mContext:Landroid/content/Context;

    const-string v1, "com.tencent.mm"

    invoke-static {v0, v1}, Lcom/coloros/common/util/AppInfoUtil;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/WechatPayTile;->mContext:Landroid/content/Context;

    .line 84
    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->isSupportWechatQRCode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 48
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/WechatPayTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
