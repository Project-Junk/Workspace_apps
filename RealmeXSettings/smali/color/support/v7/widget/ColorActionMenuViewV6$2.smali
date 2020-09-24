.class Lcolor/support/v7/widget/ColorActionMenuViewV6$2;
.super Ljava/lang/Object;
.source "ColorActionMenuViewV6.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcolor/support/v7/widget/ColorActionMenuViewV6;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/v7/widget/ColorActionMenuViewV6;

.field final synthetic val$overFlowMenuButton:Landroid/view/View;


# direct methods
.method constructor <init>(Lcolor/support/v7/widget/ColorActionMenuViewV6;Landroid/view/View;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6$2;->this$0:Lcolor/support/v7/widget/ColorActionMenuViewV6;

    iput-object p2, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6$2;->val$overFlowMenuButton:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 146
    iget-object p1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6$2;->this$0:Lcolor/support/v7/widget/ColorActionMenuViewV6;

    iget-object p1, p1, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mOverflowPopup:Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

    if-nez p1, :cond_0

    .line 147
    iget-object p1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6$2;->this$0:Lcolor/support/v7/widget/ColorActionMenuViewV6;

    new-instance v0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

    invoke-virtual {p1}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p1, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mOverflowPopup:Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

    .line 148
    iget-object p1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6$2;->this$0:Lcolor/support/v7/widget/ColorActionMenuViewV6;

    iget-object p1, p1, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mOverflowPopup:Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->setDismissTouchOutside(Z)V

    .line 149
    iget-object p1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6$2;->this$0:Lcolor/support/v7/widget/ColorActionMenuViewV6;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->access$002(Lcolor/support/v7/widget/ColorActionMenuViewV6;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 151
    :cond_0
    iget-object p1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6$2;->this$0:Lcolor/support/v7/widget/ColorActionMenuViewV6;

    invoke-static {p1}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->access$000(Lcolor/support/v7/widget/ColorActionMenuViewV6;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 152
    iget-object p1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6$2;->this$0:Lcolor/support/v7/widget/ColorActionMenuViewV6;

    invoke-static {p1}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->access$100(Lcolor/support/v7/widget/ColorActionMenuViewV6;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 153
    :goto_0
    iget-object v0, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6$2;->this$0:Lcolor/support/v7/widget/ColorActionMenuViewV6;

    invoke-static {v0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->access$100(Lcolor/support/v7/widget/ColorActionMenuViewV6;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 154
    iget-object v0, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6$2;->this$0:Lcolor/support/v7/widget/ColorActionMenuViewV6;

    invoke-static {v0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->access$100(Lcolor/support/v7/widget/ColorActionMenuViewV6;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-static {v0, v1}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->access$202(Lcolor/support/v7/widget/ColorActionMenuViewV6;Landroidx/appcompat/view/menu/MenuItemImpl;)Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 155
    iget-object v0, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6$2;->this$0:Lcolor/support/v7/widget/ColorActionMenuViewV6;

    invoke-static {v0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->access$200(Lcolor/support/v7/widget/ColorActionMenuViewV6;)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6$2;->this$0:Lcolor/support/v7/widget/ColorActionMenuViewV6;

    invoke-static {v0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->access$000(Lcolor/support/v7/widget/ColorActionMenuViewV6;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Lcom/color/support/widget/popupwindow/PopupListItem;

    iget-object v3, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6$2;->this$0:Lcolor/support/v7/widget/ColorActionMenuViewV6;

    invoke-static {v3}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->access$200(Lcolor/support/v7/widget/ColorActionMenuViewV6;)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6$2;->this$0:Lcolor/support/v7/widget/ColorActionMenuViewV6;

    invoke-static {v4}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->access$200(Lcolor/support/v7/widget/ColorActionMenuViewV6;)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6$2;->this$0:Lcolor/support/v7/widget/ColorActionMenuViewV6;

    invoke-static {v1}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->access$200(Lcolor/support/v7/widget/ColorActionMenuViewV6;)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v4, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6$2;->this$0:Lcolor/support/v7/widget/ColorActionMenuViewV6;

    invoke-static {v4}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->access$200(Lcolor/support/v7/widget/ColorActionMenuViewV6;)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v4

    invoke-direct {v2, v3, v1, v4}, Lcom/color/support/widget/popupwindow/PopupListItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 158
    :cond_2
    iget-object v0, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6$2;->this$0:Lcolor/support/v7/widget/ColorActionMenuViewV6;

    invoke-static {v0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->access$000(Lcolor/support/v7/widget/ColorActionMenuViewV6;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Lcom/color/support/widget/popupwindow/PopupListItem;

    iget-object v3, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6$2;->this$0:Lcolor/support/v7/widget/ColorActionMenuViewV6;

    invoke-static {v3}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->access$200(Lcolor/support/v7/widget/ColorActionMenuViewV6;)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6$2;->this$0:Lcolor/support/v7/widget/ColorActionMenuViewV6;

    invoke-static {v1}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->access$200(Lcolor/support/v7/widget/ColorActionMenuViewV6;)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    iget-object v3, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6$2;->this$0:Lcolor/support/v7/widget/ColorActionMenuViewV6;

    invoke-static {v3}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->access$200(Lcolor/support/v7/widget/ColorActionMenuViewV6;)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v3

    invoke-direct {v2, v1, v3}, Lcom/color/support/widget/popupwindow/PopupListItem;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 161
    :cond_4
    iget-object p1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6$2;->this$0:Lcolor/support/v7/widget/ColorActionMenuViewV6;

    iget-object p1, p1, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mOverflowPopup:Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

    iget-object v0, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6$2;->this$0:Lcolor/support/v7/widget/ColorActionMenuViewV6;

    invoke-static {v0}, Lcolor/support/v7/widget/ColorActionMenuViewV6;->access$000(Lcolor/support/v7/widget/ColorActionMenuViewV6;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->setItemList(Ljava/util/List;)V

    .line 162
    iget-object p1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6$2;->this$0:Lcolor/support/v7/widget/ColorActionMenuViewV6;

    iget-object p1, p1, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mOverflowPopup:Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

    new-instance v0, Lcolor/support/v7/widget/ColorActionMenuViewV6$2$1;

    invoke-direct {v0, p0}, Lcolor/support/v7/widget/ColorActionMenuViewV6$2$1;-><init>(Lcolor/support/v7/widget/ColorActionMenuViewV6$2;)V

    invoke-virtual {p1, v0}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 170
    :cond_5
    iget-object p1, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6$2;->this$0:Lcolor/support/v7/widget/ColorActionMenuViewV6;

    iget-object p1, p1, Lcolor/support/v7/widget/ColorActionMenuViewV6;->mOverflowPopup:Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

    iget-object v0, p0, Lcolor/support/v7/widget/ColorActionMenuViewV6$2;->val$overFlowMenuButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->show(Landroid/view/View;)V

    return-void
.end method
