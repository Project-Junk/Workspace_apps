.class public Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController;
.super Ljava/lang/Object;
.source "ClockChangeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController$ClockPreviewChangeCallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClockChangeController"


# instance fields
.field private mAodClockModeObserver:Landroid/database/ContentObserver;

.field private mChangeCallBack:Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController$ClockPreviewChangeCallBack;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController$1;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController;->mAodClockModeObserver:Landroid/database/ContentObserver;

    .line 32
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController;->mContext:Landroid/content/Context;

    .line 33
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController;->mAodClockModeObserver:Landroid/database/ContentObserver;

    const-string v0, "Setting_AodPreviewClockMode"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, p0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerAsSecure(Landroid/content/Context;Ljava/lang/String;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController;)Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController$ClockPreviewChangeCallBack;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController;->mChangeCallBack:Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController$ClockPreviewChangeCallBack;

    return-object p0
.end method


# virtual methods
.method public addClockPreviewChangeCallBack(Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController$ClockPreviewChangeCallBack;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController;->mChangeCallBack:Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController$ClockPreviewChangeCallBack;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController;->mAodClockModeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 38
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->unregister(Landroid/content/Context;Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method
