.class Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;
.super Ljava/lang/Object;
.source "DonutAnimatorCompatProvider.java"

# interfaces
.implements Lcolor/support/v4/animation/ValueAnimatorCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v4/animation/DonutAnimatorCompatProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DonutFloatValueAnimator"
.end annotation


# instance fields
.field private mDuration:J

.field private mEnded:Z

.field private mFraction:F

.field mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcolor/support/v4/animation/AnimatorListenerCompat;",
            ">;"
        }
    .end annotation
.end field

.field private mLoopRunnable:Ljava/lang/Runnable;

.field private mStartTime:J

.field private mStarted:Z

.field mTarget:Landroid/view/View;

.field mUpdateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcolor/support/v4/animation/AnimatorUpdateListenerCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mListeners:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mUpdateListeners:Ljava/util/List;

    const-wide/16 v0, 0xc8

    .line 45
    iput-wide v0, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mDuration:J

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mFraction:F

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mStarted:Z

    .line 49
    iput-boolean v0, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mEnded:Z

    .line 54
    new-instance v0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;

    invoke-direct {v0, p0}, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;-><init>(Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)V

    iput-object v0, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mLoopRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)J
    .locals 2

    .line 38
    invoke-direct {p0}, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$300(Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)F
    .locals 0

    .line 38
    iget p0, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mFraction:F

    return p0
.end method

.method static synthetic access$302(Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;F)F
    .locals 0

    .line 38
    iput p1, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mFraction:F

    return p1
.end method

.method static synthetic access$400(Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->notifyUpdateListeners()V

    return-void
.end method

.method static synthetic access$500(Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->dispatchEnd()V

    return-void
.end method

.method static synthetic access$600(Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)Ljava/lang/Runnable;
    .locals 0

    .line 38
    iget-object p0, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mLoopRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private dispatchCancel()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 125
    iget-object v1, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcolor/support/v4/animation/AnimatorListenerCompat;

    invoke-interface {v1, p0}, Lcolor/support/v4/animation/AnimatorListenerCompat;->onAnimationCancel(Lcolor/support/v4/animation/ValueAnimatorCompat;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchEnd()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 119
    iget-object v1, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcolor/support/v4/animation/AnimatorListenerCompat;

    invoke-interface {v1, p0}, Lcolor/support/v4/animation/AnimatorListenerCompat;->onAnimationEnd(Lcolor/support/v4/animation/ValueAnimatorCompat;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchStart()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 113
    iget-object v1, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcolor/support/v4/animation/AnimatorListenerCompat;

    invoke-interface {v1, p0}, Lcolor/support/v4/animation/AnimatorListenerCompat;->onAnimationStart(Lcolor/support/v4/animation/ValueAnimatorCompat;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getTime()J
    .locals 2

    .line 108
    iget-object p0, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private notifyUpdateListeners()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 74
    iget-object v1, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcolor/support/v4/animation/AnimatorUpdateListenerCompat;

    invoke-interface {v1, p0}, Lcolor/support/v4/animation/AnimatorUpdateListenerCompat;->onAnimationUpdate(Lcolor/support/v4/animation/ValueAnimatorCompat;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcolor/support/v4/animation/AnimatorListenerCompat;)V
    .locals 0

    .line 85
    iget-object p0, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addUpdateListener(Lcolor/support/v4/animation/AnimatorUpdateListenerCompat;)V
    .locals 0

    .line 143
    iget-object p0, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mUpdateListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mEnded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mEnded:Z

    .line 135
    iget-boolean v0, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mStarted:Z

    if-eqz v0, :cond_1

    .line 136
    invoke-direct {p0}, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->dispatchCancel()V

    .line 138
    :cond_1
    invoke-direct {p0}, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->dispatchEnd()V

    return-void
.end method

.method public getAnimatedFraction()F
    .locals 0

    .line 148
    iget p0, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mFraction:F

    return p0
.end method

.method public setDuration(J)V
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mStarted:Z

    if-nez v0, :cond_0

    .line 91
    iput-wide p1, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mDuration:J

    :cond_0
    return-void
.end method

.method public setTarget(Landroid/view/View;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mTarget:Landroid/view/View;

    return-void
.end method

.method public start()V
    .locals 3

    .line 97
    iget-boolean v0, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mStarted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mStarted:Z

    .line 101
    invoke-direct {p0}, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->dispatchStart()V

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mFraction:F

    .line 103
    invoke-direct {p0}, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mStartTime:J

    .line 104
    iget-object v0, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mTarget:Landroid/view/View;

    iget-object p0, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mLoopRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
