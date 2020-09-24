.class final Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$9;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "SevenDiracMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;


# direct methods
.method constructor <init>(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;Landroid/content/Context;)V
    .locals 0

    .line 727
    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$9;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    const p1, 0x7f1303ac

    invoke-direct {p0, p2, p1}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2

    .line 729
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 730
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$9;->dismiss()V

    const/4 p1, 0x1

    return p1

    .line 733
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDialog;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
