.class public Lcom/coloros/systemui/qs/tiles/AliPayTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "AliPayTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/qs/tiles/AliPayTile$QuickPayHanlder;
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
.field private static final ALIPAY_MIN_VERSION_CODE:I = 0x6e

.field private static final ALI_PACKAGE_NAME:Ljava/lang/String; = "com.eg.android.AlipayGphone"

.field private static final DELAY_TIME:I = 0xfa

.field private static final MSG_QUICK_PAY:I = 0x64

.field private static final TAG:Ljava/lang/String; = "AliPayTile"


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mHandler:Lcom/coloros/systemui/qs/tiles/AliPayTile$QuickPayHanlder;

.field private mIsBind:Z

.field private mService:Lcom/coloros/exsupport/alipay/IAliPayService;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 91
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    const/4 p1, 0x0

    .line 66
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/tiles/AliPayTile;->mIsBind:Z

    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/AliPayTile;->mService:Lcom/coloros/exsupport/alipay/IAliPayService;

    .line 70
    new-instance p1, Lcom/coloros/systemui/qs/tiles/AliPayTile$QuickPayHanlder;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/qs/tiles/AliPayTile$QuickPayHanlder;-><init>(Lcom/coloros/systemui/qs/tiles/AliPayTile;)V

    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/AliPayTile;->mHandler:Lcom/coloros/systemui/qs/tiles/AliPayTile$QuickPayHanlder;

    .line 72
    new-instance p1, Lcom/coloros/systemui/qs/tiles/AliPayTile$1;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/qs/tiles/AliPayTile$1;-><init>(Lcom/coloros/systemui/qs/tiles/AliPayTile;)V

    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/AliPayTile;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 92
    iput-object p2, p0, Lcom/coloros/systemui/qs/tiles/AliPayTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/qs/tiles/AliPayTile;)Lcom/coloros/exsupport/alipay/IAliPayService;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/AliPayTile;->mService:Lcom/coloros/exsupport/alipay/IAliPayService;

    return-object p0
.end method

.method static synthetic access$002(Lcom/coloros/systemui/qs/tiles/AliPayTile;Lcom/coloros/exsupport/alipay/IAliPayService;)Lcom/coloros/exsupport/alipay/IAliPayService;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/AliPayTile;->mService:Lcom/coloros/exsupport/alipay/IAliPayService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/coloros/systemui/qs/tiles/AliPayTile;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/coloros/systemui/qs/tiles/AliPayTile;->mIsBind:Z

    return p0
.end method

.method static synthetic access$102(Lcom/coloros/systemui/qs/tiles/AliPayTile;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/tiles/AliPayTile;->mIsBind:Z

    return p1
.end method

.method static synthetic access$200(Lcom/coloros/systemui/qs/tiles/AliPayTile;)Lcom/coloros/systemui/qs/tiles/AliPayTile$QuickPayHanlder;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/AliPayTile;->mHandler:Lcom/coloros/systemui/qs/tiles/AliPayTile$QuickPayHanlder;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/qs/tiles/AliPayTile;)Landroid/content/ServiceConnection;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/AliPayTile;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/qs/tiles/AliPayTile;)Landroid/content/Context;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/AliPayTile;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lcom/coloros/systemui/qs/tiles/AliPayTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private openAlipay()V
    .locals 5

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-string v1, "coloror.intent.action.EXSupport.ALI_PAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/coloros/systemui/qs/tiles/AliPayTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 138
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 139
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 143
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 144
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 145
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 147
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 148
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/AliPayTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v2, Lcom/coloros/systemui/qs/tiles/AliPayTile$2;

    invoke-direct {v2, p0, v1}, Lcom/coloros/systemui/qs/tiles/AliPayTile$2;-><init>(Lcom/coloros/systemui/qs/tiles/AliPayTile;Landroid/content/Intent;)V

    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    .line 157
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/AliPayTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p0}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getDefaultIcon()Lcom/android/systemui/plugins/qs/QSTile$Icon;
    .locals 0

    const p0, 0x7f08118d

    .line 204
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

    .line 107
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/AliPayTile;->mContext:Landroid/content/Context;

    const v0, 0x7f1107a2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/coloros/systemui/qs/tiles/AliPayTile;->openAlipay()V

    return-void
.end method

.method protected handleLongClick()V
    .locals 0

    .line 122
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/AliPayTile;->handleClick()V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 0

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2

    .line 194
    iget-object p2, p0, Lcom/coloros/systemui/qs/tiles/AliPayTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p2}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f1107a2

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    const/4 p2, 0x1

    .line 195
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const v1, 0x7f08118d

    .line 196
    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 197
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/AliPayTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 198
    const-class p0, Landroid/widget/Button;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 199
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/qs/tiles/AliPayTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 132
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/AliPayTile;->mContext:Landroid/content/Context;

    const-string v0, "com.eg.android.AlipayGphone"

    invoke-static {p0, v0}, Lcom/coloros/common/util/AppInfoUtil;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

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

    .line 97
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/AliPayTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
