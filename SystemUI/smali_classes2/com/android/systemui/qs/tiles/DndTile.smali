.class public Lcom/android/systemui/qs/tiles/DndTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "DndTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTION_AGREE_DND:Ljava/lang/String; = "action_agree_dnd"

.field private static final ACTION_SET_VISIBLE:Ljava/lang/String; = "com.android.systemui.dndtile.SET_VISIBLE"

.field private static final ACTION_START_ALERT_ACTIVITY:Ljava/lang/String; = "android.settings.DND_SECURITY"

.field private static final EXTRA_VISIBLE:Ljava/lang/String; = "visible"

.field public static final KEY_DONOT_SHOW_ANYMORE:Ljava/lang/String; = "key_donot_show_anymore"

.field public static final PREFERENCE_DND_FIRST_NOTICE:Ljava/lang/String; = "preference_dnd_first_notice"

.field private static final ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;

.field private static final ZEN_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field protected final mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

.field private mListening:Z

.field private final mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field private mShowingDetail:Z

.field private final mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

.field private final mZenModePanelCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ZEN_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/DndTile;->ZEN_SETTINGS:Landroid/content/Intent;

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ZEN_MODE_PRIORITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/DndTile;->ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 99
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 332
    new-instance p1, Lcom/android/systemui/qs/tiles/DndTile$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/DndTile$2;-><init>(Lcom/android/systemui/qs/tiles/DndTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 344
    new-instance p1, Lcom/android/systemui/qs/tiles/DndTile$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/DndTile$3;-><init>(Lcom/android/systemui/qs/tiles/DndTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 361
    new-instance p1, Lcom/android/systemui/qs/tiles/DndTile$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/DndTile$4;-><init>(Lcom/android/systemui/qs/tiles/DndTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 482
    new-instance p1, Lcom/android/systemui/qs/tiles/DndTile$5;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/DndTile$5;-><init>(Lcom/android/systemui/qs/tiles/DndTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mZenModePanelCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    .line 100
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 101
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/DndTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 102
    new-instance p1, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/DndTile;Lcom/android/systemui/qs/tiles/DndTile$1;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    .line 103
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/DndTile;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "com.android.systemui.dndtile.SET_VISIBLE"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 104
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mReceiverRegistered:Z

    .line 105
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DndTile;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {p1, p2, p0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/DndTile;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method static synthetic access$1100()Landroid/content/Intent;
    .locals 1

    .line 69
    sget-object v0, Lcom/android/systemui/qs/tiles/DndTile;->ZEN_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/DndTile;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/DndTile;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/volume/ZenModePanel$Callback;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mZenModePanelCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/DndTile;Ljava/lang/Object;)V
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/DndTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/tiles/DndTile;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/android/systemui/qs/tiles/DndTile;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mShowingDetail:Z

    return p1
.end method

.method static synthetic access$2200()Landroid/content/Intent;
    .locals 1

    .line 69
    sget-object v0, Lcom/android/systemui/qs/tiles/DndTile;->ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/DndTile;)Z
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DndTile;->isShowingDetail()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/DndTile;)Z
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DndTile;->isShowingDetail()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/DndTile;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static isCombinedIcon(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "DndTileCombinedIcon"

    const/4 v1, 0x0

    .line 130
    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isVisible(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "DndTileVisible"

    const/4 v1, 0x0

    .line 122
    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$null$0(Landroid/app/Dialog;)V
    .locals 0

    .line 208
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static setCombinedIcon(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "DndTileCombinedIcon"

    .line 126
    invoke-static {p0, v0, p1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setVisible(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "DndTileVisible"

    .line 118
    invoke-static {p0, v0, p1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 310
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    const v0, 0x7f1100b8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 312
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    const v0, 0x7f1100b7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 0

    .line 146
    sget-object p0, Lcom/android/systemui/qs/tiles/DndTile;->ZEN_SETTINGS:Landroid/content/Intent;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x76

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 252
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    const v0, 0x7f1106db

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    const-string v2, "preference_dnd_first_notice"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "key_donot_show_anymore"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 158
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/DndTile;->showDetail(Z)V

    goto :goto_0

    .line 169
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.DND_SECURITY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    .line 170
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 171
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method protected handleDestroy()V
    .locals 2

    .line 110
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 111
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mReceiverRegistered:Z

    :cond_0
    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->isVolumeRestricted()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    .line 229
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    sget v2, Lcom/coloros/common/util/ResourceUtil;->android_string_error_message_change_not_allowed:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 231
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    new-instance v2, Lcom/android/systemui/qs/tiles/DndTile$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/DndTile$1;-><init>(Lcom/android/systemui/qs/tiles/DndTile;)V

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Ljava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/DndTile;->showDetail(Z)V

    :goto_0
    return-void
.end method

.method public handleSetListening(Z)V
    .locals 1

    .line 318
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 319
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mListening:Z

    .line 320
    iget-boolean p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mListening:Z

    if-eqz p1, :cond_1

    .line 321
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-static {p1, p0}, Lcom/android/systemui/Prefs;->registerListener(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0

    .line 323
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-static {p1, p0}, Lcom/android/systemui/Prefs;->unregisterListener(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :goto_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 7

    .line 257
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-nez v0, :cond_0

    return-void

    .line 258
    :cond_0
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result p2

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v0

    .line 260
    :goto_1
    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eq v3, v2, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v0

    .line 261
    :goto_2
    iget-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    if-nez v4, :cond_4

    new-instance v4, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-direct {v4}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 262
    :cond_4
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->dualTarget:Z

    .line 263
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 264
    iget-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const/4 v4, 0x2

    if-eqz v2, :cond_5

    move v2, v4

    goto :goto_3

    :cond_5
    move v2, v1

    :goto_3
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 265
    iget-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/2addr v5, v1

    iput-boolean v5, v2, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 266
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DndTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 267
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_6

    move v5, v1

    goto :goto_4

    :cond_6
    move v5, v0

    :goto_4
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 268
    invoke-interface {v6}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v6

    .line 267
    invoke-static {v2, v5, v6, v0}, Landroid/service/notification/ZenModeConfig;->getDescription(Landroid/content/Context;ZLandroid/service/notification/ZenModeConfig;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->secondaryLabel:Ljava/lang/CharSequence;

    const v2, 0x7f0808d0

    .line 269
    invoke-static {v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const-string v2, "no_adjust_volume"

    .line 270
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/qs/tiles/DndTile;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    const v2, 0x7f1100b5

    const-string v5, ", "

    if-eq p2, v1, :cond_9

    if-eq p2, v4, :cond_8

    const/4 v4, 0x3

    if-eq p2, v4, :cond_7

    .line 290
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_5

    .line 284
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    .line 285
    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    const v4, 0x7f1100b6

    .line 286
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_5

    .line 278
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    .line 279
    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    const v4, 0x7f1100b9

    .line 280
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_5

    .line 273
    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    .line 274
    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    :goto_5
    if-eqz v3, :cond_a

    .line 295
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tiles/DndTile;->fireToggleStateChanged(Z)V

    .line 297
    :cond_a
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f1100cc

    new-array v1, v1, [Ljava/lang/Object;

    .line 298
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DndTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v1, v0

    .line 297
    invoke-virtual {p2, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->dualLabelContentDescription:Ljava/lang/CharSequence;

    .line 299
    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 69
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/DndTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    .line 329
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/DndTile;->isVisible(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$showDetail$1$DndTile()V
    .locals 3

    .line 202
    new-instance v0, Lcom/android/settingslib/notification/EnableZenModeDialog;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settingslib/notification/EnableZenModeDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    const/4 v1, 0x1

    .line 205
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;Z)V

    .line 206
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->registerDismissListener(Landroid/app/Dialog;)V

    .line 207
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setWindowOnTop(Landroid/app/Dialog;)V

    .line 208
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/qs/tiles/-$$Lambda$DndTile$-F35uRgW3X6J8rJzJGxBtGGONqw;

    invoke-direct {v2, v0}, Lcom/android/systemui/qs/tiles/-$$Lambda$DndTile$-F35uRgW3X6J8rJzJGxBtGGONqw;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 209
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p0}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 141
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DndTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method

.method public showDetail(Z)V
    .locals 5

    .line 182
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "zen_duration"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 184
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_zen_upgrade_notification"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    .line 186
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "zen_settings_updated"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 190
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 193
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->TAG:Ljava/lang/String;

    invoke-interface {p1, v3, v4, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 195
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.settings.ZEN_MODE_ONBOARDING"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    .line 196
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 197
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_2

    .line 216
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    .line 217
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 216
    invoke-static {v0, p1, v1, v3}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;

    move-result-object p1

    iget-object p1, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    .line 218
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->TAG:Ljava/lang/String;

    invoke-interface {v0, v3, p1, p0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1

    .line 213
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->TAG:Ljava/lang/String;

    invoke-interface {p1, v3, v4, p0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1

    .line 201
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/qs/tiles/-$$Lambda$DndTile$fMf3Tdb9veQ9DG26bABcK78yOSM;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$DndTile$fMf3Tdb9veQ9DG26bABcK78yOSM;-><init>(Lcom/android/systemui/qs/tiles/DndTile;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method
