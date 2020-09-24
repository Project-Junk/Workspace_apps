.class Lcom/android/systemui/stackdivider/Divider$4;
.super Landroid/os/Handler;
.source "Divider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/Divider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/Divider;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/Divider;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider$4;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 411
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 412
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 423
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider$4;->this$0:Lcom/android/systemui/stackdivider/Divider;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->onSplitScreenExited(Landroid/content/Context;)V

    goto :goto_0

    .line 414
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/stackdivider/Divider$4;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {p1}, Lcom/android/systemui/stackdivider/Divider;->access$100(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 415
    iget-object p1, p0, Lcom/android/systemui/stackdivider/Divider$4;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {p1}, Lcom/android/systemui/stackdivider/Divider;->access$100(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$4;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->access$1300(Lcom/android/systemui/stackdivider/Divider;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/stackdivider/DividerView;->setFocusWindow(I)V

    .line 417
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/stackdivider/Divider$4;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {p1}, Lcom/android/systemui/stackdivider/Divider;->access$400(Lcom/android/systemui/stackdivider/Divider;)Lcom/coloros/systemui/stackdivider/DividerMenu;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 418
    iget-object p1, p0, Lcom/android/systemui/stackdivider/Divider$4;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {p1}, Lcom/android/systemui/stackdivider/Divider;->access$400(Lcom/android/systemui/stackdivider/Divider;)Lcom/coloros/systemui/stackdivider/DividerMenu;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider$4;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {p0}, Lcom/android/systemui/stackdivider/Divider;->access$1300(Lcom/android/systemui/stackdivider/Divider;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/stackdivider/DividerMenu;->setFocusWindow(I)V

    :cond_3
    :goto_0
    return-void
.end method
