.class Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;
.super Ljava/lang/Object;
.source "NavigationBarView.java"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NavTransitionListener"
.end annotation


# instance fields
.field private mBackTransitioning:Z

.field private mDuration:J

.field private mHomeAppearing:Z

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mStartDelay:J

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavigationBarView$1;)V
    .locals 0

    .line 188
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    return-void
.end method


# virtual methods
.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 1

    .line 211
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p1

    const/4 p2, 0x0

    const v0, 0x7f0a00d6

    if-ne p1, v0, :cond_0

    .line 212
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->mBackTransitioning:Z

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p1

    const p3, 0x7f0a02b5

    if-ne p1, p3, :cond_1

    const/4 p1, 0x2

    if-ne p4, p1, :cond_1

    .line 214
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->mHomeAppearing:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackAltCleared()V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    .line 223
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->mBackTransitioning:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->mHomeAppearing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 224
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setAlpha(F)V

    const/4 v1, 0x2

    .line 226
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 227
    iget-wide v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->mStartDelay:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 228
    iget-wide v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->mDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 229
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 230
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 2

    .line 198
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, 0x1

    const v1, 0x7f0a00d6

    if-ne p2, v1, :cond_0

    .line 199
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->mBackTransitioning:Z

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p2

    const p3, 0x7f0a02b5

    if-ne p2, p3, :cond_1

    const/4 p2, 0x2

    if-ne p4, p2, :cond_1

    .line 201
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->mHomeAppearing:Z

    .line 202
    invoke-virtual {p1, p4}, Landroid/animation/LayoutTransition;->getStartDelay(I)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->mStartDelay:J

    .line 203
    invoke-virtual {p1, p4}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->mDuration:J

    .line 204
    invoke-virtual {p1, p4}, Landroid/animation/LayoutTransition;->getInterpolator(I)Landroid/animation/TimeInterpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->mInterpolator:Landroid/animation/TimeInterpolator;

    :cond_1
    :goto_0
    return-void
.end method
