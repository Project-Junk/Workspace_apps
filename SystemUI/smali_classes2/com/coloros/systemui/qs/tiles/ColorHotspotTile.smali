.class public Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;
.super Lcom/android/systemui/qs/tiles/HotspotTile;
.source "ColorHotspotTile.java"


# static fields
.field private static final EXCLUSIVE_DATA_ACTIVED:Ljava/lang/String; = "exclusive_data_actived"

.field private static final OPPO_WIFI_AP_SETTINGS_ACTION:Ljava/lang/String; = "android.settings.OPPO_WIFI_AP_SETTINGS"


# instance fields
.field private final mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

.field private mExclusiveData:Z

.field private final mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/DataSaverController;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/tiles/HotspotTile;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/DataSaverController;)V

    .line 40
    new-instance p1, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile$1;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile$1;-><init>(Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 54
    iget-object p1, p0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "exclusive_data_actived"

    const/4 p3, 0x0

    const/4 v0, -0x2

    invoke-static {p1, p2, p3, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;->mExclusiveData:Z

    .line 56
    iget-object p1, p0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 57
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v1, -0x1

    .line 56
    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 59
    new-instance p1, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile$2;

    iget-object p2, p0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const-string v0, "airplane_mode_on"

    invoke-direct {p1, p0, p2, p3, v0}, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile$2;-><init>(Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;->mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

    return-void
.end method

.method static synthetic access$002(Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;->mExclusiveData:Z

    return p1
.end method

.method static synthetic access$100(Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getDefaultIcon()Lcom/android/systemui/plugins/qs/QSTile$Icon;
    .locals 0

    const p0, 0x7f0811d2

    .line 144
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 86
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.OPPO_WIFI_AP_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x30008000

    .line 87
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method protected handleClick()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_0

    .line 76
    iget-object v1, p0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DataSaverController;->isDataSaverEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;->mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;->mExclusiveData:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    .line 80
    :cond_2
    sget-object v1, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;->refreshState(Ljava/lang/Object;)V

    .line 81
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/policy/HotspotController;->setHotspotEnabled(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected handleDestroy()V
    .locals 1

    .line 150
    invoke-super {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->handleDestroy()V

    .line 151
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->handleSetListening(Z)V

    .line 70
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;->mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 7

    .line 95
    sget-object v0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 96
    :goto_0
    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    if-nez v3, :cond_1

    .line 97
    new-instance v3, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-direct {v3}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    :cond_1
    if-nez v0, :cond_3

    .line 101
    iget-object v3, p0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotTransient()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v1

    :goto_2
    const-string v4, "no_config_tethering"

    .line 104
    invoke-virtual {p0, p1, v4}, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    .line 106
    instance-of v4, p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    if-eqz v4, :cond_6

    .line 107
    check-cast p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    if-nez v0, :cond_5

    .line 108
    iget-boolean v0, p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->isHotspotEnabled:Z

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    :goto_3
    move v0, v1

    :goto_4
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 109
    iget v0, p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->numConnectedDevices:I

    .line 110
    iget-boolean p2, p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->isDataSaverEnabled:Z

    goto :goto_7

    :cond_6
    if-nez v0, :cond_8

    .line 112
    iget-object p2, p0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotEnabled()Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_5

    :cond_7
    move p2, v2

    goto :goto_6

    :cond_8
    :goto_5
    move p2, v1

    :goto_6
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 113
    iget-object p2, p0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/HotspotController;->getNumConnectedDevices()I

    move-result v0

    .line 114
    iget-object p2, p0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/DataSaverController;->isDataSaverEnabled()Z

    move-result p2

    .line 117
    :goto_7
    iget-object v4, p0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;->mContext:Landroid/content/Context;

    const v5, 0x7f1106e5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 118
    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->isTransient:Z

    .line 119
    iget-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v5, :cond_9

    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->isTransient:Z

    if-nez v5, :cond_9

    move v5, v1

    goto :goto_8

    :cond_9
    move v5, v2

    :goto_8
    iput-boolean v5, v4, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 120
    const-class v4, Landroid/widget/Switch;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 121
    iget-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    if-nez p2, :cond_b

    .line 123
    iget-object v4, p0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;->mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v4}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v4

    if-nez v4, :cond_b

    iget-boolean v4, p0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;->mExclusiveData:Z

    if-eqz v4, :cond_a

    goto :goto_9

    :cond_a
    move v4, v2

    goto :goto_a

    :cond_b
    :goto_9
    move v4, v1

    .line 124
    :goto_a
    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v5, :cond_d

    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->isTransient:Z

    if-eqz v5, :cond_c

    goto :goto_b

    :cond_c
    move v5, v2

    goto :goto_c

    :cond_d
    :goto_b
    move v5, v1

    .line 125
    :goto_c
    iget-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->isTransient:Z

    if-eqz v6, :cond_e

    const v6, 0x7f0811d1

    .line 126
    invoke-static {v6}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_e

    :cond_e
    if-eqz v4, :cond_f

    const v6, 0x7f0811d3

    goto :goto_d

    .line 128
    :cond_f
    iget-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v6, :cond_10

    const v6, 0x7f0811d0

    goto :goto_d

    :cond_10
    const v6, 0x7f0811d2

    :goto_d
    invoke-static {v6}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_e
    if-eqz v4, :cond_11

    .line 133
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    goto :goto_f

    :cond_11
    if-eqz v5, :cond_12

    const/4 v1, 0x2

    .line 135
    :cond_12
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 138
    :goto_f
    invoke-virtual {p0, v5, v3, p2, v0}, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;->getSecondaryLabel(ZZZI)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->secondaryLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method
