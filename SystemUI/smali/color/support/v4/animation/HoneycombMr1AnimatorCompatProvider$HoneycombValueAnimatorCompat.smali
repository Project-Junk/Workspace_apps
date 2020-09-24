.class Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;
.super Ljava/lang/Object;
.source "HoneycombMr1AnimatorCompatProvider.java"

# interfaces
.implements Lcolor/support/v4/animation/ValueAnimatorCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HoneycombValueAnimatorCompat"
.end annotation


# instance fields
.field final mWrapped:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Landroid/animation/Animator;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;->mWrapped:Landroid/animation/Animator;

    return-void
.end method


# virtual methods
.method public addListener(Lcolor/support/v4/animation/AnimatorListenerCompat;)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;->mWrapped:Landroid/animation/Animator;

    new-instance v1, Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;

    invoke-direct {v1, p1, p0}, Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;-><init>(Lcolor/support/v4/animation/AnimatorListenerCompat;Lcolor/support/v4/animation/ValueAnimatorCompat;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public addUpdateListener(Lcolor/support/v4/animation/AnimatorUpdateListenerCompat;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;->mWrapped:Landroid/animation/Animator;

    instance-of v1, v0, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 73
    check-cast v0, Landroid/animation/ValueAnimator;

    new-instance v1, Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat$1;

    invoke-direct {v1, p0, p1}, Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat$1;-><init>(Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;Lcolor/support/v4/animation/AnimatorUpdateListenerCompat;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 0

    .line 67
    iget-object p0, p0, Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;->mWrapped:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    return-void
.end method

.method public getAnimatedFraction()F
    .locals 0

    .line 86
    iget-object p0, p0, Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;->mWrapped:Landroid/animation/Animator;

    check-cast p0, Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p0

    return p0
.end method

.method public setDuration(J)V
    .locals 0

    .line 57
    iget-object p0, p0, Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;->mWrapped:Landroid/animation/Animator;

    invoke-virtual {p0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    return-void
.end method

.method public setTarget(Landroid/view/View;)V
    .locals 0

    .line 47
    iget-object p0, p0, Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;->mWrapped:Landroid/animation/Animator;

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    return-void
.end method

.method public start()V
    .locals 0

    .line 62
    iget-object p0, p0, Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;->mWrapped:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method
