.class Lcom/coloros/systemui/qs/customize/ColorItemAnimator$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/customize/ColorItemAnimator;

.field final synthetic val$animation:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$deltaX:I

.field final synthetic val$deltaY:I

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic val$moveInScreen:Z

.field final synthetic val$moveOutScreen:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/customize/ColorItemAnimator;ZILandroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;ZLandroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$6;->this$0:Lcom/coloros/systemui/qs/customize/ColorItemAnimator;

    iput-boolean p2, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$6;->val$moveInScreen:Z

    iput p3, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$6;->val$deltaX:I

    iput-object p4, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$6;->val$view:Landroid/view/View;

    iput p5, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$6;->val$deltaY:I

    iput-object p6, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$6;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-boolean p7, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$6;->val$moveOutScreen:Z

    iput-object p8, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$6;->val$animation:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 327
    iget p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$6;->val$deltaX:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 328
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$6;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 330
    :cond_0
    iget p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$6;->val$deltaY:I

    if-eqz p1, :cond_1

    .line 331
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$6;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 333
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$6;->val$view:Landroid/view/View;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 338
    iget-boolean p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$6;->val$moveOutScreen:Z

    if-eqz p1, :cond_1

    .line 339
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$6;->val$view:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 340
    iget p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$6;->val$deltaX:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 341
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$6;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 343
    :cond_0
    iget p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$6;->val$deltaY:I

    if-eqz p1, :cond_1

    .line 344
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$6;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 347
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$6;->val$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 348
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$6;->this$0:Lcom/coloros/systemui/qs/customize/ColorItemAnimator;

    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$6;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 349
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$6;->this$0:Lcom/coloros/systemui/qs/customize/ColorItemAnimator;

    iget-object p1, p1, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$6;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 350
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$6;->this$0:Lcom/coloros/systemui/qs/customize/ColorItemAnimator;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 314
    iget-boolean p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$6;->val$moveInScreen:Z

    if-eqz p1, :cond_1

    .line 315
    iget p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$6;->val$deltaX:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 316
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$6;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 318
    :cond_0
    iget p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$6;->val$deltaY:I

    if-eqz p1, :cond_1

    .line 319
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$6;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 322
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$6;->this$0:Lcom/coloros/systemui/qs/customize/ColorItemAnimator;

    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$6;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->dispatchMoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
