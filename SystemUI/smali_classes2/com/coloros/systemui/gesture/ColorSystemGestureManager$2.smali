.class Lcom/coloros/systemui/gesture/ColorSystemGestureManager$2;
.super Ljava/lang/Object;
.source "ColorSystemGestureManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/gesture/ColorSystemGestureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$2;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$ColorSystemGestureManager$2()V
    .locals 1

    .line 216
    iget-object p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$2;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {p0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$800(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->addPointerEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public run()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$2;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$800(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$2;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$900(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/coloros/systemui/gesture/-$$Lambda$ColorSystemGestureManager$2$L7GEBAV1nj5UiWKbqCIHnxzX9r0;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/gesture/-$$Lambda$ColorSystemGestureManager$2$L7GEBAV1nj5UiWKbqCIHnxzX9r0;-><init>(Lcom/coloros/systemui/gesture/ColorSystemGestureManager$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 217
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$2;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$800(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$2;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$802(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$2;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$1002(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;Z)Z

    .line 221
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$2;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v0, v1}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$1102(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;Z)Z

    .line 222
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$2;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v0, v1}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$1202(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;Z)Z

    .line 223
    iget-object p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$2;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    const/16 v0, 0x3e9

    invoke-static {p0, v0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$1302(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;I)I

    :cond_1
    return-void
.end method
