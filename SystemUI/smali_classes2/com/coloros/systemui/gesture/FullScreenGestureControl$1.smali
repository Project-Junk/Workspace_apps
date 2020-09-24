.class Lcom/coloros/systemui/gesture/FullScreenGestureControl$1;
.super Landroid/os/Handler;
.source "FullScreenGestureControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/gesture/FullScreenGestureControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/gesture/FullScreenGestureControl;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/gesture/FullScreenGestureControl;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$1;->this$0:Lcom/coloros/systemui/gesture/FullScreenGestureControl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 152
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$1;->this$0:Lcom/coloros/systemui/gesture/FullScreenGestureControl;

    invoke-static {v0}, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->access$000(Lcom/coloros/systemui/gesture/FullScreenGestureControl;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->isGestureBarShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->startGestureBarAnimation(II)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$1;->this$0:Lcom/coloros/systemui/gesture/FullScreenGestureControl;

    invoke-static {p0}, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->access$300(Lcom/coloros/systemui/gesture/FullScreenGestureControl;)Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->startFeedbackAnimation(II)V

    goto :goto_0

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$1;->this$0:Lcom/coloros/systemui/gesture/FullScreenGestureControl;

    invoke-static {v0}, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->access$000(Lcom/coloros/systemui/gesture/FullScreenGestureControl;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->isGestureBarShow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->startGestureBarAnimation(II)V

    goto :goto_0

    .line 157
    :cond_3
    iget-object p0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$1;->this$0:Lcom/coloros/systemui/gesture/FullScreenGestureControl;

    invoke-static {p0}, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->access$100(Lcom/coloros/systemui/gesture/FullScreenGestureControl;)Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->startFeedbackAnimation(II)V

    goto :goto_0

    .line 161
    :cond_4
    iget-object v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$1;->this$0:Lcom/coloros/systemui/gesture/FullScreenGestureControl;

    invoke-static {v0}, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->access$000(Lcom/coloros/systemui/gesture/FullScreenGestureControl;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->isGestureBarShow()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 162
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->startGestureBarAnimation(II)V

    goto :goto_0

    .line 164
    :cond_5
    iget-object p0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$1;->this$0:Lcom/coloros/systemui/gesture/FullScreenGestureControl;

    invoke-static {p0}, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->access$200(Lcom/coloros/systemui/gesture/FullScreenGestureControl;)Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->startFeedbackAnimation(II)V

    :goto_0
    return-void
.end method
