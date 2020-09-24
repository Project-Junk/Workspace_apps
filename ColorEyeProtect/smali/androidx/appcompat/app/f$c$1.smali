.class Landroidx/appcompat/app/f$c$1;
.super Landroidx/core/f/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/f$c;->a(Landroidx/appcompat/view/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/f$c;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/f$c;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/f$c$1;->a:Landroidx/appcompat/app/f$c;

    invoke-direct {p0}, Landroidx/core/f/z;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/app/f$c$1;->a:Landroidx/appcompat/app/f$c;

    iget-object p1, p1, Landroidx/appcompat/app/f$c;->a:Landroidx/appcompat/app/f;

    iget-object p1, p1, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, Landroidx/appcompat/app/f$c$1;->a:Landroidx/appcompat/app/f$c;

    iget-object p1, p1, Landroidx/appcompat/app/f$c;->a:Landroidx/appcompat/app/f;

    iget-object p1, p1, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/app/f$c$1;->a:Landroidx/appcompat/app/f$c;

    iget-object p1, p1, Landroidx/appcompat/app/f$c;->a:Landroidx/appcompat/app/f;

    iget-object p1, p1, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/app/f$c$1;->a:Landroidx/appcompat/app/f$c;

    iget-object p1, p1, Landroidx/appcompat/app/f$c;->a:Landroidx/appcompat/app/f;

    iget-object p1, p1, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/app/f$c$1;->a:Landroidx/appcompat/app/f$c;

    iget-object p1, p1, Landroidx/appcompat/app/f$c;->a:Landroidx/appcompat/app/f;

    iget-object p1, p1, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroidx/core/f/t;->n(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/appcompat/app/f$c$1;->a:Landroidx/appcompat/app/f$c;

    iget-object p1, p1, Landroidx/appcompat/app/f$c;->a:Landroidx/appcompat/app/f;

    iget-object p1, p1, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->removeAllViews()V

    iget-object p1, p0, Landroidx/appcompat/app/f$c$1;->a:Landroidx/appcompat/app/f$c;

    iget-object p1, p1, Landroidx/appcompat/app/f$c;->a:Landroidx/appcompat/app/f;

    iget-object p1, p1, Landroidx/appcompat/app/f;->k:Landroidx/core/f/x;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/f/x;->a(Landroidx/core/f/y;)Landroidx/core/f/x;

    iget-object p0, p0, Landroidx/appcompat/app/f$c$1;->a:Landroidx/appcompat/app/f$c;

    iget-object p0, p0, Landroidx/appcompat/app/f$c;->a:Landroidx/appcompat/app/f;

    iput-object v0, p0, Landroidx/appcompat/app/f;->k:Landroidx/core/f/x;

    return-void
.end method
