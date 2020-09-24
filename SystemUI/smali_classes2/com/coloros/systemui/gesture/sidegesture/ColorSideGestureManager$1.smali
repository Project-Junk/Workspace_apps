.class Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager$1;
.super Ljava/lang/Object;
.source "ColorSideGestureManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 84
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->access$002(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;J)J

    .line 85
    iget-object v3, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;

    invoke-static {v3}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->access$000(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;)J

    move-result-wide v7

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->access$100(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;IIIJ)V

    .line 86
    iget-object v9, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;

    invoke-static {v9}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->access$000(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;)J

    move-result-wide v13

    const/4 v10, 0x4

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->access$100(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;IIIJ)V

    .line 87
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager$1;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;

    invoke-static {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->access$200(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil;->collectSideGestureTriggerBack(Landroid/content/Context;)V

    return-void
.end method
