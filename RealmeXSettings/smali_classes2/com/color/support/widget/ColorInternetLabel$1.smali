.class Lcom/color/support/widget/ColorInternetLabel$1;
.super Ljava/lang/Object;
.source "ColorInternetLabel.java"

# interfaces
.implements Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorInternetLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mVirtualViewAt:I

.field final synthetic this$0:Lcom/color/support/widget/ColorInternetLabel;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorInternetLabel;)V
    .locals 0

    .line 593
    iput-object p1, p0, Lcom/color/support/widget/ColorInternetLabel$1;->this$0:Lcom/color/support/widget/ColorInternetLabel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 594
    iput p1, p0, Lcom/color/support/widget/ColorInternetLabel$1;->mVirtualViewAt:I

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 652
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getDisablePosition()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getItemBounds(ILandroid/graphics/Rect;)V
    .locals 4

    if-ltz p1, :cond_1

    .line 610
    iget-object v0, p0, Lcom/color/support/widget/ColorInternetLabel$1;->this$0:Lcom/color/support/widget/ColorInternetLabel;

    invoke-static {v0}, Lcom/color/support/widget/ColorInternetLabel;->access$700(Lcom/color/support/widget/ColorInternetLabel;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/ColorInternetLabel$1;->this$0:Lcom/color/support/widget/ColorInternetLabel;

    invoke-static {v0}, Lcom/color/support/widget/ColorInternetLabel;->access$700(Lcom/color/support/widget/ColorInternetLabel;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 611
    iget-object v0, p0, Lcom/color/support/widget/ColorInternetLabel$1;->this$0:Lcom/color/support/widget/ColorInternetLabel;

    invoke-static {v0}, Lcom/color/support/widget/ColorInternetLabel;->access$700(Lcom/color/support/widget/ColorInternetLabel;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->getLeft()I

    move-result v0

    .line 612
    iget-object v1, p0, Lcom/color/support/widget/ColorInternetLabel$1;->this$0:Lcom/color/support/widget/ColorInternetLabel;

    invoke-static {v1}, Lcom/color/support/widget/ColorInternetLabel;->access$700(Lcom/color/support/widget/ColorInternetLabel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->getTop()I

    move-result v1

    .line 613
    iget-object v2, p0, Lcom/color/support/widget/ColorInternetLabel$1;->this$0:Lcom/color/support/widget/ColorInternetLabel;

    invoke-static {v2}, Lcom/color/support/widget/ColorInternetLabel;->access$700(Lcom/color/support/widget/ColorInternetLabel;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-virtual {v2}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->getRight()I

    move-result v2

    .line 614
    iget-object v3, p0, Lcom/color/support/widget/ColorInternetLabel$1;->this$0:Lcom/color/support/widget/ColorInternetLabel;

    invoke-static {v3}, Lcom/color/support/widget/ColorInternetLabel;->access$700(Lcom/color/support/widget/ColorInternetLabel;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->getBottom()I

    move-result p1

    if-gtz v0, :cond_0

    if-lez v1, :cond_1

    .line 616
    :cond_0
    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    return-void
.end method

.method public getItemCounts()I
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/color/support/widget/ColorInternetLabel$1;->this$0:Lcom/color/support/widget/ColorInternetLabel;

    invoke-static {v0}, Lcom/color/support/widget/ColorInternetLabel;->access$700(Lcom/color/support/widget/ColorInternetLabel;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemDescription(I)Ljava/lang/CharSequence;
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/color/support/widget/ColorInternetLabel$1;->this$0:Lcom/color/support/widget/ColorInternetLabel;

    invoke-static {v0}, Lcom/color/support/widget/ColorInternetLabel;->access$700(Lcom/color/support/widget/ColorInternetLabel;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 628
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVirtualViewAt(FF)I
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/color/support/widget/ColorInternetLabel$1;->this$0:Lcom/color/support/widget/ColorInternetLabel;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-static {v0, p1, p2}, Lcom/color/support/widget/ColorInternetLabel;->access$600(Lcom/color/support/widget/ColorInternetLabel;II)I

    move-result p1

    .line 598
    iput p1, p0, Lcom/color/support/widget/ColorInternetLabel$1;->mVirtualViewAt:I

    return p1
.end method

.method public performAction(IIZ)V
    .locals 0

    .line 633
    iget-object p2, p0, Lcom/color/support/widget/ColorInternetLabel$1;->this$0:Lcom/color/support/widget/ColorInternetLabel;

    invoke-static {p2}, Lcom/color/support/widget/ColorInternetLabel;->access$800(Lcom/color/support/widget/ColorInternetLabel;)Lcom/color/support/widget/ColorInternetLabel$OnItemClickListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 634
    iget-object p2, p0, Lcom/color/support/widget/ColorInternetLabel$1;->this$0:Lcom/color/support/widget/ColorInternetLabel;

    invoke-static {p2}, Lcom/color/support/widget/ColorInternetLabel;->access$800(Lcom/color/support/widget/ColorInternetLabel;)Lcom/color/support/widget/ColorInternetLabel$OnItemClickListener;

    move-result-object p2

    iget-object p3, p0, Lcom/color/support/widget/ColorInternetLabel$1;->this$0:Lcom/color/support/widget/ColorInternetLabel;

    invoke-static {p3}, Lcom/color/support/widget/ColorInternetLabel;->access$700(Lcom/color/support/widget/ColorInternetLabel;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-virtual {p3}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->getItem()Lcom/color/support/widget/help/ColorInternetHelper;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/color/support/widget/ColorInternetLabel$OnItemClickListener;->onItemClick(Lcom/color/support/widget/help/ColorInternetHelper;)V

    .line 637
    :cond_0
    iget-object p2, p0, Lcom/color/support/widget/ColorInternetLabel$1;->this$0:Lcom/color/support/widget/ColorInternetLabel;

    invoke-static {p2}, Lcom/color/support/widget/ColorInternetLabel;->access$900(Lcom/color/support/widget/ColorInternetLabel;)Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;->sendEventForVirtualView(II)Z

    return-void
.end method
