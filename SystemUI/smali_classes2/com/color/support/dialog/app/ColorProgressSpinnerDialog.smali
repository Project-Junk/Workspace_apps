.class public Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;
.super Lcom/color/support/dialog/app/ColorSpinnerDialog;
.source "ColorProgressSpinnerDialog.java"


# instance fields
.field private mBody:Landroid/widget/LinearLayout;

.field private mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mCancelable:Z

.field private mProgressBar:Lcom/color/support/widget/ColorCircleProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/color/support/dialog/app/ColorSpinnerDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->mCancelable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/color/support/dialog/app/ColorSpinnerDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->mCancelable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/color/support/dialog/app/ColorSpinnerDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->mCancelable:Z

    .line 80
    iput-boolean p2, p0, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->mCancelable:Z

    .line 81
    iput-object p3, p0, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method static synthetic access$000(Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->mProgressBar:Lcom/color/support/widget/ColorCircleProgressBar;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Lcom/color/support/widget/ColorCircleProgressBar;->getMax()I

    move-result p0

    return p0

    .line 148
    :cond_0
    iget p0, p0, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->mMax:I

    return p0
.end method

.method public getProgress()I
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->mProgressBar:Lcom/color/support/widget/ColorCircleProgressBar;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/color/support/widget/ColorCircleProgressBar;->getProgress()I

    move-result p0

    return p0

    .line 136
    :cond_0
    iget p0, p0, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->mProgressVal:I

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
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

    iput-object v1, p0, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->mProgressBar:Lcom/color/support/widget/ColorCircleProgressBar;

    .line 90
    sget v1, Lcolor/support/v7/appcompat/R$id;->body:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->mBody:Landroid/widget/LinearLayout;

    .line 91
    invoke-virtual {p0}, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 92
    iget-boolean v2, p0, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->mCancelable:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->mBody:Landroid/widget/LinearLayout;

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
    iget-object v2, p0, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->mBody:Landroid/widget/LinearLayout;

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
    iget-boolean v0, p0, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->mCancelable:Z

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

.method public setMax(I)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->mProgressBar:Lcom/color/support/widget/ColorCircleProgressBar;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorCircleProgressBar;->setMax(I)V

    goto :goto_0

    .line 160
    :cond_0
    iput p1, p0, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->mMax:I

    :goto_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->mHasStarted:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object p0, p0, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->mProgressBar:Lcom/color/support/widget/ColorCircleProgressBar;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorCircleProgressBar;->setProgress(I)V

    goto :goto_0

    .line 123
    :cond_0
    iput p1, p0, Lcom/color/support/dialog/app/ColorProgressSpinnerDialog;->mProgressVal:I

    :goto_0
    return-void
.end method
