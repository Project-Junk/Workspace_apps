.class public Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;
.super Lcom/color/support/dialog/app/ColorSpinnerDialog;
.source "ColorRotatingSpinnerDialog.java"


# instance fields
.field private mBody:Landroid/widget/LinearLayout;

.field private mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mCancelable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/color/support/dialog/app/ColorSpinnerDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->mCancelable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/color/support/dialog/app/ColorSpinnerDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->mCancelable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/color/support/dialog/app/ColorSpinnerDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->mCancelable:Z

    .line 78
    iput-boolean p2, p0, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->mCancelable:Z

    .line 79
    iput-object p3, p0, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method static synthetic access$000(Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 84
    invoke-virtual {p0}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 85
    sget v1, Lcolor/support/v7/appcompat/R$layout;->color_progress_dialog_rotating:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 87
    sget v1, Lcolor/support/v7/appcompat/R$id;->body:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->mBody:Landroid/widget/LinearLayout;

    .line 88
    invoke-virtual {p0}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 89
    iget-boolean v2, p0, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->mCancelable:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->mBody:Landroid/widget/LinearLayout;

    sget v4, Lcolor/support/v7/appcompat/R$dimen;->color_loading_dialog_padding_top:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget v5, Lcolor/support/v7/appcompat/R$dimen;->color_loading_cancelable_dialog_padding_bottom:I

    .line 91
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 90
    invoke-virtual {v2, v3, v4, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->mBody:Landroid/widget/LinearLayout;

    sget v4, Lcolor/support/v7/appcompat/R$dimen;->color_loading_dialog_padding_top:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget v5, Lcolor/support/v7/appcompat/R$dimen;->color_loading_dialog_padding_bottom:I

    .line 94
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 93
    invoke-virtual {v2, v3, v4, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 96
    :goto_0
    invoke-virtual {p0, v0}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->setView(Landroid/view/View;)V

    .line 97
    iget-boolean v0, p0, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->mCancelable:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    .line 98
    invoke-virtual {p0}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog$1;

    invoke-direct {v2, p0}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog$1;-><init>(Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 108
    :cond_1
    invoke-super {p0, p1}, Lcom/color/support/dialog/app/ColorSpinnerDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
