.class Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils$1;
.super Ljava/lang/Object;
.source "SystemGesturesPointerEventUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils$1;->this$0:Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils$1;->this$0:Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;

    invoke-static {v0}, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->access$000(Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NavBar"

    const-string v1, "SystemGestures"

    const-string v2, "SIWPE_TOUCH_EVENT_GAP_TIME  TIME OUT"

    .line 81
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object p0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils$1;->this$0:Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;

    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->notifySwipeFail()V

    :cond_0
    return-void
.end method
