.class Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$2;
.super Ljava/lang/Object;
.source "ColorSpinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;-><init>(Lcolor/support/v7/internal/widget/ColorSpinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

.field final synthetic val$this$0:Lcolor/support/v7/internal/widget/ColorSpinner;


# direct methods
.method constructor <init>(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;Lcolor/support/v7/internal/widget/ColorSpinner;)V
    .locals 0

    .line 667
    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$2;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    iput-object p2, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$2;->val$this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .line 670
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$2;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object p1, p1, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-virtual {p1}, Lcolor/support/v7/internal/widget/ColorSpinner;->getSelectedItemPosition()I

    move-result p1

    .line 671
    iget-object p4, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$2;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    const/4 p5, 0x0

    if-eq p1, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p5

    :goto_0
    invoke-static {p4, v0}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->access$402(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;Z)Z

    .line 672
    iget-object p4, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$2;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object p4, p4, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-static {p4}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$500(Lcolor/support/v7/internal/widget/ColorSpinner;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 673
    iget-object p4, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$2;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    invoke-static {p4, p3}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->access$102(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;I)I

    if-eq p1, p3, :cond_2

    .line 675
    iget-object p4, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$2;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object p4, p4, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-virtual {p4, p3}, Lcolor/support/v7/internal/widget/ColorSpinner;->setNextSelectedPositionInt(I)V

    .line 676
    iget-object p4, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$2;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object p4, p4, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-virtual {p4}, Lcolor/support/v7/internal/widget/ColorSpinner;->selectionChanged()V

    .line 677
    iget-object p4, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$2;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object p4, p4, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-virtual {p4, p1}, Lcolor/support/v7/internal/widget/ColorSpinner;->setNextSelectedPositionInt(I)V

    goto :goto_1

    .line 680
    :cond_1
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$2;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object p1, p1, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-virtual {p1, p3}, Lcolor/support/v7/internal/widget/ColorSpinner;->setSelection(I)V

    .line 682
    :cond_2
    :goto_1
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$2;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object p1, p1, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    iget-object p1, p1, Lcolor/support/v7/internal/widget/ColorSpinner;->mOnItemClickListener:Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemClickListener;

    if-eqz p1, :cond_3

    .line 683
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$2;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object p1, p1, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    iget-object p4, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$2;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object p4, p4, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    iget-object p4, p4, Lcolor/support/v7/internal/widget/ColorSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {p4, p3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    invoke-virtual {p1, p2, p3, v0, v1}, Lcolor/support/v7/internal/widget/ColorSpinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 685
    :cond_3
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$2;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    invoke-virtual {p1}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->dismiss()V

    .line 686
    iget-object p0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$2;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    invoke-static {p0, p5}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->access$402(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;Z)Z

    return-void
.end method
