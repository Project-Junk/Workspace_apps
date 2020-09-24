.class Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup$1;
.super Ljava/lang/Object;
.source "ColorBaseSpinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;-><init>(Lcolor/support/v7/internal/widget/ColorBaseSpinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;

.field final synthetic val$this$0:Lcolor/support/v7/internal/widget/ColorBaseSpinner;


# direct methods
.method constructor <init>(Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;Lcolor/support/v7/internal/widget/ColorBaseSpinner;)V
    .locals 0

    .line 1006
    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup$1;->this$1:Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;

    iput-object p2, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup$1;->val$this$0:Lcolor/support/v7/internal/widget/ColorBaseSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    .line 1009
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup$1;->this$1:Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;

    iget-object p1, p1, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorBaseSpinner;

    invoke-virtual {p1, p3}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->setSelection(I)V

    .line 1010
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup$1;->this$1:Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;

    iget-object p1, p1, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorBaseSpinner;

    iget-object p1, p1, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mOnItemClickListener:Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemClickListener;

    if-eqz p1, :cond_0

    .line 1011
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup$1;->this$1:Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;

    iget-object p1, p1, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorBaseSpinner;

    iget-object p4, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup$1;->this$1:Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;

    .line 1012
    invoke-static {p4}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;->access$100(Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;)Landroid/widget/ListAdapter;

    move-result-object p4

    invoke-interface {p4, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide p4

    invoke-virtual {p1, p2, p3, p4, p5}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 1014
    :cond_0
    iget-object p0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup$1;->this$1:Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;->dismiss()V

    return-void
.end method
