.class Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$3;
.super Landroid/util/IntProperty;
.source "ColorSideGestureNavView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty<",
        "Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$3;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    invoke-direct {p0, p2}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;)Ljava/lang/Integer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 154
    check-cast p1, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$3;->get(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;I)V
    .locals 0

    .line 163
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$3;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    invoke-static {p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->access$000(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;)Landroid/graphics/PointF;

    move-result-object p1

    int-to-float p2, p2

    iput p2, p1, Landroid/graphics/PointF;->x:F

    .line 164
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$3;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    invoke-static {p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->access$000(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;)Landroid/graphics/PointF;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$3;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    invoke-static {p2}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->access$100(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;)Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iput p2, p1, Landroid/graphics/PointF;->y:F

    .line 165
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$3;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    invoke-static {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->access$200(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0

    .line 154
    check-cast p1, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$3;->setValue(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;I)V

    return-void
.end method
