.class public Lcom/color/support/dialog/app/ColorSpinnerDialog;
.super Lcolor/support/v7/app/AlertDialog;
.source "ColorSpinnerDialog.java"


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Landroid/widget/TextView;

.field protected c:I

.field protected d:I

.field protected e:Ljava/lang/CharSequence;

.field protected f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcolor/support/v7/app/AlertDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lcolor/support/v7/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 87
    iget v0, p0, Lcom/color/support/dialog/app/ColorSpinnerDialog;->c:I

    if-lez v0, :cond_0

    .line 88
    invoke-virtual {p0, v0}, Lcom/color/support/dialog/app/ColorSpinnerDialog;->b(I)V

    .line 90
    :cond_0
    iget v0, p0, Lcom/color/support/dialog/app/ColorSpinnerDialog;->d:I

    if-lez v0, :cond_1

    .line 91
    invoke-virtual {p0, v0}, Lcom/color/support/dialog/app/ColorSpinnerDialog;->a(I)V

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/color/support/dialog/app/ColorSpinnerDialog;->e:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {p0, v0}, Lcom/color/support/dialog/app/ColorSpinnerDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 97
    :cond_2
    invoke-super {p0, p1}, Lcolor/support/v7/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 104
    invoke-super {p0}, Lcolor/support/v7/app/AlertDialog;->onStart()V

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/color/support/dialog/app/ColorSpinnerDialog;->f:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 110
    invoke-super {p0}, Lcolor/support/v7/app/AlertDialog;->onStop()V

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/color/support/dialog/app/ColorSpinnerDialog;->f:Z

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/color/support/dialog/app/ColorSpinnerDialog;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/color/support/dialog/app/ColorSpinnerDialog;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 156
    :cond_0
    iput-object p1, p0, Lcom/color/support/dialog/app/ColorSpinnerDialog;->e:Ljava/lang/CharSequence;

    return-void
.end method
