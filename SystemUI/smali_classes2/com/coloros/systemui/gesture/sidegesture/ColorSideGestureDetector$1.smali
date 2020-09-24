.class Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector$1;
.super Landroid/os/Handler;
.source "ColorSideGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector$1;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 66
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector$1;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;

    invoke-static {p1, v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->access$002(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;Z)Z

    .line 73
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector$1;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;

    invoke-static {p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->access$100(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;)V

    .line 74
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector$1;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;

    invoke-static {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->access$300(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;)Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    invoke-static {p0, p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->access$202(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;I)I

    goto :goto_0

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector$1;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;

    invoke-static {p1, v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->access$002(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;Z)Z

    .line 69
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector$1;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;

    invoke-static {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->access$100(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;)V

    :goto_0
    return-void
.end method
