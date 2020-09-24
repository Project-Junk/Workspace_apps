.class Lcom/android/systemui/statusbar/KeyguardAffordanceView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardAffordanceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardAffordanceView;->finishAnimation(FLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancel:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field final synthetic val$mAnimationEndRunnable:Ljava/lang/Runnable;

.field final synthetic val$maxCircleSize:F


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Ljava/lang/Runnable;F)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$6;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$6;->val$mAnimationEndRunnable:Ljava/lang/Runnable;

    iput p3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$6;->val$maxCircleSize:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 297
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    const/4 p1, 0x1

    .line 298
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$6;->mCancel:Z

    .line 299
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$6;->val$mAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const-string p0, "KeyguardAffordanceView"

    const-string p1, "finishAnimation : onAnimationCancel"

    .line 300
    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 286
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$6;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->access$402(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Z)Z

    .line 287
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$6;->mCancel:Z

    if-nez p1, :cond_0

    .line 288
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$6;->val$mAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 289
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$6;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$6;->val$maxCircleSize:F

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->access$502(Lcom/android/systemui/statusbar/KeyguardAffordanceView;F)F

    .line 290
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$6;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->invalidate()V

    .line 292
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$6;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->access$602(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method
