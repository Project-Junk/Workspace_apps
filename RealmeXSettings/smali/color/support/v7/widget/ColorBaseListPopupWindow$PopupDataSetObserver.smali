.class Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ColorBaseListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/widget/ColorBaseListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PopupDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;


# direct methods
.method private constructor <init>(Lcolor/support/v7/widget/ColorBaseListPopupWindow;)V
    .locals 0

    .line 1806
    iput-object p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupDataSetObserver;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcolor/support/v7/widget/ColorBaseListPopupWindow;Lcolor/support/v7/widget/ColorBaseListPopupWindow$1;)V
    .locals 0

    .line 1806
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupDataSetObserver;-><init>(Lcolor/support/v7/widget/ColorBaseListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1809
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupDataSetObserver;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    invoke-virtual {v0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1811
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupDataSetObserver;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    invoke-virtual {v0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->show()V

    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 1817
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupDataSetObserver;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    invoke-virtual {v0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->dismiss()V

    return-void
.end method
