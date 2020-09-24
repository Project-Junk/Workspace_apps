.class Lcolor/support/v4/animation/DonutAnimatorCompatProvider;
.super Ljava/lang/Object;
.source "DonutAnimatorCompatProvider.java"

# interfaces
.implements Lcolor/support/v4/animation/AnimatorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emptyValueAnimator()Lcolor/support/v4/animation/ValueAnimatorCompat;
    .locals 0

    .line 35
    new-instance p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    invoke-direct {p0}, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;-><init>()V

    return-object p0
.end method
