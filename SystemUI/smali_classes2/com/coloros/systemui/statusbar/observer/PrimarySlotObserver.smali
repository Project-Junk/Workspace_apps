.class public Lcom/coloros/systemui/statusbar/observer/PrimarySlotObserver;
.super Lcom/coloros/systemui/common/observer/AbstractObserver;
.source "PrimarySlotObserver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/coloros/systemui/common/observer/AbstractObserver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getHandler()Landroid/os/Handler;
    .locals 0

    .line 40
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-object p0
.end method

.method protected getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "oppo_multi_sim_network_primary_slot"

    return-object p0
.end method

.method protected getUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/observer/PrimarySlotObserver;->mKey:Ljava/lang/String;

    invoke-static {p0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getGlobalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
