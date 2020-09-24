.class Lcolor/support/v7/widget/ColorBaseListPopupWindow$3;
.super Ljava/lang/Object;
.source "ColorBaseListPopupWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcolor/support/v7/widget/ColorBaseListPopupWindow;->buildDropDown()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;


# direct methods
.method constructor <init>(Lcolor/support/v7/widget/ColorBaseListPopupWindow;)V
    .locals 0

    .line 1085
    iput-object p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$3;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 p1, -0x1

    if-eq p3, p1, :cond_0

    .line 1090
    iget-object p0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$3;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    invoke-static {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->access$500(Lcolor/support/v7/widget/ColorBaseListPopupWindow;)Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 1093
    invoke-static {p0, p1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->access$402(Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;Z)Z

    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
