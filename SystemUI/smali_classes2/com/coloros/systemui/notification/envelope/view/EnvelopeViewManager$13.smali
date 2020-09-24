.class Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$13;
.super Ljava/lang/Object;
.source "EnvelopeViewManager.java"

# interfaces
.implements Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)V
    .locals 0

    .line 664
    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$13;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 678
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$13;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->access$1900(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;Z)V

    .line 680
    :try_start_0
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$13;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-virtual {v0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->removeHeadUpViewImmediately()V

    .line 681
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$13;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-static {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->access$2000(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Notification"

    const-string v0, "EnvelopeViewManager"

    const-string v1, "Envelop--error when open envelope"

    .line 683
    invoke-static {p0, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSwipeRight()V
    .locals 2

    .line 672
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$13;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->access$1802(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;Z)Z

    .line 673
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$13;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->removeHeadUpViewImmediately()V

    return-void
.end method

.method public onSwipeUp()V
    .locals 0

    .line 667
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$13;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->removeHeadUpViewImmediately()V

    return-void
.end method
