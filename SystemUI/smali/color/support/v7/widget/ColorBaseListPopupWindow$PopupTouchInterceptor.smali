.class public Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupTouchInterceptor;
.super Ljava/lang/Object;
.source "ColorBaseListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/widget/ColorBaseListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PopupTouchInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;


# direct methods
.method protected constructor <init>(Lcolor/support/v7/widget/ColorBaseListPopupWindow;)V
    .locals 0

    .line 1837
    iput-object p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupTouchInterceptor;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1839
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    .line 1840
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1841
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    if-nez p1, :cond_0

    .line 1843
    iget-object v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupTouchInterceptor;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    iget-object v1, v1, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupTouchInterceptor;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    iget-object v1, v1, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    .line 1844
    invoke-virtual {v1}, Lcolor/support/v7/widget/ColorBasePopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupTouchInterceptor;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    iget-object v1, v1, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    .line 1845
    invoke-virtual {v1}, Lcolor/support/v7/widget/ColorBasePopupWindow;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupTouchInterceptor;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    iget-object v0, v0, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->mPopup:Lcolor/support/v7/widget/ColorBasePopupWindow;

    invoke-virtual {v0}, Lcolor/support/v7/widget/ColorBasePopupWindow;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 1846
    iget-object p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupTouchInterceptor;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    invoke-static {p1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->access$1200(Lcolor/support/v7/widget/ColorBaseListPopupWindow;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupTouchInterceptor;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    invoke-static {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->access$1100(Lcolor/support/v7/widget/ColorBaseListPopupWindow;)Lcolor/support/v7/widget/ColorBaseListPopupWindow$ResizePopupRunnable;

    move-result-object p0

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 1848
    iget-object p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupTouchInterceptor;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    invoke-static {p1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->access$1200(Lcolor/support/v7/widget/ColorBaseListPopupWindow;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$PopupTouchInterceptor;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    invoke-static {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->access$1100(Lcolor/support/v7/widget/ColorBaseListPopupWindow;)Lcolor/support/v7/widget/ColorBaseListPopupWindow$ResizePopupRunnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
