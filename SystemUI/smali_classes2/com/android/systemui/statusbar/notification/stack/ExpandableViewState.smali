.class public Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
.super Lcom/android/systemui/statusbar/notification/stack/ViewState;
.source "ExpandableViewState.java"


# static fields
.field public static final LOCATION_BOTTOM_STACK_HIDDEN:I = 0x10

.field public static final LOCATION_BOTTOM_STACK_PEEKING:I = 0x8

.field public static final LOCATION_FIRST_HUN:I = 0x1

.field public static final LOCATION_GONE:I = 0x40

.field public static final LOCATION_HIDDEN_TOP:I = 0x2

.field public static final LOCATION_MAIN_AREA:I = 0x4

.field public static final LOCATION_UNKNOWN:I = 0x0

.field private static final TAG_ANIMATOR_HEIGHT:I = 0x7f0a02b2

.field private static final TAG_ANIMATOR_TOP_INSET:I = 0x7f0a05af

.field private static final TAG_END_HEIGHT:I = 0x7f0a02b0

.field private static final TAG_END_TOP_INSET:I = 0x7f0a05ad

.field private static final TAG_START_HEIGHT:I = 0x7f0a02b1

.field private static final TAG_START_TOP_INSET:I = 0x7f0a05ae

.field public static final VISIBLE_LOCATIONS:I = 0x5


# instance fields
.field public belowSpeedBump:Z

.field public clipTopAmount:I

.field public dark:Z

.field public dimmed:Z

.field public headsUpIsVisible:Z

.field public height:I

.field public hideSensitive:Z

.field public inShelf:Z

.field public location:I

.field public notGoneIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    return-void
.end method

