.class Landroidx/appcompat/app/f$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/appcompat/view/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/f;

.field private b:Landroidx/appcompat/view/b$a;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/f;Landroidx/appcompat/view/b$a;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/f$c;->a:Landroidx/appcompat/app/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/app/f$c;->b:Landroidx/appcompat/view/b$a;

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/b;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/f$c;->b:Landroidx/appcompat/view/b$a;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/b$a;->a(Landroidx/appcompat/view/b;)V

    iget-object p1, p0, Landroidx/appcompat/app/f$c;->a:Landroidx/appcompat/app/f;

    iget-object p1, p1, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/app/f$c;->a:Landroidx/appcompat/app/f;

    iget-object p1, p1, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/f$c;->a:Landroidx/appcompat/app/f;

    iget-object v0, v0, Landroidx/appcompat/app/f;->j:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/app/f$c;->a:Landroidx/appcompat/app/f;

    iget-object p1, p1, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/app/f$c;->a:Landroidx/appcompat/app/f;

    invoke-virtual {p1}, Landroidx/appcompat/app/f;->r()V

    iget-object p1, p0, Landroidx/appcompat/app/f$c;->a:Landroidx/appcompat/app/f;

    iget-object v0, p0, Landroidx/appcompat/app/f$c;->a:Landroidx/appcompat/app/f;

    iget-object v0, v0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Landroidx/core/f/t;->k(Landroid/view/View;)Landroidx/core/f/x;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/f/x;->a(F)Landroidx/core/f/x;

    move-result-object v0

    iput-object v0, p1, Landroidx/appcompat/app/f;->k:Landroidx/core/f/x;

    iget-object p1, p0, Landroidx/appcompat/app/f$c;->a:Landroidx/appcompat/app/f;

    iget-object p1, p1, Landroidx/appcompat/app/f;->k:Landroidx/core/f/x;

    new-instance v0, Landroidx/appcompat/app/f$c$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/f$c$1;-><init>(Landroidx/appcompat/app/f$c;)V

    invoke-virtual {p1, v0}, Landroidx/core/f/x;->a(Landroidx/core/f/y;)Landroidx/core/f/x;

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/app/f$c;->a:Landroidx/appcompat/app/f;

    iget-object p1, p1, Landroidx/appcompat/app/f;->d:Landroidx/appcompat/app/d;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/appcompat/app/f$c;->a:Landroidx/appcompat/app/f;

    iget-object p1, p1, Landroidx/appcompat/app/f;->d:Landroidx/appcompat/app/d;

    iget-object v0, p0, Landroidx/appcompat/app/f$c;->a:Landroidx/appcompat/app/f;

    iget-object v0, v0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    invoke-interface {p1, v0}, Landroidx/appcompat/app/d;->onSupportActionModeFinished(Landroidx/appcompat/view/b;)V

    :cond_2
    iget-object p0, p0, Landroidx/appcompat/app/f$c;->a:Landroidx/appcompat/app/f;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    return-void
.end method

.method public a(Landroidx/appcompat/view/b;Landroid/view/Menu;)Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/f$c;->b:Landroidx/appcompat/view/b$a;

    invoke-interface {p0, p1, p2}, Landroidx/appcompat/view/b$a;->a(Landroidx/appcompat/view/b;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public a(Landroidx/appcompat/view/b;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/f$c;->b:Landroidx/appcompat/view/b$a;

    invoke-interface {p0, p1, p2}, Landroidx/appcompat/view/b$a;->a(Landroidx/appcompat/view/b;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public b(Landroidx/appcompat/view/b;Landroid/view/Menu;)Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/f$c;->b:Landroidx/appcompat/view/b$a;

    invoke-interface {p0, p1, p2}, Landroidx/appcompat/view/b$a;->b(Landroidx/appcompat/view/b;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method
