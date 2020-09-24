.class public Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;
.super Lcom/coloros/systemui/qs/tiles/RingerModeTile;
.source "RealmeRingerModeTile.java"


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

    .line 46
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/tiles/RingerModeTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;->mClicked:Z

    .line 123
    new-instance p1, Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile$1;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile$1;-><init>(Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;)V

    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 47
    iget-object p1, p0, Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;)Landroid/media/AudioManager;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private updateQSTileState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;)V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const v1, 0x7f0811dd

    const v0, 0x7f1107b3

    goto :goto_0

    :cond_1
    const v1, 0x7f080923

    const v0, 0x7f1107b4

    goto :goto_0

    :cond_2
    const v1, 0x7f0811db

    const v0, 0x7f1107b6

    .line 160
    :goto_0
    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 161
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public getDefaultIcon()Lcom/android/systemui/plugins/qs/QSTile$Icon;
    .locals 0

    const p0, 0x7f0811dd

    .line 136
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 76
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.SOUND_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x10008000

    .line 77
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

    .line 62
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;->mContext:Landroid/content/Context;

    const v0, 0x7f1107b6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 1

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;->mClicked:Z

    .line 68
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;->RESET_DO_ANIM:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;->refreshState(Ljava/lang/Object;)V

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;->setRingMode()V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 84
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 89
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 91
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;->TAG:Ljava/lang/String;

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
    .locals 4

    .line 110
    sget-object v0, Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;->RESET_DO_ANIM:Ljava/lang/Object;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 111
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->doAnim:Z

    return-void

    .line 114
    :cond_0
    iget-object p2, p0, Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result p2

    const/4 v0, 0x1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    move p2, v1

    .line 115
    :goto_0
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 116
    iget-object p2, p0, Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;->mContext:Landroid/content/Context;

    const v3, 0x7f1107b6

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 117
    const-class p2, Landroid/widget/Switch;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 118
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_2

    move v0, v2

    :cond_2
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 119
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->doAnim:Z

    .line 120
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;->updateQSTileState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;)V

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 52
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 38
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method

.method public setRingMode()V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    .line 98
    iget-object v1, p0, Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRingMode_ringMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Statusbar"

    invoke-static {v3, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 100
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 102
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    :goto_0
    return-void
.end method
