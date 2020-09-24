.class public Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;
.super Lcom/android/systemui/qs/tiles/BluetoothTile;
.source "ColorBluetoothTile.java"


# static fields
.field private static final REFRESH_GUARD_TIME_OUT:I = 0xbb8


# instance fields
.field private mAvoidRefresh:Z

.field private mRefreshRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/tiles/BluetoothTile;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/plugins/ActivityStarter;)V

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->mAvoidRefresh:Z

    .line 37
    new-instance p1, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile$1;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile$1;-><init>(Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;)V

    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->mRefreshRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->mAvoidRefresh:Z

    return p1
.end method

.method private startRefreshGuardTimer()V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->TAG:Ljava/lang/String;

    const-string v1, "Statusbar"

    const-string v2, "startRefreshGuardTimer"

    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->mAvoidRefresh:Z

    .line 49
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    iget-object v1, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    iget-object v1, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->mRefreshRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopRefreshGuardTimer()V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->TAG:Ljava/lang/String;

    const-string v1, "Statusbar"

    const-string v2, "stopRefreshGuardTimer"

    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->mAvoidRefresh:Z

    .line 58
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    iget-object v1, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getDefaultIcon()Lcom/android/systemui/plugins/qs/QSTile$Icon;
    .locals 0

    const p0, 0x7f081199

    .line 155
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const/4 v1, 0x1

    .line 78
    iput-boolean v1, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->mClicked:Z

    if-nez v0, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->startRefreshGuardTimer()V

    goto :goto_0

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->stopRefreshGuardTimer()V

    :goto_0
    if-eqz v0, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 85
    :cond_1
    sget-object v2, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    :goto_1
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->refreshState(Ljava/lang/Object;)V

    .line 86
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    xor-int/2addr v0, v1

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->setBluetoothEnabled(Z)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 9

    .line 91
    sget-object v0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    if-nez p2, :cond_2

    .line 92
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v2

    .line 93
    :goto_2
    iget-object v3, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothConnected()Z

    move-result v3

    .line 94
    iget-object v4, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothConnecting()Z

    move-result v4

    if-nez v0, :cond_3

    .line 97
    iget-boolean v5, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->mAvoidRefresh:Z

    if-eqz v5, :cond_3

    return-void

    :cond_3
    if-nez p2, :cond_5

    if-nez v4, :cond_5

    .line 101
    iget-object v5, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 102
    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getBluetoothState()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_4

    goto :goto_3

    :cond_4
    move v5, v1

    goto :goto_4

    :cond_5
    :goto_3
    move v5, v2

    .line 103
    :goto_4
    iget-object v6, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v8}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " tranEnable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " connected="

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " connecting="

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v7, "Statusbar"

    invoke-static {v7, v6, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->isTransient:Z

    if-eq p2, v5, :cond_6

    if-nez v5, :cond_6

    iget-boolean p2, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->mClicked:Z

    if-eqz p2, :cond_6

    .line 106
    iput-boolean v1, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->mClicked:Z

    .line 109
    invoke-direct {p0}, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->stopRefreshGuardTimer()V

    .line 112
    :cond_6
    iput-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->isTransient:Z

    .line 113
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->dualTarget:Z

    .line 114
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 115
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    if-nez p2, :cond_7

    .line 116
    new-instance p2, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-direct {p2}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 118
    :cond_7
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    xor-int/lit8 v5, v0, 0x1

    iput-boolean v5, p2, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 119
    iget-object p2, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->mContext:Landroid/content/Context;

    const v5, 0x7f1106ae

    invoke-virtual {p2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 120
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->isTransient:Z

    .line 121
    invoke-virtual {p0, v0, v4, v3, p2}, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->getSecondaryLabel(ZZZZ)Ljava/lang/String;

    move-result-object p2

    .line 120
    invoke-static {p2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->secondaryLabel:Ljava/lang/CharSequence;

    const p2, 0x7f1100a7

    if-eqz v0, :cond_b

    const v0, 0x7f081197

    if-eqz v3, :cond_9

    .line 124
    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 125
    iget-object p2, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getConnectedDeviceName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 126
    iget-object p2, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getConnectedDeviceName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 128
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->mContext:Landroid/content/Context;

    const v3, 0x7f11004a

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    aput-object v5, v4, v1

    .line 129
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_5

    .line 131
    :cond_9
    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->isTransient:Z

    if-eqz v3, :cond_a

    const p2, 0x7f081198

    .line 132
    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 133
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->secondaryLabel:Ljava/lang/CharSequence;

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_5

    .line 135
    :cond_a
    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->mContext:Landroid/content/Context;

    const v3, 0x7f11008d

    .line 138
    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    :goto_5
    const/4 p2, 0x2

    .line 140
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    goto :goto_6

    :cond_b
    const v0, 0x7f081199

    .line 142
    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 143
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 145
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 148
    :goto_6
    iget-object p2, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1100cc

    new-array v2, v2, [Ljava/lang/Object;

    .line 149
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v2, v1

    .line 148
    invoke-virtual {p2, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->dualLabelContentDescription:Ljava/lang/CharSequence;

    .line 150
    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method
