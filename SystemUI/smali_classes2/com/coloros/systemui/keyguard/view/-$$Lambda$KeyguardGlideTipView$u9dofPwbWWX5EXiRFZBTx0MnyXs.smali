.class public final synthetic Lcom/coloros/systemui/keyguard/view/-$$Lambda$KeyguardGlideTipView$u9dofPwbWWX5EXiRFZBTx0MnyXs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/view/-$$Lambda$KeyguardGlideTipView$u9dofPwbWWX5EXiRFZBTx0MnyXs;->f$0:Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;

    iput-boolean p2, p0, Lcom/coloros/systemui/keyguard/view/-$$Lambda$KeyguardGlideTipView$u9dofPwbWWX5EXiRFZBTx0MnyXs;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/-$$Lambda$KeyguardGlideTipView$u9dofPwbWWX5EXiRFZBTx0MnyXs;->f$0:Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;

    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/view/-$$Lambda$KeyguardGlideTipView$u9dofPwbWWX5EXiRFZBTx0MnyXs;->f$1:Z

    invoke-virtual {v0, p0, p1}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->lambda$getDownTipsImageAnimator$1$KeyguardGlideTipView(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method
