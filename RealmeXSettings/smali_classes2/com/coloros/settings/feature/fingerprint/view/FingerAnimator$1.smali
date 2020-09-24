.class final Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator$1;
.super Ljava/lang/Object;
.source "FingerAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator;->startPromoteAnimator(Landroid/content/Context;Landroid/widget/TextView;ILandroid/widget/TextView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$animatorSet2:Landroid/animation/AnimatorSet;

.field final synthetic val$largeResource:I

.field final synthetic val$smallResource:I

.field final synthetic val$textLarge:Landroid/widget/TextView;

.field final synthetic val$textSmall:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;ILandroid/widget/TextView;ILandroid/animation/AnimatorSet;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator$1;->val$textLarge:Landroid/widget/TextView;

    iput p2, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator$1;->val$largeResource:I

    iput-object p3, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator$1;->val$textSmall:Landroid/widget/TextView;

    iput p4, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator$1;->val$smallResource:I

    iput-object p5, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator$1;->val$animatorSet2:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8

    .line 105
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator$1;->val$textLarge:Landroid/widget/TextView;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator$1;->val$largeResource:I

    if-lez v1, :cond_0

    .line 106
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 107
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator$1;->val$textLarge:Landroid/widget/TextView;

    iget v2, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator$1;->val$largeResource:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 108
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator$1;->val$textLarge:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v4, p1

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v0

    move-object v4, v3

    .line 110
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator$1;->val$textSmall:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator$1;->val$smallResource:I

    if-lez v1, :cond_1

    .line 111
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 112
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator$1;->val$textSmall:Landroid/widget/TextView;

    iget v1, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator$1;->val$smallResource:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 113
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator$1;->val$textSmall:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    move-object v6, p1

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object v6, v0

    move-object v7, v6

    .line 116
    :goto_1
    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator$1;->val$textLarge:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator$1;->val$textSmall:Landroid/widget/TextView;

    invoke-static/range {v2 .. v7}, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator;->sendAccessEventVisibility(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 118
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator$1;->val$animatorSet2:Landroid/animation/AnimatorSet;

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
