.class public final synthetic Lcom/coloros/systemui/gesture/-$$Lambda$FullScreenGestureControl$GestureFeedbackAnim$5L05Rd13Nswnx7_-cXS0hxfjoNA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/gesture/-$$Lambda$FullScreenGestureControl$GestureFeedbackAnim$5L05Rd13Nswnx7_-cXS0hxfjoNA;->f$0:Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/systemui/gesture/-$$Lambda$FullScreenGestureControl$GestureFeedbackAnim$5L05Rd13Nswnx7_-cXS0hxfjoNA;->f$0:Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->lambda$createFeedbackDropOutAnimation$1$FullScreenGestureControl$GestureFeedbackAnim(Landroid/animation/ValueAnimator;)V

    return-void
.end method