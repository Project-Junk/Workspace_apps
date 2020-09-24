.class Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator$1;
.super Ljava/lang/Object;
.source "ColorExpandableListView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;->setParam(ZZILandroid/view/View;Lcom/color/support/widget/ColorExpandableListView$GroupInfo;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;

.field final synthetic val$expand:Z

.field final synthetic val$groupInfo:Lcom/color/support/widget/ColorExpandableListView$GroupInfo;

.field final synthetic val$groupPosition:I

.field final synthetic val$isLastChild:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;ZIZLandroid/view/View;Lcom/color/support/widget/ColorExpandableListView$GroupInfo;)V
    .locals 0

    .line 657
    iput-object p1, p0, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator$1;->this$0:Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;

    iput-boolean p2, p0, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator$1;->val$isLastChild:Z

    iput p3, p0, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator$1;->val$groupPosition:I

    iput-boolean p4, p0, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator$1;->val$expand:Z

    iput-object p5, p0, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator$1;->val$view:Landroid/view/View;

    iput-object p6, p0, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator$1;->val$groupInfo:Lcom/color/support/widget/ColorExpandableListView$GroupInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 660
    iget-object v0, p0, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator$1;->this$0:Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;

    invoke-static {v0}, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;->access$800(Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorExpandableListView;

    const-string v1, "ColorExpandableListView"

    if-nez v0, :cond_0

    const-string p1, "onAnimationUpdate: expandable list is null"

    .line 662
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object p0, p0, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator$1;->this$0:Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;

    invoke-static {p0}, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;->access$900(Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;)V

    return-void

    .line 667
    :cond_0
    invoke-virtual {v0}, Lcom/color/support/widget/ColorExpandableListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v2

    .line 668
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    .line 670
    invoke-virtual {v0}, Lcom/color/support/widget/ColorExpandableListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/color/support/widget/ColorExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v3

    .line 671
    invoke-static {v3, v4}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v5

    .line 672
    invoke-static {v3, v4}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v3

    .line 675
    iget-object v4, p0, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator$1;->this$0:Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;

    invoke-static {v4}, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;->access$1000(Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator$1;->val$isLastChild:Z

    if-nez v4, :cond_2

    iget v4, p0, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator$1;->val$groupPosition:I

    if-gt v2, v4, :cond_1

    if-ge v5, v4, :cond_2

    .line 676
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationUpdate: all is screen out, first:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",groupPos:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator$1;->val$groupPosition:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",last:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object p0, p0, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator$1;->this$0:Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;

    invoke-static {p0}, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;->access$900(Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;)V

    return-void

    .line 683
    :cond_2
    iget-object v2, p0, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator$1;->this$0:Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;

    invoke-static {v2}, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;->access$1000(Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator$1;->val$isLastChild:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator$1;->val$expand:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator$1;->val$groupPosition:I

    if-ne v5, v2, :cond_3

    if-nez v3, :cond_3

    .line 684
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationUpdate: expand is screen over, last:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object p0, p0, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator$1;->this$0:Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;

    invoke-static {p0}, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;->access$900(Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;)V

    return-void

    .line 689
    :cond_3
    iget-object v2, p0, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator$1;->this$0:Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;

    invoke-static {v2}, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;->access$1000(Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator$1;->val$isLastChild:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator$1;->val$expand:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator$1;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v0}, Lcom/color/support/widget/ColorExpandableListView;->getBottom()I

    move-result v3

    if-le v2, v3, :cond_4

    .line 690
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationUpdate3: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator$1;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorExpandableListView;->getBottom()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object p0, p0, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator$1;->this$0:Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;

    invoke-static {p0}, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;->access$900(Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;)V

    return-void

    .line 695
    :cond_4
    iget-object v0, p0, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator$1;->this$0:Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;->access$1002(Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;Z)Z

    .line 696
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 697
    iget-object v0, p0, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator$1;->val$groupInfo:Lcom/color/support/widget/ColorExpandableListView$GroupInfo;

    iput p1, v0, Lcom/color/support/widget/ColorExpandableListView$GroupInfo;->dummyHeight:I

    .line 698
    iget-object v0, p0, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 699
    iget-object p0, p0, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator$1;->val$view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
