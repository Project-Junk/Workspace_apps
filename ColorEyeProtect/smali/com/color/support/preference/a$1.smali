.class Lcom/color/support/preference/a$1;
.super Landroidx/appcompat/app/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/preference/a;->a(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/support/preference/a;


# direct methods
.method constructor <init>(Lcom/color/support/preference/a;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/preference/a$1;->a:Lcom/color/support/preference/a;

    invoke-direct {p0, p2, p3}, Landroidx/appcompat/app/g;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/color/support/preference/a$1;->dismiss()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/g;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
