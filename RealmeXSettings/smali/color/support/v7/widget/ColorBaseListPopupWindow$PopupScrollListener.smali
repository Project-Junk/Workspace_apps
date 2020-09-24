.class Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupScrollListener;
.super Ljava/lang/Object;
.source "ColorBaseListPopupWindow.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/widget/ColorBaseListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PopupScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;


# direct methods
.method private constructor <init>(Lcolor/support/v7/widget/ColorBaseListPopupWindow;)V
    .locals 0

    .line 1854
    iput-object p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupScrollListener;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcolor/support/v7/widget/ColorBaseListPopupWindow;Lcolor/support/v7/widget/ColorBaseListPopupWindow$1;)V
    .locals 0

    .line 1854
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupScrollListener;-><init>(Lcolor/support/v7/widget/ColorBaseListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 1861
    iget-object p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupScrollListener;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    .line 1862
    invoke-virtual {p1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->isInputMethodNotNeeded()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupScrollListener;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    iget-object p1, p1, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-virtual {p1}, Lcolor/support/v7/widget/ColorBasePopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1863
    iget-object p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupScrollListener;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    invoke-static {p1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->access$1200(Lcolor/support/v7/widget/ColorBaseListPopupWindow;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupScrollListener;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    invoke-static {p2}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->access$1100(Lcolor/support/v7/widget/ColorBaseListPopupWindow;)Lcolor/support/v7/widget/ColorBaseListPopupWindow$ResizePopupRunnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1864
    iget-object p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupScrollListener;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    invoke-static {p1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->access$1100(Lcolor/support/v7/widget/ColorBaseListPopupWindow;)Lcolor/support/v7/widget/ColorBaseListPopupWindow$ResizePopupRunnable;

    move-result-object p1

    invoke-virtual {p1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ResizePopupRunnable;->run()V

    :cond_0
    return-void
.end method
