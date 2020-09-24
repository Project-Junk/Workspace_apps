.class public final synthetic Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$wS6mPYbsm-czFPLN0u9Fwoek3-A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$ChildAnimationConfigurator;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$wS6mPYbsm-czFPLN0u9Fwoek3-A;->f$0:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    iput p2, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$wS6mPYbsm-czFPLN0u9Fwoek3-A;->f$1:I

    return-void
.end method


# virtual methods
.method public final configureAnimationForChildAtIndex(ILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$wS6mPYbsm-czFPLN0u9Fwoek3-A;->f$0:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    iget p0, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$wS6mPYbsm-czFPLN0u9Fwoek3-A;->f$1:I

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->lambda$animateStackByBubbleWidthsStartingFrom$6$ExpandedAnimationController(IILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V

    return-void
.end method
