.class Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;
.super Landroid/os/IOppoExInputCallBack$Stub;
.source "ColorSystemGestureManager.java"


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

    .line 228
    iput-object p1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-direct {p0}, Landroid/os/IOppoExInputCallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onInputEvent$0$ColorSystemGestureManager$3()V
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {p0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$2000(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)V

    return-void
.end method

.method public synthetic lambda$onInputEvent$1$ColorSystemGestureManager$3()V
    .locals 1

    .line 270
    iget-object p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {p0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$800(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->addPointerEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public synthetic lambda$onInputEvent$2$ColorSystemGestureManager$3(Landroid/view/MotionEvent;)V
    .locals 0

    .line 279
    iget-object p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->addPointerEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 10

    .line 231
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_e

    .line 232
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_e

    .line 233
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$1400(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$1500(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isOccluded()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 234
    :goto_0
    iget-object v4, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    check-cast p1, Landroid/view/MotionEvent;

    invoke-static {v4, p1}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$1600(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onInputEvent down event:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NavBar"

    const-string v6, "ColorSystemGestureManager"

    invoke-static {v5, v6, v4}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v4, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v4}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$1100(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 238
    iget-object v4, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v4, p1, v0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$1700(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;Landroid/view/MotionEvent;Z)I

    move-result v5

    invoke-static {v4, v5}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$1302(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;I)I

    .line 240
    iget-object v4, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v4, v3}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$1002(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;Z)Z

    .line 241
    iget-object v4, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v4}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$1300(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)I

    move-result v4

    const/16 v5, 0x3ea

    if-ne v4, v5, :cond_1

    .line 242
    iget-object v4, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v4, v2}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$1102(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;Z)Z

    goto :goto_1

    .line 244
    :cond_1
    iget-object v4, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v4, v3}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$1102(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;Z)Z

    .line 249
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v4}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$1100(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v4}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$1200(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_4

    .line 251
    iget-object v4, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$802(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 252
    iget-object v4, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v4}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$800(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 253
    iget-object v4, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v4}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$900(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Landroid/os/Handler;

    move-result-object v4

    iget-object v6, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v6}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$1800(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 254
    iget-object v4, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v4}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$900(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Landroid/os/Handler;

    move-result-object v4

    iget-object v6, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v6}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$1800(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 256
    :cond_3
    iget-object v4, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v4}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$900(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Landroid/os/Handler;

    move-result-object v4

    iget-object v6, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v6}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$1800(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v7, 0xc8

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 257
    iget-object v4, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v4}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$900(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Landroid/os/Handler;

    move-result-object v4

    new-instance v6, Lcom/coloros/systemui/gesture/-$$Lambda$ColorSystemGestureManager$3$WfDKB3e7iICyrfP4lCsdjlUEepE;

    invoke-direct {v6, p0}, Lcom/coloros/systemui/gesture/-$$Lambda$ColorSystemGestureManager$3$WfDKB3e7iICyrfP4lCsdjlUEepE;-><init>(Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 258
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_8

    .line 259
    iget-object v4, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v4}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$900(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Landroid/os/Handler;

    move-result-object v4

    iget-object v6, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v6}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$1800(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 260
    iget-object v4, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v4}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$900(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Landroid/os/Handler;

    move-result-object v4

    iget-object v6, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v6}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$1800(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 262
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1

    cmp-long v4, v6, v8

    if-nez v4, :cond_6

    .line 264
    iget-object v4, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v4, v3}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$1102(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;Z)Z

    .line 265
    iget-object v4, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v4, v3}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$1202(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;Z)Z

    .line 267
    :cond_6
    iget-object v4, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v4}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$800(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Landroid/view/MotionEvent;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 268
    iget-object v4, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v4}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$800(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    cmpl-float v4, v4, v6

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v4}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$800(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_8

    :cond_7
    iget-object v4, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    .line 269
    invoke-static {v4}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$1000(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 270
    iget-object v4, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v4}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$900(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Landroid/os/Handler;

    move-result-object v4

    new-instance v6, Lcom/coloros/systemui/gesture/-$$Lambda$ColorSystemGestureManager$3$2oYEJbDhkm4gJIwhjlj8smYjVP4;

    invoke-direct {v6, p0}, Lcom/coloros/systemui/gesture/-$$Lambda$ColorSystemGestureManager$3$2oYEJbDhkm4gJIwhjlj8smYjVP4;-><init>(Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 271
    iget-object v4, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v4, v2}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$1202(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;Z)Z

    .line 277
    :cond_8
    :goto_2
    iget-object v4, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v4}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$1100(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v4, v5, :cond_a

    .line 278
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v4}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$1200(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 279
    :cond_9
    iget-object v4, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v4}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$900(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/coloros/systemui/gesture/-$$Lambda$ColorSystemGestureManager$3$2hxud44g_wY7ltahS6y3WBYG_44;

    invoke-direct {v5, p0, p1}, Lcom/coloros/systemui/gesture/-$$Lambda$ColorSystemGestureManager$3$2hxud44g_wY7ltahS6y3WBYG_44;-><init>(Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;Landroid/view/MotionEvent;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 280
    iget-object v4, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v4, v2}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$1202(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;Z)Z

    .line 281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v1, :cond_a

    .line 282
    iget-object v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v1, v2}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$1002(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;Z)Z

    .line 287
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_d

    .line 288
    iget-object v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v1}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$1300(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_b

    .line 289
    invoke-static {}, Lcom/coloros/systemui/gesture/ColorInputInjector;->getInstance()Lcom/coloros/systemui/gesture/ColorInputInjector;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/coloros/systemui/gesture/ColorInputInjector;->injectMotionEvent(Landroid/view/MotionEvent;)V

    .line 292
    :cond_b
    iget-object v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v1}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$800(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Landroid/view/MotionEvent;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 293
    iget-object v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$802(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 295
    :cond_c
    iget-object v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v1, v3}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$1002(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;Z)Z

    .line 296
    iget-object v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v1, v3}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$1102(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;Z)Z

    .line 297
    iget-object v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v1, v3}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$1202(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;Z)Z

    .line 298
    iget-object v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    const/16 v2, 0x3e9

    invoke-static {v1, v2}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$1302(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;I)I

    .line 302
    :cond_d
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 305
    invoke-static {}, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->getInstance()Lcom/coloros/systemui/stackdivider/SplitToggleHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->isSplittingScreen()Z

    move-result v1

    if-nez v1, :cond_e

    .line 307
    iget-object p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {p0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$1900(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->addPointerEvent(Landroid/view/MotionEvent;Z)V

    :cond_e
    return-void
.end method
