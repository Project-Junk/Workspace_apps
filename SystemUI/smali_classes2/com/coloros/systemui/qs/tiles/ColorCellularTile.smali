.class public Lcom/coloros/systemui/qs/tiles/ColorCellularTile;
.super Lcom/android/systemui/qs/tiles/CellularTile;
.source "ColorCellularTile.java"


# instance fields
.field private mColorPhone:Landroid/telephony/ColorOSTelephonyManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/tiles/CellularTile;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/plugins/ActivityStarter;)V

    .line 44
    iget-object p1, p0, Lcom/coloros/systemui/qs/tiles/ColorCellularTile;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/ColorCellularTile;->mColorPhone:Landroid/telephony/ColorOSTelephonyManager;

    return-void
.end method

.method private isSimEnabled()Z
    .locals 4

    const/4 v0, 0x0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/coloros/systemui/qs/tiles/ColorCellularTile;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/coloros/systemui/common/util/NetworkServiceProxy;->isSimInserted(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/coloros/systemui/qs/tiles/ColorCellularTile;->mColorPhone:Landroid/telephony/ColorOSTelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/ColorOSTelephonyManager;->colorIsQcomSubActive(I)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    .line 136
    iget-object v1, p0, Lcom/coloros/systemui/qs/tiles/ColorCellularTile;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/coloros/systemui/common/util/NetworkServiceProxy;->isSimInserted(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/coloros/systemui/qs/tiles/ColorCellularTile;->mColorPhone:Landroid/telephony/ColorOSTelephonyManager;

    invoke-virtual {v1, v2}, Landroid/telephony/ColorOSTelephonyManager;->colorIsQcomSubActive(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 140
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorCellularTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get sim state error e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method protected appendMobileDataType(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 120
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 123
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    .line 126
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorCellularTile;->mContext:Landroid/content/Context;

    const v0, 0x7f1107cc

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultIcon()Lcom/android/systemui/plugins/qs/QSTile$Icon;
    .locals 0

    const p0, 0x7f0811c0

    .line 147
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    return-object p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 61
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorCellularTile;->mContext:Landroid/content/Context;

    const v0, 0x7f1107af

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/ColorCellularTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->state:I

    if-nez v0, :cond_0

    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ColorCellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorCellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    goto :goto_0

    .line 55
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorCellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    :goto_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Ljava/lang/Object;)V
    .locals 10

    .line 66
    check-cast p2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    if-nez p2, :cond_0

    .line 68
    iget-object p2, p0, Lcom/coloros/systemui/qs/tiles/ColorCellularTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;

    iget-object p2, p2, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ColorCellularTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1107af

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->label:Ljava/lang/CharSequence;

    .line 73
    invoke-direct {p0}, Lcom/coloros/systemui/qs/tiles/ColorCellularTile;->isSimEnabled()Z

    move-result v1

    .line 74
    iget-object v2, p0, Lcom/coloros/systemui/qs/tiles/ColorCellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v2}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    move-result v2

    .line 75
    iget-object v3, p0, Lcom/coloros/systemui/qs/tiles/ColorCellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v3}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v5

    .line 77
    :goto_0
    iget-object v7, p0, Lcom/coloros/systemui/qs/tiles/ColorCellularTile;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isMobileDataSupported = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isMobileDataEnabled = "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isSimEnabled ="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Statusbar"

    invoke-static {v3, v7, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iput-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    .line 80
    const-class v2, Landroid/widget/Switch;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 81
    iget-boolean v2, p2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->noSim:Z

    const/4 v7, 0x2

    if-eqz v2, :cond_2

    .line 82
    iput v5, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->state:I

    const p2, 0x7f110427

    .line 83
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_2

    .line 84
    :cond_2
    iget-boolean v2, p2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->airplaneModeEnabled:Z

    if-eqz v2, :cond_3

    .line 85
    iput v5, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->state:I

    const p2, 0x7f1107bc

    .line 86
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_3
    if-eqz v6, :cond_5

    .line 88
    iput v7, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->state:I

    .line 89
    iget-object v2, p0, Lcom/coloros/systemui/qs/tiles/ColorCellularTile;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cb.multipleSubs="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->multipleSubs:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " cb.dataSubscriptionName="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataSubscriptionName:Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " getMobileDataContentName(cb)="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p0, p2}, Lcom/coloros/systemui/qs/tiles/ColorCellularTile;->getMobileDataContentName(Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 89
    invoke-static {v3, v2, v6}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-boolean v2, p2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->multipleSubs:Z

    if-eqz v2, :cond_4

    iget-object v2, p2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataSubscriptionName:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_4
    const-string v2, ""

    .line 94
    :goto_1
    invoke-virtual {p0, p2}, Lcom/coloros/systemui/qs/tiles/ColorCellularTile;->getMobileDataContentName(Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 91
    invoke-virtual {p0, v2, p2}, Lcom/coloros/systemui/qs/tiles/ColorCellularTile;->appendMobileDataType(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_2

    .line 96
    :cond_5
    iput v4, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->state:I

    const p2, 0x7f11020e

    .line 97
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->secondaryLabel:Ljava/lang/CharSequence;

    :goto_2
    if-eqz v1, :cond_6

    .line 99
    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isCelluarDisabledByCustomize()Z

    move-result p2

    if-nez p2, :cond_6

    .line 100
    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isIgnoreDataSetting()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorCellularTile;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ColorOSTelephonyManager;->isColorHasSoftSimCard()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 101
    :cond_6
    iput v5, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->state:I

    .line 103
    :cond_7
    iget p0, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->state:I

    if-ne p0, v7, :cond_8

    const p0, 0x7f0811be

    goto :goto_3

    :cond_8
    iget p0, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->state:I

    if-ne p0, v4, :cond_9

    const p0, 0x7f0811c0

    goto :goto_3

    :cond_9
    const p0, 0x7f0811c2

    :goto_3
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 109
    iget p0, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->state:I

    if-ne p0, v4, :cond_a

    const p0, 0x7f11020f

    .line 110
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 112
    :cond_a
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->secondaryLabel:Ljava/lang/CharSequence;

    .line 115
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->label:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->contentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/qs/tiles/ColorCellularTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Ljava/lang/Object;)V

    return-void
.end method
