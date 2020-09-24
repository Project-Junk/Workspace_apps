.class Lcom/coloros/systemui/notification/helper/HeadsUpHelper$1;
.super Landroid/telephony/PhoneStateListener;
.source "HeadsUpHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/helper/HeadsUpHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/helper/HeadsUpHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/helper/HeadsUpHelper;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    .line 302
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Notification--onCallStateChanged state = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Notification"

    const-string v1, "HeadsUpHelper"

    invoke-static {v0, v1, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 304
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    iget-object p1, p1, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;

    invoke-virtual {p1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHeadsUpManager()Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 305
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHeadsUpManager()Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->releaseAllImmediately()V

    :cond_0
    return-void
.end method
