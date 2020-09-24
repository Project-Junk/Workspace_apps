.class public Lcom/coloros/systemui/qs/tiles/WechatScanTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "WechatScanTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTION_WEIXIN_SCANER:Ljava/lang/String; = "com.tencent.mm.action.BIZSHORTCUT"

.field private static final WEIXIN_EXTRA_KEY:Ljava/lang/String; = "LauncherUI.From.Scaner.Shortcut"

.field private static final WEIXIN_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.mm"


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 44
    iput-object p2, p0, Lcom/coloros/systemui/qs/tiles/WechatScanTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-void
.end method

.method private openWeiXinScan()V
    .locals 4

    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.tencent.mm.action.BIZSHORTCUT"

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "LauncherUI.From.Scaner.Shortcut"

    const/4 v3, 0x1

    .line 91
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 94
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/WechatScanTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public getDefaultIcon()Lcom/android/systemui/plugins/qs/QSTile$Icon;
    .locals 0

    const p0, 0x7f0811f7

    .line 109
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

    .line 59
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/WechatScanTile;->mContext:Landroid/content/Context;

    const v0, 0x7f1107b9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/coloros/systemui/qs/tiles/WechatScanTile;->openWeiXinScan()V

    return-void
.end method

.method protected handleLongClick()V
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/WechatScanTile;->handleClick()V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 0

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2

    .line 99
    iget-object p2, p0, Lcom/coloros/systemui/qs/tiles/WechatScanTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p2}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f1107b9

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    const/4 p2, 0x1

    .line 100
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const v1, 0x7f0811f7

    .line 101
    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 102
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/WechatScanTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 103
    const-class p0, Landroid/widget/Button;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 104
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/qs/tiles/WechatScanTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 84
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/WechatScanTile;->mContext:Landroid/content/Context;

    const-string v0, "com.tencent.mm"

    invoke-static {p0, v0}, Lcom/coloros/common/util/AppInfoUtil;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 49
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/WechatScanTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
