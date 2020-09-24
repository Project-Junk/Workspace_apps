.class public Lcom/coloros/systemui/qs/tiles/RingerModeTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "RingerModeTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final VIBRATOR_TIME:I = 0x32


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mClicked:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 48
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->mClicked:Z

    .line 158
    new-instance p1, Lcom/coloros/systemui/qs/tiles/RingerModeTile$1;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/qs/tiles/RingerModeTile$1;-><init>(Lcom/coloros/systemui/qs/tiles/RingerModeTile;)V

    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 49
    iget-object p1, p0, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/qs/tiles/RingerModeTile;)Landroid/media/AudioManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/qs/tiles/RingerModeTile;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->TAG:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getDefaultIcon()Lcom/android/systemui/plugins/qs/QSTile$Icon;
    .locals 0

    const p0, 0x7f0811dd

    .line 171
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 81
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.SOUND_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x10008000

    .line 82
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x77

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 64
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->mContext:Landroid/content/Context;

    const v0, 0x7f1107b6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 1

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->mClicked:Z

    .line 72
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->RESET_DO_ANIM:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->refreshState(Ljava/lang/Object;)V

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->setRingMode()V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 89
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 94
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 96
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " unregisterReceiver "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 6

    .line 129
    sget-object v0, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->RESET_DO_ANIM:Ljava/lang/Object;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 130
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->doAnim:Z

    return-void

    .line 134
    :cond_0
    iget-object p2, p0, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result p2

    .line 139
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f1107b6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 143
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq p2, v4, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v1

    :goto_0
    if-eq v0, v5, :cond_2

    if-eq p2, v4, :cond_2

    iget-boolean v0, p0, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->mClicked:Z

    if-eqz v0, :cond_2

    .line 145
    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->doAnim:Z

    .line 146
    iput-boolean v1, p0, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->mClicked:Z

    :cond_2
    const v0, 0x7f0811dc

    .line 148
    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->animIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    if-eq p2, v4, :cond_3

    move v1, v3

    .line 150
    :cond_3
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-ne v4, p2, :cond_4

    const p2, 0x7f0811dd

    goto :goto_1

    :cond_4
    const p2, 0x7f0811db

    .line 151
    :goto_1
    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 153
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 154
    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 155
    iget-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p0, :cond_5

    move v3, v4

    :cond_5
    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 54
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method

.method public setRingMode()V
    .locals 7

    .line 103
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    .line 104
    iget-object v1, p0, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRingMode_ringMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Statusbar"

    invoke-static {v3, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v4, "vibrate_when_silent"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 109
    iget-object v4, p0, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRingMode_vibrateWhenSilent:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->TAG:Ljava/lang/String;

    const-string v1, "setRingMode_from normal to silent mode, we should change to silent mode!"

    invoke-static {v3, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto :goto_1

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->TAG:Ljava/lang/String;

    const-string v2, "setRingMode_from normal to vibrate mode, we should change to vibrate mode!"

    invoke-static {v3, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto :goto_1

    .line 106
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/RingerModeTile;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    :goto_1
    return-void
.end method
