.class final Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;
.super Ljava/lang/Object;
.source "FlingAnimationUtils.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/FlingAnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VelocityInterpolator"
.end annotation


# instance fields
.field private mDiff:F

.field private mDurationSeconds:F

.field private mVelocity:F


# direct methods
.method private constructor <init>(FFF)V
    .locals 0

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput p1, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;->mDurationSeconds:F

    .line 370
    iput p2, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;->mVelocity:F

    .line 371
    iput p3, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;->mDiff:F

    return-void
.end method

.method synthetic constructor <init>(FFFLcom/android/systemui/statusbar/FlingAnimationUtils$1;)V
    .locals 0

    .line 362
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;-><init>(FFF)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    .line 376
    iget v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;->mDurationSeconds:F

    mul-float/2addr p1, v0

    .line 377
    iget v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;->mVelocity:F

    mul-float/2addr p1, v0

    iget p0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;->mDiff:F

    div-float/2addr p1, p0

    return p1
.end method
