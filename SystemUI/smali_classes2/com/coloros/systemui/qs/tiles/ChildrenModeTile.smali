.class public Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "ChildrenModeTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/qs/tiles/ChildrenModeTile$Callback;
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
.field private static final CHILDREN_MOD_ACTION:Ljava/lang/String; = "oppo.intent.action.SWITCH_CHILDREN_MODE"


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mCallback:Lcom/coloros/systemui/qs/tiles/ChildrenModeTile$Callback;

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 42
    new-instance p1, Lcom/coloros/systemui/qs/tiles/ChildrenModeTile$Callback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/coloros/systemui/qs/tiles/ChildrenModeTile$Callback;-><init>(Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;Lcom/coloros/systemui/qs/tiles/ChildrenModeTile$1;)V

    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;->mCallback:Lcom/coloros/systemui/qs/tiles/ChildrenModeTile$Callback;

    .line 48
    iput-object p3, p0, Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 49
    iput-object p2, p0, Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 50
    iget-object p1, p0, Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private enterChildrenMode()V
    .locals 2

    .line 107
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "oppo.intent.action.SWITCH_CHILDREN_MODE"

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 110
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public getDefaultIcon()Lcom/android/systemui/plugins/qs/QSTile$Icon;
    .locals 0

    const p0, 0x7f0811a7

    .line 135
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x77

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 65
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;->mContext:Landroid/content/Context;

    const v0, 0x7f1107a8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;->enterChildrenMode()V

    :cond_0
    return-void
.end method

.method protected handleLongClick()V
    .locals 0

    .line 89
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;->handleClick()V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;->TAG:Ljava/lang/String;

    const-string v1, "Statusbar"

    const-string v2, "Keyguard is secure false!"

    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;->mHost:Lcom/android/systemui/qs/QSHost;

    const-string v1, "childrenmode"

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSHost;->removeTile(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 100
    iget-object p1, p0, Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;->mCallback:Lcom/coloros/systemui/qs/tiles/ChildrenModeTile$Callback;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->addCallback(Ljava/lang/Object;)V

    goto :goto_0

    .line 102
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;->mCallback:Lcom/coloros/systemui/qs/tiles/ChildrenModeTile$Callback;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->removeCallback(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2

    .line 115
    iget-object p2, p0, Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p2}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f1107a8

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 116
    iget-object p2, p0, Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 117
    iget-object p2, p0, Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 118
    const-class p2, Landroid/widget/Button;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 119
    iget-object p2, p0, Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Statusbar"

    invoke-static {v0, p2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    iput p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 121
    iget p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    if-nez p0, :cond_0

    const p0, 0x7f0811a8

    goto :goto_0

    :cond_0
    const p0, 0x7f0811a7

    :goto_0
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 70
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 71
    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isChildrenModeSupport()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 72
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoBusinessCustomSupport()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 55
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 38
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
