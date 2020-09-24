.class Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;
.super Landroid/view/View;
.source "ExpandableRecyclerConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ExpandableRecyclerConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DummyView"
.end annotation


# instance fields
.field private views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 685
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 682
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;->views:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addFakeView(Landroid/view/View;)V
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;->views:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearViews()V
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 719
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 720
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    .line 723
    iget-object v4, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;->views:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 725
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 726
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v3, v5

    .line 728
    invoke-virtual {p0}, Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;->getWidth()I

    move-result v6

    invoke-virtual {p1, v1, v1, v6, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 729
    invoke-virtual {v4, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 730
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v4, 0x0

    int-to-float v5, v5

    .line 732
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 733
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    if-gt v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 738
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    sub-int/2addr p5, p3

    .line 700
    iget-object p1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;->views:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p4, 0x0

    move v0, p4

    :goto_0
    if-ge p4, p1, :cond_0

    .line 703
    iget-object v1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;->views:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 704
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 706
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, p2

    add-int/2addr v2, p3

    invoke-virtual {v1, p2, p3, v3, v2}, Landroid/view/View;->layout(IIII)V

    if-gt v0, p5, :cond_0

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
