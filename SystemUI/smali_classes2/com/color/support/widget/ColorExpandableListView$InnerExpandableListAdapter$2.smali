.class Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter$2;
.super Lcom/color/support/widget/ColorExpandableListView$EndAnimatorListener;
.source "ColorExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter;->collapseAnimationStart(Lcom/color/support/widget/ColorExpandableListView$DummyView;IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter;

.field final synthetic val$dummyView:Lcom/color/support/widget/ColorExpandableListView$DummyView;

.field final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter;Lcom/color/support/widget/ColorExpandableListView$DummyView;I)V
    .locals 0

    .line 493
    iput-object p1, p0, Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter$2;->this$0:Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter;

    iput-object p2, p0, Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter$2;->val$dummyView:Lcom/color/support/widget/ColorExpandableListView$DummyView;

    iput p3, p0, Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter$2;->val$groupPosition:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorExpandableListView$EndAnimatorListener;-><init>(Lcom/color/support/widget/ColorExpandableListView$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 496
    iget-object p1, p0, Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter$2;->val$dummyView:Lcom/color/support/widget/ColorExpandableListView$DummyView;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorExpandableListView$DummyView;->clearViews()V

    .line 497
    iget-object p1, p0, Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter$2;->this$0:Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter;

    iget v0, p0, Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter$2;->val$groupPosition:I

    invoke-static {p1, v0}, Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter;->access$200(Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter;I)V

    .line 498
    iget-object p1, p0, Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter$2;->this$0:Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter;

    invoke-static {p1}, Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter;->access$600(Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter;)Lcom/color/support/widget/ColorExpandableListView;

    move-result-object p1

    iget v0, p0, Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter$2;->val$groupPosition:I

    invoke-static {p1, v0}, Lcom/color/support/widget/ColorExpandableListView;->access$700(Lcom/color/support/widget/ColorExpandableListView;I)V

    .line 499
    iget-object p0, p0, Lcom/color/support/widget/ColorExpandableListView$InnerExpandableListAdapter$2;->val$dummyView:Lcom/color/support/widget/ColorExpandableListView$DummyView;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorExpandableListView$DummyView;->setTag(Ljava/lang/Object;)V

    return-void
.end method