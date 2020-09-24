.class public Lcom/android/systemui/qs/tiles/DataSaverTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "DataSaverTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;",
        "Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;"
    }
.end annotation


# instance fields
.field private final mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 44
    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getDataSaverController()Lcom/android/systemui/statusbar/policy/DataSaverController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    .line 45
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DataSaverTile;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Lcom/android/systemui/statusbar/policy/DataSaverController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private toggleDataSaver()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DataSaverController;->isDataSaverEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 83
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DataSaverController;->setDataSaverEnabled(Z)V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/DataSaverTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mContext:Landroid/content/Context;

    const v0, 0x7f1100b3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 114
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mContext:Landroid/content/Context;

    const v0, 0x7f1100b2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 59
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.DATA_SAVER_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x11c

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 89
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mContext:Landroid/content/Context;

    const v0, 0x7f1102c9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "QsDataSaverDialogShown"

    .line 64
    invoke-static {v0, v2, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 71
    sget v1, Lcom/coloros/common/util/ResourceUtil;->android_string_data_saver_enable_title:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setTitle(I)V

    .line 72
    sget v1, Lcom/coloros/common/util/ResourceUtil;->android_string_data_saver_description:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    .line 73
    sget v1, Lcom/coloros/common/util/ResourceUtil;->android_string_data_saver_enable_button:I

    new-instance v3, Lcom/android/systemui/qs/tiles/-$$Lambda$DataSaverTile$7vpE4nfIgph7ByTloh1_igU2EhI;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$DataSaverTile$7vpE4nfIgph7ByTloh1_igU2EhI;-><init>(Lcom/android/systemui/qs/tiles/DataSaverTile;)V

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 75
    sget v1, Lcom/coloros/common/util/ResourceUtil;->android_string_cancel:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, 0x1

    .line 76
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Z)V

    .line 77
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    .line 78
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mContext:Landroid/content/Context;

    invoke-static {p0, v2, v1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    .line 66
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DataSaverTile;->toggleDataSaver()V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 0

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 1

    .line 94
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    .line 95
    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/DataSaverController;->isDataSaverEnabled()Z

    move-result p2

    :goto_0
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 96
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    :goto_1
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 97
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mContext:Landroid/content/Context;

    const p2, 0x7f1102c9

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 98
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 99
    iget-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p0, :cond_2

    const p0, 0x7f0807c9

    goto :goto_2

    :cond_2
    const p0, 0x7f0807ca

    :goto_2
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 101
    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/DataSaverTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$handleClick$0$DataSaverTile(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DataSaverTile;->toggleDataSaver()V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 50
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DataSaverTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method

.method public onDataSaverChanged(Z)V
    .locals 0

    .line 120
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/DataSaverTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method
