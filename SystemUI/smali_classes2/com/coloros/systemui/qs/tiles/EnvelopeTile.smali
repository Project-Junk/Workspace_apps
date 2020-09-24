.class public Lcom/coloros/systemui/qs/tiles/EnvelopeTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "EnvelopeTile.java"

# interfaces
.implements Lcom/coloros/systemui/notification/helper/EnvelopeHelper$EnvelopeStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;",
        "Lcom/coloros/systemui/notification/helper/EnvelopeHelper$EnvelopeStateChangeCallback;"
    }
.end annotation


# static fields
.field private static final ACTION_ENVELOPE:Ljava/lang/String; = "oppo.intent.action.ENVELOP_SETTINGS"


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mEnvelopeManager:Lcom/coloros/systemui/notification/helper/EnvelopeHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 48
    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/EnvelopeTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 49
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p1

    const-class v0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/EnvelopeTile;->mEnvelopeManager:Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    return-void
.end method


# virtual methods
.method public IsEnvelopeInit()Z
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/EnvelopeTile;->mEnvelopeManager:Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    if-nez v0, :cond_0

    .line 132
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    iput-object v0, p0, Lcom/coloros/systemui/qs/tiles/EnvelopeTile;->mEnvelopeManager:Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    .line 134
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/EnvelopeTile;->mEnvelopeManager:Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getDefaultIcon()Lcom/android/systemui/plugins/qs/QSTile$Icon;
    .locals 0

    const p0, 0x7f0811e5

    .line 139
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 100
    new-instance p0, Landroid/content/Intent;

    const-string v0, "oppo.intent.action.ENVELOP_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x77

    return p0
.end method

.method public getTileDefaultIcon()Lcom/android/systemui/plugins/qs/QSTile$Icon;
    .locals 0

    const p0, 0x7f0811e5

    .line 122
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    return-object p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 118
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/EnvelopeTile;->mContext:Landroid/content/Context;

    const v0, 0x7f110327

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 2

    .line 64
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/EnvelopeTile;->IsEnvelopeInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/EnvelopeTile;->TAG:Ljava/lang/String;

    const-string v0, "Common"

    const-string v1, "EnvelopeManager is null"

    invoke-static {v0, p0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/EnvelopeTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 v0, v0, 0x1

    .line 71
    iget-object v1, p0, Lcom/coloros/systemui/qs/tiles/EnvelopeTile;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->setEnvelopeAssistantEnable(Landroid/content/Context;I)V

    .line 72
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/EnvelopeTile;->refreshState()V

    .line 73
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/EnvelopeTile;->mContext:Landroid/content/Context;

    const-string v1, "envelope_tile_option"

    invoke-static {p0, v1, v0}, Lcom/coloros/systemui/notification/envelope/EnvelopeStatisticUtil;->collectEnvelopeStatusChanged(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method protected handleLongClick()V
    .locals 0

    .line 59
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleLongClick()V

    return-void
.end method

.method protected handleSetListening(Z)V
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/EnvelopeTile;->IsEnvelopeInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/EnvelopeTile;->TAG:Ljava/lang/String;

    const-string p1, "Common"

    const-string v0, "EnvelopeManager is null"

    invoke-static {p1, p0, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 110
    iget-object p1, p0, Lcom/coloros/systemui/qs/tiles/EnvelopeTile;->mEnvelopeManager:Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->addListener(Lcom/coloros/systemui/notification/helper/EnvelopeHelper$EnvelopeStateChangeCallback;)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/qs/tiles/EnvelopeTile;->mEnvelopeManager:Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->removeListener(Lcom/coloros/systemui/notification/helper/EnvelopeHelper$EnvelopeStateChangeCallback;)V

    :goto_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 3

    .line 78
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/EnvelopeTile;->IsEnvelopeInit()Z

    move-result p2

    if-nez p2, :cond_0

    .line 79
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/EnvelopeTile;->TAG:Ljava/lang/String;

    const-string p1, "Common"

    const-string p2, "EnvelopeManager is null"

    invoke-static {p1, p0, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 82
    :cond_0
    iget-object p2, p0, Lcom/coloros/systemui/qs/tiles/EnvelopeTile;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->getEnvelopeAssistantEnable(Landroid/content/Context;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 83
    :goto_0
    iget-object v1, p0, Lcom/coloros/systemui/qs/tiles/EnvelopeTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1105de

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 84
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_2

    const p2, 0x7f0811e4

    .line 86
    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    goto :goto_1

    :cond_2
    const p2, 0x7f0811e5

    .line 87
    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    :goto_1
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 88
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/EnvelopeTile;->mContext:Landroid/content/Context;

    const p2, 0x7f110327

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 89
    const-class p0, Landroid/widget/Button;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 90
    iget-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p0, :cond_3

    const/4 v0, 0x2

    :cond_3
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/qs/tiles/EnvelopeTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    .line 43
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
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

    .line 36
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/EnvelopeTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method

.method public onEnvelopeStateChanged(I)V
    .locals 0

    .line 127
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/EnvelopeTile;->refreshState()V

    return-void
.end method
