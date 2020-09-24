.class Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$1;
.super Landroid/content/BroadcastReceiver;
.source "WeChatEnvelopeFieldList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$1;->this$0:Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 59
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 60
    invoke-static {}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Notification"

    const-string v0, "ACTION_LOCKED_BOOT_COMPLETED: register systembar provider"

    invoke-static {p2, p1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$1;->this$0:Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;

    invoke-static {p1}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->access$100(Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;)Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const-string p1, "content://com.oppo.systemui/envelope"

    .line 62
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 63
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$1;->this$0:Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;

    invoke-static {v0}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->access$100(Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$EnvelopeContentObserver;

    iget-object v2, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$1;->this$0:Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;

    invoke-direct {v1, v2}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$EnvelopeContentObserver;-><init>(Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 65
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$1;->this$0:Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;

    invoke-static {p0, p2}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->access$202(Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;Z)Z

    :cond_1
    return-void
.end method
