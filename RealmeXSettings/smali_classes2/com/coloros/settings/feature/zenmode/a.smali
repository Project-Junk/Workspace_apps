.class public final Lcom/coloros/settings/feature/zenmode/a;
.super Landroid/app/Dialog;
.source "ColorActivityDialog.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f1303ac

    .line 22
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/a;->a:Landroid/content/Context;

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/coloros/settings/feature/zenmode/a;->b:I

    .line 23
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/a;->a:Landroid/content/Context;

    .line 25
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/a;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 26
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/a;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x500

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 27
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/a;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method


# virtual methods
.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 37
    iget v0, p0, Lcom/coloros/settings/feature/zenmode/a;->b:I

    if-lez v0, :cond_0

    .line 38
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 39
    iget v1, p0, Lcom/coloros/settings/feature/zenmode/a;->b:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1

    .line 42
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2

    .line 47
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/a;->dismiss()V

    const/4 p1, 0x1

    return p1

    .line 51
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 56
    invoke-super {p0, p1}, Landroid/app/Dialog;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final show()V
    .locals 0

    .line 61
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 62
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/a;->getActionBar()Landroid/app/ActionBar;

    return-void
.end method
