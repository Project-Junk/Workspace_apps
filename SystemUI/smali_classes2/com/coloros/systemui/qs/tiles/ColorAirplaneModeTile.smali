.class public Lcom/coloros/systemui/qs/tiles/ColorAirplaneModeTile;
.super Lcom/android/systemui/qs/tiles/AirplaneModeTile;
.source "ColorAirplaneModeTile.java"


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/plugins/ActivityStarter;)V

    return-void
.end method


# virtual methods
.method public getDefaultIcon()Lcom/android/systemui/plugins/qs/QSTile$Icon;
    .locals 0

    const p0, 0x7f081189

    .line 90
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 46
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorAirplaneModeTile;->mContext:Landroid/content/Context;

    const v0, 0x7f1106ac

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleClick()V
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ColorAirplaneModeTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/coloros/systemui/qs/tiles/ColorAirplaneModeTile;->RESET_DO_ANIM:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/tiles/ColorAirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ColorAirplaneModeTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 56
    iget-object v1, p0, Lcom/coloros/systemui/qs/tiles/ColorAirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/ColorAirplaneModeTile;->getMetricsCategory()I

    move-result v2

    xor-int/lit8 v3, v0, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    if-nez v0, :cond_1

    const-string v1, "ril.cdma.inecmmode"

    .line 58
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorAirplaneModeTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void

    :cond_1
    xor-int/lit8 v0, v0, 0x1

    .line 63
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/tiles/ColorAirplaneModeTile;->setEnabled(Z)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2

    .line 68
    sget-object v0, Lcom/coloros/systemui/qs/tiles/ColorAirplaneModeTile;->RESET_DO_ANIM:Ljava/lang/Object;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 69
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->doAnim:Z

    return-void

    :cond_0
    const-string v0, "no_airplane_mode"

    .line 72
    invoke-virtual {p0, p1, v0}, Lcom/coloros/systemui/qs/tiles/ColorAirplaneModeTile;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    .line 73
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/coloros/systemui/qs/tiles/ColorAirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {p2}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result p2

    :goto_0
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    move v1, v0

    .line 75
    :cond_2
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 76
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorAirplaneModeTile;->mContext:Landroid/content/Context;

    const p2, 0x7f1106ac

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    const p0, 0x7f081188

    goto :goto_1

    :cond_3
    const p0, 0x7f081189

    .line 77
    :goto_1
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 79
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    if-nez p0, :cond_4

    .line 80
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 82
    :cond_4
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    xor-int/lit8 p2, v1, 0x1

    iput-boolean p2, p0, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    if-eqz v1, :cond_5

    const/4 v0, 0x2

    .line 83
    :cond_5
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 84
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 85
    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/qs/tiles/ColorAirplaneModeTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method
