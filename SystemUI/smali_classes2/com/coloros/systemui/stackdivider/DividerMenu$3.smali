.class Lcom/coloros/systemui/stackdivider/DividerMenu$3;
.super Ljava/lang/Object;
.source "DividerMenu.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/stackdivider/DividerMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/stackdivider/DividerMenu;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/stackdivider/DividerMenu;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu$3;->this$0:Lcom/coloros/systemui/stackdivider/DividerMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 382
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 394
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu$3;->this$0:Lcom/coloros/systemui/stackdivider/DividerMenu;

    invoke-static {p1}, Lcom/coloros/systemui/stackdivider/DividerMenu;->access$600(Lcom/coloros/systemui/stackdivider/DividerMenu;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-nez p1, :cond_3

    .line 395
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu$3;->this$0:Lcom/coloros/systemui/stackdivider/DividerMenu;

    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/DividerMenu;->hideMenu()V

    goto :goto_0

    .line 386
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu$3;->this$0:Lcom/coloros/systemui/stackdivider/DividerMenu;

    invoke-static {p1}, Lcom/coloros/systemui/stackdivider/DividerMenu;->access$400(Lcom/coloros/systemui/stackdivider/DividerMenu;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu$3;->this$0:Lcom/coloros/systemui/stackdivider/DividerMenu;

    invoke-static {p1}, Lcom/coloros/systemui/stackdivider/DividerMenu;->access$200(Lcom/coloros/systemui/stackdivider/DividerMenu;)Lcom/coloros/systemui/stackdivider/DividerMenuView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 387
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu$3;->this$0:Lcom/coloros/systemui/stackdivider/DividerMenu;

    invoke-static {p1}, Lcom/coloros/systemui/stackdivider/DividerMenu;->access$500(Lcom/coloros/systemui/stackdivider/DividerMenu;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 388
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu$3;->this$0:Lcom/coloros/systemui/stackdivider/DividerMenu;

    invoke-static {p1}, Lcom/coloros/systemui/stackdivider/DividerMenu;->access$500(Lcom/coloros/systemui/stackdivider/DividerMenu;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 390
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu$3;->this$0:Lcom/coloros/systemui/stackdivider/DividerMenu;

    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/DividerMenu;->hideMenu()V

    :cond_3
    :goto_0
    return v0
.end method
