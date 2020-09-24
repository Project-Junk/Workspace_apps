.class Lcom/coloros/systemui/notification/helper/EnvelopeHelper$4;
.super Ljava/lang/Object;
.source "EnvelopeHelper.java"

# interfaces
.implements Lcom/coloros/systemui/notification/envelope/EnvelopeHandler$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/helper/EnvelopeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/helper/EnvelopeHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/helper/EnvelopeHelper;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$4;->this$0:Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardStatus(Landroid/app/Notification;)V
    .locals 0

    .line 395
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$4;->this$0:Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    invoke-static {p0}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->access$600(Lcom/coloros/systemui/notification/helper/EnvelopeHelper;)Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->onKeyguardStatus(Landroid/app/Notification;)V

    return-void
.end method

.method public onScreenOff(Landroid/app/Notification;)V
    .locals 0

    .line 390
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$4;->this$0:Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    invoke-static {p0}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->access$600(Lcom/coloros/systemui/notification/helper/EnvelopeHelper;)Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->onScreenOff(Landroid/app/Notification;)V

    return-void
.end method

.method public onShowHeadUpView(Landroid/app/Notification;IIZZ)V
    .locals 6

    .line 400
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$4;->this$0:Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    invoke-static {p0}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->access$200(Lcom/coloros/systemui/notification/helper/EnvelopeHelper;)Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->onReceiveEnvelope(Landroid/app/Notification;IIZZ)V

    return-void
.end method
