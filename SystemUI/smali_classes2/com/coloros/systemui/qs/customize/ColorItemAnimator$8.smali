.class Lcom/coloros/systemui/qs/customize/ColorItemAnimator$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->animateChangeImpl(Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/customize/ColorItemAnimator;

.field final synthetic val$changeInfo:Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;

.field final synthetic val$newView:Landroid/view/View;

.field final synthetic val$newViewAnimation:Landroid/view/ViewPropertyAnimator;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/customize/ColorItemAnimator;Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$8;->this$0:Lcom/coloros/systemui/qs/customize/ColorItemAnimator;

    iput-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$8;->val$changeInfo:Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;

    iput-object p3, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$8;->val$newViewAnimation:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$8;->val$newView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 406
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$8;->val$newViewAnimation:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 407
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$8;->val$newView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 408
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$8;->val$newView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 409
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$8;->val$newView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 410
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$8;->this$0:Lcom/coloros/systemui/qs/customize/ColorItemAnimator;

    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$8;->val$changeInfo:Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 411
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$8;->this$0:Lcom/coloros/systemui/qs/customize/ColorItemAnimator;

    iget-object p1, p1, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$8;->val$changeInfo:Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 412
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$8;->this$0:Lcom/coloros/systemui/qs/customize/ColorItemAnimator;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 402
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$8;->this$0:Lcom/coloros/systemui/qs/customize/ColorItemAnimator;

    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$8;->val$changeInfo:Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;

    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->dispatchChangeStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method