.class Lcom/color/support/widget/navigation/ColorNavigationMenuView$1;
.super Ljava/lang/Object;
.source "ColorNavigationMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/navigation/ColorNavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/navigation/ColorNavigationMenuView;


# direct methods
.method constructor <init>(Lcom/color/support/widget/navigation/ColorNavigationMenuView;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView$1;->this$0:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 96
    check-cast p1, Lcom/color/support/widget/navigation/ColorNavigationItemView;

    .line 97
    invoke-virtual {p1}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p1

    .line 98
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView$1;->this$0:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    invoke-static {v0}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->access$100(Lcom/color/support/widget/navigation/ColorNavigationMenuView;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView$1;->this$0:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    invoke-static {v1}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->access$000(Lcom/color/support/widget/navigation/ColorNavigationMenuView;)Lcom/color/support/widget/navigation/ColorNavigationPresenter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 99
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView$1;->this$0:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    invoke-static {v0}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->access$200(Lcom/color/support/widget/navigation/ColorNavigationMenuView;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView$1;->this$0:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    invoke-virtual {v0}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->getSelectedItemId()I

    move-result v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    if-eq v0, p1, :cond_1

    .line 102
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationMenuView$1;->this$0:Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    invoke-static {p0}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->access$300(Lcom/color/support/widget/navigation/ColorNavigationMenuView;)V

    :cond_1
    return-void
.end method
