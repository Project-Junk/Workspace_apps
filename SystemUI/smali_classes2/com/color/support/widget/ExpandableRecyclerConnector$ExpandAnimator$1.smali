.class Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator$1;
.super Ljava/lang/Object;
.source "ExpandableRecyclerConnector.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;->setParam(ZZILandroid/view/View;Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;

.field final synthetic val$expand:Z

.field final synthetic val$flatPos:I

.field final synthetic val$groupInfo:Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;

.field final synthetic val$isLastChild:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;ZIZLandroid/view/View;Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;)V
    .locals 0

    .line 759
    iput-object p1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->this$0:Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;

    iput-boolean p2, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$isLastChild:Z

    iput p3, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$flatPos:I

    iput-boolean p4, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$expand:Z

    iput-object p5, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$view:Landroid/view/View;

    iput-object p6, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$groupInfo:Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 762
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->this$0:Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;

    invoke-static {v0}, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;->access$500(Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorExpandableRecyclerView;

    if-nez v0, :cond_0

    .line 764
    iget-object p0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->this$0:Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;

    invoke-static {p0}, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;->access$600(Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;)V

    return-void

    .line 769
    :cond_0
    invoke-virtual {v0}, Lcom/color/support/widget/ColorExpandableRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/ColorLinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/ColorLinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 771
    invoke-virtual {v0}, Lcom/color/support/widget/ColorExpandableRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/ColorLinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/ColorLinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    .line 774
    iget-object v3, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->this$0:Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;

    invoke-static {v3}, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;->access$700(Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;)Z

    move-result v3

    const-string v4, "ExpandableRecyclerConnector"

    const-string v5, ","

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$isLastChild:Z

    if-nez v3, :cond_2

    iget v3, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$flatPos:I

    if-gt v1, v3, :cond_1

    if-ge v2, v3, :cond_2

    .line 776
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationUpdate1: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$flatPos:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object p0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->this$0:Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;

    invoke-static {p0}, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;->access$600(Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;)V

    return-void

    .line 783
    :cond_2
    iget-object v1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->this$0:Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;

    invoke-static {v1}, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;->access$700(Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$isLastChild:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$expand:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$flatPos:I

    if-ne v1, v2, :cond_3

    .line 784
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationUpdate2: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$flatPos:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object p0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->this$0:Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;

    invoke-static {p0}, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;->access$600(Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;)V

    return-void

    .line 789
    :cond_3
    iget-object v1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->this$0:Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;

    invoke-static {v1}, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;->access$700(Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$isLastChild:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$expand:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0}, Lcom/color/support/widget/ColorExpandableRecyclerView;->getBottom()I

    move-result v2

    if-le v1, v2, :cond_4

    .line 790
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationUpdate3: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorExpandableRecyclerView;->getBottom()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object p0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->this$0:Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;

    invoke-static {p0}, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;->access$600(Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;)V

    return-void

    .line 795
    :cond_4
    iget-object v1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->this$0:Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;->access$702(Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;Z)Z

    .line 796
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 797
    iget-object v1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$groupInfo:Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;

    iput p1, v1, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;->dummyHeight:I

    .line 798
    iget-object p0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator$1;->val$view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 799
    invoke-virtual {v0}, Lcom/color/support/widget/ColorExpandableRecyclerView;->requestLayout()V

    return-void
.end method
