.class public Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile;
.super Lcom/android/systemui/qs/tiles/FlashlightTile;
.source "ColorFlashlightTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile$HandlerFlashlight;
    }
.end annotation


# instance fields
.field private mHandle:Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile$HandlerFlashlight;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/FlashlightController;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/FlashlightTile;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/FlashlightController;)V

    .line 37
    new-instance p1, Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile$HandlerFlashlight;

    sget-object p2, Lcom/android/systemui/Dependency;->QS_BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Looper;

    invoke-direct {p1, p0, p2}, Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile$HandlerFlashlight;-><init>(Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile;->mHandle:Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile$HandlerFlashlight;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile;)Lcom/android/systemui/statusbar/policy/FlashlightController;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    return-object p0
.end method


# virtual methods
.method public getDefaultIcon()Lcom/android/systemui/plugins/qs/QSTile$Icon;
    .locals 0

    const p0, 0x7f0811ca

    .line 134
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    return-object p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 52
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile;->mContext:Landroid/content/Context;

    const v0, 0x7f1107ab

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 3

    .line 57
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_1

    .line 62
    sget-object v0, Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile;->RESET_DO_ANIM:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile;->refreshState(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile;->mClicked:Z

    .line 66
    iget-object v1, p0, Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/2addr v1, v0

    .line 67
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile;->refreshState(Ljava/lang/Object;)V

    .line 68
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile;->mHandle:Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile$HandlerFlashlight;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile$HandlerFlashlight;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 3

    .line 73
    sget-object v0, Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile;->RESET_DO_ANIM:Ljava/lang/Object;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 74
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->doAnim:Z

    return-void

    .line 77
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    if-nez v0, :cond_1

    .line 78
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile;->mContext:Landroid/content/Context;

    const v2, 0x7f1107ab

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 81
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isAvailable()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const p2, 0x7f0811cb

    .line 82
    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 83
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    iput-boolean v2, p2, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 84
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile;->mContext:Landroid/content/Context;

    const p2, 0x7f1100c0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 86
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    return-void

    .line 89
    :cond_2
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 90
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 91
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-ne p2, v0, :cond_3

    return-void

    .line 94
    :cond_3
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eq v0, p2, :cond_4

    if-eqz p2, :cond_4

    iget-boolean v0, p0, Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile;->mClicked:Z

    if-eqz v0, :cond_4

    .line 95
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->doAnim:Z

    .line 96
    iput-boolean v1, p0, Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile;->mClicked:Z

    .line 98
    :cond_4
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    goto :goto_0

    .line 100
    :cond_5
    iget-object p2, p0, Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isEnabled()Z

    move-result p2

    .line 101
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eq v0, p2, :cond_6

    if-eqz p2, :cond_6

    iget-boolean v0, p0, Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile;->mClicked:Z

    if-eqz v0, :cond_6

    .line 102
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->doAnim:Z

    .line 103
    iput-boolean v1, p0, Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile;->mClicked:Z

    .line 105
    :cond_6
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 107
    :goto_0
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_7

    const p2, 0x7f0811c8

    goto :goto_1

    :cond_7
    const p2, 0x7f0811ca

    :goto_1
    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 109
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p2, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 110
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile;->mContext:Landroid/content/Context;

    const p2, 0x7f1106df

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 111
    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 112
    iget-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p0, :cond_8

    const/4 v2, 0x2

    :cond_8
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    const p0, 0x7f0811c9

    .line 113
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->animIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 46
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
