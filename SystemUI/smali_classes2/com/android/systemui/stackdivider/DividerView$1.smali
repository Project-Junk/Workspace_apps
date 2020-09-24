.class Lcom/android/systemui/stackdivider/DividerView$1;
.super Landroid/os/Handler;
.source "DividerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/DividerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerView;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerView;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$1;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 199
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 210
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 206
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerView$1;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {p0}, Lcom/android/systemui/stackdivider/DividerView;->access$000(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V

    goto :goto_1

    .line 201
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerView$1;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    :goto_1
    return-void
.end method
