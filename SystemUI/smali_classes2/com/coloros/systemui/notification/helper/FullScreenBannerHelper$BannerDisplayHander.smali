.class Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$BannerDisplayHander;
.super Landroid/os/Handler;
.source "FullScreenBannerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BannerDisplayHander"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;Landroid/os/Looper;)V
    .locals 0

    .line 673
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$BannerDisplayHander;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    .line 674
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 679
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 680
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 683
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$BannerDisplayHander;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    invoke-static {p0}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->access$300(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->showBanner(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_0

    .line 686
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$BannerDisplayHander;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->hideBanner()V

    :goto_0
    return-void
.end method
