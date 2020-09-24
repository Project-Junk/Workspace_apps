.class Landroidx/appcompat/app/f$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/f;->b(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/f;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/f;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/f$6;->a:Landroidx/appcompat/app/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/app/f$6;->a:Landroidx/appcompat/app/f;

    iget-object v0, v0, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroidx/appcompat/app/f$6;->a:Landroidx/appcompat/app/f;

    iget-object v1, v1, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x0

    const/16 v3, 0x37

    invoke-virtual {v0, v1, v3, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Landroidx/appcompat/app/f$6;->a:Landroidx/appcompat/app/f;

    invoke-virtual {v0}, Landroidx/appcompat/app/f;->r()V

    iget-object v0, p0, Landroidx/appcompat/app/f$6;->a:Landroidx/appcompat/app/f;

    invoke-virtual {v0}, Landroidx/appcompat/app/f;->p()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/f$6;->a:Landroidx/appcompat/app/f;

    iget-object v0, v0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setAlpha(F)V

    iget-object v0, p0, Landroidx/appcompat/app/f$6;->a:Landroidx/appcompat/app/f;

    iget-object v2, p0, Landroidx/appcompat/app/f$6;->a:Landroidx/appcompat/app/f;

    iget-object v2, v2, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v2}, Landroidx/core/f/t;->k(Landroid/view/View;)Landroidx/core/f/x;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/core/f/x;->a(F)Landroidx/core/f/x;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/app/f;->k:Landroidx/core/f/x;

    iget-object v0, p0, Landroidx/appcompat/app/f$6;->a:Landroidx/appcompat/app/f;

    iget-object v0, v0, Landroidx/appcompat/app/f;->k:Landroidx/core/f/x;

    new-instance v1, Landroidx/appcompat/app/f$6$1;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/f$6$1;-><init>(Landroidx/appcompat/app/f$6;)V

    invoke-virtual {v0, v1}, Landroidx/core/f/x;->a(Landroidx/core/f/y;)Landroidx/core/f/x;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/f$6;->a:Landroidx/appcompat/app/f;

    iget-object v0, v0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setAlpha(F)V

    iget-object p0, p0, Landroidx/appcompat/app/f$6;->a:Landroidx/appcompat/app/f;

    iget-object p0, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
