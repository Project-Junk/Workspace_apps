.class Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$1;
.super Landroid/util/IntProperty;
.source "ColorSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;


# direct methods
.method constructor <init>(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;Ljava/lang/String;)V
    .locals 0

    .line 631
    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$1;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    invoke-direct {p0, p2}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/graphics/drawable/Drawable;)Ljava/lang/Integer;
    .locals 0

    .line 639
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->getAlpha(Landroid/graphics/drawable/Drawable;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 631
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$1;->get(Landroid/graphics/drawable/Drawable;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 634
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0

    .line 631
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$1;->setValue(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method
