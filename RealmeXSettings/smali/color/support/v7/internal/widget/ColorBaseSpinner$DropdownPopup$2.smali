.class Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup$2;
.super Ljava/lang/Object;
.source "ColorBaseSpinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;->show(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;


# direct methods
.method constructor <init>(Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;)V
    .locals 0

    .line 1095
    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup$2;->this$1:Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 1098
    invoke-static {}, Lcolor/support/v4/view/a;->a()Z

    .line 1101
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup$2;->this$1:Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;

    invoke-virtual {v0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;->computeContentWidth()V

    .line 1105
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup$2;->this$1:Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;

    invoke-static {v0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;->access$301(Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;)V

    return-void
.end method