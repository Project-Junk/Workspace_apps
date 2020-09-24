.class Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup$3;
.super Ljava/lang/Object;
.source "ColorBaseSpinner.java"

# interfaces
.implements Lcolor/support/v7/widget/ColorBasePopupWindow$OnDismissListener;


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

.field final synthetic val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method constructor <init>(Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    .line 1110
    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup$3;->this$1:Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;

    iput-object p2, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup$3;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 1113
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup$3;->this$1:Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;

    iget-object v0, v0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorBaseSpinner;

    invoke-virtual {v0}, Lcolor/support/v7/internal/widget/ColorBaseSpinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1115
    iget-object p0, p0, Lcolor/support/v7/internal/widget/ColorBaseSpinner$DropdownPopup$3;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
