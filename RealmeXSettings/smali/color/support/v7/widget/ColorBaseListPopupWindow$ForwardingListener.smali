.class public abstract Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;
.super Ljava/lang/Object;
.source "ColorBaseListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/widget/ColorBaseListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ForwardingListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener$TriggerLongPress;,
        Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener$DisallowIntercept;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mDisallowIntercept:Ljava/lang/Runnable;

.field private mForwarding:Z

.field private final mLongPressTimeout:I

.field private final mScaledTouchSlop:F

.field private final mSrc:Landroid/view/View;

.field private final mTapTimeout:I

.field private final mTmpLocation:[I

.field private mTriggerLongPress:Ljava/lang/Runnable;

.field private mWasLongPress:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 1252
    new-array v1, v0, [I

    iput-object v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->mTmpLocation:[I

    .line 1255
    iput-object p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    .line 1256
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->mScaledTouchSlop:F

    .line 1257
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    iput p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->mTapTimeout:I

    .line 1259
    iget p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->mTapTimeout:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    add-int/2addr p1, v1

    div-int/2addr p1, v0

    iput p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->mLongPressTimeout:I

    return-void
.end method

.method static synthetic access$800(Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;)Landroid/view/View;
    .locals 0

    .line 1221
    iget-object p0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;)V
    .locals 0

    .line 1221
    invoke-direct {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->onLongPress()V

    return-void
.end method

.method private clearCallbacks()V
    .locals 2

    .line 1384
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1385
    iget-object v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1388
    :cond_0
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1389
    iget-object v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private onLongPress()V
    .locals 11

    .line 1394
    invoke-direct {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->clearCallbacks()V

    .line 1396
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    .line 1397
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1403
    :cond_0
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->onForwardingStarted()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 1408
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1411
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide v3, v5

    .line 1412
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 1413
    invoke-virtual {v0, v1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1414
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 1416
    iput-boolean v2, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->mForwarding:Z

    .line 1417
    iput-boolean v2, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->mWasLongPress:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private onTouchForwarded(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1427
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    .line 1428
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->getPopup()Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 1429
    invoke-virtual {v1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 1433
    :cond_0
    invoke-static {v1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->access$500(Lcolor/support/v7/widget/ColorBaseListPopupWindow;)Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1434
    invoke-virtual {v1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->isShown()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 1439
    :cond_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 1440
    invoke-direct {p0, v0, v3}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->toGlobalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 1441
    invoke-direct {p0, v1, v3}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->toLocalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 1444
    iget v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->mActivePointerId:I

    invoke-virtual {v1, v3, v0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    .line 1445
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 1448
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_0
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    return v1

    :cond_3
    :goto_1
    return v2
.end method

.method private onTouchObserved(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1340
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    .line 1341
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 1345
    :cond_0
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    const/4 p1, 0x3

    if-eq v1, p1, :cond_2

    goto :goto_0

    .line 1361
    :cond_1
    iget v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ltz v1, :cond_6

    .line 1363
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 1364
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 1365
    iget v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->mScaledTouchSlop:F

    invoke-static {v0, v4, p1, v1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->pointInView(Landroid/view/View;FFF)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1366
    invoke-direct {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->clearCallbacks()V

    .line 1369
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v3

    .line 1376
    :cond_2
    invoke-direct {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->clearCallbacks()V

    goto :goto_0

    .line 1348
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->mActivePointerId:I

    .line 1349
    iput-boolean v2, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->mWasLongPress:Z

    .line 1351
    iget-object p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-nez p1, :cond_4

    .line 1352
    new-instance p1, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener$DisallowIntercept;

    invoke-direct {p1, p0, v1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener$DisallowIntercept;-><init>(Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;Lcolor/support/v7/widget/ColorBaseListPopupWindow$1;)V

    iput-object p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    .line 1354
    :cond_4
    iget-object p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    iget v3, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->mTapTimeout:I

    int-to-long v3, v3

    invoke-virtual {v0, p1, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1355
    iget-object p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-nez p1, :cond_5

    .line 1356
    new-instance p1, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener$TriggerLongPress;

    invoke-direct {p1, p0, v1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener$TriggerLongPress;-><init>(Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;Lcolor/support/v7/widget/ColorBaseListPopupWindow$1;)V

    iput-object p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    .line 1358
    :cond_5
    iget-object p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    iget v1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->mLongPressTimeout:I

    int-to-long v3, v1

    invoke-virtual {v0, p1, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_0
    return v2
.end method

.method private static pointInView(Landroid/view/View;FFF)Z
    .locals 2

    neg-float v0, p3

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    .line 1457
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 1458
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    add-float/2addr p0, p3

    cmpg-float p0, p2, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private toGlobalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1477
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->mTmpLocation:[I

    .line 1478
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p1, 0x0

    .line 1479
    aget p1, v0, p1

    int-to-float p1, p1

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    invoke-virtual {p2, p1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return v1
.end method

.method private toLocalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1466
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->mTmpLocation:[I

    .line 1467
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p1, 0x0

    .line 1468
    aget p1, v0, p1

    neg-int p1, p1

    int-to-float p1, p1

    const/4 v1, 0x1

    aget v0, v0, v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p2, p1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return v1
.end method


# virtual methods
.method public abstract getPopup()Lcolor/support/v7/widget/ColorBaseListPopupWindow;
.end method

.method protected onForwardingStarted()Z
    .locals 2

    .line 1312
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->getPopup()Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1313
    invoke-virtual {v0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1314
    invoke-virtual {v0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->show()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onForwardingStopped()Z
    .locals 2

    .line 1326
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->getPopup()Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1327
    invoke-virtual {v0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1328
    invoke-virtual {v0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->dismiss()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1276
    iget-boolean p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->mForwarding:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1279
    iget-boolean v2, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->mWasLongPress:Z

    if-eqz v2, :cond_0

    .line 1283
    invoke-direct {p0, p2}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->onTouchForwarded(Landroid/view/MotionEvent;)Z

    move-result p2

    goto :goto_2

    .line 1285
    :cond_0
    invoke-direct {p0, p2}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->onTouchForwarded(Landroid/view/MotionEvent;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->onForwardingStopped()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move p2, v1

    goto :goto_2

    :cond_2
    :goto_0
    move p2, v0

    goto :goto_2

    .line 1288
    :cond_3
    invoke-direct {p0, p2}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->onTouchObserved(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->onForwardingStarted()Z

    move-result p2

    if-eqz p2, :cond_4

    move p2, v0

    goto :goto_1

    :cond_4
    move p2, v1

    :goto_1
    if-eqz p2, :cond_5

    .line 1292
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, v4

    .line 1293
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 1295
    iget-object v3, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1296
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1300
    :cond_5
    :goto_2
    iput-boolean p2, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$ForwardingListener;->mForwarding:Z

    if-nez p2, :cond_7

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    return v1

    :cond_7
    :goto_3
    return v0
.end method
