.class Lcolor/support/v7/widget/ColorBaseListPopupWindow$1;
.super Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;
.source "ColorBaseListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcolor/support/v7/widget/ColorBaseListPopupWindow;->createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;


# direct methods
.method constructor <init>(Lcolor/support/v7/widget/ColorBaseListPopupWindow;Landroid/view/View;)V
    .locals 0

    .line 1040
    iput-object p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$1;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    invoke-direct {p0, p2}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lcolor/support/v7/widget/ColorBaseListPopupWindow;
    .locals 1

    .line 1043
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$1;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    return-object v0
.end method
