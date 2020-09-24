.class Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton$1;
.super Landroidx/appcompat/widget/ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ActionMenuPresenter;

.field final synthetic b:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;Landroid/view/View;Landroidx/appcompat/widget/ActionMenuPresenter;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton$1;->b:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    iput-object p3, p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton$1;->a:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/ag;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/p;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton$1;->b:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->a:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->h:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton$1;->b:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->a:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->h:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter$d;->b()Landroidx/appcompat/view/menu/k;

    move-result-object p0

    return-object p0
.end method

.method public b()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton$1;->b:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->a:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->d()Z

    const/4 p0, 0x1

    return p0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton$1;->b:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->a:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton$1;->b:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->a:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->e()Z

    const/4 p0, 0x1

    return p0
.end method
