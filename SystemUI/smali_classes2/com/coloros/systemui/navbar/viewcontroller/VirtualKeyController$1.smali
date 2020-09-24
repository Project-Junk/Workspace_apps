.class Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController$1;
.super Ljava/lang/Object;
.source "VirtualKeyController.java"

# interfaces
.implements Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNavBarRect(I)Landroid/graphics/Rect;
    .locals 5

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 63
    iget-object v1, p0, Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;

    iget-object v1, v1, Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;->mView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 64
    iget-object v1, p0, Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;

    invoke-virtual {v1}, Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;->getScreenSize()Landroid/util/Size;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    move p0, v2

    move p1, p0

    move v1, p1

    goto :goto_0

    .line 86
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;

    invoke-static {p0}, Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;->access$000(Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;)I

    move-result p0

    .line 87
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result p1

    move v1, p1

    move p1, p0

    move p0, v2

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result p1

    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;

    invoke-static {p0}, Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;->access$000(Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;)I

    move-result p0

    sub-int p0, p1, p0

    .line 80
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result p1

    .line 81
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    move v4, v2

    move v2, p0

    move p0, v4

    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result p1

    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController$1;->this$0:Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;

    invoke-static {p0}, Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;->access$000(Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;)I

    move-result p0

    sub-int p0, p1, p0

    .line 74
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result p1

    .line 75
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 92
    :goto_0
    invoke-virtual {v0, v2, p0, p1, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_3
    return-object v0
.end method

.method public shouldSamplingInOpaqueMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateIcon(Z)V
    .locals 0

    .line 57
    invoke-static {}, Lcom/coloros/systemui/statusbar/phone/LightBarControllerEx;->getInstance()Lcom/coloros/systemui/statusbar/phone/LightBarControllerEx;

    move-result-object p0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/phone/LightBarControllerEx;->setNavIconLight(Z)V

    return-void
.end method
