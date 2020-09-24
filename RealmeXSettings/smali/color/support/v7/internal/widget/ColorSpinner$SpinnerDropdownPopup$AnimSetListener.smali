.class Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$AnimSetListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimSetListener"
.end annotation


# instance fields
.field private final mPopup:Lcolor/support/v7/widget/ColorPopupWindow;

.field final synthetic this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;


# direct methods
.method public constructor <init>(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;Lcolor/support/v7/widget/ColorPopupWindow;)V
    .locals 0

    .line 1165
    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$AnimSetListener;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1166
    iput-object p2, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$AnimSetListener;->mPopup:Lcolor/support/v7/widget/ColorPopupWindow;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1171
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$AnimSetListener;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object p1, p1, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$1802(Lcolor/support/v7/internal/widget/ColorSpinner;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1172
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$AnimSetListener;->mPopup:Lcolor/support/v7/widget/ColorPopupWindow;

    if-eqz p1, :cond_0

    .line 1173
    invoke-virtual {p1}, Lcolor/support/v7/widget/ColorPopupWindow;->superDismiss()V

    :cond_0
    return-void
.end method
