.class public Lcom/android/systemui/statusbar/notification/stack/ViewState;
.super Ljava/lang/Object;
.source "ViewState.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field protected static final NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private static final SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

.field private static final SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

.field private static final TAG_ANIMATOR_ALPHA:I = 0x7f0a0075

.field private static final TAG_ANIMATOR_TRANSLATION_X:I = 0x7f0a05c8

.field private static final TAG_ANIMATOR_TRANSLATION_Y:I = 0x7f0a05cc

.field private static final TAG_ANIMATOR_TRANSLATION_Z:I = 0x7f0a05d0

.field private static final TAG_END_ALPHA:I = 0x7f0a0073

.field private static final TAG_END_TRANSLATION_X:I = 0x7f0a05c6

.field private static final TAG_END_TRANSLATION_Y:I = 0x7f0a05ca

.field private static final TAG_END_TRANSLATION_Z:I = 0x7f0a05ce

.field private static final TAG_START_ALPHA:I = 0x7f0a0074

.field private static final TAG_START_TRANSLATION_X:I = 0x7f0a05c7

.field private static final TAG_START_TRANSLATION_Y:I = 0x7f0a05cb

.field private static final TAG_START_TRANSLATION_Z:I = 0x7f0a05cf


# instance fields
.field public alpha:F

.field public gone:Z

.field public hidden:Z

.field public scaleX:F

.field public scaleY:F

.field public xTranslation:F

.field public yTranslation:F

.field public zTranslation:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ViewState$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 74
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ViewState$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState$2;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 98
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ViewState$3;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState$3;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 128
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleX:F

    .line 129
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleY:F

    return-void
.end method

.method public static cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J
    .locals 4

    if-eqz p2, :cond_0

    .line 654
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    .line 655
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 654
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    .line 656
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-wide p0
.end method

