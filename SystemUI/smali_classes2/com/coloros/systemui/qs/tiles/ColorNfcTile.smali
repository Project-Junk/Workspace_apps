.class public Lcom/coloros/systemui/qs/tiles/ColorNfcTile;
.super Lcom/android/systemui/qs/tiles/NfcTile;
.source "ColorNfcTile.java"


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/NfcTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-void
.end method


# virtual methods
.method public getDefaultIcon()Lcom/android/systemui/plugins/qs/QSTile$Icon;
    .locals 0

    const p0, 0x7f0811e2

    .line 92
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/ColorNfcTile;->getAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    const-string v1, "Statusbar"

    if-nez v0, :cond_0

    .line 53
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorNfcTile;->TAG:Ljava/lang/String;

    const-string v0, "NFC adapter is null"

    invoke-static {v1, p0, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/ColorNfcTile;->getAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    sget-object v0, Lcom/coloros/systemui/qs/tiles/ColorNfcTile;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/tiles/ColorNfcTile;->refreshState(Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/ColorNfcTile;->getAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 59
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorNfcTile;->TAG:Ljava/lang/String;

    const-string v0, "set NFC enabled"

    invoke-static {v1, p0, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_1
    sget-object v0, Lcom/coloros/systemui/qs/tiles/ColorNfcTile;->END_TRANSIENT:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/tiles/ColorNfcTile;->refreshState(Ljava/lang/Object;)V

    .line 62
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/ColorNfcTile;->getAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 63
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorNfcTile;->TAG:Ljava/lang/String;

    const-string v0, "set NFC disabled"

    invoke-static {v1, p0, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public handleSetListening(Z)V
    .locals 6

    if-eqz p1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ColorNfcTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/systemui/qs/tiles/ColorNfcTile;->mNfcReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string p0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v3, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/qs/tiles/ColorNfcTile;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorNfcTile;->mNfcReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 4

    .line 69
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/ColorNfcTile;->getAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/ColorNfcTile;->getAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 70
    :goto_0
    sget-object v3, Lcom/coloros/systemui/qs/tiles/ColorNfcTile;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    if-ne p2, v3, :cond_1

    .line 71
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->isTransient:Z

    .line 73
    :cond_1
    sget-object v3, Lcom/coloros/systemui/qs/tiles/ColorNfcTile;->END_TRANSIENT:Ljava/lang/Object;

    if-ne p2, v3, :cond_2

    .line 74
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->isTransient:Z

    .line 76
    :cond_2
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eq p2, v0, :cond_3

    .line 77
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->isTransient:Z

    .line 79
    :cond_3
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 80
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/ColorNfcTile;->getAdapter()Landroid/nfc/NfcAdapter;

    move-result-object p2

    if-nez p2, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez p2, :cond_5

    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->isTransient:Z

    if-eqz p2, :cond_6

    :cond_5
    const/4 v1, 0x2

    :cond_6
    :goto_1
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 83
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->isTransient:Z

    if-eqz p2, :cond_7

    const p2, 0x7f0811e1

    goto :goto_2

    :cond_7
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_8

    const p2, 0x7f0811e0

    goto :goto_2

    :cond_8
    const p2, 0x7f0811e2

    :goto_2
    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 85
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorNfcTile;->mContext:Landroid/content/Context;

    const p2, 0x7f1106ee

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 86
    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 87
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/qs/tiles/ColorNfcTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method
