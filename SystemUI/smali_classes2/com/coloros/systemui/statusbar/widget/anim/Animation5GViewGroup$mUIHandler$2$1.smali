.class public final Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mUIHandler$2$1;
.super Landroid/os/Handler;
.source "Animation5GViewGroup.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mUIHandler$2;->invoke()Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mUIHandler$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mUIHandler$2$1",
        "Landroid/os/Handler;",
        "handleMessage",
        "",
        "msg",
        "Landroid/os/Message;",
        "SystemUI_realmeReleaseExp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mUIHandler$2;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mUIHandler$2;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mUIHandler$2$1;->this$0:Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mUIHandler$2;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mUIHandler$2$1;->this$0:Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mUIHandler$2;

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mUIHandler$2;->this$0:Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;

    invoke-static {p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->access$startFrameAnimation(Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mUIHandler$2$1;->this$0:Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mUIHandler$2;

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mUIHandler$2;->this$0:Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;

    invoke-static {p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->access$startObjAnimation(Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;)V

    :goto_0
    return-void
.end method
