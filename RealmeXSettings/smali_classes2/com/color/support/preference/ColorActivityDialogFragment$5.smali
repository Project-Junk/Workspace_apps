.class final Lcom/color/support/preference/ColorActivityDialogFragment$5;
.super Ljava/lang/Object;
.source "ColorActivityDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/preference/ColorActivityDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:Landroidx/appcompat/app/AppCompatDialog;

.field final synthetic c:Lcom/color/support/preference/ColorActivityDialogFragment;


# direct methods
.method constructor <init>(Lcom/color/support/preference/ColorActivityDialogFragment;Landroid/widget/ListView;Landroidx/appcompat/app/AppCompatDialog;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/color/support/preference/ColorActivityDialogFragment$5;->c:Lcom/color/support/preference/ColorActivityDialogFragment;

    iput-object p2, p0, Lcom/color/support/preference/ColorActivityDialogFragment$5;->a:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/color/support/preference/ColorActivityDialogFragment$5;->b:Landroidx/appcompat/app/AppCompatDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 199
    iget-object p1, p0, Lcom/color/support/preference/ColorActivityDialogFragment$5;->c:Lcom/color/support/preference/ColorActivityDialogFragment;

    iget-object p2, p0, Lcom/color/support/preference/ColorActivityDialogFragment$5;->a:Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p2

    sub-int/2addr p3, p2

    invoke-static {p1, p3}, Lcom/color/support/preference/ColorActivityDialogFragment;->a(Lcom/color/support/preference/ColorActivityDialogFragment;I)I

    .line 201
    iget-object p1, p0, Lcom/color/support/preference/ColorActivityDialogFragment$5;->c:Lcom/color/support/preference/ColorActivityDialogFragment;

    const/4 p2, 0x0

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Lcom/color/support/preference/ColorActivityDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    .line 202
    iget-object p1, p0, Lcom/color/support/preference/ColorActivityDialogFragment$5;->b:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method
