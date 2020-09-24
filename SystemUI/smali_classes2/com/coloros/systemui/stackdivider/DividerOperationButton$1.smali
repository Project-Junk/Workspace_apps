.class Lcom/coloros/systemui/stackdivider/DividerOperationButton$1;
.super Ljava/lang/Object;
.source "DividerOperationButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setDividerTouchListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/stackdivider/DividerOperationButton;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/stackdivider/DividerOperationButton;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton$1;->this$0:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 69
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton$1;->this$0:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-static {p0, p2}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->access$000(Lcom/coloros/systemui/stackdivider/DividerOperationButton;Z)V

    goto :goto_0

    .line 71
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton$1;->this$0:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-static {p0, v0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->access$000(Lcom/coloros/systemui/stackdivider/DividerOperationButton;Z)V

    :goto_0
    return p2
.end method
