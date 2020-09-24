.class Lcom/coloros/systemui/notification/NotificationCenterManager$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationCenterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/notification/NotificationCenterManager;->registerEnvelopeFilter(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/NotificationCenterManager;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/NotificationCenterManager;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/coloros/systemui/notification/NotificationCenterManager$1;->this$0:Lcom/coloros/systemui/notification/NotificationCenterManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 p0, 0x0

    const-string p1, "envelope_category"

    .line 219
    invoke-virtual {p2, p1, p0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string p1, "envelope_related_uid"

    .line 220
    invoke-virtual {p2, p1, p0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 221
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 222
    sget-boolean v0, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz v0, :cond_0

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive category:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  uid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  action:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Notification--EnvelopeHelper"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "com.android.systemui.envelope.envelope_notification"

    .line 226
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "lock_screen_visibility"

    .line 227
    invoke-virtual {p2, p1, p0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string p0, "related_key"

    .line 228
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p0, "transitive_envelope"

    .line 229
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Landroid/app/Notification;

    .line 230
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p0

    const-class p1, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    .line 231
    invoke-virtual/range {v0 .. v5}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->enqueueEnvelopeNotification(ILandroid/app/Notification;Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    const-string p0, "com.android.systemui.envelope.cancel_envelope"

    .line 232
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 233
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p0

    const-class p1, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    invoke-virtual {p0, v1, v4}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->cancelAllEnvelope(II)V

    :cond_2
    :goto_0
    return-void
.end method
