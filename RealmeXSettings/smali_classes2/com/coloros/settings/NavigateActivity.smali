.class public Lcom/coloros/settings/NavigateActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "NavigateActivity.java"

# interfaces
.implements Lcom/coloros/settings/widget/a;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final h()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/coloros/settings/NavigateActivity;->a:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 58
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/coloros/settings/NavigateActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 63
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public setTitle(I)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTitle(I)V

    .line 40
    iput p1, p0, Lcom/coloros/settings/NavigateActivity;->a:I

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    const-string v0, "navigate_title_id"

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-static {p0, p1}, Lcom/coloros/settings/utils/az;->b(Landroid/app/Activity;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 53
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method
