.class public Lcom/android/systemui/qs/tiles/CastTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "CastTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;,
        Lcom/android/systemui/qs/tiles/CastTile$Callback;
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
.field private static final CAST_SETTINGS:Landroid/content/Intent;

.field private static final WFD_ENABLE:Ljava/lang/String; = "persist.debug.wfd.enable"


# instance fields
.field protected final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mCallback:Lcom/android/systemui/qs/tiles/CastTile$Callback;

.field protected final mController:Lcom/android/systemui/statusbar/policy/CastController;

.field protected final mDetailAdapter:Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

.field private mDialog:Landroid/app/Dialog;

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private final mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

.field protected mWifiConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.CAST_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/CastTile;->CAST_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 77
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 68
    new-instance p1, Lcom/android/systemui/qs/tiles/CastTile$Callback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/tiles/CastTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/CastTile;Lcom/android/systemui/qs/tiles/CastTile$1;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mCallback:Lcom/android/systemui/qs/tiles/CastTile$Callback;

    .line 251
    new-instance p1, Lcom/android/systemui/qs/tiles/CastTile$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/CastTile$1;-><init>(Lcom/android/systemui/qs/tiles/CastTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .line 78
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    .line 79
    new-instance p1, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/CastTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

    .line 80
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/CastTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 81
    iput-object p4, p0, Lcom/android/systemui/qs/tiles/CastTile;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 82
    iput-object p5, p0, Lcom/android/systemui/qs/tiles/CastTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 83
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/CastTile;->mCallback:Lcom/android/systemui/qs/tiles/CastTile$Callback;

    invoke-interface {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/CastController;->observe(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/CastTile;->mCallback:Lcom/android/systemui/qs/tiles/CastTile$Callback;

    invoke-interface {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->observe(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/CastTile;->mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-interface {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->observe(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/CastTile;)Landroid/content/Context;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/CastTile;)Landroid/content/Context;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/CastTile;)Landroid/content/Context;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/CastTile;)Landroid/content/Context;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/CastTile;)Landroid/content/Context;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200()Landroid/content/Intent;
    .locals 1

    .line 60
    sget-object v0, Lcom/android/systemui/qs/tiles/CastTile;->CAST_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 60
    sget-boolean v0, Lcom/android/systemui/qs/tiles/CastTile;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/CastTile;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 60
    sget-boolean v0, Lcom/android/systemui/qs/tiles/CastTile;->DEBUG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/CastTile;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 60
    sget-boolean v0, Lcom/android/systemui/qs/tiles/CastTile;->DEBUG:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/CastTile;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private getActiveDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/policy/CastController$CastDevice;",
            ">;"
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/CastController;->getCastDevices()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 156
    iget v2, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iget v2, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 158
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_0

    .line 241
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    const v0, 0x7f110050

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

    return-object p0
.end method

.method protected getDeviceName(Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    const p1, 0x7f1106bc

    .line 248
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 116
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.CAST_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x72

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 185
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    const v0, 0x7f1106be

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 3

    .line 135
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CastTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CastTile;->getActiveDevices()Ljava/util/List;

    move-result-object v0

    .line 144
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->tag:Ljava/lang/Object;

    instance-of v2, v2, Landroid/media/MediaRouter$RouteInfo;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 149
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/policy/CastController;->stopCasting(Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)V

    goto :goto_1

    .line 145
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/tiles/-$$Lambda$CastTile$0TU5SvbFGUs5F0udF1tvlhHVObs;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$CastTile$0TU5SvbFGUs5F0udF1tvlhHVObs;-><init>(Lcom/android/systemui/qs/tiles/CastTile;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 0

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CastTile;->handleClick()V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 3

    .line 102
    sget-boolean v0, Lcom/android/systemui/qs/tiles/CastTile;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetListening "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    .line 104
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/CastController;->setDiscovering(Z)V

    :cond_1
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 9

    .line 190
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    const v0, 0x7f1106be

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 191
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    const/4 p2, 0x0

    .line 192
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 193
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/CastController;->getCastDevices()Ljava/util/List;

    move-result-object v0

    .line 197
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, p2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, ","

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 198
    iget v7, v3, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    if-ne v7, v5, :cond_1

    .line 199
    iput-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 200
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tiles/CastTile;->getDeviceName(Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->secondaryLabel:Ljava/lang/CharSequence;

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    const v3, 0x7f11004e

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v8, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    aput-object v8, v7, p2

    .line 202
    invoke-virtual {v2, v3, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    move v2, p2

    goto :goto_1

    .line 205
    :cond_1
    iget v3, v3, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    if-ne v3, v6, :cond_0

    move v2, v6

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 209
    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v1, :cond_3

    .line 210
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    const v2, 0x7f1106ca

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->secondaryLabel:Ljava/lang/CharSequence;

    .line 212
    :cond_3
    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_4

    const v1, 0x7f0807c2

    goto :goto_2

    :cond_4
    const v1, 0x7f0807c1

    :goto_2
    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 214
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mWifiConnected:Z

    if-nez v1, :cond_6

    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_5

    goto :goto_3

    .line 223
    :cond_5
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 224
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    const v2, 0x7f1106bd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 225
    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->secondaryLabel:Ljava/lang/CharSequence;

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    const v4, 0x7f1100ca

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v1, v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_5

    .line 215
    :cond_6
    :goto_3
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_7

    goto :goto_4

    :cond_7
    move v5, v6

    :goto_4
    iput v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 216
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez p2, :cond_8

    const-string p2, ""

    .line 217
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->secondaryLabel:Ljava/lang/CharSequence;

    .line 219
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    const v2, 0x7f1100cb

    .line 220
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 221
    const-class p2, Landroid/widget/Button;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 229
    :goto_5
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->updateItems(Ljava/util/List;)V

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/CastTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUserSwitch(I)V
    .locals 0

    .line 110
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleUserSwitch(I)V

    .line 111
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/CastController;->setCurrentUserId(I)V

    return-void
.end method

.method public synthetic lambda$handleClick$0$CastTile()V
    .locals 1

    const/4 v0, 0x1

    .line 146
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/CastTile;->showDetail(Z)V

    return-void
.end method

.method public synthetic lambda$null$1$CastTile(Landroid/view/View;)V
    .locals 1

    .line 170
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 171
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 172
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CastTile;->getLongClickIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method

.method public synthetic lambda$null$2$CastTile()V
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public synthetic lambda$showDetail$3$CastTile()V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/systemui/qs/tiles/-$$Lambda$CastTile$NIrermIGTkhxz1ZoOEwsSwuMAdk;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$CastTile$NIrermIGTkhxz1ZoOEwsSwuMAdk;-><init>(Lcom/android/systemui/qs/tiles/CastTile;)V

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Lcom/android/internal/app/MediaRouteDialogPresenter;->createDialog(Landroid/content/Context;ILandroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDialog:Landroid/app/Dialog;

    .line 174
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;Z)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDialog:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->registerDismissListener(Landroid/app/Dialog;)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDialog:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setWindowOnTop(Landroid/app/Dialog;)V

    .line 178
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qs/tiles/-$$Lambda$CastTile$goce4u8PX1ChlTpnCgP6oOQagsc;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$CastTile$goce4u8PX1ChlTpnCgP6oOQagsc;-><init>(Lcom/android/systemui/qs/tiles/CastTile;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 179
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p0}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    .line 95
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->handlesLongClick:Z

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CastTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method

.method public showDetail(Z)V
    .locals 1

    .line 167
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/qs/tiles/-$$Lambda$CastTile$WPXsuhhRJ1um-wt53q0kaFd3rzI;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$CastTile$WPXsuhhRJ1um-wt53q0kaFd3rzI;-><init>(Lcom/android/systemui/qs/tiles/CastTile;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
