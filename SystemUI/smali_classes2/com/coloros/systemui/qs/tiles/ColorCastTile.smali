.class public Lcom/coloros/systemui/qs/tiles/ColorCastTile;
.super Lcom/android/systemui/qs/tiles/CastTile;
.source "ColorCastTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/qs/tiles/ColorCastTile$CastGloablSettings;
    }
.end annotation


# instance fields
.field private mGloablSettings:Lcom/coloros/systemui/qs/tiles/ColorCastTile$CastGloablSettings;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 48
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/qs/tiles/CastTile;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/plugins/ActivityStarter;)V

    .line 49
    new-instance p1, Lcom/coloros/systemui/qs/tiles/ColorCastTile$CastGloablSettings;

    iget-object p2, p0, Lcom/coloros/systemui/qs/tiles/ColorCastTile;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/coloros/systemui/qs/tiles/ColorCastTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const-string p4, "wifi_display_on"

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/coloros/systemui/qs/tiles/ColorCastTile$CastGloablSettings;-><init>(Lcom/coloros/systemui/qs/tiles/ColorCastTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/ColorCastTile;->mGloablSettings:Lcom/coloros/systemui/qs/tiles/ColorCastTile$CastGloablSettings;

    .line 50
    iget-object p1, p0, Lcom/coloros/systemui/qs/tiles/ColorCastTile;->mContext:Landroid/content/Context;

    const-string p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/ColorCastTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method public getDefaultIcon()Lcom/android/systemui/plugins/qs/QSTile$Icon;
    .locals 0

    const p0, 0x7f0811a3

    .line 121
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    return-object p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 94
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorCastTile;->mContext:Landroid/content/Context;

    const v0, 0x7f1107a7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 3

    .line 67
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/ColorCastTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ColorCastTile;->mGloablSettings:Lcom/coloros/systemui/qs/tiles/ColorCastTile$CastGloablSettings;

    invoke-virtual {v0}, Lcom/coloros/systemui/qs/tiles/ColorCastTile$CastGloablSettings;->getValue()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ColorCastTile;->mGloablSettings:Lcom/coloros/systemui/qs/tiles/ColorCastTile$CastGloablSettings;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/qs/tiles/ColorCastTile$CastGloablSettings;->setValue(I)V

    .line 73
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ColorCastTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/ColorCastTile;->getLongClickIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    goto :goto_0

    .line 75
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorCastTile;->mGloablSettings:Lcom/coloros/systemui/qs/tiles/ColorCastTile$CastGloablSettings;

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/qs/tiles/ColorCastTile$CastGloablSettings;->setValue(I)V

    :goto_0
    return-void
.end method

.method public handleSetListening(Z)V
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorCastTile;->mGloablSettings:Lcom/coloros/systemui/qs/tiles/ColorCastTile$CastGloablSettings;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 86
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/tiles/ColorCastTile$CastGloablSettings;->setListening(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 88
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/tiles/ColorCastTile$CastGloablSettings;->setListening(Z)V

    :goto_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 1

    .line 99
    iget-object p2, p0, Lcom/coloros/systemui/qs/tiles/ColorCastTile;->mContext:Landroid/content/Context;

    const v0, 0x7f1107a7

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 100
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 101
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorCastTile;->mGloablSettings:Lcom/coloros/systemui/qs/tiles/ColorCastTile$CastGloablSettings;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/ColorCastTile$CastGloablSettings;->getValue()I

    move-result p0

    const/4 p2, 0x1

    if-ne p0, p2, :cond_0

    move p0, p2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 102
    iget-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const/4 v0, 0x2

    if-eqz p0, :cond_1

    move p0, v0

    goto :goto_1

    :cond_1
    move p0, p2

    :goto_1
    iput p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 104
    iget p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    if-ne p0, v0, :cond_2

    const p0, 0x7f0811a2

    goto :goto_2

    :cond_2
    iget p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    if-ne p0, p2, :cond_3

    const p0, 0x7f0811a3

    goto :goto_2

    :cond_3
    const p0, 0x7f0811a4

    :goto_2
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/qs/tiles/ColorCastTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorCastTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->is5GHzBandSupported()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isWifiDisplayEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 62
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isCastTileNotSupport()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 55
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/ColorCastTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
