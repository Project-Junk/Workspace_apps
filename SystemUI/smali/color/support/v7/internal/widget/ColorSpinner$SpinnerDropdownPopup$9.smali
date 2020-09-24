.class Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$9;
.super Ljava/lang/Object;
.source "ColorSpinner.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->createShowAnimatorset()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

.field final synthetic val$background:Landroid/graphics/drawable/Drawable;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/widget/ListView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 961
    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$9;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    iput-object p2, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$9;->val$listView:Landroid/widget/ListView;

    iput-object p3, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$9;->val$background:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 973
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$9;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object p1, p1, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-static {p1}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$1700(Lcolor/support/v7/internal/widget/ColorSpinner;)Lcolor/support/v7/internal/widget/ColorSpinner$OnPopupWindowActionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 974
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$9;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object p1, p1, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-static {p1}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$1700(Lcolor/support/v7/internal/widget/ColorSpinner;)Lcolor/support/v7/internal/widget/ColorSpinner$OnPopupWindowActionListener;

    move-result-object p1

    iget-object p0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$9;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object p0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcolor/support/v7/internal/widget/ColorSpinner$OnPopupWindowActionListener;->onShow(Lcolor/support/v7/internal/widget/ColorSpinner;Z)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 964
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$9;->val$listView:Landroid/widget/ListView;

    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$9;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    invoke-static {v0, p1}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->access$1100(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/view/View;)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setTranslationY(F)V

    .line 965
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$9;->val$background:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 966
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$9;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object p1, p1, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-static {p1}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$1700(Lcolor/support/v7/internal/widget/ColorSpinner;)Lcolor/support/v7/internal/widget/ColorSpinner$OnPopupWindowActionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 967
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$9;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object p1, p1, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-static {p1}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$1700(Lcolor/support/v7/internal/widget/ColorSpinner;)Lcolor/support/v7/internal/widget/ColorSpinner$OnPopupWindowActionListener;

    move-result-object p1

    iget-object p0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$9;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object p0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Lcolor/support/v7/internal/widget/ColorSpinner$OnPopupWindowActionListener;->onShow(Lcolor/support/v7/internal/widget/ColorSpinner;Z)V

    :cond_0
    return-void
.end method
