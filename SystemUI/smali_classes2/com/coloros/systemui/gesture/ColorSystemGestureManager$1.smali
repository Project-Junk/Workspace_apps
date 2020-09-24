.class Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;
.super Ljava/lang/Object;
.source "ColorSystemGestureManager.java"

# interfaces
.implements Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils$Callbacks;


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

    .line 121
    iput-object p1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$002(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;I)I

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSystemGesturesCallbacks   onDown --- mSwipeDirection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {p0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$000(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Common"

    const-string v1, "ColorSystemGestureManager"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSwipeFail()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$002(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;I)I

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSystemGesturesCallbacks   onSwipeFail --- mSwipeDirection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    .line 181
    invoke-static {v1}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$000(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mGestureMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v1}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$200(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Common"

    const-string v2, "ColorSystemGestureManager"

    .line 180
    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {p0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$100(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)V

    return-void
.end method

.method public onSwipeFromBottom()V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$002(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;I)I

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSystemGesturesCallbacks   onSwipeFromBottom --- mSwipeDirection "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v2}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$000(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mGestureMode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    .line 143
    invoke-static {v2}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$200(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Common"

    const-string v3, "ColorSystemGestureManager"

    .line 142
    invoke-static {v2, v3, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$200(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)I

    move-result v0

    const/16 v2, 0x7d1

    if-ne v0, v2, :cond_0

    .line 145
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$500(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Lcom/coloros/systemui/gesture/FullScreenGestureControl;

    move-result-object v0

    iget-object v2, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v2}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$300(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Landroid/view/MotionEvent;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v3}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$400(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)I

    move-result v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->handleNavGestures(Landroid/view/MotionEvent;II)Z

    .line 147
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {p0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$600(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)V

    return-void
.end method

.method public onSwipeFromLeft()V
    .locals 4

    .line 166
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$002(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;I)I

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSystemGesturesCallbacks   onSwipeFromLeft --- mSwipeDirection "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v2}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$000(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mGestureMode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    .line 168
    invoke-static {v2}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$200(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Common"

    const-string v3, "ColorSystemGestureManager"

    .line 167
    invoke-static {v2, v3, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$200(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)I

    move-result v0

    const/16 v2, 0x7d1

    if-ne v0, v2, :cond_0

    .line 170
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$500(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Lcom/coloros/systemui/gesture/FullScreenGestureControl;

    move-result-object v0

    iget-object v2, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v2}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$300(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Landroid/view/MotionEvent;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v3}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$400(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)I

    move-result v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->handleNavGestures(Landroid/view/MotionEvent;II)Z

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$200(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)I

    move-result v0

    const/16 v1, 0x7d3

    if-ne v0, v1, :cond_1

    .line 172
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$700(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->onSwipeSuccess(I)V

    .line 174
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {p0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$600(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)V

    return-void
.end method

.method public onSwipeFromRight()V
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$002(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;I)I

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSystemGesturesCallbacks   onSwipeFromRight --- mSwipeDirection "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v2}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$000(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mGestureMode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    .line 154
    invoke-static {v2}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$200(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Common"

    const-string v3, "ColorSystemGestureManager"

    .line 153
    invoke-static {v2, v3, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$200(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)I

    move-result v0

    const/16 v2, 0x7d1

    if-ne v0, v2, :cond_0

    .line 156
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$500(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Lcom/coloros/systemui/gesture/FullScreenGestureControl;

    move-result-object v0

    iget-object v2, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v2}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$300(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Landroid/view/MotionEvent;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v3}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$400(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)I

    move-result v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->handleNavGestures(Landroid/view/MotionEvent;II)Z

    goto :goto_0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$200(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)I

    move-result v0

    const/16 v1, 0x7d3

    if-ne v0, v1, :cond_1

    .line 158
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$700(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->onSwipeSuccess(I)V

    .line 161
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {p0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$600(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)V

    return-void
.end method

.method public onSwipeFromTop()V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$002(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;I)I

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSystemGesturesCallbacks   onSwipeFromTop --- mSwipeDirection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    .line 127
    invoke-static {v1}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$000(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Common"

    const-string v2, "ColorSystemGestureManager"

    .line 126
    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {p0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$100(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)V

    return-void
.end method

.method public onSwipePointerFail()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$002(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;I)I

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSystemGesturesCallbacks   onSwipePointerFail --- mSwipeDirection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    .line 190
    invoke-static {v1}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$000(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mGestureMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v1}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$200(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Common"

    const-string v2, "ColorSystemGestureManager"

    .line 188
    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {p0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$100(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)V

    return-void
.end method

.method public onSwipeTimeOut()V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$002(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;I)I

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSystemGesturesCallbacks   onSwipeTimeOut --- mSwipeDirection  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    .line 135
    invoke-static {v1}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$000(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Common"

    const-string v2, "ColorSystemGestureManager"

    .line 134
    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {p0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$100(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)V

    return-void
.end method

.method public onUpOrCancel()V
    .locals 3

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSystemGesturesCallbacks   onUpOrCancel --- mSwipeDirection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v1}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$000(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mGestureMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {v1}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$200(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mDownEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    .line 203
    invoke-static {v1}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$300(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Common"

    const-string v2, "ColorSystemGestureManager"

    .line 202
    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-static {p0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->access$100(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)V

    return-void
.end method
