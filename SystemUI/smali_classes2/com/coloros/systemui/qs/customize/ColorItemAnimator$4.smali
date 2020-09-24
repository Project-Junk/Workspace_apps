.class Lcom/coloros/systemui/qs/customize/ColorItemAnimator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/customize/ColorItemAnimator;

.field final synthetic val$animation:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/customize/ColorItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$4;->this$0:Lcom/coloros/systemui/qs/customize/ColorItemAnimator;

    iput-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$4;->val$animation:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 213
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$4;->val$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 214
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$4;->val$view:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 215
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$4;->this$0:Lcom/coloros/systemui/qs/customize/ColorItemAnimator;

    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 216
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$4;->this$0:Lcom/coloros/systemui/qs/customize/ColorItemAnimator;

    iget-object p1, p1, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 217
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$4;->this$0:Lcom/coloros/systemui/qs/customize/ColorItemAnimator;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 208
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$4;->this$0:Lcom/coloros/systemui/qs/customize/ColorItemAnimator;

    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->dispatchRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
