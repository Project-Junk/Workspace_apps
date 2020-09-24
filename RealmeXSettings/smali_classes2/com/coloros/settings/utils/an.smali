.class public final Lcom/coloros/settings/utils/an;
.super Ljava/lang/Object;
.source "OppoStyleDialogUtil.java"


# direct methods
.method public static a(Landroid/app/Dialog;)V
    .locals 4

    if-eqz p0, :cond_1

    const v0, 0x102000b

    .line 24
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 25
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 26
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 28
    :cond_0
    instance-of v0, p0, Lcolor/support/v7/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 29
    move-object v0, p0

    check-cast v0, Lcolor/support/v7/app/AlertDialog;

    const/4 v2, -0x1

    .line 30
    invoke-virtual {v0, v2}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, -0x2

    .line 32
    invoke-virtual {v0, v3}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 35
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_1
    return-void
.end method

.method public static a(Landroid/app/Dialog;Landroid/content/res/Resources;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 51
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcolor/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 52
    check-cast p0, Lcolor/support/v7/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f0600d3

    const/4 v1, 0x0

    .line 55
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 54
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    return-void
.end method
