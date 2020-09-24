.class public Lcom/color/support/widget/navigation/ColorNavigationPresenter;
.super Ljava/lang/Object;
.source "ColorNavigationPresenter.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/navigation/ColorNavigationPresenter$SavedState;
    }
.end annotation


# instance fields
.field private mId:I

.field private mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private mMenuView:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

.field private mUpdateSuspended:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/color/support/widget/navigation/ColorNavigationPresenter;->mUpdateSuspended:Z

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/color/support/widget/navigation/ColorNavigationPresenter;->mId:I

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
    .locals 0

    .line 50
    iget-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationPresenter;->mMenuView:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    return-object p1
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 1

    .line 44
    iget-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationPresenter;->mMenuView:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 45
    iput-object p2, p0, Lcom/color/support/widget/navigation/ColorNavigationPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-void
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 113
    instance-of v0, p1, Lcom/color/support/widget/navigation/ColorNavigationPresenter$SavedState;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationPresenter;->mMenuView:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    check-cast p1, Lcom/color/support/widget/navigation/ColorNavigationPresenter$SavedState;

    iget p1, p1, Lcom/color/support/widget/navigation/ColorNavigationPresenter$SavedState;->mSelectedItemId:I

    invoke-virtual {v0, p1}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->tryRestoreSelectedItemId(I)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 106
    new-instance v0, Lcom/color/support/widget/navigation/ColorNavigationPresenter$SavedState;

    invoke-direct {v0}, Lcom/color/support/widget/navigation/ColorNavigationPresenter$SavedState;-><init>()V

    .line 107
    iget-object v1, p0, Lcom/color/support/widget/navigation/ColorNavigationPresenter;->mMenuView:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    invoke-virtual {v1}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->getSelectedItemId()I

    move-result v1

    iput v1, v0, Lcom/color/support/widget/navigation/ColorNavigationPresenter$SavedState;->mSelectedItemId:I

    return-object v0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setBottomNavigationMenuView(Lcom/color/support/widget/navigation/ColorNavigationMenuView;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationPresenter;->mMenuView:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    return-void
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 0

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/color/support/widget/navigation/ColorNavigationPresenter;->mId:I

    return-void
.end method

.method public setUpdateSuspended(Z)V
    .locals 0

    .line 119
    iput-boolean p1, p0, Lcom/color/support/widget/navigation/ColorNavigationPresenter;->mUpdateSuspended:Z

    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/color/support/widget/navigation/ColorNavigationPresenter;->mUpdateSuspended:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 59
    iget-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationPresenter;->mMenuView:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    invoke-virtual {p1}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->buildMenuView()V

    return-void

    .line 61
    :cond_1
    iget-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationPresenter;->mMenuView:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    invoke-virtual {p1}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->updateMenuView()V

    return-void
.end method
