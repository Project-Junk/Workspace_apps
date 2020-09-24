.class Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$3;
.super Ljava/lang/Object;
.source "FullScreenBannerHelper.java"

# interfaces
.implements Lcom/coloros/systemui/notification/view/FullScreenBanner$BannerTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->buildNotification(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

.field final synthetic val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field final synthetic val$notification:Landroid/app/Notification;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$3;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    iput-object p2, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$3;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object p3, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$3;->val$notification:Landroid/app/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$3;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->access$502(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 295
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$3;->val$notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$3;->val$notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$3;->val$notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    :goto_0
    if-eqz v0, :cond_1

    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$3;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    invoke-virtual {v1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->hideBanner()V

    .line 300
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V

    .line 301
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$3;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "oppo.intent.action.CANCEL_NOTIFICAITON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending contentIntent failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FullScreenHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public onLongClick()V
    .locals 4

    .line 310
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$3;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    invoke-static {v0}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->access$600(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;)Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$BannerDisplayHander;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$BannerDisplayHander;->removeMessages(I)V

    .line 311
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$3;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    invoke-static {p0}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->access$600(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;)Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$BannerDisplayHander;

    move-result-object p0

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$BannerDisplayHander;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onMoveUp()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$3;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    const-string v1, "2"

    invoke-static {v0, v1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->access$502(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$3;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    invoke-virtual {v0}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->hideBanner()V

    .line 288
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$3;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 289
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->simpleBannerSnooze(Ljava/lang/String;)V

    return-void
.end method
