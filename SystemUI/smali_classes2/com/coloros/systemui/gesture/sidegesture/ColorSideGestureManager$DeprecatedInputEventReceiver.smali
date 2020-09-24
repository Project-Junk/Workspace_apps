.class Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager$DeprecatedInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "ColorSideGestureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeprecatedInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager$DeprecatedInputEventReceiver;->this$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;

    .line 253
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 1

    const/4 v0, 0x1

    .line 257
    invoke-virtual {p0, p1, v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager$DeprecatedInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void
.end method
