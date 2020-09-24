.class public final Lcom/color/support/widget/navigation/ColorNavigationMenu;
.super Landroidx/appcompat/view/menu/MenuBuilder;
.source "ColorNavigationMenu.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final MAX_ITEM_COUNT:I = 0x5


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationMenu;->stopDispatchingItemsChanged()V

    .line 54
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    .line 55
    instance-of p2, p1, Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz p2, :cond_0

    .line 56
    move-object p2, p1

    check-cast p2, Landroidx/appcompat/view/menu/MenuItemImpl;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroidx/appcompat/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorNavigationMenu;->startDispatchingItemsChanged()V

    return-object p1
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 43
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "BottomNavigationView does not support submenus"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
