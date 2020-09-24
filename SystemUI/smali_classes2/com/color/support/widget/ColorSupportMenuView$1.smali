.class Lcom/color/support/widget/ColorSupportMenuView$1;
.super Ljava/lang/Object;
.source "ColorSupportMenuView.java"

# interfaces
.implements Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$ColorViewTalkBalkInteraction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorSupportMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mVirtualViewAt:I

.field final synthetic this$0:Lcom/color/support/widget/ColorSupportMenuView;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorSupportMenuView;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/color/support/widget/ColorSupportMenuView$1;->this$0:Lcom/color/support/widget/ColorSupportMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 392
    iput p1, p0, Lcom/color/support/widget/ColorSupportMenuView$1;->mVirtualViewAt:I

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 456
    const-class p0, Landroid/widget/Button;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentPosition()I
    .locals 0

    .line 446
    iget-object p0, p0, Lcom/color/support/widget/ColorSupportMenuView$1;->this$0:Lcom/color/support/widget/ColorSupportMenuView;

    invoke-static {p0}, Lcom/color/support/widget/ColorSupportMenuView;->access$1100(Lcom/color/support/widget/ColorSupportMenuView;)I

    move-result p0

    return p0
.end method

.method public getDisablePosition()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getItemBounds(ILandroid/graphics/Rect;)V
    .locals 5

    .line 408
    iget-object v0, p0, Lcom/color/support/widget/ColorSupportMenuView$1;->this$0:Lcom/color/support/widget/ColorSupportMenuView;

    invoke-static {v0}, Lcom/color/support/widget/ColorSupportMenuView;->access$100(Lcom/color/support/widget/ColorSupportMenuView;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 410
    iget-object v1, p0, Lcom/color/support/widget/ColorSupportMenuView$1;->this$0:Lcom/color/support/widget/ColorSupportMenuView;

    invoke-static {v1}, Lcom/color/support/widget/ColorSupportMenuView;->access$200(Lcom/color/support/widget/ColorSupportMenuView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/color/support/widget/ColorSupportMenuView$1;->this$0:Lcom/color/support/widget/ColorSupportMenuView;

    invoke-static {v2}, Lcom/color/support/widget/ColorSupportMenuView;->access$200(Lcom/color/support/widget/ColorSupportMenuView;)I

    move-result v2

    iget-object v3, p0, Lcom/color/support/widget/ColorSupportMenuView$1;->this$0:Lcom/color/support/widget/ColorSupportMenuView;

    invoke-static {v3}, Lcom/color/support/widget/ColorSupportMenuView;->access$300(Lcom/color/support/widget/ColorSupportMenuView;)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/color/support/widget/ColorSupportMenuView$1;->this$0:Lcom/color/support/widget/ColorSupportMenuView;

    invoke-static {v3}, Lcom/color/support/widget/ColorSupportMenuView;->access$400(Lcom/color/support/widget/ColorSupportMenuView;)I

    move-result v3

    rem-int v3, p1, v3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 411
    iget-object v2, p0, Lcom/color/support/widget/ColorSupportMenuView$1;->this$0:Lcom/color/support/widget/ColorSupportMenuView;

    invoke-virtual {v2}, Lcom/color/support/widget/ColorSupportMenuView;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 412
    iget-object v1, p0, Lcom/color/support/widget/ColorSupportMenuView$1;->this$0:Lcom/color/support/widget/ColorSupportMenuView;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorSupportMenuView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/color/support/widget/ColorSupportMenuView$1;->this$0:Lcom/color/support/widget/ColorSupportMenuView;

    invoke-static {v2}, Lcom/color/support/widget/ColorSupportMenuView;->access$300(Lcom/color/support/widget/ColorSupportMenuView;)I

    move-result v2

    iget-object v3, p0, Lcom/color/support/widget/ColorSupportMenuView$1;->this$0:Lcom/color/support/widget/ColorSupportMenuView;

    invoke-static {v3}, Lcom/color/support/widget/ColorSupportMenuView;->access$200(Lcom/color/support/widget/ColorSupportMenuView;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/color/support/widget/ColorSupportMenuView$1;->this$0:Lcom/color/support/widget/ColorSupportMenuView;

    invoke-static {v3}, Lcom/color/support/widget/ColorSupportMenuView;->access$200(Lcom/color/support/widget/ColorSupportMenuView;)I

    move-result v3

    iget-object v4, p0, Lcom/color/support/widget/ColorSupportMenuView$1;->this$0:Lcom/color/support/widget/ColorSupportMenuView;

    invoke-static {v4}, Lcom/color/support/widget/ColorSupportMenuView;->access$300(Lcom/color/support/widget/ColorSupportMenuView;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/color/support/widget/ColorSupportMenuView$1;->this$0:Lcom/color/support/widget/ColorSupportMenuView;

    invoke-static {v4}, Lcom/color/support/widget/ColorSupportMenuView;->access$400(Lcom/color/support/widget/ColorSupportMenuView;)I

    move-result v4

    rem-int v4, p1, v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 414
    :cond_0
    iget-object v2, p0, Lcom/color/support/widget/ColorSupportMenuView$1;->this$0:Lcom/color/support/widget/ColorSupportMenuView;

    invoke-static {v2}, Lcom/color/support/widget/ColorSupportMenuView;->access$300(Lcom/color/support/widget/ColorSupportMenuView;)I

    move-result v2

    add-int/2addr v2, v1

    .line 415
    iget-object v3, p0, Lcom/color/support/widget/ColorSupportMenuView$1;->this$0:Lcom/color/support/widget/ColorSupportMenuView;

    invoke-static {v3}, Lcom/color/support/widget/ColorSupportMenuView;->access$500(Lcom/color/support/widget/ColorSupportMenuView;)I

    iget-object v3, p0, Lcom/color/support/widget/ColorSupportMenuView$1;->this$0:Lcom/color/support/widget/ColorSupportMenuView;

    invoke-static {v3}, Lcom/color/support/widget/ColorSupportMenuView;->access$400(Lcom/color/support/widget/ColorSupportMenuView;)I

    move-result v3

    div-int v3, p1, v3

    .line 416
    iget-object v3, p0, Lcom/color/support/widget/ColorSupportMenuView$1;->this$0:Lcom/color/support/widget/ColorSupportMenuView;

    invoke-static {v3}, Lcom/color/support/widget/ColorSupportMenuView;->access$400(Lcom/color/support/widget/ColorSupportMenuView;)I

    move-result v3

    if-ge p1, v3, :cond_1

    .line 417
    iget-object p1, p0, Lcom/color/support/widget/ColorSupportMenuView$1;->this$0:Lcom/color/support/widget/ColorSupportMenuView;

    invoke-static {p1}, Lcom/color/support/widget/ColorSupportMenuView;->access$500(Lcom/color/support/widget/ColorSupportMenuView;)I

    move-result p1

    goto :goto_0

    .line 419
    :cond_1
    iget-object p1, p0, Lcom/color/support/widget/ColorSupportMenuView$1;->this$0:Lcom/color/support/widget/ColorSupportMenuView;

    invoke-static {p1}, Lcom/color/support/widget/ColorSupportMenuView;->access$600(Lcom/color/support/widget/ColorSupportMenuView;)I

    move-result p1

    .line 421
    :goto_0
    iget-object v3, p0, Lcom/color/support/widget/ColorSupportMenuView$1;->this$0:Lcom/color/support/widget/ColorSupportMenuView;

    invoke-static {v3}, Lcom/color/support/widget/ColorSupportMenuView;->access$700(Lcom/color/support/widget/ColorSupportMenuView;)I

    move-result v3

    add-int/2addr v3, p1

    iget-object p0, p0, Lcom/color/support/widget/ColorSupportMenuView$1;->this$0:Lcom/color/support/widget/ColorSupportMenuView;

    invoke-static {p0}, Lcom/color/support/widget/ColorSupportMenuView;->access$800(Lcom/color/support/widget/ColorSupportMenuView;)I

    move-result p0

    add-int/2addr v3, p0

    iget p0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v3, p0

    iget p0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v3, p0

    .line 422
    invoke-virtual {p2, v1, p1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getItemCounts()I
    .locals 0

    .line 451
    iget-object p0, p0, Lcom/color/support/widget/ColorSupportMenuView$1;->this$0:Lcom/color/support/widget/ColorSupportMenuView;

    invoke-static {p0}, Lcom/color/support/widget/ColorSupportMenuView;->access$1200(Lcom/color/support/widget/ColorSupportMenuView;)I

    move-result p0

    return p0
.end method

.method public getItemDescription(I)Ljava/lang/CharSequence;
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/color/support/widget/ColorSupportMenuView$1;->this$0:Lcom/color/support/widget/ColorSupportMenuView;

    invoke-static {v0}, Lcom/color/support/widget/ColorSupportMenuView;->access$900(Lcom/color/support/widget/ColorSupportMenuView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorSupportMenuItem;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorSupportMenuItem;->getText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 432
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVirtualViewAt(FF)I
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/color/support/widget/ColorSupportMenuView$1;->this$0:Lcom/color/support/widget/ColorSupportMenuView;

    float-to-int p1, p1

    int-to-float p1, p1

    float-to-int p2, p2

    int-to-float p2, p2

    invoke-static {v0, p1, p2}, Lcom/color/support/widget/ColorSupportMenuView;->access$000(Lcom/color/support/widget/ColorSupportMenuView;FF)I

    move-result p1

    .line 396
    iput p1, p0, Lcom/color/support/widget/ColorSupportMenuView$1;->mVirtualViewAt:I

    return p1
.end method

.method public performAction(IIZ)V
    .locals 0

    .line 437
    iget-object p2, p0, Lcom/color/support/widget/ColorSupportMenuView$1;->this$0:Lcom/color/support/widget/ColorSupportMenuView;

    invoke-static {p2}, Lcom/color/support/widget/ColorSupportMenuView;->access$900(Lcom/color/support/widget/ColorSupportMenuView;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/color/support/widget/ColorSupportMenuItem;

    invoke-virtual {p2}, Lcom/color/support/widget/ColorSupportMenuItem;->getOnItemClickListener()Lcom/color/support/widget/ColorSupportMenuItem$OnItemClickListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 438
    iget-object p2, p0, Lcom/color/support/widget/ColorSupportMenuView$1;->this$0:Lcom/color/support/widget/ColorSupportMenuView;

    invoke-static {p2}, Lcom/color/support/widget/ColorSupportMenuView;->access$900(Lcom/color/support/widget/ColorSupportMenuView;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/color/support/widget/ColorSupportMenuItem;

    invoke-virtual {p2}, Lcom/color/support/widget/ColorSupportMenuItem;->getOnItemClickListener()Lcom/color/support/widget/ColorSupportMenuItem$OnItemClickListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/color/support/widget/ColorSupportMenuItem$OnItemClickListener;->onColorMenuItemClick(I)V

    .line 441
    :cond_0
    iget-object p0, p0, Lcom/color/support/widget/ColorSupportMenuView$1;->this$0:Lcom/color/support/widget/ColorSupportMenuView;

    invoke-static {p0}, Lcom/color/support/widget/ColorSupportMenuView;->access$1000(Lcom/color/support/widget/ColorSupportMenuView;)Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;->sendEventForVirtualView(II)Z

    return-void
.end method
