.class Lcolor/support/v7/widget/cardview/ColorCardView$1;
.super Ljava/lang/Object;
.source "ColorCardView.java"

# interfaces
.implements Lcolor/support/v7/widget/cardview/CardViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/widget/cardview/ColorCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCardBackground:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcolor/support/v7/widget/cardview/ColorCardView;


# direct methods
.method constructor <init>(Lcolor/support/v7/widget/cardview/ColorCardView;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcolor/support/v7/widget/cardview/ColorCardView$1;->this$0:Lcolor/support/v7/widget/cardview/ColorCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCardBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 472
    iget-object v0, p0, Lcolor/support/v7/widget/cardview/ColorCardView$1;->mCardBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCardView()Landroid/view/View;
    .locals 1

    .line 477
    iget-object v0, p0, Lcolor/support/v7/widget/cardview/ColorCardView$1;->this$0:Lcolor/support/v7/widget/cardview/ColorCardView;

    return-object v0
.end method

.method public getPreventCornerOverlap()Z
    .locals 1

    .line 450
    iget-object v0, p0, Lcolor/support/v7/widget/cardview/ColorCardView$1;->this$0:Lcolor/support/v7/widget/cardview/ColorCardView;

    invoke-virtual {v0}, Lcolor/support/v7/widget/cardview/ColorCardView;->getPreventCornerOverlap()Z

    move-result v0

    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    .line 445
    iget-object v0, p0, Lcolor/support/v7/widget/cardview/ColorCardView$1;->this$0:Lcolor/support/v7/widget/cardview/ColorCardView;

    invoke-virtual {v0}, Lcolor/support/v7/widget/cardview/ColorCardView;->getUseCompatPadding()Z

    move-result v0

    return v0
.end method

.method public setCardBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 439
    iput-object p1, p0, Lcolor/support/v7/widget/cardview/ColorCardView$1;->mCardBackground:Landroid/graphics/drawable/Drawable;

    .line 440
    iget-object v0, p0, Lcolor/support/v7/widget/cardview/ColorCardView$1;->this$0:Lcolor/support/v7/widget/cardview/ColorCardView;

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/cardview/ColorCardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setMinWidthHeightInternal(II)V
    .locals 1

    .line 462
    iget-object v0, p0, Lcolor/support/v7/widget/cardview/ColorCardView$1;->this$0:Lcolor/support/v7/widget/cardview/ColorCardView;

    iget v0, v0, Lcolor/support/v7/widget/cardview/ColorCardView;->mUserSetMinWidth:I

    if-le p1, v0, :cond_0

    .line 463
    iget-object v0, p0, Lcolor/support/v7/widget/cardview/ColorCardView$1;->this$0:Lcolor/support/v7/widget/cardview/ColorCardView;

    invoke-static {v0, p1}, Lcolor/support/v7/widget/cardview/ColorCardView;->access$101(Lcolor/support/v7/widget/cardview/ColorCardView;I)V

    .line 465
    :cond_0
    iget-object p1, p0, Lcolor/support/v7/widget/cardview/ColorCardView$1;->this$0:Lcolor/support/v7/widget/cardview/ColorCardView;

    iget p1, p1, Lcolor/support/v7/widget/cardview/ColorCardView;->mUserSetMinHeight:I

    if-le p2, p1, :cond_1

    .line 466
    iget-object p1, p0, Lcolor/support/v7/widget/cardview/ColorCardView$1;->this$0:Lcolor/support/v7/widget/cardview/ColorCardView;

    invoke-static {p1, p2}, Lcolor/support/v7/widget/cardview/ColorCardView;->access$201(Lcolor/support/v7/widget/cardview/ColorCardView;I)V

    :cond_1
    return-void
.end method

.method public setShadowPadding(IIII)V
    .locals 2

    .line 455
    iget-object v0, p0, Lcolor/support/v7/widget/cardview/ColorCardView$1;->this$0:Lcolor/support/v7/widget/cardview/ColorCardView;

    iget-object v0, v0, Lcolor/support/v7/widget/cardview/ColorCardView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 456
    iget-object v0, p0, Lcolor/support/v7/widget/cardview/ColorCardView$1;->this$0:Lcolor/support/v7/widget/cardview/ColorCardView;

    iget-object v1, v0, Lcolor/support/v7/widget/cardview/ColorCardView;->mContentPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iget-object v1, p0, Lcolor/support/v7/widget/cardview/ColorCardView$1;->this$0:Lcolor/support/v7/widget/cardview/ColorCardView;

    iget-object v1, v1, Lcolor/support/v7/widget/cardview/ColorCardView;->mContentPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v1

    iget-object v1, p0, Lcolor/support/v7/widget/cardview/ColorCardView$1;->this$0:Lcolor/support/v7/widget/cardview/ColorCardView;

    iget-object v1, v1, Lcolor/support/v7/widget/cardview/ColorCardView;->mContentPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr p3, v1

    iget-object v1, p0, Lcolor/support/v7/widget/cardview/ColorCardView$1;->this$0:Lcolor/support/v7/widget/cardview/ColorCardView;

    iget-object v1, v1, Lcolor/support/v7/widget/cardview/ColorCardView;->mContentPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p4, v1

    invoke-static {v0, p1, p2, p3, p4}, Lcolor/support/v7/widget/cardview/ColorCardView;->access$001(Lcolor/support/v7/widget/cardview/ColorCardView;IIII)V

    return-void
.end method