.method public static getFinalActualHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const v0, 0x7f0a02b2

    .line 381
    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 383
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result p0

    return p0

    :cond_1
    const v0, 0x7f0a02b0

    .line 385
    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private startHeightAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 12

    const v0, 0x7f0a02b1

    .line 231
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const v2, 0x7f0a02b0

    .line 232
    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 233
    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    if-eqz v3, :cond_0

    .line 234
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_0

    return-void

    :cond_0
    const v5, 0x7f0a02b2

    .line 237
    invoke-static {p1, v5}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/ValueAnimator;

    .line 238
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v7

    .line 239
    iget-boolean v7, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v7, :cond_2

    if-eqz v6, :cond_1

    .line 244
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    .line 245
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int p2, v4, p2

    .line 246
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, p2

    .line 247
    aget-object p0, p0, v10

    new-array p2, v8, [I

    aput v1, p2, v10

    aput v4, p2, v9

    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 248
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 249
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 250
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide p0

    invoke-virtual {v6, p0, p1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    return-void

    .line 254
    :cond_1
    invoke-virtual {p1, v4, v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(IZ)V

    return-void

    .line 259
    :cond_2
    new-array v1, v8, [I

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v3

    aput v3, v1, v10

    aput v4, v1, v9

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 260
    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$1;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 267
    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 268
    iget-wide v7, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    invoke-static {v7, v8, v6}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v7

    .line 269
    invoke-virtual {v1, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 270
    iget-wide v7, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    const-wide/16 v10, 0x0

    cmp-long v3, v7, v10

    if-lez v3, :cond_4

    if-eqz v6, :cond_3

    .line 271
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-nez v3, :cond_4

    .line 272
    :cond_3
    iget-wide v6, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 274
    :cond_4
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 276
    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 279
    :cond_5
    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;-><init>(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 304
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 305
    invoke-virtual {p1, v5, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 306
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 307
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 308
    invoke-virtual {p1, v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeightAnimating(Z)V

    return-void
.end method

.method private startInsetAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 11

    const v0, 0x7f0a05ae

    .line 312
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const v2, 0x7f0a05ad

    .line 313
    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 314
    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    if-eqz v3, :cond_0

    .line 315
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_0

    return-void

    :cond_0
    const v5, 0x7f0a05af

    .line 318
    invoke-static {p1, v5}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/ValueAnimator;

    .line 319
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v7

    .line 320
    iget-boolean v7, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-nez v7, :cond_2

    if-eqz v6, :cond_1

    .line 325
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    .line 326
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int p2, v4, p2

    .line 327
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, p2

    .line 328
    aget-object p0, p0, v10

    new-array p2, v9, [I

    aput v1, p2, v10

    aput v4, p2, v8

    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 329
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 330
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 331
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide p0

    invoke-virtual {v6, p0, p1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    return-void

    .line 335
    :cond_1
    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipTopAmount(I)V

    return-void

    .line 340
    :cond_2
    new-array v1, v9, [I

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result v3

    aput v3, v1, v10

    aput v4, v1, v8

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 341
    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$3;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$3;-><init>(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 347
    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 348
    iget-wide v7, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    invoke-static {v7, v8, v6}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v7

    .line 349
    invoke-virtual {v1, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 350
    iget-wide v7, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    if-lez v3, :cond_4

    if-eqz v6, :cond_3

    .line 351
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-nez v3, :cond_4

    .line 352
    :cond_3
    iget-wide v6, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 354
    :cond_4
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 356
    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 359
    :cond_5
    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$4;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$4;-><init>(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 367
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 368
    invoke-virtual {p1, v5, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 369
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 370
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTag(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 9

    .line 181
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 182
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-nez v0, :cond_0

    return-void

    .line 185
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 186
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v8

    .line 189
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 190
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->startHeightAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0a02b2

    .line 192
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->abortAnimation(Landroid/view/View;I)V

    .line 196
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 197
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->startInsetAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_1

    :cond_2
    const v1, 0x7f0a05af

    .line 199
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->abortAnimation(Landroid/view/View;I)V

    .line 203
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dimmed:Z

    iget-boolean v2, v8, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateDimmed:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setDimmed(ZZ)V

    .line 206
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setBelowSpeedBump(Z)V

    .line 209
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    iget-boolean v3, v8, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHideSensitive:Z

    iget-wide v4, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    iget-wide v6, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setHideSensitive(ZZJJ)V

    .line 213
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dark:Z

    iget-boolean v2, v8, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateDark:Z

    iget-wide v3, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setDark(ZZJ)V

    .line 215
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->wasAdded(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hidden:Z

    if-nez p1, :cond_3

    .line 216
    iget-wide v2, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    iget-wide v4, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->performAddAnimation(JJZ)V

    .line 220
    :cond_3
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isInShelf()Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    .line 221
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTransformingInShelf(Z)V

    .line 223
    :cond_4
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setInShelf(Z)V

    .line 225
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-eqz p0, :cond_5

    .line 226
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setHeadsUpIsVisible()V

    :cond_5
    return-void
.end method

.method public applyToView(Landroid/view/View;)V
    .locals 9

    .line 139
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 140
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v0, :cond_2

    .line 141
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 143
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v0

    .line 144
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    const/4 v8, 0x0

    if-eq v0, v1, :cond_0

    .line 148
    invoke-virtual {p1, v1, v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(IZ)V

    .line 152
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dimmed:Z

    invoke-virtual {p1, v0, v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setDimmed(ZZ)V

    .line 155
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setHideSensitive(ZZJJ)V

    .line 159
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setBelowSpeedBump(Z)V

    .line 162
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dark:Z

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v8, v1, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setDark(ZZJ)V

    .line 165
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result v0

    int-to-float v0, v0

    .line 166
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    int-to-float v2, v1

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipTopAmount(I)V

    .line 170
    :cond_1
    invoke-virtual {p1, v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTransformingInShelf(Z)V

    .line 171
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setInShelf(Z)V

    .line 173
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-eqz p0, :cond_2

    .line 174
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setHeadsUpIsVisible()V

    :cond_2
    return-void
.end method

.method public cancelAnimations(Landroid/view/View;)V
    .locals 0

    .line 391
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimations(Landroid/view/View;)V

    const p0, 0x7f0a02b2

    .line 392
    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    if-eqz p0, :cond_0

    .line 394
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const p0, 0x7f0a05af

    .line 396
    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    if-eqz p0, :cond_1

    .line 398
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    return-void
.end method

.method public copyFrom(Lcom/android/systemui/statusbar/notification/stack/ViewState;)V
    .locals 1

    .line 119
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->copyFrom(Lcom/android/systemui/statusbar/notification/stack/ViewState;)V

    .line 120
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    if-eqz v0, :cond_0

    .line 121
    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 122
    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 123
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dimmed:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dimmed:Z

    .line 124
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dark:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dark:Z

    .line 125
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    .line 126
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    .line 127
    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    .line 128
    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    .line 129
    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    .line 130
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    :cond_0
    return-void
.end method
