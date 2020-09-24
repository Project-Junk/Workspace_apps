.class public Lcom/coloros/systemui/qs/tiles/ColorWifiTile;
.super Lcom/android/systemui/qs/tiles/WifiTile;
.source "ColorWifiTile.java"


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/tiles/WifiTile;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/plugins/ActivityStarter;)V

    return-void
.end method


# virtual methods
.method public getDefaultIcon()Lcom/android/systemui/plugins/qs/QSTile$Icon;
    .locals 0

    const p0, 0x7f0811fb

    .line 134
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    return-object p0
.end method

.method public handleClick()V
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ColorWifiTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/coloros/systemui/qs/tiles/ColorWifiTile;->RESET_DO_ANIM:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/tiles/ColorWifiTile;->refreshState(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/tiles/ColorWifiTile;->mClicked:Z

    .line 49
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ColorWifiTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-object v1, p0, Lcom/coloros/systemui/qs/tiles/ColorWifiTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    .line 50
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ColorWifiTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 52
    :cond_1
    sget-object v1, Lcom/coloros/systemui/qs/tiles/ColorWifiTile;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/qs/tiles/ColorWifiTile;->refreshState(Ljava/lang/Object;)V

    .line 53
    iget-object v1, p0, Lcom/coloros/systemui/qs/tiles/ColorWifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    xor-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->setWifiEnabled(Z)V

    .line 54
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/tiles/ColorWifiTile;->mExpectDisabled:Z

    .line 55
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/tiles/ColorWifiTile;->mExpectDisabled:Z

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ColorWifiTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    new-instance v1, Lcom/coloros/systemui/qs/tiles/-$$Lambda$ColorWifiTile$PJFk1qZPFB8yZ2osm_8aCBMhQ-o;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/qs/tiles/-$$Lambda$ColorWifiTile$PJFk1qZPFB8yZ2osm_8aCBMhQ-o;-><init>(Lcom/coloros/systemui/qs/tiles/ColorWifiTile;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Ljava/lang/Object;)V
    .locals 7

    .line 67
    sget-object v0, Lcom/coloros/systemui/qs/tiles/ColorWifiTile;->RESET_DO_ANIM:Ljava/lang/Object;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 68
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->doAnim:Z

    return-void

    .line 71
    :cond_0
    sget-boolean v0, Lcom/coloros/systemui/qs/tiles/ColorWifiTile;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ColorWifiTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUpdateState arg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ColorWifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    .line 73
    iget-boolean v2, p0, Lcom/coloros/systemui/qs/tiles/ColorWifiTile;->mExpectDisabled:Z

    if-eqz v2, :cond_3

    .line 74
    iget-boolean v2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz v2, :cond_2

    return-void

    .line 77
    :cond_2
    iput-boolean v1, p0, Lcom/coloros/systemui/qs/tiles/ColorWifiTile;->mExpectDisabled:Z

    .line 80
    :cond_3
    sget-object v2, Lcom/coloros/systemui/qs/tiles/ColorWifiTile;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    const/4 v3, 0x1

    if-ne p2, v2, :cond_4

    move p2, v3

    goto :goto_0

    :cond_4
    move p2, v1

    .line 81
    :goto_0
    iget-boolean v2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz v2, :cond_5

    iget v2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    if-lez v2, :cond_5

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->ssid:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v2, v3

    goto :goto_1

    :cond_5
    move v2, v1

    .line 82
    :goto_1
    iget-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eq v4, v5, :cond_6

    move v4, v3

    goto :goto_2

    :cond_6
    move v4, v1

    :goto_2
    if-eqz v4, :cond_7

    .line 84
    iget-object v4, p0, Lcom/coloros/systemui/qs/tiles/ColorWifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->setItemsVisible(Z)V

    .line 85
    iget-boolean v4, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    invoke-virtual {p0, v4}, Lcom/coloros/systemui/qs/tiles/ColorWifiTile;->fireToggleStateChanged(Z)V

    .line 87
    :cond_7
    iget-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    if-nez v4, :cond_8

    .line 88
    new-instance v4, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-direct {v4}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 89
    iget-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    const/high16 v5, 0x40c00000    # 6.0f

    iput v5, v4, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->rotation:F

    .line 91
    :cond_8
    iget-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    iput-boolean v1, v4, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    if-nez p2, :cond_a

    .line 92
    iget-boolean v4, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->isTransient:Z

    if-eqz v4, :cond_9

    goto :goto_3

    :cond_9
    move v4, v1

    goto :goto_4

    :cond_a
    :goto_3
    move v4, v3

    :goto_4
    if-eqz v2, :cond_b

    .line 93
    iget-object v5, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->statusLabel:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/coloros/systemui/qs/tiles/ColorWifiTile;->getSecondaryLabel(ZLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_5

    :cond_b
    if-eqz v4, :cond_c

    iget-object v5, p0, Lcom/coloros/systemui/qs/tiles/ColorWifiTile;->mContext:Landroid/content/Context;

    const v6, 0x7f110716

    .line 94
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_c
    const-string v5, ""

    :goto_5
    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->secondaryLabel:Ljava/lang/CharSequence;

    const/4 v5, 0x2

    .line 95
    iput v5, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->state:I

    .line 96
    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->dualTarget:Z

    if-nez p2, :cond_e

    .line 97
    iget-boolean p2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz p2, :cond_d

    goto :goto_6

    :cond_d
    move p2, v1

    goto :goto_7

    :cond_e
    :goto_6
    move p2, v3

    :goto_7
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    .line 98
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 99
    iget-object v5, p0, Lcom/coloros/systemui/qs/tiles/ColorWifiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f110711

    if-eqz v4, :cond_f

    const v4, 0x7f0811fa

    .line 101
    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 102
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->label:Ljava/lang/CharSequence;

    goto :goto_8

    .line 103
    :cond_f
    iget-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    if-nez v4, :cond_10

    .line 104
    iget-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    iput-boolean v3, v4, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 105
    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->state:I

    const v4, 0x7f0811fb

    .line 106
    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 107
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->label:Ljava/lang/CharSequence;

    goto :goto_8

    :cond_10
    const v4, 0x7f0811f9

    if-eqz v2, :cond_11

    .line 109
    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 110
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->ssid:Ljava/lang/String;

    invoke-static {v4}, Lcom/coloros/systemui/qs/tiles/ColorWifiTile;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->label:Ljava/lang/CharSequence;

    goto :goto_8

    .line 112
    :cond_11
    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 113
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->label:Ljava/lang/CharSequence;

    .line 115
    :goto_8
    iget-object v4, p0, Lcom/coloros/systemui/qs/tiles/ColorWifiTile;->mContext:Landroid/content/Context;

    .line 116
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ","

    .line 116
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    iget-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    if-eqz v6, :cond_12

    if-eqz v2, :cond_12

    .line 119
    iget-object v2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalContentDescription:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->ssid:Ljava/lang/String;

    invoke-static {v0}, Lcom/coloros/systemui/qs/tiles/ColorWifiTile;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 122
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 126
    :cond_12
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->contentDescription:Ljava/lang/CharSequence;

    const p2, 0x7f1100cc

    .line 127
    new-array v0, v3, [Ljava/lang/Object;

    .line 128
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/ColorWifiTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v0, v1

    .line 127
    invoke-virtual {v5, p2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->dualLabelContentDescription:Ljava/lang/CharSequence;

    .line 129
    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->expandedAccessibilityClassName:Ljava/lang/String;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/qs/tiles/ColorWifiTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$handleClick$0$ColorWifiTile()V
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/tiles/ColorWifiTile;->mExpectDisabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/tiles/ColorWifiTile;->mExpectDisabled:Z

    .line 59
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/ColorWifiTile;->refreshState()V

    :cond_0
    return-void
.end method
