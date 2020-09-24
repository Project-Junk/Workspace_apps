.class final Lcom/coloros/settings/feature/appmanager/AppManagerFeature$3;
.super Ljava/lang/Object;
.source "AppManagerFeature.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->showOrHideToolBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;Z)V
    .locals 0

    .line 518
    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$3;->b:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    iput-boolean p2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 526
    iget-boolean p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$3;->a:Z

    if-nez p1, :cond_0

    .line 527
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$3;->b:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-static {p1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->access$300(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 529
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$3;->b:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-static {v0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->access$400(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$3;->b:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-static {v0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->access$400(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    .line 531
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$3;->b:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-static {p1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->access$400(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    .line 532
    instance-of v0, p1, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;

    if-eqz v0, :cond_0

    .line 533
    move-object v0, p1

    check-cast v0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;

    .line 1137
    iget-object v0, v0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->a:Landroidx/collection/SparseArrayCompat;

    const v1, 0x186a0

    invoke-virtual {v0, v1}, Landroidx/collection/SparseArrayCompat;->remove(I)V

    .line 534
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$3;->b:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-static {v0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->access$400(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 539
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$3;->b:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-static {p1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->access$500(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)Lcolor/support/design/widget/ColorAppBarLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 540
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$3;->b:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-static {p1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->access$500(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)Lcolor/support/design/widget/ColorAppBarLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcolor/support/design/widget/ColorAppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 541
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object p1

    .line 542
    instance-of v0, p1, Lcom/coloros/settings/behavior/AppListSearchBehavior;

    if-eqz v0, :cond_1

    .line 543
    check-cast p1, Lcom/coloros/settings/behavior/AppListSearchBehavior;

    iget-boolean v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$3;->a:Z

    .line 2138
    iput-boolean v0, p1, Lcom/coloros/settings/behavior/AppListSearchBehavior;->b:Z

    .line 544
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$3;->b:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-static {v0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->access$600(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)I

    move-result v0

    .line 2142
    iput v0, p1, Lcom/coloros/settings/behavior/AppListSearchBehavior;->a:I

    :cond_1
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
