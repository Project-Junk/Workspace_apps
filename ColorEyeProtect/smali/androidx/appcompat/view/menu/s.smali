.class Landroidx/appcompat/view/menu/s;
.super Landroidx/appcompat/view/menu/o;

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private final b:Landroidx/core/a/a/c;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/core/a/a/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/o;-><init>(Landroid/content/Context;Landroidx/core/a/a/a;)V

    iput-object p2, p0, Landroidx/appcompat/view/menu/s;->b:Landroidx/core/a/a/c;

    return-void
.end method


# virtual methods
.method public clearHeader()V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/s;->b:Landroidx/core/a/a/c;

    invoke-interface {p0}, Landroidx/core/a/a/c;->clearHeader()V

    return-void
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->b:Landroidx/core/a/a/c;

    invoke-interface {v0}, Landroidx/core/a/a/c;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/s;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->b:Landroidx/core/a/a/c;

    invoke-interface {v0, p1}, Landroidx/core/a/a/c;->setHeaderIcon(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->b:Landroidx/core/a/a/c;

    invoke-interface {v0, p1}, Landroidx/core/a/a/c;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->b:Landroidx/core/a/a/c;

    invoke-interface {v0, p1}, Landroidx/core/a/a/c;->setHeaderTitle(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->b:Landroidx/core/a/a/c;

    invoke-interface {v0, p1}, Landroidx/core/a/a/c;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->b:Landroidx/core/a/a/c;

    invoke-interface {v0, p1}, Landroidx/core/a/a/c;->setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->b:Landroidx/core/a/a/c;

    invoke-interface {v0, p1}, Landroidx/core/a/a/c;->setIcon(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->b:Landroidx/core/a/a/c;

    invoke-interface {v0, p1}, Landroidx/core/a/a/c;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    return-object p0
.end method
