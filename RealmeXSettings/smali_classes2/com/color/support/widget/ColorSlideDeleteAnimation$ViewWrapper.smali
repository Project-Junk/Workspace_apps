.class Lcom/color/support/widget/ColorSlideDeleteAnimation$ViewWrapper;
.super Ljava/lang/Object;
.source "ColorSlideDeleteAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorSlideDeleteAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewWrapper"
.end annotation


# instance fields
.field mTarget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/color/support/widget/ColorSlideDeleteAnimation$ViewWrapper;->mTarget:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideDeleteAnimation$ViewWrapper;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v0
.end method

.method public setHeight(I)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideDeleteAnimation$ViewWrapper;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 145
    iget-object p1, p0, Lcom/color/support/widget/ColorSlideDeleteAnimation$ViewWrapper;->mTarget:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method
