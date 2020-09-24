.class Lcolor/support/v7/internal/widget/ColorBaseSpinner$DialogPopup;
.super Ljava/lang/Object;
.source "ColorBaseSpinner.java"

# interfaces
.implements Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/internal/widget/ColorBaseSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogPopup"
.end annotation


# instance fields
.field private mListAdapter:Landroid/widget/ListAdapter;

.field private mPopup:Landroid/app/AlertDialog;

.field private mPrompt:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcolor/support/v7/internal/widget/ColorBaseSpinner;


# direct methods
.method private constructor <init>(Lcolor/support/v7/internal/widget/ColorBaseSpinner;)V
    .locals 0

    .line 906
    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DialogPopup;->this$0:Lcolor/support/v7/internal/widget/ColorBaseSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcolor/support/v7/internal/widget/ColorBaseSpinner;Lcolor/support/v7/internal/widget/ColorBaseSpinner$1;)V
    .locals 0

    .line 906
    invoke-direct {p0, p1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DialogPopup;-><init>(Lcolor/support/v7/internal/widget/ColorBaseSpinner;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 915
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 916
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 917
    iput-object v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 0

    .line 934
    iget-object p0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getHorizontalOffset()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getVerticalOffset()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isShowing()Z
    .locals 0

    .line 922
    iget-object p0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 954
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DialogPopup;->this$0:Lcolor/support/v7/internal/widget/ColorBaseSpinner;

    invoke-virtual {p1, p2}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->setSelection(I)V

    .line 955
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DialogPopup;->this$0:Lcolor/support/v7/internal/widget/ColorBaseSpinner;

    iget-object p1, p1, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mOnItemClickListener:Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemClickListener;

    if-eqz p1, :cond_0

    .line 956
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DialogPopup;->this$0:Lcolor/support/v7/internal/widget/ColorBaseSpinner;

    const/4 v0, 0x0

    iget-object v1, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {p1, v0, p2, v1, v2}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 958
    :cond_0
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DialogPopup;->dismiss()V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 926
    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const-string p0, "ColorBaseSpinner"

    const-string p1, "Cannot set popup background for MODE_DIALOG, ignoring"

    .line 963
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0

    const-string p0, "ColorBaseSpinner"

    const-string p1, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    .line 973
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 930
    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 0

    const-string p0, "ColorBaseSpinner"

    const-string p1, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    .line 968
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public show(II)V
    .locals 2

    .line 938
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    if-nez p1, :cond_0

    return-void

    .line 941
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DialogPopup;->this$0:Lcolor/support/v7/internal/widget/ColorBaseSpinner;

    invoke-virtual {v0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 942
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 943
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 945
    :cond_1
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DialogPopup;->this$0:Lcolor/support/v7/internal/widget/ColorBaseSpinner;

    .line 946
    invoke-virtual {v1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->getSelectedItemPosition()I

    move-result v1

    .line 945
    invoke-virtual {p1, v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 946
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    .line 947
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    .line 949
    invoke-static {p1, p2}, Lcolor/support/v4/view/ColorViewCompat;->setTextAlignment(Landroid/view/View;I)V

    .line 950
    iget-object p0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
