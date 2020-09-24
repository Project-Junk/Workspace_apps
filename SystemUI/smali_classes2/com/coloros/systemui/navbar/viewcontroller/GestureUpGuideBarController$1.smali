.class Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController$1;
.super Ljava/lang/Object;
.source "GestureUpGuideBarController.java"

# interfaces
.implements Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNavBarRect(I)Landroid/graphics/Rect;
    .locals 6

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 49
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->getSwipeUpGestureFollowRotationType()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 51
    :goto_0
    iget-object v4, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;

    iget-object v4, v4, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->mView:Landroid/view/View;

    if-eqz v4, :cond_5

    const/4 v4, 0x2

    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_1

    if-eq p1, v4, :cond_4

    const/4 v5, 0x3

    if-eq p1, v5, :cond_1

    goto/16 :goto_1

    :cond_1
    if-eqz v1, :cond_2

    .line 63
    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 64
    iget-object p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;

    invoke-static {p1}, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->access$000(Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;

    invoke-static {v1}, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->access$100(Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;)I

    move-result v1

    mul-int/2addr v1, v4

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 65
    iget-object p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;

    invoke-static {p1}, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->access$000(Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 66
    iget-object p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;

    invoke-static {p1}, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->access$000(Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;

    invoke-static {p0}, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->access$100(Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;)I

    move-result p0

    sub-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    :cond_2
    if-ne p1, v2, :cond_3

    .line 69
    iget-object p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;

    invoke-static {p1}, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->access$000(Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;

    invoke-static {v1}, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->access$100(Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;)I

    move-result v1

    mul-int/2addr v1, v4

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 70
    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 71
    iget-object p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;

    invoke-static {p1}, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->access$000(Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;

    invoke-static {v1}, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->access$100(Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;)I

    move-result v1

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 72
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;

    invoke-static {p0}, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->access$000(Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;)Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->x:I

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 74
    :cond_3
    iget-object p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;

    invoke-static {p1}, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->access$100(Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 75
    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 76
    iget-object p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;

    invoke-static {p1}, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->access$100(Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;)I

    move-result p1

    mul-int/2addr p1, v4

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 77
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;

    invoke-static {p0}, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->access$000(Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;)Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->x:I

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 55
    :cond_4
    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 56
    iget-object p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;

    invoke-static {p1}, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->access$000(Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;

    invoke-static {v1}, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->access$100(Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;)I

    move-result v1

    mul-int/2addr v1, v4

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 57
    iget-object p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;

    invoke-static {p1}, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->access$000(Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->x:I

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 58
    iget-object p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;

    invoke-static {p1}, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->access$000(Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;

    invoke-static {p0}, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->access$100(Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;)I

    move-result p0

    sub-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_5
    :goto_1
    return-object v0
.end method

.method public shouldSamplingInOpaqueMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateIcon(Z)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;

    iget-object v0, v0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->mView:Landroid/view/View;

    check-cast v0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->setIconsDark(Z)V

    .line 96
    iget-object p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;

    invoke-static {p1}, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->access$200(Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;)Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->setHighlightWithAnim(Z)V

    .line 97
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;

    invoke-static {p0}, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->access$200(Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;)Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;

    move-result-object p0

    const/4 p1, 0x0

    const/16 v0, 0xa28

    invoke-virtual {p0, p1, v0}, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->delaySetHighlight(ZI)V

    return-void
.end method
