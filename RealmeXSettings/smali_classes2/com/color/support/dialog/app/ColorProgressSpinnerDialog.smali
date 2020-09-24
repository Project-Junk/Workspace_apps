.class public Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;
.super Lcom/color/support/dialog/app/ColorSpinnerDialog;
.source "ColorProgressSpinnerDialog.java"


# instance fields
.field private g:Lcom/color/support/widget/ColorCircleProgressBar;

.field private h:Z

.field private i:Landroid/content/DialogInterface$OnCancelListener;

.field private j:Landroid/widget/LinearLayout;


# direct methods
.method static synthetic a(Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->i:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->f:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->g:Lcom/color/support/widget/ColorCircleProgressBar;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorCircleProgressBar;->setProgress(I)V

    return-void

    .line 123
    :cond_0
    iput p1, p0, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->d:I

    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->g:Lcom/color/support/widget/ColorCircleProgressBar;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorCircleProgressBar;->setMax(I)V

    return-void

    .line 160
    :cond_0
    iput p1, p0, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->c:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 86
    invoke-virtual {p0}, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 87
    sget v1, Lcolor/support/v7/appcompat/R$layout;->color_progress_dialog_circle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 89
    sget v1, Lcolor/support/v7/appcompat/R$id;->progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/color/support/widget/ColorCircleProgressBar;

    iput-object v1, p0, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->g:Lcom/color/support/widget/ColorCircleProgressBar;

    .line 90
    sget v1, Lcolor/support/v7/appcompat/R$id;->body:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->j:Landroid/widget/LinearLayout;

    .line 91
    invoke-virtual {p0}, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 92
    iget-boolean v2, p0, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->h:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->j:Landroid/widget/LinearLayout;

    sget v4, Lcolor/support/v7/appcompat/R$dimen;->color_loading_dialog_padding_top:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget v5, Lcolor/support/v7/appcompat/R$dimen;->color_loading_cancelable_dialog_padding_bottom:I

    .line 94
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 93
    invoke-virtual {v2, v3, v4, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->j:Landroid/widget/LinearLayout;

    sget v4, Lcolor/support/v7/appcompat/R$dimen;->color_loading_dialog_padding_top:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget v5, Lcolor/support/v7/appcompat/R$dimen;->color_loading_dialog_padding_bottom:I

    .line 97
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 96
    invoke-virtual {v2, v3, v4, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 99
    :goto_0
    invoke-virtual {p0, v0}, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->setView(Landroid/view/View;)V

    .line 100
    iget-boolean v0, p0, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->h:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    .line 101
    invoke-virtual {p0}, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog$1;

    invoke-direct {v2, p0}, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog$1;-><init>(Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 111
    :cond_1
    invoke-super {p0, p1}, Lcom/color/support/dialog/app/ColorSpinnerDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
