.class public abstract Lcolor/support/v4/animation/AnimatorCompatHelper;
.super Ljava/lang/Object;
.source "AnimatorCompatHelper.java"


# static fields
.field static IMPL:Lcolor/support/v4/animation/AnimatorProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 30
    new-instance v0, Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider;

    invoke-direct {v0}, Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider;-><init>()V

    sput-object v0, Lcolor/support/v4/animation/AnimatorCompatHelper;->IMPL:Lcolor/support/v4/animation/AnimatorProvider;

    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider;

    invoke-direct {v0}, Lcolor/support/v4/animation/DonutAnimatorCompatProvider;-><init>()V

    sput-object v0, Lcolor/support/v4/animation/AnimatorCompatHelper;->IMPL:Lcolor/support/v4/animation/AnimatorProvider;

    :goto_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static emptyValueAnimator()Lcolor/support/v4/animation/ValueAnimatorCompat;
    .locals 1

    .line 41
    sget-object v0, Lcolor/support/v4/animation/AnimatorCompatHelper;->IMPL:Lcolor/support/v4/animation/AnimatorProvider;

    invoke-interface {v0}, Lcolor/support/v4/animation/AnimatorProvider;->emptyValueAnimator()Lcolor/support/v4/animation/ValueAnimatorCompat;

    move-result-object v0

    return-object v0
.end method
