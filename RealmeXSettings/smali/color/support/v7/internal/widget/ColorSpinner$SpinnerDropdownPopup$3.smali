.class Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$3;
.super Ljava/lang/Object;
.source "ColorSpinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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


# direct methods
.method constructor <init>(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;)V
    .locals 0

    .line 751
    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$3;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 754
    invoke-static {}, Lcolor/support/v4/view/a;->a()Z

    .line 757
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$3;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    invoke-virtual {v0}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->computeContentWidth()V

    .line 760
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$3;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    invoke-virtual {v0}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-static {v0, v1}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->access$600(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/widget/ListView;)V

    .line 764
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$3;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    invoke-virtual {v0}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->show()V

    return-void
.end method
