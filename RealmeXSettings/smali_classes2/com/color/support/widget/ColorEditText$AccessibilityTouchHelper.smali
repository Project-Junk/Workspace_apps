.class public Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "ColorEditText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessibilityTouchHelper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHostView:Landroid/view/View;

.field private mUninstallRect:Landroid/graphics/Rect;

.field private mViewRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/color/support/widget/ColorEditText;


# direct methods
.method public constructor <init>(Lcom/color/support/widget/ColorEditText;Landroid/view/View;)V
    .locals 0

    .line 1346
    iput-object p1, p0, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->this$0:Lcom/color/support/widget/ColorEditText;

    .line 1347
    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 1336
    iput-object p1, p0, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->mHostView:Landroid/view/View;

    .line 1337
    iput-object p1, p0, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->mContext:Landroid/content/Context;

    .line 1338
    iput-object p1, p0, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->mUninstallRect:Landroid/graphics/Rect;

    .line 1339
    iput-object p1, p0, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->mViewRect:Landroid/graphics/Rect;

    .line 1348
    iput-object p2, p0, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->mHostView:Landroid/view/View;

    .line 1349
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->mHostView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getItemBounds(I)Landroid/graphics/Rect;
    .locals 0

    if-nez p1, :cond_1

    .line 1408
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->mUninstallRect:Landroid/graphics/Rect;

    if-nez p1, :cond_0

    .line 1409
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->initUninstallRect()V

    .line 1411
    :cond_0
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->mUninstallRect:Landroid/graphics/Rect;

    return-object p1

    .line 1413
    :cond_1
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    return-object p1
.end method

.method private initUninstallRect()V
    .locals 2

    .line 1353
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->mUninstallRect:Landroid/graphics/Rect;

    .line 1354
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->mUninstallRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->this$0:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorEditText;->getDeleteButtonLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1355
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->mUninstallRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->this$0:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorEditText;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1356
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->mUninstallRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1357
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->this$0:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorEditText;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private initViewRect()V
    .locals 3

    .line 1361
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->mViewRect:Landroid/graphics/Rect;

    .line 1362
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->mViewRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1363
    iget-object v2, p0, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->this$0:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v2}, Lcom/color/support/widget/ColorEditText;->getWidth()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 1364
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->mViewRect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1365
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->this$0:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorEditText;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method public getVirtualViewAt(FF)I
    .locals 2

    .line 1370
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->mUninstallRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 1371
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->initUninstallRect()V

    :cond_0
    const/high16 v0, -0x80000000

    .line 1375
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->mUninstallRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->mUninstallRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->mUninstallRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_1

    iget-object p1, p0, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->mUninstallRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->this$0:Lcom/color/support/widget/ColorEditText;

    .line 1376
    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->isDeleteButtonExist()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public getVisibleVirtualViews(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1418
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->this$0:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->isDeleteButtonExist()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1419
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 0

    const/16 p3, 0x10

    if-ne p2, p3, :cond_1

    if-nez p1, :cond_0

    .line 1426
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->this$0:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->isDeleteButtonExist()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1427
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->this$0:Lcom/color/support/widget/ColorEditText;

    invoke-static {p1}, Lcom/color/support/widget/ColorEditText;->access$600(Lcom/color/support/widget/ColorEditText;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1384
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->this$0:Lcom/color/support/widget/ColorEditText;

    invoke-static {p1}, Lcom/color/support/widget/ColorEditText;->access$500(Lcom/color/support/widget/ColorEditText;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1392
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->this$0:Lcom/color/support/widget/ColorEditText;

    invoke-static {v0}, Lcom/color/support/widget/ColorEditText;->access$500(Lcom/color/support/widget/ColorEditText;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1393
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    const/16 v0, 0x10

    .line 1394
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1396
    :cond_0
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->getItemBounds(I)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method
