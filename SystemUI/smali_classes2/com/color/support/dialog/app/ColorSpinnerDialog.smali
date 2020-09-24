.class public Lcom/color/support/dialog/app/ColorSpinnerDialog;
.super Lcolor/support/v7/app/AlertDialog;
.source "ColorSpinnerDialog.java"


# instance fields
.field protected mHasStarted:Z

.field protected mMax:I

.field protected mMessage:Ljava/lang/CharSequence;

.field protected mMessageView:Landroid/widget/TextView;

.field protected mProgress:Landroid/view/View;

.field protected mProgressVal:I

.field protected mWindow:Landroid/view/Window;


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

.method constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcolor/support/v7/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-virtual {p0, p2}, Lcom/color/support/dialog/app/ColorSpinnerDialog;->setCancelable(Z)V

    .line 69
    invoke-virtual {p0, p3}, Lcom/color/support/dialog/app/ColorSpinnerDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method


# virtual methods
.method createDialog(I)V
    .locals 0

    const/4 p1, 0x0

    .line 62
    invoke-virtual {p0, p1}, Lcom/color/support/dialog/app/ColorSpinnerDialog;->setCanceledOnTouchOutside(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/color/support/dialog/app/ColorSpinnerDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    sget p1, Lcolor/support/v7/appcompat/R$style;->ColorDialogAnimation:I

    invoke-virtual {p0, p1}, Landroid/view/Window;->setWindowAnimations(I)V

    return-void
.end method

.method public getMax()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getProgress()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 87
    iget v0, p0, Lcom/color/support/dialog/app/ColorSpinnerDialog;->mMax:I

    if-lez v0, :cond_0

    .line 88
    invoke-virtual {p0, v0}, Lcom/color/support/dialog/app/ColorSpinnerDialog;->setMax(I)V

    .line 90
    :cond_0
    iget v0, p0, Lcom/color/support/dialog/app/ColorSpinnerDialog;->mProgressVal:I

    if-lez v0, :cond_1

    .line 91
    invoke-virtual {p0, v0}, Lcom/color/support/dialog/app/ColorSpinnerDialog;->setProgress(I)V

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/color/support/dialog/app/ColorSpinnerDialog;->mMessage:Ljava/lang/CharSequence;

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
    iput-boolean v0, p0, Lcom/color/support/dialog/app/ColorSpinnerDialog;->mHasStarted:Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 110
    invoke-super {p0}, Lcolor/support/v7/app/AlertDialog;->onStop()V

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/color/support/dialog/app/ColorSpinnerDialog;->mHasStarted:Z

    return-void
.end method

.method public setMax(I)V
    .locals 0

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/color/support/dialog/app/ColorSpinnerDialog;->mProgress:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 154
    iget-object p0, p0, Lcom/color/support/dialog/app/ColorSpinnerDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 156
    :cond_0
    iput-object p1, p0, Lcom/color/support/dialog/app/ColorSpinnerDialog;->mMessage:Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method public setProgress(I)V
    .locals 0

    return-void
.end method
