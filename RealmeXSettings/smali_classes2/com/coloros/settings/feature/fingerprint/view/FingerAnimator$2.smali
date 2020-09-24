.class final Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator$2;
.super Ljava/lang/Object;
.source "FingerAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator;->startTranslationAnimation(Landroid/view/View;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$animatorSet2:Landroid/animation/AnimatorSet;

.field final synthetic val$showFirst:Z

.field final synthetic val$view1:Landroid/view/View;

.field final synthetic val$view2:Landroid/view/View;


# direct methods
.method constructor <init>(ZLandroid/view/View;Landroid/view/View;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 193
    iput-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator$2;->val$showFirst:Z

    iput-object p2, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator$2;->val$view1:Landroid/view/View;

    iput-object p3, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator$2;->val$view2:Landroid/view/View;

    iput-object p4, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator$2;->val$animatorSet2:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 206
    iget-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator$2;->val$showFirst:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 207
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator$2;->val$view1:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 208
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 210
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator$2;->val$view2:Landroid/view/View;

    if-eqz p1, :cond_3

    const/4 v0, 0x4

    .line 211
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 214
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator$2;->val$view1:Landroid/view/View;

    if-eqz p1, :cond_2

    const/16 v1, 0x8

    .line 215
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator$2;->val$view2:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 218
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 221
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator$2;->val$animatorSet2:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
