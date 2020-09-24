.class Lcolor/support/v7/widget/ColorBaseListPopupWindow$ResizePopupRunnable;
.super Ljava/lang/Object;
.source "ColorBaseListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/widget/ColorBaseListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizePopupRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;


# direct methods
.method private constructor <init>(Lcolor/support/v7/widget/ColorBaseListPopupWindow;)V
    .locals 0

    .line 1827
    iput-object p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ResizePopupRunnable;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcolor/support/v7/widget/ColorBaseListPopupWindow;Lcolor/support/v7/widget/ColorBaseListPopupWindow$1;)V
    .locals 0

    .line 1827
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ResizePopupRunnable;-><init>(Lcolor/support/v7/widget/ColorBaseListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1829
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ResizePopupRunnable;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    invoke-static {v0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->access$500(Lcolor/support/v7/widget/ColorBaseListPopupWindow;)Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ResizePopupRunnable;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    invoke-static {v0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->access$500(Lcolor/support/v7/widget/ColorBaseListPopupWindow;)Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ResizePopupRunnable;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    invoke-static {v1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->access$500(Lcolor/support/v7/widget/ColorBaseListPopupWindow;)Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    move-result-object v1

    invoke-virtual {v1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ResizePopupRunnable;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    .line 1830
    invoke-static {v0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->access$500(Lcolor/support/v7/widget/ColorBaseListPopupWindow;)Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ResizePopupRunnable;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    iget v1, v1, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mListItemExpandMaximum:I

    if-gt v0, v1, :cond_0

    .line 1831
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ResizePopupRunnable;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    iget-object v0, v0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/ColorBasePopupWindow;->setInputMethodMode(I)V

    .line 1832
    iget-object p0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ResizePopupRunnable;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->show()V

    :cond_0
    return-void
.end method
