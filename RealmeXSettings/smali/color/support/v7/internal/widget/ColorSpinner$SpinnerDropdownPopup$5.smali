.class Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$5;
.super Ljava/lang/Object;
.source "ColorSpinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->setListViewLayoutLimit(Landroid/widget/ListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/widget/ListView;)V
    .locals 0

    .line 833
    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$5;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    iput-object p2, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$5;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 836
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$5;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 837
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$5;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object v1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$5;->val$listView:Landroid/widget/ListView;

    invoke-static {v0, v1}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->access$1100(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/view/View;)I

    move-result v0

    .line 838
    iget-object v1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$5;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    invoke-static {v1}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->access$1200(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 839
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$5;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 840
    iget-object v1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$5;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    invoke-static {v1}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->access$1200(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 841
    iget-object v1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$5;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
