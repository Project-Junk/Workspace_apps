.class public Lcom/coloros/systemui/qs/tiles/BlackScreenTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "BlackScreenTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BlackScreenTile"


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 42
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-void
.end method

.method private static isBlackScreenEnabled()Z
    .locals 4

    .line 106
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 107
    invoke-static {}, Lcom/coloros/systemui/common/blackscreen/feature/BlackScreenFeatureOption;->isBlackScreenDisable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    invoke-static {}, Lcom/coloros/systemui/common/blackscreen/feature/BlackScreenFeatureOption;->isRegionSupportForRealme()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    .line 110
    :cond_1
    invoke-static {}, Lcom/coloros/systemui/common/blackscreen/feature/BlackScreenFeatureOption;->isBlackScreenDisable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-static {}, Lcom/coloros/systemui/common/blackscreen/feature/BlackScreenFeatureOption;->isRegionSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBlackScreenEnabled() result = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Statusbar"

    const-string v3, "BlackScreenTile"

    invoke-static {v2, v3, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public getDefaultIcon()Lcom/android/systemui/plugins/qs/QSTile$Icon;
    .locals 0

    const p0, 0x7f081196

    .line 96
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

    .line 91
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/BlackScreenTile;->mContext:Landroid/content/Context;

    const v0, 0x7f11018e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/BlackScreenTile;->getHost()Lcom/android/systemui/qs/QSHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    .line 53
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/BlackScreenTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->getInstance()Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/BlackScreenTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->startBlackScreenMode(Landroid/content/Context;)V

    return-void
.end method

.method protected handleLongClick()V
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/BlackScreenTile;->handleClick()V

    return-void
.end method

.method protected handleSetListening(Z)V
    .locals 0

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2

    .line 66
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleUpdateState() state = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Statusbar"

    const-string v1, "BlackScreenTile"

    invoke-static {v0, v1, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object p2, p0, Lcom/coloros/systemui/qs/tiles/BlackScreenTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p2}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f11018e

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    const/4 p2, 0x1

    .line 68
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const v1, 0x7f081196

    .line 69
    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 70
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 71
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/BlackScreenTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 72
    const-class p0, Landroid/widget/Button;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/qs/tiles/BlackScreenTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    .line 101
    invoke-static {}, Lcom/coloros/systemui/qs/tiles/BlackScreenTile;->isBlackScreenEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 47
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/BlackScreenTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
