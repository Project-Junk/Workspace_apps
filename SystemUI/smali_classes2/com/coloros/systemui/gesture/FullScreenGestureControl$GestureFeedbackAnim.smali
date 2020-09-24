.class final Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;
.super Ljava/lang/Object;
.source "FullScreenGestureControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/gesture/FullScreenGestureControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureFeedbackAnim"
.end annotation


# static fields
.field private static final FEEDBACK_ANIM_DROP_IN_DURATION:I = 0x64

.field private static final FEEDBACK_ANIM_DROP_OUT_DURATION:I = 0xfa


# instance fields
.field private mAnimationLock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mFeedbackAnimatorSet:Landroid/animation/AnimatorSet;

.field private mFeedbackViewHeight:I

.field private mFeedbackViewWidth:I

.field private mFeedbacklImage:Landroid/widget/ImageView;

.field private mFeedbacklayout:Landroid/view/View;

.field private mGestureFeedbackAnimLayoutExist:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowTile:Ljava/lang/String;

.field final synthetic this$0:Lcom/coloros/systemui/gesture/FullScreenGestureControl;


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/gesture/FullScreenGestureControl;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 562
    iput-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->this$0:Lcom/coloros/systemui/gesture/FullScreenGestureControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mAnimationLock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 560
    iput-boolean p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mGestureFeedbackAnimLayoutExist:Z

    .line 563
    iput-object p2, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mContext:Landroid/content/Context;

    .line 564
    iput-object p3, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mWindowTile:Ljava/lang/String;

    const p1, 0x7f0d0157

    const/4 p3, 0x0

    .line 566
    invoke-static {p2, p1, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbacklayout:Landroid/view/View;

    .line 567
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbacklayout:Landroid/view/View;

    const p2, 0x7f0a026f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbacklImage:Landroid/widget/ImageView;

    .line 568
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0706a6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbackViewWidth:I

    .line 569
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0706a5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbackViewHeight:I

    .line 570
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mContext:Landroid/content/Context;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method static synthetic access$400(Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;)V
    .locals 0

    .line 547
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->removeFeedbackView()V

    return-void
.end method

.method private createFeedbackDropInAnimation(I)Landroid/animation/ValueAnimator;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 697
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbacklImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 698
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbacklImage:Landroid/widget/ImageView;

    iget v3, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbackViewHeight:I

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 699
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbacklImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v1, v1, [F

    aput v2, v1, v0

    invoke-static {p1, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    .line 701
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbacklImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 702
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbacklImage:Landroid/widget/ImageView;

    iget v3, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbackViewHeight:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 703
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbacklImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v1, v1, [F

    aput v2, v1, v0

    invoke-static {p1, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_0

    .line 705
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbacklImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 706
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbacklImage:Landroid/widget/ImageView;

    iget v3, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbackViewHeight:I

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 707
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbacklImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v1, v1, [F

    aput v2, v1, v0

    invoke-static {p1, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 709
    :goto_0
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x64

    .line 710
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 711
    new-instance v0, Lcom/coloros/systemui/gesture/-$$Lambda$FullScreenGestureControl$GestureFeedbackAnim$0QvR8VGEggtZ8tQZqfa9lCOlJh8;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/gesture/-$$Lambda$FullScreenGestureControl$GestureFeedbackAnim$0QvR8VGEggtZ8tQZqfa9lCOlJh8;-><init>(Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method private createFeedbackDropOutAnimation(I)Landroid/animation/ValueAnimator;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 723
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbacklImage:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v1, v1, [F

    iget v3, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbackViewHeight:I

    int-to-float v3, v3

    aput v3, v1, v0

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 725
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbacklImage:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v1, v1, [F

    iget v3, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbackViewHeight:I

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v1, v0

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_0

    .line 727
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbacklImage:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v1, v1, [F

    iget v3, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbackViewHeight:I

    int-to-float v3, v3

    aput v3, v1, v0

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    :goto_0
    const-wide/16 v0, 0xfa

    .line 730
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 731
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ed70a3d    # 0.42f

    const/4 v2, 0x0

    const v3, 0x3f147ae1    # 0.58f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 732
    new-instance v0, Lcom/coloros/systemui/gesture/-$$Lambda$FullScreenGestureControl$GestureFeedbackAnim$5L05Rd13Nswnx7_-cXS0hxfjoNA;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/gesture/-$$Lambda$FullScreenGestureControl$GestureFeedbackAnim$5L05Rd13Nswnx7_-cXS0hxfjoNA;-><init>(Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method private getWindowLayoutParams(II)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 624
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7e2

    const/16 v4, 0x518

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Feedback --- direction "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " swipeAction "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Common"

    const-string v2, "FullScreenGestureControl"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xfa3

    const/16 v1, 0xfa2

    const v2, 0x800055

    const/4 v3, 0x2

    if-ne p2, v3, :cond_4

    if-ne p1, v1, :cond_0

    const p1, 0x800015

    .line 637
    iput p1, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    const p2, 0x800035

    if-ne p1, v0, :cond_2

    .line 639
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p1

    iget p1, p1, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mShortcutsCenterGestureDirection:I

    if-nez p1, :cond_1

    .line 640
    iput p2, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    .line 642
    :cond_1
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    .line 645
    :cond_2
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p1

    iget p1, p1, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mShortcutsCenterGestureDirection:I

    if-nez p1, :cond_3

    .line 646
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    .line 648
    :cond_3
    iput p2, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 651
    :goto_0
    iget p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbackViewHeight:I

    iput p1, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 652
    iget p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbackViewWidth:I

    iput p1, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    goto/16 :goto_3

    :cond_4
    const/4 v3, 0x3

    const v4, 0x800053

    if-ne p2, v3, :cond_9

    if-ne p1, v1, :cond_5

    const p1, 0x800013

    .line 655
    iput p1, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_1

    :cond_5
    const p2, 0x800033

    if-ne p1, v0, :cond_7

    .line 657
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p1

    iget p1, p1, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mShortcutsCenterGestureDirection:I

    if-nez p1, :cond_6

    .line 658
    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_1

    .line 660
    :cond_6
    iput p2, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_1

    .line 663
    :cond_7
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p1

    iget p1, p1, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mShortcutsCenterGestureDirection:I

    if-nez p1, :cond_8

    .line 664
    iput p2, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_1

    .line 666
    :cond_8
    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 669
    :goto_1
    iget p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbackViewHeight:I

    iput p1, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 670
    iget p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbackViewWidth:I

    iput p1, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_3

    :cond_9
    if-ne p1, v1, :cond_a

    const/16 p1, 0x51

    .line 673
    iput p1, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_2

    :cond_a
    if-ne p1, v0, :cond_c

    .line 675
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p1

    iget p1, p1, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mShortcutsCenterGestureDirection:I

    if-nez p1, :cond_b

    .line 676
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_2

    .line 678
    :cond_b
    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_2

    .line 681
    :cond_c
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p1

    iget p1, p1, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mShortcutsCenterGestureDirection:I

    if-nez p1, :cond_d

    .line 682
    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_2

    .line 684
    :cond_d
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 687
    :goto_2
    iget p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbackViewWidth:I

    iput p1, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 688
    iget p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbackViewHeight:I

    iput p1, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 690
    :goto_3
    iget-object p0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mWindowTile:Ljava/lang/String;

    invoke-virtual {v6, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v6
.end method

.method private initFeedbackAnimation(II)V
    .locals 4

    const/4 v0, 0x1

    .line 592
    :try_start_0
    iget-object v1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbacklayout:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->getWindowLayoutParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 593
    iput-boolean v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mGestureFeedbackAnimLayoutExist:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feedback ---mWindowManager.addView Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NavBar"

    const-string v2, "FullScreenGestureControl"

    invoke-static {v1, v2, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    .line 599
    iget-object v1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbacklImage:Landroid/widget/ImageView;

    const v2, 0x7f080dd5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 601
    iget-object v1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbacklImage:Landroid/widget/ImageView;

    const v2, 0x7f080dd4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 603
    :cond_1
    iget-object v1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbacklImage:Landroid/widget/ImageView;

    const v2, 0x7f080dd3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 606
    :goto_1
    invoke-direct {p0, p2}, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->createFeedbackDropInAnimation(I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 607
    invoke-direct {p0, p2}, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->createFeedbackDropOutAnimation(I)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 608
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbackAnimatorSet:Landroid/animation/AnimatorSet;

    .line 610
    iget-object v2, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbackAnimatorSet:Landroid/animation/AnimatorSet;

    new-array p1, p1, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v1, p1, v3

    aput-object p2, p1, v0

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 612
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbackAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim$1;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim$1;-><init>(Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private removeFeedbackView()V
    .locals 3

    .line 582
    iget-object v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mAnimationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 583
    :try_start_0
    iget-boolean v1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mGestureFeedbackAnimLayoutExist:Z

    if-eqz v1, :cond_0

    .line 584
    iget-object v1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbacklayout:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 585
    iput-boolean v1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mGestureFeedbackAnimLayoutExist:Z

    .line 587
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public synthetic lambda$createFeedbackDropInAnimation$0$FullScreenGestureControl$GestureFeedbackAnim(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 713
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 714
    iget v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbackViewHeight:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    const p1, 0x3f333333    # 0.7f

    mul-float/2addr v0, p1

    .line 715
    iget-object p0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbacklImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public synthetic lambda$createFeedbackDropOutAnimation$1$FullScreenGestureControl$GestureFeedbackAnim(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 734
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 735
    iget v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbackViewHeight:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    const p1, 0x3f333333    # 0.7f

    mul-float/2addr v0, p1

    .line 736
    iget-object p0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbacklImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public startFeedbackAnimation(II)V
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mAnimationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 576
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->initFeedbackAnimation(II)V

    .line 577
    iget-object p0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->mFeedbackAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 578
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