.method public static getChildTag(Landroid/view/View;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .line 631
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getFinalTranslationX(Landroid/view/View;)F
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const v0, 0x7f0a05c8

    .line 669
    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 671
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result p0

    return p0

    :cond_1
    const v0, 0x7f0a05c6

    .line 673
    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static getFinalTranslationY(Landroid/view/View;)F
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const v0, 0x7f0a05cc

    .line 685
    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 687
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p0

    return p0

    :cond_1
    const v0, 0x7f0a05ca

    .line 689
    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static getFinalTranslationZ(Landroid/view/View;)F
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const v0, 0x7f0a05d0

    .line 701
    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 703
    invoke-virtual {p0}, Landroid/view/View;->getTranslationZ()F

    move-result p0

    return p0

    :cond_1
    const v0, 0x7f0a05ce

    .line 705
    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static isAnimating(Landroid/view/View;I)Z
    .locals 0

    .line 258
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;)Z
    .locals 0

    .line 262
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getAnimatorTag()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAnimatingY(Landroid/view/View;)Z
    .locals 1

    const v0, 0x7f0a05cc

    .line 710
    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$startYTranslationAnimation$0(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 604
    instance-of p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz p1, :cond_0

    .line 605
    check-cast p0, Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->makeQuickSettingsContainerInvalidate()V

    :cond_0
    return-void
.end method

.method private startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 13

    const v0, 0x7f0a0074

    .line 332
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    const v2, 0x7f0a0073

    .line 333
    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    .line 334
    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    if-eqz v3, :cond_0

    .line 335
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v5, v5, v4

    if-nez v5, :cond_0

    return-void

    :cond_0
    const v5, 0x7f0a0075

    .line 338
    invoke-static {p1, v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/ObjectAnimator;

    .line 339
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v7

    .line 340
    iget-boolean v7, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-nez v7, :cond_2

    if-eqz v6, :cond_1

    .line 345
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    .line 346
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    sub-float p2, v4, p2

    .line 347
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v1, p2

    .line 348
    aget-object p0, p0, v10

    new-array p2, v11, [F

    aput v1, p2, v10

    aput v4, p2, v9

    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 349
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 350
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 351
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide p0

    invoke-virtual {v6, p0, p1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    return-void

    .line 355
    :cond_1
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    cmpl-float v1, v4, v8

    if-nez v1, :cond_2

    const/4 v1, 0x4

    .line 357
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 362
    :cond_2
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v11, [F

    .line 363
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v3, v10

    aput v4, v3, v9

    .line 362
    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 364
    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v3, 0x0

    .line 366
    invoke-virtual {p1, v11, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 367
    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/ViewState$4;

    invoke-direct {v3, p0, p1, v4}, Lcom/android/systemui/statusbar/notification/stack/ViewState$4;-><init>(Lcom/android/systemui/statusbar/notification/stack/ViewState;Landroid/view/View;F)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 392
    iget-wide v9, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    invoke-static {v9, v10, v6}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v9

    .line 393
    invoke-virtual {v1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 394
    iget-wide v9, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    const-wide/16 v11, 0x0

    cmp-long p0, v9, v11

    if-lez p0, :cond_4

    if-eqz v6, :cond_3

    .line 395
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result p0

    cmpl-float p0, p0, v8

    if-nez p0, :cond_4

    .line 396
    :cond_3
    iget-wide v6, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 398
    :cond_4
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 400
    invoke-virtual {v1, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 403
    :cond_5
    invoke-static {v1, p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 404
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 405
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 406
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 625
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 627
    :cond_0
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private startXTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 11

    const v0, 0x7f0a05c7

    .line 479
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    const v2, 0x7f0a05c6

    .line 480
    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    .line 481
    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    if-eqz v3, :cond_0

    .line 482
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v5, v5, v4

    if-nez v5, :cond_0

    return-void

    :cond_0
    const v5, 0x7f0a05c8

    .line 485
    invoke-static {p1, v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/ObjectAnimator;

    .line 486
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v7

    .line 487
    iget-boolean v7, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateX:Z

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-nez v7, :cond_2

    if-eqz v6, :cond_1

    .line 492
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    .line 493
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    sub-float p2, v4, p2

    .line 494
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v1, p2

    .line 495
    aget-object p0, p0, v10

    new-array p2, v9, [F

    aput v1, p2, v10

    aput v4, p2, v8

    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 496
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 497
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 498
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide p0

    invoke-virtual {v6, p0, p1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    return-void

    .line 502
    :cond_1
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationX(F)V

    return-void

    .line 507
    :cond_2
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v3, v9, [F

    .line 508
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v7

    aput v7, v3, v10

    aput v4, v3, v8

    .line 507
    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 509
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {p2, p1, v3}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getCustomInterpolator(Landroid/view/View;Landroid/util/Property;)Landroid/view/animation/Interpolator;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 511
    :cond_3
    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 513
    :goto_0
    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 514
    iget-wide v7, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    invoke-static {v7, v8, v6}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v7

    .line 515
    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 516
    iget-wide v7, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    if-lez v3, :cond_5

    if-eqz v6, :cond_4

    .line 517
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v3

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-nez v3, :cond_5

    .line 518
    :cond_4
    iget-wide v6, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 520
    :cond_5
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 522
    invoke-virtual {v1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 525
    :cond_6
    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/ViewState$6;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState$6;-><init>(Lcom/android/systemui/statusbar/notification/stack/ViewState;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 533
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 534
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 535
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 536
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private startYTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 11

    const v0, 0x7f0a05cb

    .line 544
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    const v2, 0x7f0a05ca

    .line 545
    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    .line 546
    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    if-eqz v3, :cond_0

    .line 547
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v5, v5, v4

    if-nez v5, :cond_0

    return-void

    :cond_0
    const v5, 0x7f0a05cc

    .line 550
    invoke-static {p1, v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/ObjectAnimator;

    .line 551
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v7

    .line 552
    invoke-virtual {v7, p1}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->shouldAnimateY(Landroid/view/View;)Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-nez v7, :cond_2

    if-eqz v6, :cond_1

    .line 557
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    .line 558
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    sub-float p2, v4, p2

    .line 559
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v1, p2

    .line 560
    aget-object p0, p0, v10

    new-array p2, v9, [F

    aput v1, p2, v10

    aput v4, p2, v8

    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 561
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 562
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 563
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide p0

    invoke-virtual {v6, p0, p1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    return-void

    .line 567
    :cond_1
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 572
    :cond_2
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v9, [F

    .line 573
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v7

    aput v7, v3, v10

    aput v4, v3, v8

    .line 572
    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 574
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p2, p1, v3}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getCustomInterpolator(Landroid/view/View;Landroid/util/Property;)Landroid/view/animation/Interpolator;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 576
    :cond_3
    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 578
    :goto_0
    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 579
    iget-wide v7, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    invoke-static {v7, v8, v6}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v7

    .line 580
    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 581
    iget-wide v7, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    if-lez v3, :cond_5

    if-eqz v6, :cond_4

    .line 582
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v3

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-nez v3, :cond_5

    .line 583
    :cond_4
    iget-wide v6, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 585
    :cond_5
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 587
    invoke-virtual {v1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 590
    :cond_6
    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/ViewState$7;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState$7;-><init>(Lcom/android/systemui/statusbar/notification/stack/ViewState;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 602
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 603
    new-instance p0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$ViewState$QXg2f_3jm5TkB1fu7W5dgcYQwRk;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$ViewState$QXg2f_3jm5TkB1fu7W5dgcYQwRk;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 610
    :cond_7
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 611
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 612
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 613
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private startZTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 11

    const v0, 0x7f0a05cf

    .line 419
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    const v2, 0x7f0a05ce

    .line 420
    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    .line 421
    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    if-eqz v3, :cond_0

    .line 422
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v5, v5, v4

    if-nez v5, :cond_0

    return-void

    :cond_0
    const v5, 0x7f0a05d0

    .line 425
    invoke-static {p1, v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/ObjectAnimator;

    .line 426
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v7

    .line 427
    iget-boolean v7, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-nez v7, :cond_2

    if-eqz v6, :cond_1

    .line 432
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    .line 433
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    sub-float p2, v4, p2

    .line 434
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v1, p2

    .line 435
    aget-object p0, p0, v10

    new-array p2, v9, [F

    aput v1, p2, v10

    aput v4, p2, v8

    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 436
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 437
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 438
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide p0

    invoke-virtual {v6, p0, p1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    return-void

    .line 442
    :cond_1
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationZ(F)V

    .line 446
    :cond_2
    sget-object v1, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v3, v9, [F

    .line 447
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v7

    aput v7, v3, v10

    aput v4, v3, v8

    .line 446
    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 448
    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 449
    iget-wide v7, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    invoke-static {v7, v8, v6}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v7

    .line 450
    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 451
    iget-wide v7, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    if-lez v3, :cond_4

    if-eqz v6, :cond_3

    .line 452
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v3

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-nez v3, :cond_4

    .line 453
    :cond_3
    iget-wide v6, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 455
    :cond_4
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 457
    invoke-virtual {v1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 460
    :cond_5
    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/ViewState$5;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState$5;-><init>(Lcom/android/systemui/statusbar/notification/stack/ViewState;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 468
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 469
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 470
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 471
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private updateAlphaAnimation(Landroid/view/View;)V
    .locals 1

    .line 328
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    return-void
.end method

.method private updateAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;F)V
    .locals 0

    .line 415
    sget-object p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-static {p1, p2, p3, p0}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    return-void
.end method

.method private updateAnimationX(Landroid/view/View;)V
    .locals 1

    .line 475
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startXTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    return-void
.end method

.method private updateAnimationY(Landroid/view/View;)V
    .locals 1

    .line 540
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startYTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    return-void
.end method

.method private updateAnimationZ(Landroid/view/View;)V
    .locals 1

    .line 410
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startZTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    return-void
.end method


# virtual methods
.method protected abortAnimation(Landroid/view/View;I)V
    .locals 0

    .line 635
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    if-eqz p0, :cond_0

    .line 637
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 4

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 272
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    if-nez v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v3, v3, v0

    if-nez v3, :cond_1

    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    if-nez v0, :cond_2

    .line 275
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 277
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 278
    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_3

    move v2, v1

    .line 279
    :cond_3
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v0, :cond_4

    .line 281
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->willBeGone()Z

    move-result v0

    xor-int/2addr v0, v1

    and-int/2addr v2, v0

    .line 285
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    .line 286
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startXTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_1

    :cond_5
    const v0, 0x7f0a05c8

    .line 288
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    .line 292
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    .line 293
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startYTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_2

    :cond_6
    const v0, 0x7f0a05cc

    .line 295
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    .line 299
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7

    .line 300
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startZTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_3

    :cond_7
    const v0, 0x7f0a05d0

    .line 302
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    .line 306
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8

    .line 307
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_4

    .line 309
    :cond_8
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getAnimatorTag()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    .line 313
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    .line 314
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_5

    .line 316
    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getAnimatorTag()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    :goto_5
    if-eqz v2, :cond_a

    .line 321
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_6

    :cond_a
    const p2, 0x7f0a0075

    .line 323
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    :goto_6
    return-void
.end method

.method public applyToView(Landroid/view/View;)V
    .locals 6

    .line 157
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a05c8

    .line 163
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->updateAnimationX(Landroid/view/View;)V

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 167
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_2
    :goto_0
    const v0, 0x7f0a05cc

    .line 171
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->updateAnimationY(Landroid/view/View;)V

    goto :goto_1

    .line 174
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 175
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_4
    :goto_1
    const v0, 0x7f0a05d0

    .line 179
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 181
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->updateAnimationZ(Landroid/view/View;)V

    goto :goto_2

    .line 182
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    .line 183
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 187
    :cond_6
    :goto_2
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 189
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleX:F

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->updateAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;F)V

    goto :goto_3

    .line 190
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8

    .line 191
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 195
    :cond_8
    :goto_3
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 197
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleY:F

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->updateAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;F)V

    goto :goto_4

    .line 198
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    .line 199
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 202
    :cond_a
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 203
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    if-eqz v1, :cond_b

    .line 204
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    move v1, v3

    goto :goto_6

    :cond_c
    :goto_5
    move v1, v2

    :goto_6
    const v4, 0x7f0a0075

    .line 205
    invoke-static {p1, v4}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 207
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->updateAlphaAnimation(Landroid/view/View;)V

    goto :goto_a

    .line 208
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_12

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v5, v4

    if-nez v4, :cond_e

    move v4, v2

    goto :goto_7

    :cond_e
    move v4, v3

    :goto_7
    if-nez v1, :cond_f

    if-nez v4, :cond_f

    .line 212
    invoke-virtual {p1}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_8

    :cond_f
    move v2, v3

    .line 213
    :goto_8
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v4

    if-eqz v2, :cond_10

    const/4 v2, 0x2

    goto :goto_9

    :cond_10
    move v2, v3

    :goto_9
    if-eq v4, v2, :cond_11

    const/4 v4, 0x0

    .line 218
    invoke-virtual {p1, v2, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 222
    :cond_11
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_12
    :goto_a
    if-eqz v1, :cond_13

    const/4 v3, 0x4

    :cond_13
    if-eq v3, v0, :cond_15

    .line 228
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz p0, :cond_14

    move-object p0, p1

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->willBeGone()Z

    move-result p0

    if-nez p0, :cond_15

    .line 230
    :cond_14
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    return-void
.end method

.method public cancelAnimations(Landroid/view/View;)V
    .locals 0

    const p0, 0x7f0a05c8

    .line 714
    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    if-eqz p0, :cond_0

    .line 716
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const p0, 0x7f0a05cc

    .line 718
    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    if-eqz p0, :cond_1

    .line 720
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    const p0, 0x7f0a05d0

    .line 722
    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    if-eqz p0, :cond_2

    .line 724
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_2
    const p0, 0x7f0a0075

    .line 726
    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    if-eqz p0, :cond_3

    .line 728
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_3
    return-void
.end method

.method public copyFrom(Lcom/android/systemui/statusbar/notification/stack/ViewState;)V
    .locals 1

    .line 132
    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 133
    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    .line 134
    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 135
    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    .line 136
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    .line 137
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 138
    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleX:F

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleX:F

    .line 139
    iget p1, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleY:F

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleY:F

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9

    .line 734
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ViewState { "

    .line 735
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-eqz p3, :cond_4

    .line 740
    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 742
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v1

    move v1, v4

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v6, v2, v1

    .line 743
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    .line 744
    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v8

    if-nez v8, :cond_2

    .line 745
    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    :cond_0
    if-nez v5, :cond_1

    const-string v5, ", "

    .line 749
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    :cond_1
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    .line 753
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 756
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move v5, v4

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 761
    :cond_3
    invoke-virtual {p3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p3

    move v1, v5

    goto :goto_0

    :cond_4
    const-string p0, " }"

    .line 763
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    return-void
.end method

.method public initFrom(Landroid/view/View;)V
    .locals 4

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleX:F

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleY:F

    return-void
.end method

.method public isAnimating(Landroid/view/View;)Z
    .locals 1

    const p0, 0x7f0a05c8

    .line 236
    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const p0, 0x7f0a05cc

    .line 239
    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const p0, 0x7f0a05d0

    .line 242
    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const p0, 0x7f0a0075

    .line 245
    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    .line 248
    :cond_3
    sget-object p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v0

    .line 251
    :cond_4
    sget-object p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method protected onYTranslationAnimationFinished(Landroid/view/View;)V
    .locals 1

    .line 617
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    if-nez p0, :cond_0

    const/4 p0, 0x4

    .line 618
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
