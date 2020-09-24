.class public Lcom/coloros/systemui/qs/tiles/CalculatorTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "CalculatorTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final CALCULATOR_ACTION:Ljava/lang/String; = "coloros.intent.action.CALCULATOR"

.field private static final CALCULATOR_ACTIVITY:Ljava/lang/String; = "com.android.calculator2.CalculatorTile"

.field private static final CALCULATOR_PKG:Ljava/lang/String; = "com.android.calculator2"

.field private static final CALCULATOR_PKG_NEW:Ljava/lang/String; = "com.coloros.calculator"


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 60
    iput-object p3, p0, Lcom/coloros/systemui/qs/tiles/CalculatorTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 61
    iput-object p2, p0, Lcom/coloros/systemui/qs/tiles/CalculatorTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-void
.end method

.method public static isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x1

    .line 158
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 160
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private openCalculator()V
    .locals 5

    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "coloros.intent.action.CALCULATOR"

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcom/coloros/systemui/qs/tiles/CalculatorTile;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/coloros/systemui/qs/tiles/CalculatorTile;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/coloros/systemui/qs/tiles/CalculatorTile;->mContext:Landroid/content/Context;

    const-string v3, "com.android.calculator2"

    invoke-static {v2, v3}, Lcom/coloros/common/util/AppInfoUtil;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "com.coloros.calculator"

    :goto_0
    const-string v2, "com.android.calculator2.CalculatorTile"

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_1
    const-string v1, "source"

    const-string v2, "from_control_center"

    .line 116
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    iget-object v1, p0, Lcom/coloros/systemui/qs/tiles/CalculatorTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 118
    iget-object v1, p0, Lcom/coloros/systemui/qs/tiles/CalculatorTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v1

    const-string v3, "comeFrom"

    if-nez v1, :cond_2

    const/high16 v1, 0x34000000

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "mFromDesktop"

    .line 123
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const-string v1, "mFromScreen"

    .line 125
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x34808000

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 132
    iget-object v1, p0, Lcom/coloros/systemui/qs/tiles/CalculatorTile;->TAG:Ljava/lang/String;

    const-string v3, "Statusbar"

    const-string v4, "openCalculator  comeFrom  mFromScreen"

    invoke-static {v3, v1, v4}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/coloros/systemui/qs/tiles/CalculatorTile;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 134
    iget-object v2, p0, Lcom/coloros/systemui/qs/tiles/CalculatorTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/CalculatorTile;->getHost()Lcom/android/systemui/qs/QSHost;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    return-void

    :cond_3
    const-string v1, "start_mode"

    const-string v3, "start_mode_float_window"

    .line 139
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 140
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 143
    :goto_1
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/CalculatorTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, v0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public getDefaultIcon()Lcom/android/systemui/plugins/qs/QSTile$Icon;
    .locals 0

    const p0, 0x7f08119d

    .line 166
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

    .line 76
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/CalculatorTile;->mContext:Landroid/content/Context;

    const v0, 0x7f1107a5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/coloros/systemui/qs/tiles/CalculatorTile;->openCalculator()V

    return-void
.end method

.method protected handleLongClick()V
    .locals 0

    .line 91
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/CalculatorTile;->handleClick()V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 0

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2

    .line 148
    iget-object p2, p0, Lcom/coloros/systemui/qs/tiles/CalculatorTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p2}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f1107a5

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    const/4 p2, 0x1

    .line 149
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const v1, 0x7f08119d

    .line 150
    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 151
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/CalculatorTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 152
    const-class p0, Landroid/widget/Button;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 153
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/qs/tiles/CalculatorTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/CalculatorTile;->mContext:Landroid/content/Context;

    const-string v1, "com.android.calculator2"

    invoke-static {v0, v1}, Lcom/coloros/common/util/AppInfoUtil;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/CalculatorTile;->mContext:Landroid/content/Context;

    const-string v0, "com.coloros.calculator"

    invoke-static {p0, v0}, Lcom/coloros/common/util/AppInfoUtil;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 66
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/CalculatorTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
