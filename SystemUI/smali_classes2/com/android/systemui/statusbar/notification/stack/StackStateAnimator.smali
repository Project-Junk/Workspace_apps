.class public Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;
.super Ljava/lang/Object;
.source "StackStateAnimator.java"


# static fields
.field public static final ANIMATION_DELAY_HEADS_UP:I = 0x78

.field public static final ANIMATION_DELAY_HEADS_UP_CLICKED:I = 0x78

.field public static final ANIMATION_DELAY_PER_ELEMENT_GO_TO_FULL_SHADE:I = 0x30

.field public static final ANIMATION_DELAY_PER_ELEMENT_INTERRUPTING:I = 0x50

.field public static final ANIMATION_DELAY_PER_ELEMENT_MANUAL:I = 0x20

.field public static final ANIMATION_DURATION_APPEAR_DISAPPEAR:I = 0x1d0

.field public static final ANIMATION_DURATION_APPEAR_IN_KEYGUARD:I = 0x168

.field public static final ANIMATION_DURATION_BLOCKING_HELPER_FADE:I = 0xf0

.field public static final ANIMATION_DURATION_CLOSE_REMOTE_INPUT:I = 0x96

.field public static final ANIMATION_DURATION_DIMMED_ACTIVATED:I = 0xdc

.field public static final ANIMATION_DURATION_GO_TO_FULL_SHADE:I = 0x1c0

.field public static final ANIMATION_DURATION_HEADS_UP_APPEAR:I = 0x226

.field public static final ANIMATION_DURATION_HEADS_UP_APPEAR_CLOSED:I

.field public static final ANIMATION_DURATION_HEADS_UP_DISAPPEAR:I = 0x12c

.field public static final ANIMATION_DURATION_PULSE_APPEAR:I = 0x226

.field public static final ANIMATION_DURATION_STANDARD:I = 0x168

.field public static final ANIMATION_DURATION_SWIPE:I = 0xf0

.field public static final ANIMATION_DURATION_WAKEUP:I = 0x1f4

.field public static final DELAY_EFFECT_MAX_INDEX_DIFFERENCE:I = 0x2

.field private static final MAX_STAGGER_COUNT:I = 0x5


# instance fields
.field private mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

.field private mAnimationListenerPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/animation/AnimatorListenerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private mAnimatorSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

.field private mCurrentAdditionalDelay:J

.field private mCurrentLength:J

.field private final mGoToFullShadeAppearingTranslation:I

.field private mHeadsUpAppearChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHeadsUpAppearHeightBottom:I

.field private mHeadsUpDisappearChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private mNewAddChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mNewEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mPulsingAppearingTranslation:I

.field private mShadeExpanded:Z

.field private mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

.field private mStatusBarIconLocation:F

.field private mTmpLocation:[I

.field private final mTmpState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

.field private mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

.field private mTransientViewsToRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    invoke-static {}, Lcom/android/systemui/statusbar/notification/stack/HeadsUpAppearInterpolator;->getFractionUntilOvershoot()F

    move-result v0

    const v1, 0x44098000    # 550.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->ANIMATION_DURATION_HEADS_UP_APPEAR_CLOSED:I

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/HashSet;

    .line 86
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    .line 87
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTransientViewsToRemove:Ljava/util/ArrayList;

    const/4 v0, 0x2

    .line 98
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTmpLocation:[I

    .line 101
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 103
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mGoToFullShadeAppearingTranslation:I

    .line 106
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0706e6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mPulsingAppearingTranslation:I

    .line 108
    new-instance p1, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;)Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;)Landroid/animation/AnimatorListenerAdapter;
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;)Ljava/util/ArrayList;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;)Ljava/util/HashSet;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;)Ljava/util/HashSet;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->onAnimationFinished()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;)Ljava/util/Stack;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private adaptDurationWhenGoingToFullShade(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;ZI)V
    .locals 2

    if-eqz p3, :cond_0

    .line 195
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    iget-boolean p2, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    if-eqz p2, :cond_0

    .line 196
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTranslationY()F

    move-result p2

    iget p3, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mGoToFullShadeAppearingTranslation:I

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTranslationY(F)V

    int-to-double p1, p4

    const-wide p3, 0x3fe6666660000000L    # 0.699999988079071

    .line 197
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    double-to-float p1, p1

    .line 198
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    const-wide/16 p2, 0x202

    const/high16 p4, 0x42c80000    # 100.0f

    mul-float/2addr p1, p4

    float-to-long v0, p1

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    :cond_0
    return-void
