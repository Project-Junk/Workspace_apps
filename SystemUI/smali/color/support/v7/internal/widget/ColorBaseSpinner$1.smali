.class Lcolor/support/v7/internal/widget/ColorBaseSpinner$1;
.super Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;
.source "ColorBaseSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcolor/support/v7/internal/widget/ColorBaseSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/v7/internal/widget/ColorBaseSpinner;

.field final synthetic val$popup:Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;


# direct methods
.method constructor <init>(Lcolor/support/v7/internal/widget/ColorBaseSpinner;Landroid/view/View;Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$1;->this$0:Lcolor/support/v7/internal/widget/ColorBaseSpinner;

    iput-object p3, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$1;->val$popup:Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;

    invoke-direct {p0, p2}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lcolor/support/v7/widget/ColorBaseListPopupWindow;
    .locals 0

    .line 198
    iget-object p0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$1;->val$popup:Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;

    return-object p0
.end method

.method public onForwardingStarted()Z
    .locals 2

    .line 203
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$1;->this$0:Lcolor/support/v7/internal/widget/ColorBaseSpinner;

    iget-object v0, v0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mPopup:Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;

    invoke-interface {v0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$1;->this$0:Lcolor/support/v7/internal/widget/ColorBaseSpinner;

    iget-object v0, v0, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->mPopup:Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;

    iget-object v1, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$1;->this$0:Lcolor/support/v7/internal/widget/ColorBaseSpinner;

    invoke-virtual {v1}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->getTextDirection()I

    move-result v1

    iget-object p0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$1;->this$0:Lcolor/support/v7/internal/widget/ColorBaseSpinner;

    invoke-static {p0}, Lcolor/support/v4/view/ColorViewCompat;->getTextAlignment(Landroid/view/View;)I

    move-result p0

    invoke-interface {v0, v1, p0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$SpinnerPopup;->show(II)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
