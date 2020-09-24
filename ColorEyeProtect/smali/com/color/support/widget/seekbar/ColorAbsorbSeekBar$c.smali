.class final Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$c;
.super Landroidx/d/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic c:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

.field private d:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$c;->c:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-direct {p0, p2}, Landroidx/d/b/a;-><init>(Landroid/view/View;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$c;->d:Landroid/graphics/Rect;

    return-void
.end method

.method private d(I)Landroid/graphics/Rect;
    .locals 1

    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$c;->d:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$c;->c:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-virtual {v0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$c;->c:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getHeight()I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-object p1
.end method


# virtual methods
.method protected a(FF)I
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$c;->c:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-virtual {v1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    cmpl-float p1, p2, v0

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$c;->c:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getHeight()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method protected a(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$c;->c:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-static {p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->g(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$c;->c:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-static {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->f(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    return-void
.end method

.method protected a(ILandroidx/core/f/a/c;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$c;->c:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-static {v1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->f(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/f/a/c;->d(Ljava/lang/CharSequence;)V

    const-class v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/f/a/c;->b(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$c;->d(I)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/core/f/a/c;->b(Landroid/graphics/Rect;)V

    return-void
.end method

.method public a(Landroid/view/View;Landroidx/core/f/a/c;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/d/b/a;->a(Landroid/view/View;Landroidx/core/f/a/c;)V

    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$c;->c:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-virtual {p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$c;->c:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-virtual {p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getProgress()I

    move-result p1

    if-lez p1, :cond_0

    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Landroidx/core/f/a/c;->a(I)V

    :cond_0
    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$c;->c:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getMax()I

    move-result p0

    if-ge p1, p0, :cond_1

    const/16 p0, 0x1000

    invoke-virtual {p2, p0}, Landroidx/core/f/a/c;->a(I)V

    :cond_1
    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected b(IILandroid/os/Bundle;)Z
    .locals 0

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$c;->a(II)Z

    const/4 p0, 0x0

    return p0
.end method

.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/d/b/a;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
