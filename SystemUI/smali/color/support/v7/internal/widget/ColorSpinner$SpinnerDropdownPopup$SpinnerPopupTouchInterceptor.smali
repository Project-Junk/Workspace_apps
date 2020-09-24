.class Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$SpinnerPopupTouchInterceptor;
.super Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupTouchInterceptor;
.source "ColorSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpinnerPopupTouchInterceptor"
.end annotation


# instance fields
.field final synthetic this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;


# direct methods
.method private constructor <init>(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;)V
    .locals 0

    .line 1113
    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$SpinnerPopupTouchInterceptor;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    invoke-direct {p0, p1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupTouchInterceptor;-><init>(Lcolor/support/v7/widget/ColorBaseListPopupWindow;)V

    return-void
.end method

.method synthetic constructor <init>(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;Lcolor/support/v7/internal/widget/ColorSpinner$1;)V
    .locals 0

    .line 1113
    invoke-direct {p0, p1}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$SpinnerPopupTouchInterceptor;-><init>(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1117
    invoke-super {p0, p1, p2}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupTouchInterceptor;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    .line 1118
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 1119
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1120
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 1121
    iget-object v1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$SpinnerPopupTouchInterceptor;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    invoke-virtual {v1}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-ltz v0, :cond_0

    .line 1122
    iget-object v2, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$SpinnerPopupTouchInterceptor;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    invoke-static {v2, v1}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->access$2100(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/view/View;)I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$SpinnerPopupTouchInterceptor;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    invoke-static {v0, v1}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->access$1100(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/view/View;)I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 1123
    :cond_0
    iget-object p0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$SpinnerPopupTouchInterceptor;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->dismiss()V

    const/4 p0, 0x1

    return p0

    :cond_1
    return p1
.end method
