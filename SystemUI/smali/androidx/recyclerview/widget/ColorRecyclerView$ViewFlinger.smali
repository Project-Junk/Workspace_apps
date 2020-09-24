.class Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "ColorRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ColorRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFlinger"
.end annotation


# instance fields
.field private mEatRunOnAnimationRequest:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mReSchedulePostAnimationCallback:Z

.field final synthetic this$0:Landroidx/recyclerview/widget/ColorRecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/ColorRecyclerView;)V
    .locals 0

    .line 1179
    iput-object p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1171
    sget-object p1, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 p1, 0x0

    .line 1174
    iput-boolean p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 1177
    iput-boolean p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    return-void
.end method

.method private computeScrollDuration(IIII)I
    .locals 4

    .line 1466
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1467
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    mul-int/2addr p3, p3

    mul-int/2addr p4, p4

    add-int/2addr p3, p4

    int-to-double p3, p3

    .line 1469
    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    double-to-int p3, p3

    mul-int/2addr p1, p1

    mul-int/2addr p2, p2

    add-int/2addr p1, p2

    int-to-double p1, p1

    .line 1470
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-int p1, p1

    if-eqz v2, :cond_1

    .line 1471
    iget-object p2, p0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/ColorRecyclerView;->getWidth()I

    move-result p2

    goto :goto_1

    :cond_1
    iget-object p2, p0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/ColorRecyclerView;->getHeight()I

    move-result p2

    .line 1472
    :goto_1
    div-int/lit8 p4, p2, 0x2

    int-to-float p1, p1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr p1, v3

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 1473
    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    int-to-float p4, p4

    .line 1475
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->distanceInfluenceForSnapDuration(F)F

    move-result p0

    mul-float/2addr p0, p4

    add-float/2addr p4, p0

    if-lez p3, :cond_2

    const/high16 p0, 0x447a0000    # 1000.0f

    int-to-float p1, p3

    div-float/2addr p4, p1

    .line 1479
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    goto :goto_3

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    int-to-float p0, v0

    div-float/2addr p0, p2

    add-float/2addr p0, v3

    const/high16 p1, 0x43960000    # 300.0f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    :goto_3
    const/16 p1, 0x7d0

    .line 1484
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 0

    const/high16 p0, 0x3f000000    # 0.5f

    sub-float/2addr p1, p0

    const p0, 0x3ef1463b

    mul-float/2addr p1, p0

    float-to-double p0, p1

    .line 1462
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private internalPostOnAnimation()V
    .locals 1

    .line 1405
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1406
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public fling(II)V
    .locals 10

    .line 1410
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ColorRecyclerView;->setScrollState(I)V

    const/4 v0, 0x0

    .line 1411
    iput v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->mLastFlingY:I

    iput v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->mLastFlingX:I

    .line 1415
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    sget-object v1, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    if-eq v0, v1, :cond_0

    .line 1416
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1417
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    new-instance v1, Lcom/color/support/widget/SpringOverScroller;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v2, v3}, Lcom/color/support/widget/SpringOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    invoke-static {v0, v1}, Landroidx/recyclerview/widget/ColorRecyclerView;->access$002(Landroidx/recyclerview/widget/ColorRecyclerView;Lcom/color/support/widget/SpringOverScroller;)Lcom/color/support/widget/SpringOverScroller;

    .line 1419
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/ColorRecyclerView;->access$000(Landroidx/recyclerview/widget/ColorRecyclerView;)Lcom/color/support/widget/SpringOverScroller;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v9}, Lcom/color/support/widget/SpringOverScroller;->fling(IIIIIIII)V

    .line 1421
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->postOnAnimation()V

    return-void
.end method

