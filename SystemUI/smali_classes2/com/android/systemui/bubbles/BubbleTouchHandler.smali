.class Lcom/android/systemui/bubbles/BubbleTouchHandler;
.super Ljava/lang/Object;
.source "BubbleTouchHandler.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final DISMISS_FLING_TARGET_WIDTH_PERCENT:F = 0.5f

.field private static final INDIVIDUAL_BUBBLE_DISMISS_MIN_VELOCITY:F = 6000.0f

.field private static final STACK_DISMISS_MIN_VELOCITY:F = 4000.0f

.field private static final TAG:Ljava/lang/String; = "BubbleTouchHandler"


# instance fields
.field private final mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

.field private mController:Lcom/android/systemui/bubbles/BubbleController;

.field private mHandler:Landroid/os/Handler;

.field private mInDismissTarget:Z

.field private mMovedEnough:Z

.field private final mStack:Lcom/android/systemui/bubbles/BubbleStackView;

.field private final mTouchDown:Landroid/graphics/PointF;

.field private mTouchSlopSquared:I

.field private mTouchedView:Landroid/view/View;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mViewPositionOnTouchDown:Landroid/graphics/PointF;


# direct methods
.method constructor <init>(Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/BubbleData;Landroid/content/Context;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchDown:Landroid/graphics/PointF;

    .line 59
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mViewPositionOnTouchDown:Landroid/graphics/PointF;

    .line 63
    const-class v0, Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/BubbleController;

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mController:Lcom/android/systemui/bubbles/BubbleController;

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mHandler:Landroid/os/Handler;

    .line 77
    invoke-static {p3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    mul-int/2addr p3, p3

    .line 78
    iput p3, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchSlopSquared:I

    .line 79
    iput-object p2, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    .line 80
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    return-void
.end method

.method private isFastFlingTowardsDismissTarget(FFFF)Z
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p4, v0

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    return v2

    :cond_0
    cmpl-float v0, p3, v0

    if-eqz v0, :cond_1

    div-float p3, p4, p3

    mul-float/2addr p1, p3

    sub-float/2addr p2, p1

    .line 243
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/BubbleStackView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, p2

    div-float/2addr p1, p3

    .line 246
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 247
    invoke-virtual {p2}, Lcom/android/systemui/bubbles/BubbleStackView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float/2addr p2, p3

    const/high16 p3, 0x457a0000    # 4000.0f

    cmpl-float p3, p4, p3

    if-lez p3, :cond_2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    cmpl-float p3, p1, p2

    if-lez p3, :cond_2

    .line 248
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 250
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getWidth()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p0, p2

    cmpg-float p0, p1, p0

    if-gez p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private resetForNextGesture()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 257
    iput-object v1, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 260
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    const/4 v0, 0x0

    .line 261
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mMovedEnough:Z

    .line 262
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mInDismissTarget:Z

    .line 264
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->onGestureFinished()V

    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 269
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 271
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onTouch$0$BubbleTouchHandler(ZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 188
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mController:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleController;->dismissStack(I)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mController:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/bubbles/BubbleController;->removeBubble(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 89
    iget-object v3, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 90
    iget-object v3, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->getTargetView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    :cond_0
    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1a

    .line 95
    iget-object v3, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    if-nez v3, :cond_1

    goto/16 :goto_8

    .line 101
    :cond_1
    iget-object v5, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 102
    iget-object v5, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v5}, Lcom/android/systemui/bubbles/BubbleStackView;->getFlyoutView()Landroid/view/View;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    .line 107
    iget-object v8, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mViewPositionOnTouchDown:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v6

    iget-object v9, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchDown:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    .line 108
    iget-object v9, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mViewPositionOnTouchDown:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    add-float/2addr v9, v7

    iget-object v10, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchDown:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v10

    const/4 v15, 0x1

    if-eqz v2, :cond_17

    const/16 v10, 0x3e8

    if-eq v2, v15, :cond_9

    const/4 v4, 0x2

    if-eq v2, v4, :cond_4

    const/4 v1, 0x3

    if-eq v2, v1, :cond_3

    :cond_2
    :goto_0
    move v2, v15

    goto/16 :goto_7

    .line 164
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/bubbles/BubbleTouchHandler;->resetForNextGesture()V

    goto :goto_0

    .line 129
    :cond_4
    invoke-direct {v0, v1}, Lcom/android/systemui/bubbles/BubbleTouchHandler;->trackMovement(Landroid/view/MotionEvent;)V

    .line 130
    iget-object v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchDown:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v2

    .line 131
    iget-object v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchDown:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v2

    mul-float v2, v6, v6

    mul-float/2addr v7, v7

    add-float/2addr v2, v7

    .line 133
    iget v4, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchSlopSquared:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_5

    iget-boolean v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mMovedEnough:Z

    if-nez v2, :cond_5

    .line 134
    iput-boolean v15, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mMovedEnough:Z

    .line 137
    :cond_5
    iget-boolean v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mMovedEnough:Z

    if-eqz v2, :cond_8

    if-eqz v3, :cond_6

    .line 139
    iget-object v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v2, v8, v9}, Lcom/android/systemui/bubbles/BubbleStackView;->onDragged(FF)V

    goto :goto_1

    :cond_6
    if-eqz v5, :cond_7

    .line 141
    iget-object v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v2, v6}, Lcom/android/systemui/bubbles/BubbleStackView;->onFlyoutDragged(F)V

    goto :goto_1

    .line 143
    :cond_7
    iget-object v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v3, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    invoke-virtual {v2, v3, v8, v9}, Lcom/android/systemui/bubbles/BubbleStackView;->onBubbleDragged(Landroid/view/View;FF)V

    .line 147
    :cond_8
    :goto_1
    iget-object v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->isInDismissTarget(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 148
    iget-boolean v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mInDismissTarget:Z

    if-eq v1, v2, :cond_2

    .line 149
    iput-boolean v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mInDismissTarget:Z

    .line 151
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 152
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    .line 153
    iget-object v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v16

    if-nez v5, :cond_2

    .line 157
    iget-object v10, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v11, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    iget-boolean v12, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mInDismissTarget:Z

    move v13, v8

    move v14, v9

    move v2, v15

    move v15, v1

    invoke-virtual/range {v10 .. v16}, Lcom/android/systemui/bubbles/BubbleStackView;->animateMagnetToDismissTarget(Landroid/view/View;ZFFFF)V

    goto/16 :goto_7

    :cond_9
    move v2, v15

    .line 168
    invoke-direct {v0, v1}, Lcom/android/systemui/bubbles/BubbleTouchHandler;->trackMovement(Landroid/view/MotionEvent;)V

    .line 169
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 170
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v14

    .line 171
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v15

    if-eqz v3, :cond_a

    .line 173
    iget-boolean v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mInDismissTarget:Z

    if-nez v1, :cond_c

    .line 176
    invoke-direct {v0, v6, v7, v14, v15}, Lcom/android/systemui/bubbles/BubbleTouchHandler;->isFastFlingTowardsDismissTarget(FFFF)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_2

    :cond_a
    iget-boolean v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mInDismissTarget:Z

    if-nez v1, :cond_c

    const v1, 0x45bb8000    # 6000.0f

    cmpl-float v1, v15, v1

    if-lez v1, :cond_b

    goto :goto_2

    :cond_b
    move v1, v4

    goto :goto_3

    :cond_c
    :goto_2
    move v1, v2

    :goto_3
    if-eqz v5, :cond_d

    .line 180
    iget-boolean v7, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mMovedEnough:Z

    if-eqz v7, :cond_d

    .line 181
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v3, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchDown:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v3

    invoke-virtual {v1, v6, v14}, Lcom/android/systemui/bubbles/BubbleStackView;->onFlyoutDragFinished(FF)V

    goto/16 :goto_6

    :cond_d
    if-eqz v1, :cond_f

    if-eqz v3, :cond_e

    const/4 v1, 0x0

    goto :goto_4

    .line 183
    :cond_e
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/bubbles/BubbleView;

    .line 184
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BubbleView;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 185
    :goto_4
    iget-object v4, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v5, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    new-instance v6, Lcom/android/systemui/bubbles/-$$Lambda$BubbleTouchHandler$CRI1SYVVWTk0CE6JELaYKVCSdCI;

    invoke-direct {v6, v0, v3, v1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleTouchHandler$CRI1SYVVWTk0CE6JELaYKVCSdCI;-><init>(Lcom/android/systemui/bubbles/BubbleTouchHandler;ZLjava/lang/String;)V

    invoke-virtual {v4, v5, v14, v15, v6}, Lcom/android/systemui/bubbles/BubbleStackView;->magnetToStackIfNeededThenAnimateDismissal(Landroid/view/View;FFLjava/lang/Runnable;)V

    goto :goto_6

    :cond_f
    if-eqz v5, :cond_10

    .line 197
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BubbleData;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_16

    iget-boolean v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mMovedEnough:Z

    if-nez v1, :cond_16

    .line 198
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v1, v2}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    goto :goto_6

    .line 200
    :cond_10
    iget-boolean v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mMovedEnough:Z

    if-eqz v1, :cond_12

    if-eqz v3, :cond_11

    .line 202
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v1, v8, v9, v14, v15}, Lcom/android/systemui/bubbles/BubbleStackView;->onDragFinish(FFFF)V

    goto :goto_6

    .line 204
    :cond_11
    iget-object v10, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v11, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    move v12, v8

    move v13, v9

    invoke-virtual/range {v10 .. v15}, Lcom/android/systemui/bubbles/BubbleStackView;->onBubbleDragFinish(Landroid/view/View;FFFF)V

    goto :goto_6

    .line 206
    :cond_12
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    iget-object v6, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v6}, Lcom/android/systemui/bubbles/BubbleStackView;->getExpandedBubbleView()Lcom/android/systemui/bubbles/BubbleView;

    move-result-object v6

    if-ne v1, v6, :cond_13

    .line 207
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v1, v4}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    goto :goto_6

    :cond_13
    if-nez v3, :cond_15

    if-eqz v5, :cond_14

    goto :goto_5

    .line 212
    :cond_14
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/bubbles/BubbleView;

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BubbleView;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 213
    iget-object v3, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v3, v1}, Lcom/android/systemui/bubbles/BubbleData;->getBubbleWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubble(Lcom/android/systemui/bubbles/Bubble;)V

    goto :goto_6

    .line 210
    :cond_15
    :goto_5
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BubbleData;->isExpanded()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    .line 216
    :cond_16
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/bubbles/BubbleTouchHandler;->resetForNextGesture()V

    goto :goto_7

    :cond_17
    move v2, v15

    .line 111
    invoke-direct {v0, v1}, Lcom/android/systemui/bubbles/BubbleTouchHandler;->trackMovement(Landroid/view/MotionEvent;)V

    .line 113
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchDown:Landroid/graphics/PointF;

    invoke-virtual {v1, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 114
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BubbleStackView;->onGestureStart()V

    if-eqz v3, :cond_18

    .line 117
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mViewPositionOnTouchDown:Landroid/graphics/PointF;

    iget-object v3, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v3}, Lcom/android/systemui/bubbles/BubbleStackView;->getStackPosition()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 118
    iget-object v0, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->onDragStart()V

    goto :goto_7

    :cond_18
    if-eqz v5, :cond_19

    .line 120
    iget-object v0, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->onFlyoutDragStart()V

    goto :goto_7

    .line 122
    :cond_19
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mViewPositionOnTouchDown:Landroid/graphics/PointF;

    iget-object v3, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    .line 123
    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    iget-object v4, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    .line 122
    invoke-virtual {v1, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 124
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v0, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->onBubbleDragStart(Landroid/view/View;)V

    :goto_7
    return v2

    .line 96
    :cond_1a
    :goto_8
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v1, v4}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    .line 97
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/bubbles/BubbleTouchHandler;->resetForNextGesture()V

    return v4
.end method
