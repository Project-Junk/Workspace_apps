.class public Lcom/coloros/systemui/volume/VolumeAnimationFactory;
.super Ljava/lang/Object;
.source "VolumeAnimationFactory.java"


# instance fields
.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setHeight(I)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/coloros/systemui/volume/VolumeAnimationFactory;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 18
    iget-object p0, p0, Lcom/coloros/systemui/volume/VolumeAnimationFactory;->view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/coloros/systemui/volume/VolumeAnimationFactory;->view:Landroid/view/View;

    return-void
.end method

.method public setWidth(I)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/coloros/systemui/volume/VolumeAnimationFactory;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 9
    iget-object p0, p0, Lcom/coloros/systemui/volume/VolumeAnimationFactory;->view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
