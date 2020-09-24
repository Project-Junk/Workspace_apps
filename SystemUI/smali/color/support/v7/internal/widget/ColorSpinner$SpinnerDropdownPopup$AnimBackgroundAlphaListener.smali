.class Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$AnimBackgroundAlphaListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimBackgroundAlphaListener"
.end annotation


# instance fields
.field private final mBackground:Landroid/graphics/drawable/Drawable;

.field private final mEndValue:I

.field final synthetic this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;


# direct methods
.method public constructor <init>(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 1136
    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$AnimBackgroundAlphaListener;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1137
    iput-object p2, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$AnimBackgroundAlphaListener;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 1138
    iput p3, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$AnimBackgroundAlphaListener;->mEndValue:I

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1143
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$AnimBackgroundAlphaListener;->mBackground:Landroid/graphics/drawable/Drawable;

    iget p0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$AnimBackgroundAlphaListener;->mEndValue:I

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method
