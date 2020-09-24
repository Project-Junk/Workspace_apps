.class Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$4;
.super Ljava/lang/Object;
.source "ColorSpinner.java"

# interfaces
.implements Lcolor/support/v7/widget/ColorBasePopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->show(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

.field final synthetic val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method constructor <init>(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    .line 769
    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$4;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    iput-object p2, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$4;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 772
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$4;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object v0, v0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-virtual {v0}, Lcolor/support/v7/internal/widget/ColorSpinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 774
    iget-object v1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$4;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v0, v1}, Lcolor/support/v4/view/b;->a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 776
    :cond_0
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$4;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    invoke-static {v0}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->access$701(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;)V

    return-void
.end method
