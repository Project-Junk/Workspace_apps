.class Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

.field mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field final synthetic this$0:Lcolor/support/v7/widget/Toolbar;


# direct methods
.method private constructor <init>(Lcolor/support/v7/widget/Toolbar;)V
    .locals 0

    .line 2410
    iput-object p1, p0, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcolor/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcolor/support/v7/widget/Toolbar;Lcolor/support/v7/widget/Toolbar$1;)V
    .locals 0

    .line 2410
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Lcolor/support/v7/widget/Toolbar;)V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 2

    .line 2501
    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcolor/support/v7/widget/Toolbar;

    iget-object p1, p1, Lcolor/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    instance-of p1, p1, Landroidx/appcompat/view/CollapsibleActionView;

    if-eqz p1, :cond_0

    .line 2502
    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcolor/support/v7/widget/Toolbar;

    iget-object p1, p1, Lcolor/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    check-cast p1, Landroidx/appcompat/view/CollapsibleActionView;

    invoke-interface {p1}, Landroidx/appcompat/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 2505
    :cond_0
    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcolor/support/v7/widget/Toolbar;

    iget-object v0, p1, Lcolor/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcolor/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2506
    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcolor/support/v7/widget/Toolbar;

    invoke-static {p1}, Lcolor/support/v7/widget/Toolbar;->access$300(Lcolor/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcolor/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2507
    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcolor/support/v7/widget/Toolbar;

    const/4 v0, 0x0

    iput-object v0, p1, Lcolor/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    const/4 v1, 0x0

    .line 2509
    invoke-static {p1, v1}, Lcolor/support/v7/widget/Toolbar;->access$500(Lcolor/support/v7/widget/Toolbar;Z)V

    .line 2510
    iput-object v0, p0, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 2511
    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Lcolor/support/v7/widget/Toolbar;->requestLayout()V

    .line 2512
    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 2

    .line 2472
    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcolor/support/v7/widget/Toolbar;

    invoke-static {p1}, Lcolor/support/v7/widget/Toolbar;->access$200(Lcolor/support/v7/widget/Toolbar;)V

    .line 2473
    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcolor/support/v7/widget/Toolbar;

    invoke-static {p1}, Lcolor/support/v7/widget/Toolbar;->access$300(Lcolor/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcolor/support/v7/widget/Toolbar;

    if-eq p1, v0, :cond_0

    .line 2474
    invoke-static {v0}, Lcolor/support/v7/widget/Toolbar;->access$300(Lcolor/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2476
    :cond_0
    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcolor/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 2477
    iput-object p2, p0, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 2478
    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcolor/support/v7/widget/Toolbar;

    iget-object p1, p1, Lcolor/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcolor/support/v7/widget/Toolbar;

    if-eq p1, v0, :cond_1

    .line 2479
    invoke-virtual {v0}, Lcolor/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Lcolor/support/v7/widget/Toolbar$LayoutParams;

    move-result-object p1

    const v0, 0x800003

    .line 2480
    iget-object v1, p0, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcolor/support/v7/widget/Toolbar;

    invoke-static {v1}, Lcolor/support/v7/widget/Toolbar;->access$400(Lcolor/support/v7/widget/Toolbar;)I

    move-result v1

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    iput v0, p1, Lcolor/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    const/4 v0, 0x2

    .line 2481
    iput v0, p1, Lcolor/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2482
    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcolor/support/v7/widget/Toolbar;

    iget-object v0, v0, Lcolor/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2483
    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcolor/support/v7/widget/Toolbar;

    iget-object v0, p1, Lcolor/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcolor/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2486
    :cond_1
    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcolor/support/v7/widget/Toolbar;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcolor/support/v7/widget/Toolbar;->access$500(Lcolor/support/v7/widget/Toolbar;Z)V

    .line 2487
    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Lcolor/support/v7/widget/Toolbar;->requestLayout()V

    .line 2488
    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 2490
    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcolor/support/v7/widget/Toolbar;

    iget-object p1, p1, Lcolor/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    instance-of p1, p1, Landroidx/appcompat/view/CollapsibleActionView;

    if-eqz p1, :cond_2

    .line 2491
    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcolor/support/v7/widget/Toolbar;

    iget-object p1, p1, Lcolor/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    check-cast p1, Landroidx/appcompat/view/CollapsibleActionView;

    invoke-interface {p1}, Landroidx/appcompat/view/CollapsibleActionView;->onActionViewExpanded()V

    :cond_2
    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 1

    .line 2417
    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 2418
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->collapseItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    .line 2420
    :cond_0
    iput-object p2, p0, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-void
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 0

    return-void
.end method

.method public updateMenuView(Z)V
    .locals 4

    .line 2431
    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz p1, :cond_2

    .line 2434
    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2435
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result p1

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 2437
    iget-object v2, p0, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2438
    iget-object v3, p0, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 2447
    iget-object p1, p0, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v0, p0, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {p0, p1, v0}, Lcolor/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    :cond_2
    return-void
.end method
