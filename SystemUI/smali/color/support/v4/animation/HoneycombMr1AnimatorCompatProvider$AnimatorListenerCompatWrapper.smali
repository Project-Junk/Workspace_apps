.class Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;
.super Ljava/lang/Object;
.source "HoneycombMr1AnimatorCompatProvider.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimatorListenerCompatWrapper"
.end annotation


# instance fields
.field final mValueAnimatorCompat:Lcolor/support/v4/animation/ValueAnimatorCompat;

.field final mWrapped:Lcolor/support/v4/animation/AnimatorListenerCompat;


# direct methods
.method public constructor <init>(Lcolor/support/v4/animation/AnimatorListenerCompat;Lcolor/support/v4/animation/ValueAnimatorCompat;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->mWrapped:Lcolor/support/v4/animation/AnimatorListenerCompat;

    .line 99
    iput-object p2, p0, Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->mValueAnimatorCompat:Lcolor/support/v4/animation/ValueAnimatorCompat;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 114
    iget-object p1, p0, Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->mWrapped:Lcolor/support/v4/animation/AnimatorListenerCompat;

    iget-object p0, p0, Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->mValueAnimatorCompat:Lcolor/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {p1, p0}, Lcolor/support/v4/animation/AnimatorListenerCompat;->onAnimationCancel(Lcolor/support/v4/animation/ValueAnimatorCompat;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 109
    iget-object p1, p0, Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->mWrapped:Lcolor/support/v4/animation/AnimatorListenerCompat;

    iget-object p0, p0, Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->mValueAnimatorCompat:Lcolor/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {p1, p0}, Lcolor/support/v4/animation/AnimatorListenerCompat;->onAnimationEnd(Lcolor/support/v4/animation/ValueAnimatorCompat;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 119
    iget-object p1, p0, Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->mWrapped:Lcolor/support/v4/animation/AnimatorListenerCompat;

    iget-object p0, p0, Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->mValueAnimatorCompat:Lcolor/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {p1, p0}, Lcolor/support/v4/animation/AnimatorListenerCompat;->onAnimationRepeat(Lcolor/support/v4/animation/ValueAnimatorCompat;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 104
    iget-object p1, p0, Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->mWrapped:Lcolor/support/v4/animation/AnimatorListenerCompat;

    iget-object p0, p0, Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;->mValueAnimatorCompat:Lcolor/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {p1, p0}, Lcolor/support/v4/animation/AnimatorListenerCompat;->onAnimationStart(Lcolor/support/v4/animation/ValueAnimatorCompat;)V

    return-void
.end method
