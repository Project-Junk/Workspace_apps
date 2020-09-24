.class Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider;
.super Ljava/lang/Object;
.source "HoneycombMr1AnimatorCompatProvider.java"

# interfaces
.implements Lcolor/support/v4/animation/AnimatorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$AnimatorListenerCompatWrapper;,
        Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emptyValueAnimator()Lcolor/support/v4/animation/ValueAnimatorCompat;
    .locals 1

    .line 34
    new-instance p0, Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcolor/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;-><init>(Landroid/animation/Animator;)V

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
