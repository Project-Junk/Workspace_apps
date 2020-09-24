.class Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->createHideAnimatorSet()Landroid/animation/AnimatorSet;
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

    .line 1029
    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$13;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1032
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1033
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$13;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object p1, p1, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-static {p1}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$1700(Lcolor/support/v7/internal/widget/ColorSpinner;)Lcolor/support/v7/internal/widget/ColorSpinner$OnPopupWindowActionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1034
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$13;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object p1, p1, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-static {p1}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$1700(Lcolor/support/v7/internal/widget/ColorSpinner;)Lcolor/support/v7/internal/widget/ColorSpinner$OnPopupWindowActionListener;

    move-result-object p1

    iget-object p0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$13;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object p0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcolor/support/v7/internal/widget/ColorSpinner$OnPopupWindowActionListener;->onDismiss(Lcolor/support/v7/internal/widget/ColorSpinner;Z)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1040
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1041
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$13;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object p1, p1, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-static {p1}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$1700(Lcolor/support/v7/internal/widget/ColorSpinner;)Lcolor/support/v7/internal/widget/ColorSpinner$OnPopupWindowActionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1042
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$13;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object p1, p1, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-static {p1}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$1700(Lcolor/support/v7/internal/widget/ColorSpinner;)Lcolor/support/v7/internal/widget/ColorSpinner$OnPopupWindowActionListener;

    move-result-object p1

    iget-object p0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$13;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object p0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Lcolor/support/v7/internal/widget/ColorSpinner$OnPopupWindowActionListener;->onDismiss(Lcolor/support/v7/internal/widget/ColorSpinner;Z)V

    :cond_0
    return-void
.end method
