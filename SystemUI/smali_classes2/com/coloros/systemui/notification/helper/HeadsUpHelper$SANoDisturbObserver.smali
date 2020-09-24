.class Lcom/coloros/systemui/notification/helper/HeadsUpHelper$SANoDisturbObserver;
.super Landroid/database/ContentObserver;
.source "HeadsUpHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/helper/HeadsUpHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SANoDisturbObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/helper/HeadsUpHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/helper/HeadsUpHelper;Landroid/os/Handler;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper$SANoDisturbObserver;->this$0:Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    .line 462
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public observer()V
    .locals 3

    .line 466
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper$SANoDisturbObserver;->this$0:Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    iget-object v0, v0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "edge_panel_block_banner"

    .line 468
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 467
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 475
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper$SANoDisturbObserver;->this$0:Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->isBannerBlockedByEP(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->access$002(Lcom/coloros/systemui/notification/helper/HeadsUpHelper;Z)Z

    return-void
.end method
