.class final Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$11;
.super Ljava/lang/Object;
.source "SevenDiracMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcolor/support/design/widget/ColorAppBarLayout;

.field final synthetic b:Landroid/widget/ListView;

.field final synthetic c:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;


# direct methods
.method constructor <init>(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;Lcolor/support/design/widget/ColorAppBarLayout;Landroid/widget/ListView;)V
    .locals 0

    .line 753
    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$11;->c:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    iput-object p2, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$11;->a:Lcolor/support/design/widget/ColorAppBarLayout;

    iput-object p3, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$11;->b:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 755
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$11;->a:Lcolor/support/design/widget/ColorAppBarLayout;

    invoke-virtual {v0}, Lcolor/support/design/widget/ColorAppBarLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$11;->c:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 756
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$11;->a:Lcolor/support/design/widget/ColorAppBarLayout;

    invoke-virtual {v2}, Lcolor/support/design/widget/ColorAppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x4

    .line 757
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 758
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 759
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$11;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    return-void
.end method
