.class public Landroidx/fragment/app/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/fragment/app/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/fragment/app/h<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/fragment/app/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/h<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    return-void
.end method

.method public static a(Landroidx/fragment/app/h;)Landroidx/fragment/app/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/h<",
            "*>;)",
            "Landroidx/fragment/app/f;"
        }
    .end annotation

    new-instance v0, Landroidx/fragment/app/f;

    const-string v1, "callbacks == null"

    invoke-static {p0, v1}, Landroidx/core/e/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/h;

    invoke-direct {v0, p0}, Landroidx/fragment/app/f;-><init>(Landroidx/fragment/app/h;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object p0, p0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/j;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/String;)Landroidx/fragment/app/d;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object p0, p0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->b(Ljava/lang/String;)Landroidx/fragment/app/d;

    move-result-object p0

    return-object p0
.end method

.method public a()Landroidx/fragment/app/i;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object p0, p0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    return-object p0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object p0, p0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    instance-of v0, v0, Landroidx/lifecycle/s;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object p0, p0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->a(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you\'re still using retainNestedNonConfig()."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Landroidx/fragment/app/d;)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object v0, v0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    iget-object v1, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object p0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    invoke-virtual {v0, v1, p0, p1}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/h;Landroidx/fragment/app/e;Landroidx/fragment/app/d;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object p0, p0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->a(Z)V

    return-void
.end method

.method public a(Landroid/view/Menu;)Z
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object p0, p0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->a(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object p0, p0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/j;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p0

    return p0
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object p0, p0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->a(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public b()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object p0, p0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {p0}, Landroidx/fragment/app/j;->p()V

    return-void
.end method

.method public b(Landroid/view/Menu;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object p0, p0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->b(Landroid/view/Menu;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object p0, p0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->b(Z)V

    return-void
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object p0, p0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->b(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public c()Landroid/os/Parcelable;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object p0, p0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {p0}, Landroidx/fragment/app/j;->o()Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public d()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object p0, p0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {p0}, Landroidx/fragment/app/j;->q()V

    return-void
.end method

.method public e()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object p0, p0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {p0}, Landroidx/fragment/app/j;->r()V

    return-void
.end method

.method public f()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object p0, p0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {p0}, Landroidx/fragment/app/j;->s()V

    return-void
.end method

.method public g()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object p0, p0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {p0}, Landroidx/fragment/app/j;->t()V

    return-void
.end method

.method public h()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object p0, p0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {p0}, Landroidx/fragment/app/j;->u()V

    return-void
.end method

.method public i()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object p0, p0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {p0}, Landroidx/fragment/app/j;->v()V

    return-void
.end method

.method public j()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object p0, p0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {p0}, Landroidx/fragment/app/j;->x()V

    return-void
.end method

.method public k()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object p0, p0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {p0}, Landroidx/fragment/app/j;->y()V

    return-void
.end method

.method public l()Z
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h;

    iget-object p0, p0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    invoke-virtual {p0}, Landroidx/fragment/app/j;->l()Z

    move-result p0

    return p0
.end method
