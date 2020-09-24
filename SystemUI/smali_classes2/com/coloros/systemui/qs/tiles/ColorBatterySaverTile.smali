.class public Lcom/coloros/systemui/qs/tiles/ColorBatterySaverTile;
.super Lcom/android/systemui/qs/tiles/BatterySaverTile;
.source "ColorBatterySaverTile.java"


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/BatterySaverTile;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/BatteryController;)V

    return-void
.end method


# virtual methods
.method public getDefaultIcon()Lcom/android/systemui/plugins/qs/QSTile$Icon;
    .locals 0

    const p0, 0x7f081194

    .line 61
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    return-object p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 43
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorBatterySaverTile;->mContext:Landroid/content/Context;

    const v0, 0x7f1107b2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 0

    .line 38
    invoke-super {p0}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->handleClick()V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2

    .line 48
    iget-boolean p2, p0, Lcom/coloros/systemui/qs/tiles/ColorBatterySaverTile;->mPowerSave:Z

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 49
    iget p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    if-ne p2, v0, :cond_1

    const p2, 0x7f081192

    goto :goto_1

    :cond_1
    iget p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    if-ne p2, v1, :cond_2

    const p2, 0x7f081194

    goto :goto_1

    :cond_2
    const p2, 0x7f081195

    :goto_1
    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 52
    iget-object p2, p0, Lcom/coloros/systemui/qs/tiles/ColorBatterySaverTile;->mContext:Landroid/content/Context;

    const v0, 0x7f1107b2

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 53
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 54
    iget-boolean p2, p0, Lcom/coloros/systemui/qs/tiles/ColorBatterySaverTile;->mPowerSave:Z

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 55
    const-class p2, Landroid/widget/Switch;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 56
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorBatterySaverTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->showRippleEffect:Z

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/qs/tiles/ColorBatterySaverTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method
