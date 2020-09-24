.class public Lcom/coloros/systemui/statusbar/observer/BatteryEstimatesLastUpdateTimeObserver;
.super Lcom/coloros/systemui/common/observer/AbstractObserver;
.source "BatteryEstimatesLastUpdateTimeObserver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/coloros/systemui/common/observer/AbstractObserver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "battery_estimates_last_update_time"

    return-object p0
.end method

.method protected getUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/observer/BatteryEstimatesLastUpdateTimeObserver;->mKey:Ljava/lang/String;

    invoke-static {p0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getGlobalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