.method postOnAnimation()V
    .locals 1

    .line 1397
    iget-boolean v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1398
    iput-boolean v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    goto :goto_0

    .line 1400
    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->internalPostOnAnimation()V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 25

    move-object/from16 v0, p0

    .line 1190
    iget-object v1, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/ColorRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_0

    .line 1191
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->stop()V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1195
    iput-boolean v1, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    const/4 v2, 0x1

    .line 1196
    iput-boolean v2, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 1198
    iget-object v3, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/ColorRecyclerView;->consumePendingUpdateOperations()V

    .line 1217
    iget-object v3, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    invoke-static {v3}, Landroidx/recyclerview/widget/ColorRecyclerView;->access$000(Landroidx/recyclerview/widget/ColorRecyclerView;)Lcom/color/support/widget/SpringOverScroller;

    move-result-object v3

    .line 1219
    invoke-virtual {v3}, Lcom/color/support/widget/SpringOverScroller;->computeScrollOffset()Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_13

    .line 1227
    invoke-virtual {v3}, Lcom/color/support/widget/SpringOverScroller;->getOppoCurrX()I

    move-result v4

    .line 1228
    invoke-virtual {v3}, Lcom/color/support/widget/SpringOverScroller;->getOppoCurrY()I

    move-result v6

    .line 1231
    iget v7, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->mLastFlingX:I

    sub-int v7, v4, v7

    .line 1232
    iget v8, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->mLastFlingY:I

    sub-int v14, v6, v8

    .line 1233
    iput v4, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->mLastFlingX:I

    .line 1234
    iput v6, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->mLastFlingY:I

    .line 1239
    iget-object v4, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/ColorRecyclerView;->mReusableIntPair:[I

    aput v1, v4, v1

    .line 1240
    iget-object v4, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/ColorRecyclerView;->mReusableIntPair:[I

    aput v1, v4, v2

    .line 1241
    iget-object v8, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    iget-object v11, v8, Landroidx/recyclerview/widget/ColorRecyclerView;->mReusableIntPair:[I

    const/4 v12, 0x0

    const/4 v13, 0x1

    move v9, v7

    move v10, v14

    invoke-virtual/range {v8 .. v13}, Landroidx/recyclerview/widget/ColorRecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1243
    iget-object v4, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/ColorRecyclerView;->mReusableIntPair:[I

    aget v4, v4, v1

    sub-int/2addr v7, v4

    .line 1244
    iget-object v4, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/ColorRecyclerView;->mReusableIntPair:[I

    aget v4, v4, v2

    sub-int/2addr v14, v4

    .line 1259
    :cond_1
    iget-object v4, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/ColorRecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v4, :cond_4

    .line 1260
    iget-object v4, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/ColorRecyclerView;->mReusableIntPair:[I

    aput v1, v4, v1

    .line 1261
    iget-object v4, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/ColorRecyclerView;->mReusableIntPair:[I

    aput v1, v4, v2

    .line 1262
    iget-object v4, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    iget-object v6, v4, Landroidx/recyclerview/widget/ColorRecyclerView;->mReusableIntPair:[I

    invoke-virtual {v4, v7, v14, v6}, Landroidx/recyclerview/widget/ColorRecyclerView;->scrollStep(II[I)V

    .line 1263
    iget-object v4, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/ColorRecyclerView;->mReusableIntPair:[I

    aget v4, v4, v1

    .line 1264
    iget-object v6, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    iget-object v6, v6, Landroidx/recyclerview/widget/ColorRecyclerView;->mReusableIntPair:[I

    aget v6, v6, v2

    sub-int/2addr v7, v4

    sub-int/2addr v14, v6

    .line 1270
    iget-object v8, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    iget-object v8, v8, Landroidx/recyclerview/widget/ColorRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v8, :cond_5

    .line 1271
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v9

    if-nez v9, :cond_5

    .line 1272
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1273
    iget-object v9, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    iget-object v9, v9, Landroidx/recyclerview/widget/ColorRecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v9

    if-nez v9, :cond_2

    .line 1275
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    goto :goto_0

    .line 1276
    :cond_2
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v10

    if-lt v10, v9, :cond_3

    sub-int/2addr v9, v2

    .line 1277
    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 1278
    invoke-virtual {v8, v4, v6}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    goto :goto_0

    .line 1280
    :cond_3
    invoke-virtual {v8, v4, v6}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    goto :goto_0

    :cond_4
    move v4, v1

    move v6, v4

    .line 1285
    :cond_5
    :goto_0
    iget-object v8, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    iget-object v8, v8, Landroidx/recyclerview/widget/ColorRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 1286
    iget-object v8, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/ColorRecyclerView;->invalidate()V

    .line 1290
    :cond_6
    iget-object v8, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    iget-object v8, v8, Landroidx/recyclerview/widget/ColorRecyclerView;->mReusableIntPair:[I

    aput v1, v8, v1

    .line 1291
    iget-object v8, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    iget-object v8, v8, Landroidx/recyclerview/widget/ColorRecyclerView;->mReusableIntPair:[I

    aput v1, v8, v2

    .line 1292
    iget-object v15, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    const/16 v20, 0x0

    const/16 v21, 0x1

    iget-object v8, v15, Landroidx/recyclerview/widget/ColorRecyclerView;->mReusableIntPair:[I

    move/from16 v16, v4

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v14

    move-object/from16 v22, v8

    invoke-virtual/range {v15 .. v22}, Landroidx/recyclerview/widget/ColorRecyclerView;->dispatchNestedScroll(IIII[II[I)V

    .line 1294
    iget-object v8, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    iget-object v8, v8, Landroidx/recyclerview/widget/ColorRecyclerView;->mReusableIntPair:[I

    aget v8, v8, v1

    sub-int/2addr v7, v8

    .line 1295
    iget-object v8, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    iget-object v8, v8, Landroidx/recyclerview/widget/ColorRecyclerView;->mReusableIntPair:[I

    aget v8, v8, v2

    sub-int v8, v14, v8

    if-nez v4, :cond_7

    if-eqz v6, :cond_8

    .line 1298
    :cond_7
    iget-object v9, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    invoke-virtual {v9, v4, v6}, Landroidx/recyclerview/widget/ColorRecyclerView;->dispatchOnScrolled(II)V

    :cond_8
    if-eqz v8, :cond_9

    .line 1304
    iget-object v4, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    iget-boolean v4, v4, Landroidx/recyclerview/widget/ColorRecyclerView;->mOverScrollEnable:Z

    if-eqz v4, :cond_9

    .line 1305
    iget-object v4, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    invoke-static {v4, v5}, Landroidx/recyclerview/widget/ColorRecyclerView;->access$102(Landroidx/recyclerview/widget/ColorRecyclerView;I)I

    .line 1306
    iget-object v15, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    const/16 v16, 0x0

    const/16 v18, 0x0

    invoke-virtual {v15}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollY()I

    move-result v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    iget-object v4, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    invoke-static {v4}, Landroidx/recyclerview/widget/ColorRecyclerView;->access$200(Landroidx/recyclerview/widget/ColorRecyclerView;)I

    move-result v23

    const/16 v24, 0x0

    move/from16 v17, v8

    invoke-virtual/range {v15 .. v24}, Landroidx/recyclerview/widget/ColorRecyclerView;->overScrollBy(IIIIIIIIZ)Z

    .line 1307
    iget-object v4, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    invoke-static {v4}, Landroidx/recyclerview/widget/ColorRecyclerView;->access$000(Landroidx/recyclerview/widget/ColorRecyclerView;)Lcom/color/support/widget/SpringOverScroller;

    move-result-object v4

    iget-object v6, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollY()I

    move-result v6

    iget-object v9, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/ColorRecyclerView;->access$200(Landroidx/recyclerview/widget/ColorRecyclerView;)I

    move-result v9

    invoke-virtual {v4, v6, v1, v9}, Lcom/color/support/widget/SpringOverScroller;->notifyVerticalEdgeReached(III)V

    :cond_9
    if-eqz v7, :cond_a

    .line 1312
    iget-object v4, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    iget-boolean v4, v4, Landroidx/recyclerview/widget/ColorRecyclerView;->mOverScrollEnable:Z

    if-eqz v4, :cond_a

    .line 1313
    iget-object v4, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    invoke-static {v4, v5}, Landroidx/recyclerview/widget/ColorRecyclerView;->access$102(Landroidx/recyclerview/widget/ColorRecyclerView;I)I

    .line 1314
    iget-object v15, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    const/16 v17, 0x0

    invoke-virtual {v15}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollX()I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v4, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    invoke-static {v4}, Landroidx/recyclerview/widget/ColorRecyclerView;->access$200(Landroidx/recyclerview/widget/ColorRecyclerView;)I

    move-result v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v16, v7

    invoke-virtual/range {v15 .. v24}, Landroidx/recyclerview/widget/ColorRecyclerView;->overScrollBy(IIIIIIIIZ)Z

    .line 1315
    iget-object v4, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    invoke-static {v4}, Landroidx/recyclerview/widget/ColorRecyclerView;->access$000(Landroidx/recyclerview/widget/ColorRecyclerView;)Lcom/color/support/widget/SpringOverScroller;

    move-result-object v4

    iget-object v6, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollX()I

    move-result v6

    iget-object v9, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/ColorRecyclerView;->access$200(Landroidx/recyclerview/widget/ColorRecyclerView;)I

    move-result v9

    invoke-virtual {v4, v6, v1, v9}, Lcom/color/support/widget/SpringOverScroller;->notifyHorizontalEdgeReached(III)V

    .line 1320
    :cond_a
    iget-object v4, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    invoke-static {v4}, Landroidx/recyclerview/widget/ColorRecyclerView;->access$300(Landroidx/recyclerview/widget/ColorRecyclerView;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1321
    iget-object v4, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/ColorRecyclerView;->invalidate()V

    .line 1329
    :cond_b
    invoke-virtual {v3}, Lcom/color/support/widget/SpringOverScroller;->getOppoCurrX()I

    move-result v4

    invoke-virtual {v3}, Lcom/color/support/widget/SpringOverScroller;->getOppoFinalX()I

    move-result v6

    if-ne v4, v6, :cond_c

    move v4, v2

    goto :goto_1

    :cond_c
    move v4, v1

    .line 1330
    :goto_1
    invoke-virtual {v3}, Lcom/color/support/widget/SpringOverScroller;->getOppoCurrY()I

    move-result v6

    invoke-virtual {v3}, Lcom/color/support/widget/SpringOverScroller;->getOppoFinalY()I

    move-result v9

    if-ne v6, v9, :cond_d

    move v6, v2

    goto :goto_2

    :cond_d
    move v6, v1

    .line 1331
    :goto_2
    invoke-virtual {v3}, Lcom/color/support/widget/SpringOverScroller;->isOppoFinished()Z

    move-result v3

    if-nez v3, :cond_10

    if-nez v4, :cond_e

    if-eqz v7, :cond_f

    :cond_e
    if-nez v6, :cond_10

    if-eqz v8, :cond_f

    goto :goto_3

    :cond_f
    move v3, v1

    goto :goto_4

    :cond_10
    :goto_3
    move v3, v2

    .line 1338
    :goto_4
    iget-object v4, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/ColorRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v4, :cond_11

    .line 1340
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v4

    if-eqz v4, :cond_11

    move v4, v2

    goto :goto_5

    :cond_11
    move v4, v1

    :goto_5
    if-nez v4, :cond_12

    if-eqz v3, :cond_12

    .line 1358
    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v3, :cond_13

    .line 1359
    iget-object v3, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/ColorRecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    goto :goto_6

    .line 1364
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->postOnAnimation()V

    .line 1365
    iget-object v3, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/ColorRecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    if-eqz v3, :cond_13

    .line 1366
    iget-object v3, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/ColorRecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    iget-object v4, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    invoke-virtual {v3, v4, v7, v8}, Landroidx/recyclerview/widget/GapWorker;->postFromTraversal(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 1371
    :cond_13
    :goto_6
    iget-object v3, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/ColorRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v3, :cond_14

    .line 1373
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1374
    invoke-virtual {v3, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    .line 1377
    :cond_14
    iput-boolean v1, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 1378
    iget-boolean v3, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-eqz v3, :cond_15

    .line 1379
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->internalPostOnAnimation()V

    goto :goto_7

    .line 1388
    :cond_15
    iget-object v3, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    invoke-static {v3}, Landroidx/recyclerview/widget/ColorRecyclerView;->access$100(Landroidx/recyclerview/widget/ColorRecyclerView;)I

    move-result v3

    if-ne v3, v5, :cond_16

    iget-object v3, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    iget-boolean v3, v3, Landroidx/recyclerview/widget/ColorRecyclerView;->mOverScrollEnable:Z

    if-nez v3, :cond_17

    .line 1389
    :cond_16
    iget-object v3, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/ColorRecyclerView;->setScrollState(I)V

    .line 1390
    iget-object v0, v0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/ColorRecyclerView;->stopNestedScroll(I)V

    :cond_17
    :goto_7
    return-void
.end method

.method public smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .locals 7
    .param p4    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-ne p3, v1, :cond_0

    .line 1429
    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result p3

    :cond_0
    move v6, p3

    if-nez p4, :cond_1

    .line 1432
    sget-object p4, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    .line 1437
    :cond_1
    iget-object p3, p0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eq p3, p4, :cond_2

    .line 1438
    iput-object p4, p0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1439
    iget-object p3, p0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    new-instance v1, Lcom/color/support/widget/SpringOverScroller;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/ColorRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p4}, Lcom/color/support/widget/SpringOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    invoke-static {p3, v1}, Landroidx/recyclerview/widget/ColorRecyclerView;->access$002(Landroidx/recyclerview/widget/ColorRecyclerView;Lcom/color/support/widget/SpringOverScroller;)Lcom/color/support/widget/SpringOverScroller;

    .line 1443
    :cond_2
    iput v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->mLastFlingY:I

    iput v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->mLastFlingX:I

    .line 1446
    iget-object p3, p0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    const/4 p4, 0x2

    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/ColorRecyclerView;->setScrollState(I)V

    .line 1447
    iget-object p3, p0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    invoke-static {p3}, Landroidx/recyclerview/widget/ColorRecyclerView;->access$000(Landroidx/recyclerview/widget/ColorRecyclerView;)Lcom/color/support/widget/SpringOverScroller;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/color/support/widget/SpringOverScroller;->startScroll(IIIII)V

    .line 1449
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-ge p1, p2, :cond_3

    .line 1453
    iget-object p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    invoke-static {p1}, Landroidx/recyclerview/widget/ColorRecyclerView;->access$000(Landroidx/recyclerview/widget/ColorRecyclerView;)Lcom/color/support/widget/SpringOverScroller;

    move-result-object p1

    invoke-virtual {p1}, Lcom/color/support/widget/SpringOverScroller;->computeScrollOffset()Z

    .line 1456
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->postOnAnimation()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 1488
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1489
    iget-object p0, p0, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/ColorRecyclerView;

    invoke-static {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->access$000(Landroidx/recyclerview/widget/ColorRecyclerView;)Lcom/color/support/widget/SpringOverScroller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/color/support/widget/SpringOverScroller;->abortAnimation()V

    return-void
.end method
