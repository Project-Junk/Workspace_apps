.class public Lcom/coloros/settings/widget/ColorHomePageCoordinatorLayout;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.source "ColorHomePageCoordinatorLayout.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    invoke-direct {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 32
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/ColorHomePageCoordinatorLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 37
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/ColorHomePageCoordinatorLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/ColorHomePageCoordinatorLayout;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 47
    invoke-super {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 48
    iget v0, p0, Lcom/coloros/settings/widget/ColorHomePageCoordinatorLayout;->a:I

    if-lez v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/coloros/settings/widget/ColorHomePageCoordinatorLayout;->getStatusBarBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/coloros/settings/widget/ColorHomePageCoordinatorLayout;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/coloros/settings/widget/ColorHomePageCoordinatorLayout;->a:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 52
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public setCustomStatusBarBackgroundHeight(I)V
    .locals 1

    .line 58
    iget v0, p0, Lcom/coloros/settings/widget/ColorHomePageCoordinatorLayout;->a:I

    if-eq v0, p1, :cond_0

    .line 59
    iput p1, p0, Lcom/coloros/settings/widget/ColorHomePageCoordinatorLayout;->a:I

    .line 60
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method
