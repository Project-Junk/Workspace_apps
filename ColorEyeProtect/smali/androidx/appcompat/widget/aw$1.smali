.class Landroidx/appcompat/widget/aw$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/aw;-><init>(Landroidx/appcompat/widget/Toolbar;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Landroidx/appcompat/view/menu/a;

.field final synthetic b:Landroidx/appcompat/widget/aw;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/aw;)V
    .locals 7

    iput-object p1, p0, Landroidx/appcompat/widget/aw$1;->b:Landroidx/appcompat/widget/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroidx/appcompat/view/menu/a;

    iget-object v0, p0, Landroidx/appcompat/widget/aw$1;->b:Landroidx/appcompat/widget/aw;

    iget-object v0, v0, Landroidx/appcompat/widget/aw;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Landroidx/appcompat/widget/aw$1;->b:Landroidx/appcompat/widget/aw;

    iget-object v6, v0, Landroidx/appcompat/widget/aw;->b:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const v3, 0x102002c

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/a;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object p1, p0, Landroidx/appcompat/widget/aw$1;->a:Landroidx/appcompat/view/menu/a;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/widget/aw$1;->b:Landroidx/appcompat/widget/aw;

    iget-object p1, p1, Landroidx/appcompat/widget/aw;->c:Landroid/view/Window$Callback;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/widget/aw$1;->b:Landroidx/appcompat/widget/aw;

    iget-boolean p1, p1, Landroidx/appcompat/widget/aw;->d:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/widget/aw$1;->b:Landroidx/appcompat/widget/aw;

    iget-object p1, p1, Landroidx/appcompat/widget/aw;->c:Landroid/view/Window$Callback;

    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/appcompat/widget/aw$1;->a:Landroidx/appcompat/view/menu/a;

    invoke-interface {p1, v0, p0}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    :cond_0
    return-void
.end method
