.class Lcom/color/support/widget/ExpandableRecyclerConnector$3;
.super Lcom/color/support/widget/ExpandableRecyclerConnector$EndAnimatorListener;
.source "ExpandableRecyclerConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ExpandableRecyclerConnector;->expandAnimationStart(Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ExpandableRecyclerConnector;

.field final synthetic val$dummyView:Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;

.field final synthetic val$flatListPos:I

.field final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(Lcom/color/support/widget/ExpandableRecyclerConnector;Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;II)V
    .locals 0

    .line 613
    iput-object p1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$3;->this$0:Lcom/color/support/widget/ExpandableRecyclerConnector;

    iput-object p2, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$3;->val$dummyView:Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;

    iput p3, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$3;->val$groupPosition:I

    iput p4, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$3;->val$flatListPos:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/color/support/widget/ExpandableRecyclerConnector$EndAnimatorListener;-><init>(Lcom/color/support/widget/ExpandableRecyclerConnector$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 616
    iget-object p1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$3;->val$dummyView:Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;

    invoke-virtual {p1}, Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;->clearViews()V

    .line 617
    iget-object p1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$3;->this$0:Lcom/color/support/widget/ExpandableRecyclerConnector;

    iget v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$3;->val$groupPosition:I

    invoke-static {p1, v0}, Lcom/color/support/widget/ExpandableRecyclerConnector;->access$300(Lcom/color/support/widget/ExpandableRecyclerConnector;I)V

    .line 618
    iget-object p1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$3;->this$0:Lcom/color/support/widget/ExpandableRecyclerConnector;

    const/4 v0, 0x1

    invoke-static {p1, v0, v0}, Lcom/color/support/widget/ExpandableRecyclerConnector;->access$400(Lcom/color/support/widget/ExpandableRecyclerConnector;ZZ)V

    .line 619
    iget-object p1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$3;->this$0:Lcom/color/support/widget/ExpandableRecyclerConnector;

    iget v1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$3;->val$flatListPos:I

    sub-int/2addr v1, v0

    invoke-virtual {p1}, Lcom/color/support/widget/ExpandableRecyclerConnector;->getItemCount()I

    move-result v2

    iget v3, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$3;->val$flatListPos:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/color/support/widget/ExpandableRecyclerConnector;->notifyItemRangeChanged(II)V

    .line 620
    iget-object p1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$3;->val$dummyView:Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;->setTag(Ljava/lang/Object;)V

    return-void
.end method
