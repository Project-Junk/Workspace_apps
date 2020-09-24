.class Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$5;
.super Landroid/util/FloatProperty;
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
        "Landroid/util/FloatProperty<",
        "Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;Ljava/lang/String;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$5;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    invoke-direct {p0, p2}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;)Ljava/lang/Float;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 200
    check-cast p1, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$5;->get(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;F)V
    .locals 0

    .line 203
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$5;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    invoke-static {p1, p2}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->access$802(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;F)F

    .line 204
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$5;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    invoke-static {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->access$200(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 200
    check-cast p1, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$5;->setValue(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;F)V

    return-void
.end method
