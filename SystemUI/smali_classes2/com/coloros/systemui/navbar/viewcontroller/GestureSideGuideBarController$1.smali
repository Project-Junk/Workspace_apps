.class Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController$1;
.super Ljava/lang/Object;
.source "GestureSideGuideBarController.java"

# interfaces
.implements Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNavBarRect(I)Landroid/graphics/Rect;
    .locals 5

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 55
    iget-object v1, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;

    iget-object v1, v1, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 56
    iget-object v1, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;

    invoke-virtual {v1}, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->getScreenSize()Landroid/util/Size;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    if-eq p1, v4, :cond_0

    if-eq p1, v3, :cond_1

    const/4 v4, 0x3

    if-eq p1, v4, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 68
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result p1

    iget-object v2, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;

    invoke-static {v2}, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->access$000(Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;)I

    move-result v2

    mul-int/2addr v2, v3

    sub-int/2addr p1, v2

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 69
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 70
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result p1

    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;

    invoke-static {p0}, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->access$000(Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;)I

    move-result p0

    sub-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 60
    :cond_1
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 61
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result p1

    iget-object v2, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;

    invoke-static {v2}, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->access$000(Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;)I

    move-result v2

    mul-int/2addr v2, v3

    sub-int/2addr p1, v2

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 62
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 63
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result p1

    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;

    invoke-static {p0}, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->access$000(Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;)I

    move-result p0

    sub-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_2
    :goto_0
    return-object v0
.end method

.method public shouldSamplingInOpaqueMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateIcon(Z)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;

    iget-object v0, v0, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->mView:Landroid/view/View;

    check-cast v0, Lcom/coloros/systemui/navbar/GestureSideGuideBarView;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/navbar/GestureSideGuideBarView;->setDarkColor(Z)V

    .line 87
    iget-object p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;

    invoke-static {p1}, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->access$100(Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;)Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->isHiddenInLauncher()Z

    move-result p1

    if-nez p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;

    invoke-static {p1}, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->access$100(Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;)Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->setHighlightWithAnim(Z)V

    .line 89
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;

    invoke-static {p0}, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->access$100(Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;)Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;

    move-result-object p0

    const/4 p1, 0x0

    const/16 v0, 0xa28

    invoke-virtual {p0, p1, v0}, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->delaySetHighlight(ZI)V

    :cond_0
    return-void
.end method
