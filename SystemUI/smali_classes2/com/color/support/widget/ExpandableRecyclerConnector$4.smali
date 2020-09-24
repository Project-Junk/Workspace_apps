.class Lcom/color/support/widget/ExpandableRecyclerConnector$4;
.super Lcom/color/support/widget/ExpandableRecyclerConnector$EndAnimatorListener;
.source "ExpandableRecyclerConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ExpandableRecyclerConnector;->collapseAnimationStart(Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ExpandableRecyclerConnector;

.field final synthetic val$dummyView:Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;

.field final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(Lcom/color/support/widget/ExpandableRecyclerConnector;Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;I)V
    .locals 0

    .line 641
    iput-object p1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$4;->this$0:Lcom/color/support/widget/ExpandableRecyclerConnector;

    iput-object p2, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$4;->val$dummyView:Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;

    iput p3, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$4;->val$groupPosition:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/color/support/widget/ExpandableRecyclerConnector$EndAnimatorListener;-><init>(Lcom/color/support/widget/ExpandableRecyclerConnector$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 644
    iget-object p1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$4;->val$dummyView:Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;

    invoke-virtual {p1}, Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;->clearViews()V

    .line 645
    iget-object p1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$4;->this$0:Lcom/color/support/widget/ExpandableRecyclerConnector;

    iget v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$4;->val$groupPosition:I

    invoke-static {p1, v0}, Lcom/color/support/widget/ExpandableRecyclerConnector;->access$300(Lcom/color/support/widget/ExpandableRecyclerConnector;I)V

    .line 646
    iget-object p1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$4;->this$0:Lcom/color/support/widget/ExpandableRecyclerConnector;

    iget v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$4;->val$groupPosition:I

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ExpandableRecyclerConnector;->collapseGroup(I)Z

    .line 647
    iget-object p0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$4;->val$dummyView:Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;->setTag(Ljava/lang/Object;)V

    return-void
.end method
