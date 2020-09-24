.class Lcom/color/support/widget/navigation/ColorNavigationPopupMenu$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "ColorNavigationPopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;


# direct methods
.method constructor <init>(Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu$MenuAdapter;->this$0:Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method private setIcon(Landroid/widget/ImageView;Lcom/color/support/widget/navigation/ColorNavigationItemView;)V
    .locals 5

    .line 363
    invoke-virtual {p2}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p2

    .line 364
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 366
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 368
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 369
    instance-of v2, v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 372
    new-array v3, v2, [I

    const v4, 0x10100a0

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_1

    move p2, v2

    goto :goto_1

    :cond_1
    const/4 p2, -0x1

    :goto_1
    mul-int/2addr p2, v4

    aput p2, v3, v1

    .line 373
    invoke-virtual {p1, v3, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_3

    .line 375
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_2

    .line 376
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 377
    iget-object p2, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu$MenuAdapter;->this$0:Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;

    invoke-static {p2}, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->access$300(Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;)Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-static {v0, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    goto :goto_3

    :cond_4
    const/16 p2, 0x8

    .line 380
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 382
    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu$MenuAdapter;->this$0:Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;

    invoke-static {v0}, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->access$000(Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu$MenuAdapter;->this$0:Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;

    invoke-static {v0}, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->access$000(Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/navigation/ColorNavigationItemView;

    invoke-virtual {p1}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 309
    invoke-virtual {p0, p1}, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu$MenuAdapter;->getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 330
    iget-object p2, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu$MenuAdapter;->this$0:Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;

    invoke-static {p2}, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->access$200(Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {}, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->access$100()I

    move-result v1

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 333
    sget v2, Lcolor/support/v7/appcompat/R$drawable;->color_popup_list_top_selector:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 334
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu$MenuAdapter;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne p1, v2, :cond_2

    .line 335
    sget v2, Lcolor/support/v7/appcompat/R$drawable;->color_popup_list_bottom_selector:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 337
    :cond_2
    sget v2, Lcolor/support/v7/appcompat/R$drawable;->color_popup_list_center_selector:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 339
    :goto_0
    iget-object v2, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu$MenuAdapter;->this$0:Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;

    invoke-static {v2}, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->access$000(Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/support/widget/navigation/ColorNavigationItemView;

    invoke-virtual {v2}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->isEnabled()Z

    move-result v2

    .line 340
    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 341
    sget v3, Lcolor/support/v7/appcompat/R$id;->popup_item_imageView:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 342
    sget v4, Lcolor/support/v7/appcompat/R$id;->popup_item_textView:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 343
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 344
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 345
    iget-object v2, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu$MenuAdapter;->this$0:Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;

    invoke-static {v2}, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->access$000(Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/support/widget/navigation/ColorNavigationItemView;

    invoke-direct {p0, v3, v2}, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu$MenuAdapter;->setIcon(Landroid/widget/ImageView;Lcom/color/support/widget/navigation/ColorNavigationItemView;)V

    .line 346
    iget-object v2, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu$MenuAdapter;->this$0:Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;

    invoke-static {v2}, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->access$000(Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/navigation/ColorNavigationItemView;

    invoke-virtual {p1}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu$MenuAdapter;->this$0:Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;

    invoke-static {p1}, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->access$300(Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;)Lcom/color/support/widget/navigation/ColorNavigationMenuView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 349
    iget-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu$MenuAdapter;->this$0:Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;

    invoke-static {p1}, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->access$400(Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;)F

    move-result p1

    invoke-virtual {v4, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 351
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 353
    invoke-static {p3}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p3

    if-ne p3, v1, :cond_3

    move v0, v1

    :cond_3
    if-eqz v0, :cond_4

    .line 355
    iget-object p3, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu$MenuAdapter;->this$0:Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;

    invoke-static {p3}, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->access$500(Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->color_navigation_popup_horizontal_margin:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    .line 357
    :cond_4
    iget-object p3, p0, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu$MenuAdapter;->this$0:Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;

    invoke-static {p3}, Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;->access$500(Lcom/color/support/widget/navigation/ColorNavigationPopupMenu;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->color_navigation_popup_horizontal_margin:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_1
    return-object p2
.end method
