.class public abstract Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;
.super Landroid/widget/FrameLayout;
.source "ColorBaseFrontCameraAnimView.java"


# instance fields
.field protected mCurScreenRotation:I

.field protected mLastScreenRotation:I

.field protected mLp:Landroid/view/WindowManager$LayoutParams;

.field private mVerticalX:I

.field private mVerticalY:I

.field protected mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, -0x80000000

    .line 31
    iput p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->mVerticalX:I

    .line 32
    iput p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->mVerticalY:I

    const/4 p1, 0x0

    .line 36
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->setWillNotDraw(Z)V

    .line 37
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->mContext:Landroid/content/Context;

    const-string p3, "window"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->mWindowManager:Landroid/view/WindowManager;

    .line 38
    iput p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->mLastScreenRotation:I

    return-void
.end method


# virtual methods
.method public abstract addToWindow()V
.end method

.method public abstract cancelAnimation()V
.end method

.method public abstract initView(Landroid/content/Context;)V
.end method

.method protected updateScreenRotation()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 67
    :cond_0
    iget v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->mVerticalX:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->mVerticalY:I

    if-ne v1, v2, :cond_1

    .line 68
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->mVerticalX:I

    .line 69
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->mVerticalY:I

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->mCurScreenRotation:I

    .line 72
    iget v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->mCurScreenRotation:I

    iget v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->mLastScreenRotation:I

    if-eq v0, v1, :cond_5

    .line 73
    iput v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->mLastScreenRotation:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->getBaseDisplayHeight()I

    move-result v1

    iget v2, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->mVerticalY:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 87
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->mVerticalX:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->mVerticalY:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 82
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->getBaseDisplayWidth()I

    move-result v1

    iget v2, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->mVerticalX:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 76
    :cond_4
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->mVerticalX:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 77
    iget v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->mVerticalY:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    :goto_1
    return-void
.end method
