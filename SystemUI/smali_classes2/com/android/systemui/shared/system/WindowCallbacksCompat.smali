.class public Lcom/android/systemui/shared/system/WindowCallbacksCompat;
.super Ljava/lang/Object;
.source "WindowCallbacksCompat.java"


# instance fields
.field private final mView:Landroid/view/View;

.field private final mWindowCallbacks:Landroid/view/WindowCallbacks;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/android/systemui/shared/system/WindowCallbacksCompat$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/system/WindowCallbacksCompat$1;-><init>(Lcom/android/systemui/shared/system/WindowCallbacksCompat;)V

    iput-object v0, p0, Lcom/android/systemui/shared/system/WindowCallbacksCompat;->mWindowCallbacks:Landroid/view/WindowCallbacks;

    .line 66
    iput-object p1, p0, Lcom/android/systemui/shared/system/WindowCallbacksCompat;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public attach()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/systemui/shared/system/WindowCallbacksCompat;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object p0, p0, Lcom/android/systemui/shared/system/WindowCallbacksCompat;->mWindowCallbacks:Landroid/view/WindowCallbacks;

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->addWindowCallbacks(Landroid/view/WindowCallbacks;)V

    .line 97
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public detach()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/systemui/shared/system/WindowCallbacksCompat;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/shared/system/WindowCallbacksCompat;->mWindowCallbacks:Landroid/view/WindowCallbacks;

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->removeWindowCallbacks(Landroid/view/WindowCallbacks;)V

    :cond_0
    return-void
.end method

.method public onContentDrawn(IIII)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPostDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public onRequestDraw(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/shared/system/WindowCallbacksCompat;->reportDrawFinish()V

    :cond_0
    return-void
.end method

.method public onWindowDragResizeEnd()V
    .locals 0

    return-void
.end method

.method public onWindowDragResizeStart(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 0

    return-void
.end method

.method public onWindowSizeIsChanging(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public reportDrawFinish()V
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/systemui/shared/system/WindowCallbacksCompat;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->reportDrawFinish()V

    return-void
.end method