.end method

.method private applyWithoutAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)Z
    .locals 2

    .line 209
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mShadeExpanded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 212
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimatingY(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 220
    :cond_2
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    .line 224
    :cond_3
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method private calculateChildAnimationDelay(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;I)J
    .locals 10

    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    if-eqz v0, :cond_0

    .line 231
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->calculateDelayGoToFullShade(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;I)J

    move-result-wide p0

    return-wide p0

    .line 233
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    iget-wide v0, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->customDelay:J

    const-wide/16 v2, -0x1

    cmp-long p2, v0, v2

    if-eqz p2, :cond_1

    .line 234
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    iget-wide p0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->customDelay:J

    return-wide p0

    :cond_1
    const-wide/16 v0, 0x0

    .line 237
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    const-wide/16 v3, 0x50

    .line 239
    iget v5, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v5, :cond_8

    if-eq v5, v8, :cond_3

    if-eq v5, v7, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x20

    .line 254
    :cond_3
    iget v5, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    .line 255
    iget-object v9, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    if-nez v9, :cond_4

    move v9, v8

    goto :goto_1

    :cond_4
    move v9, v6

    :goto_1
    if-eqz v9, :cond_5

    .line 256
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 257
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLastChildNotGone()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v2

    goto :goto_2

    :cond_5
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    :goto_2
    if-nez v2, :cond_6

    goto :goto_0

    .line 266
    :cond_6
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    if-lt v5, v2, :cond_7

    add-int/lit8 v5, v5, 0x1

    :cond_7
    sub-int/2addr v5, v2

    .line 271
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int/2addr v2, v8

    .line 272
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v5, v2

    mul-long/2addr v5, v3

    .line 275
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    .line 241
    :cond_8
    iget v5, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    .line 242
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->mChangingView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 243
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    sub-int/2addr v5, v2

    .line 244
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int/2addr v2, v8

    .line 245
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v7, v2

    int-to-long v5, v7

    mul-long/2addr v5, v3

    .line 248
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_9
    return-wide v0
.end method

.method private calculateDelayGoToFullShade(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;I)J
    .locals 8

    .line 287
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getNotGoneIndex()I

    move-result p0

    .line 288
    iget p1, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    int-to-float p1, p1

    int-to-float p0, p0

    cmpl-float v0, p1, p0

    const/high16 v1, 0x42400000    # 48.0f

    const-wide v2, 0x3fe6666660000000L    # 0.699999988079071

    const-wide/16 v4, 0x0

    if-lez v0, :cond_0

    int-to-double p1, p2

    .line 291
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    double-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-double p1, p1

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    mul-double/2addr p1, v6

    double-to-long p1, p1

    add-long/2addr v4, p1

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    float-to-double p0, p0

    .line 295
    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    mul-float/2addr p0, v1

    float-to-long p0, p0

    add-long/2addr v4, p0

    return-wide v4
.end method

.method private getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/AnimatorListenerAdapter;

    return-object p0

    .line 310
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$2;-><init>(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;)V

    return-object v0
.end method

.method private initAnimationProperties(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;I)V
    .locals 4

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->wasAdded(Landroid/view/View;)Z

    move-result v0

    .line 178
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mCurrentLength:J

    iput-wide v2, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 179
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->adaptDurationWhenGoingToFullShade(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;ZI)V

    .line 180
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays:Z

    if-eqz v0, :cond_1

    iget v0, p2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->yTranslation:F

    .line 182
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTranslationY()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->zTranslation:F

    .line 183
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTranslationZ()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->alpha:F

    .line 184
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getAlpha()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 185
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    .line 186
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dark:Z

    .line 187
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isDark()Z

    move-result p1

    if-eq v0, p1, :cond_1

    .line 188
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    iget-wide v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mCurrentAdditionalDelay:J

    .line 189
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->calculateChildAnimationDelay(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;I)J

    move-result-wide p2

    add-long/2addr v0, p2

    iput-wide v0, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    :cond_1
    return-void
.end method

.method static synthetic lambda$processAnimationEvents$0(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 0

    .line 406
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->removeTransientView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    return-void
.end method

.method static synthetic lambda$processAnimationEvents$1(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 0

    .line 455
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->removeTransientView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    return-void
.end method

.method private onAnimationFinished()V
    .locals 3

    .line 336
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onChildAnimationFinished()V

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTransientViewsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 339
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v2

    .line 340
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    goto :goto_0

    .line 342
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTransientViewsToRemove:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private processAnimationEvents(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;)V"
        }
    .end annotation

    .line 352
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 353
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->mChangingView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 354
    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    if-nez v1, :cond_2

    .line 358
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 359
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->gone:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 363
    :cond_1
    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    .line 364
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 366
    :cond_2
    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 368
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    .line 369
    invoke-static {v7}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->removeTransientView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    goto :goto_0

    .line 377
    :cond_3
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz v1, :cond_5

    .line 378
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTranslationY()F

    move-result v1

    .line 379
    instance-of v3, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    instance-of v3, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v3, :cond_4

    .line 381
    move-object v3, v7

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 383
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 385
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isRemoved()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 386
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->wasChildInGroupWhenRemoved()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 387
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v4

    if-nez v4, :cond_4

    .line 390
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTranslationWhenRemoved()F

    move-result v1

    .line 393
    :cond_4
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v3

    .line 396
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 397
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v4

    .line 398
    iget v4, v4, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->yTranslation:F

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v3, v5

    add-float/2addr v1, v6

    sub-float/2addr v4, v1

    mul-float/2addr v4, v5

    div-float/2addr v4, v3

    const/high16 v1, 0x3f800000    # 1.0f

    .line 401
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    move v6, v1

    goto :goto_1

    :cond_5
    move v6, v2

    :goto_1
    const-wide/16 v2, 0x1d0

    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 404
    new-instance v10, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$StackStateAnimator$TZG1mUHYcGvJktxtVi9se9juSC8;

    invoke-direct {v10, v7}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$StackStateAnimator$TZG1mUHYcGvJktxtVi9se9juSC8;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    const/4 v11, 0x0

    move-object v1, v7

    move v7, v8

    move v8, v9

    move-object v9, v10

    move-object v10, v11

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->performRemoveAnimation(JJFZFLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)J

    goto/16 :goto_4

    .line 407
    :cond_6
    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_7

    .line 409
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTranslation()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_10

    .line 410
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 411
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 413
    :cond_7
    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v3, 0xb

    if-ne v1, v3, :cond_8

    .line 415
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->mChangingView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 416
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->prepareExpansionChanged()V

    goto/16 :goto_4

    .line 417
    :cond_8
    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v3, 0xc

    const/4 v4, 0x0

    if-ne v1, v3, :cond_a

    .line 420
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v1

    .line 421
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->copyFrom(Lcom/android/systemui/statusbar/notification/stack/ViewState;)V

    .line 422
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->headsUpFromBottom:Z

    if-eqz v1, :cond_9

    .line 423
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpAppearHeightBottom:I

    int-to-float v2, v2

    iput v2, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->yTranslation:F

    goto :goto_2

    .line 425
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iput v4, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->yTranslation:F

    const-wide/16 v2, 0x0

    .line 426
    sget v1, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->ANIMATION_DURATION_HEADS_UP_APPEAR_CLOSED:I

    int-to-long v4, v1

    const/4 v6, 0x1

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->performAddAnimation(JJZ)V

    .line 429
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 430
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 431
    :cond_a
    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v3, 0xd

    const/16 v5, 0xe

    if-eq v1, v3, :cond_b

    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    if-ne v1, v5, :cond_10

    .line 435
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 439
    iget v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/4 v6, 0x0

    if-ne v3, v5, :cond_c

    const/16 v3, 0x78

    goto :goto_3

    :cond_c
    move v3, v6

    .line 443
    :goto_3
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_d

    .line 445
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v7, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->addTransientView(Landroid/view/View;I)V

    .line 446
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v7, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTransientContainer(Landroid/view/ViewGroup;)V

    .line 447
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->initFrom(Landroid/view/View;)V

    .line 448
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iput v4, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->yTranslation:F

    .line 451
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    iput-boolean v2, v5, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    .line 452
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    add-int/lit8 v8, v3, 0x78

    int-to-long v8, v8

    iput-wide v8, v5, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    const-wide/16 v8, 0x12c

    .line 453
    iput-wide v8, v5, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 454
    invoke-virtual {v1, v7, v5}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 455
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$StackStateAnimator$_Pk5aD8YGtEkv3ND7OecxMpqHJ4;

    invoke-direct {v1, v7}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$StackStateAnimator$_Pk5aD8YGtEkv3ND7OecxMpqHJ4;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    :cond_d
    move-object v9, v1

    .line 459
    instance-of v1, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v1, :cond_e

    .line 460
    move-object v1, v7

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 461
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isDismissed()Z

    move-result v5

    xor-int/2addr v2, v5

    .line 464
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 465
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 466
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTmpLocation:[I

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getLocationOnScreen([I)V

    .line 467
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTmpLocation:[I

    aget v4, v4, v6

    int-to-float v4, v4

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTranslationX()F

    move-result v5

    sub-float/2addr v4, v5

    .line 468
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getFinalTranslationX(Landroid/view/View;)F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float/2addr v1, v5

    add-float/2addr v4, v1

    .line 469
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTmpLocation:[I

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLocationOnScreen([I)V

    .line 470
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTmpLocation:[I

    aget v1, v1, v6

    int-to-float v1, v1

    sub-float/2addr v4, v1

    :cond_e
    move v8, v4

    if-eqz v2, :cond_f

    const-wide/16 v4, 0x1a4

    int-to-long v10, v3

    const/4 v6, 0x0

    const/4 v12, 0x1

    .line 481
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v13

    move-object v1, v7

    move-wide v2, v4

    move-wide v4, v10

    move v7, v12

    move-object v10, v13

    .line 478
    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->performRemoveAnimation(JJFZFLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)J

    move-result-wide v1

    .line 482
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    iget-wide v4, v3, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    add-long/2addr v4, v1

    iput-wide v4, v3, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    goto :goto_4

    :cond_f
    if-eqz v9, :cond_10

    .line 484
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    .line 487
    :cond_10
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_11
    return-void
.end method

.method public static removeTransientView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 1

    .line 492
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public animateOverScrollToAmount(FZZ)V
    .locals 3

    .line 499
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return-void

    .line 503
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->cancelOverScrollAnimators(Z)V

    const/4 v1, 0x2

    .line 504
    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x168

    .line 506
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 507
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$3;-><init>(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;ZZ)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 516
    sget-object p3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 517
    new-instance p3, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$4;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$4;-><init>(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;Z)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 527
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    if-eqz p2, :cond_1

    .line 529
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 531
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    :goto_0
    return-void
.end method

.method public cancelOverScrollAnimators(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 536
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    :goto_0
    if-eqz p0, :cond_1

    .line 538
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public setHeadsUpAppearHeightBottom(I)V
    .locals 0

    .line 543
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpAppearHeightBottom:I

    return-void
.end method

.method public setShadeExpanded(Z)V
    .locals 0

    .line 547
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mShadeExpanded:Z

    return-void
.end method

.method public setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    return-void
.end method

.method public startAnimationForEvents(Ljava/util/ArrayList;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;J)V"
        }
    .end annotation

    .line 142
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->processAnimationEvents(Ljava/util/ArrayList;)V

    .line 144
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result p1

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->applyCombination(Ljava/util/ArrayList;)V

    .line 146
    iput-wide p2, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mCurrentAdditionalDelay:J

    .line 147
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->combineLength(Ljava/util/ArrayList;)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mCurrentLength:J

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p2, p1, :cond_3

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 153
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 154
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    .line 155
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->applyWithoutAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->wasAdded(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    if-ge p3, v2, :cond_1

    add-int/lit8 p3, p3, 0x1

    .line 162
    :cond_1
    invoke-direct {p0, v0, v1, p3}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->initAnimationProperties(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;I)V

    .line 163
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    :cond_2
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 165
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_4

    .line 167
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->onAnimationFinished()V

    .line 169
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 170
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 171
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 172
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
