.class public Lcom/coloros/systemui/qs/tiles/ColorLocationTile;
.super Lcom/android/systemui/qs/tiles/LocationTile;
.source "ColorLocationTile.java"


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/tiles/LocationTile;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/plugins/ActivityStarter;)V

    return-void
.end method


# virtual methods
.method public getDefaultIcon()Lcom/android/systemui/plugins/qs/QSTile$Icon;
    .locals 0

    const p0, 0x7f0811d6

    .line 99
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    return-object p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 53
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorLocationTile;->mContext:Landroid/content/Context;

    const v0, 0x7f1107ac

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ColorLocationTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/coloros/systemui/qs/tiles/ColorLocationTile;->RESET_DO_ANIM:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/tiles/ColorLocationTile;->refreshState(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/tiles/ColorLocationTile;->mClicked:Z

    .line 48
    invoke-super {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->handleClick()V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 4

    .line 58
    sget-object v0, Lcom/coloros/systemui/qs/tiles/ColorLocationTile;->RESET_DO_ANIM:Ljava/lang/Object;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 59
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->doAnim:Z

    return-void

    .line 62
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    if-nez v0, :cond_1

    .line 63
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ColorLocationTile;->mController:Lcom/android/systemui/statusbar/policy/LocationController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/LocationController;->isLocationEnabled()Z

    move-result v0

    .line 67
    iget-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const/4 v3, 0x1

    if-eq v2, v0, :cond_2

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/coloros/systemui/qs/tiles/ColorLocationTile;->mClicked:Z

    if-eqz v2, :cond_2

    .line 68
    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->doAnim:Z

    .line 69
    iput-boolean v1, p0, Lcom/coloros/systemui/qs/tiles/ColorLocationTile;->mClicked:Z

    :cond_2
    const v1, 0x7f0811d5

    .line 71
    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->animIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 75
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 76
    check-cast p2, Lcom/android/systemui/qs/tiles/LocationTile;

    const-string p2, "no_share_location"

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/qs/tiles/ColorLocationTile;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    .line 78
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->disabledByPolicy:Z

    if-nez p2, :cond_3

    const-string p2, "no_config_location"

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/qs/tiles/ColorLocationTile;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    :cond_3
    if-eqz v0, :cond_4

    const p2, 0x7f0811d4

    goto :goto_0

    :cond_4
    const p2, 0x7f0811d6

    .line 81
    :goto_0
    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 83
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/2addr v1, v3

    iput-boolean v1, p2, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    const p2, 0x7f1107ac

    if-eqz v0, :cond_5

    .line 85
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ColorLocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 86
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorLocationTile;->mContext:Landroid/content/Context;

    const p2, 0x7f1100c7

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_1

    .line 89
    :cond_5
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ColorLocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 90
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorLocationTile;->mContext:Landroid/content/Context;

    const p2, 0x7f1100c6

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 93
    :goto_1
    iget-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p0, :cond_6

    const/4 v3, 0x2

    :cond_6
    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 94
    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/qs/tiles/ColorLocationTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method
