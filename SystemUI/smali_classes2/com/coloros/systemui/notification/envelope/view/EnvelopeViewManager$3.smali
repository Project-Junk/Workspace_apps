.class Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$3;
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

    .line 125
    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$3;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 128
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$3;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-static {v0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->access$300(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$3;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-static {v1}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->access$400(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 130
    iget-object v2, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$3;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-static {v2}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->access$500(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$3;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-static {v2}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->access$700(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$3;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-static {v3}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->access$600(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 132
    iget-object v2, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$3;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-static {v2}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->access$700(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$3;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-static {v3}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->access$600(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 133
    iget-object v2, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$3;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-static {v2, v1}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->access$800(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;I)V

    .line 134
    iget-object v2, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$3;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-static {v2}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->access$1100(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$3;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-static {v3}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->access$900(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)Landroid/widget/FrameLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$3;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-static {v4}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->access$1000(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v2, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$3;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-static {v2, v1}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->access$1200(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;I)V

    .line 136
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$3;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-static {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->access$100(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)V

    .line 138
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
