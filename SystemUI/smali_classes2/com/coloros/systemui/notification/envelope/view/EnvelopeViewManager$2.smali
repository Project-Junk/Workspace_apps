.class Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$2;
.super Ljava/lang/Object;
.source "EnvelopeViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 117
    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$2;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 120
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->setEnvelopeShow(Z)V

    .line 121
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$2;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-static {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->access$200(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)V

    return-void
.end method
