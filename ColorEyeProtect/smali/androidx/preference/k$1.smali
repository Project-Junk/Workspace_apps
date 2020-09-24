.class Landroidx/preference/k$1;
.super Landroidx/core/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/preference/k;


# direct methods
.method constructor <init>(Landroidx/preference/k;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/k$1;->a:Landroidx/preference/k;

    invoke-direct {p0}, Landroidx/core/f/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/f/a/c;)V
    .locals 1

    iget-object v0, p0, Landroidx/preference/k$1;->a:Landroidx/preference/k;

    iget-object v0, v0, Landroidx/preference/k;->b:Landroidx/core/f/a;

    invoke-virtual {v0, p1, p2}, Landroidx/core/f/a;->a(Landroid/view/View;Landroidx/core/f/a/c;)V

    iget-object v0, p0, Landroidx/preference/k$1;->a:Landroidx/preference/k;

    iget-object v0, v0, Landroidx/preference/k;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->f(Landroid/view/View;)I

    move-result p1

    iget-object p0, p0, Landroidx/preference/k$1;->a:Landroidx/preference/k;

    iget-object p0, p0, Landroidx/preference/k;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object p0

    instance-of v0, p0, Landroidx/preference/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p0, Landroidx/preference/h;

    invoke-virtual {p0, p1}, Landroidx/preference/h;->a(I)Landroidx/preference/Preference;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->onInitializeAccessibilityNodeInfo(Landroidx/core/f/a/c;)V

    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    iget-object p0, p0, Landroidx/preference/k$1;->a:Landroidx/preference/k;

    iget-object p0, p0, Landroidx/preference/k;->b:Landroidx/core/f/a;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/f/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
